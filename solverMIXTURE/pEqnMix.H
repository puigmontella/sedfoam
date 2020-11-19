/*---------------------------------------------------------------------------*\
  =========                 |
  \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox
   \\    /   O peration     |
    \\  /    A nd           | Copyright (C) 2011-2016 OpenFOAM Foundation
     \\/     M anipulation  |
-------------------------------------------------------------------------------
License
    This file is part of OpenFOAM.

    OpenFOAM is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    OpenFOAM is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License
    along with OpenFOAM.  If not, see <http://www.gnu.org/licenses/>.

\*---------------------------------------------------------------------------*/
{
    word schemeA("div(alpha,nu)");

    surfaceScalarField alphaf = fvc::interpolate(alpha);
    surfaceScalarField betaf = scalar(1.0) - alphaf;

    volScalarField rAU = 1.0/UEqn.A();

    //rUAf = fvc::interpolate(rUA);
    surfaceScalarField rUAf = fvc::interpolate(rAU);
    
    
    surfaceScalarField oneOverrho =
    (
        fvc::interpolate
        (
            scalar(1.0)/(rho),
            "interpolate(oneOverrho)"
        )
    );
    

    // local Schmidt number
    //if (SUSlocal)
    //{
        //volScalarField ustar = sqrt(mag(beta*nuEffb*(fvc::grad(Ub)+gradUbT)));
        //SUStilde = scalar(1.0) + scalar(2.0)*pow(Ufall/(ustar+Usmall), 2);
        //SUStilde.min(scalar(3.0));
        //SUS = SUStilde;

        //Info<<"ustarmax"<<max(ustar).value()<<endl;
    //}


//Info<<"alpha  "<<alpha<<endl;

//Info<<"rho  "<<rho<<endl;

//Info<<"pff  "<<pff<<endl;
            
//Info<<"pff contribution "<<-fvc::reconstruct
            //((fvc::snGrad(pff))*rUAf*mesh.magSf())<<endl;

//Info<<"p_rgh contribution "<<-fvc::reconstruct
            //((fvc::snGrad(p_rgh))*rUAf*mesh.magSf())<<endl;


//Info<<"gravitational contribution "<<-fvc::reconstruct
            //((  ghf*fvc::snGrad(rho)
                //)*rUAf*mesh.magSf())<<endl;

        volVectorField HbyA = U;
        HbyA = rAU*UEqn.H();

        // Momentum fluxes computed on the faces for the particle phase phiDrag
        // and the fluid phase phiDragb
        surfaceScalarField phiDrag =
        ( // grad(pa)
          - (fvc::snGrad(pa))*rUAf*mesh.magSf()
            // grad(Pf)
             - (fvc::snGrad(pff))*rUAf*mesh.magSf()
            // gravity
                -( ghf*fvc::snGrad(rho)
                )*rUAf*mesh.magSf()
           // relative velocity contribution
      -(fvc::interpolate(alpha*(1-alpha)*(rhoa-rhob)/rho*WRel) & mesh.Sf())
        );

    
        // Fix for gravity on outlet boundary.
        forAll(p_rgh.boundaryField(), patchi)
    {
      if (isA<zeroGradientFvPatchScalarField>(p_rgh.boundaryField()[patchi]))
      {
          phiDrag.boundaryFieldRef()[patchi] = 0.0;
      }
        if (isA<symmetryFvPatchScalarField>(p_rgh.boundaryField()[patchi]))
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rgh.boundaryField().types()[patchi] == "symmetryPlane")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rgh.boundaryField().types()[patchi] == "groovyBC")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rgh.boundaryField().types()[patchi] == "outletInlet")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rgh.boundaryField().types()[patchi] == "fixedFluxPressure")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
        }
    }
     surfaceScalarField phiRho = oneOverrho*phi;


      
        surfaceScalarField phiU =
        (
         (fvc::interpolate(HbyA) & mesh.Sf())
      + fvc::interpolate(rho*rAU)*fvc::ddtCorr(U, phi)
      
        );
        
        surfaceScalarField phiHbyA = phiU + phiDrag;


        // Poisson equation for the pressure
        
        surfaceScalarField Dp
        (
            "(rho*(1|A(U)))",
            rUAf
        );

        //// Update the fixedFluxPressure BCs to ensure flux consistency
        setSnGrad<fixedFluxPressureFvPatchScalarField>
        (
            p_rgh.boundaryFieldRef(),
            (
            phiHbyA.boundaryField()
          - (mesh.Sf().boundaryField() & U.boundaryField())
        )/(mesh.magSf().boundaryField()*rUAf.boundaryField())
        );


        while (pimple.correctNonOrthogonal())
        {
            fvScalarMatrix pEqn
            (
                fvm::laplacian(Dp, p_rgh) ==  fvc::div(phiHbyA)
            );

            pEqn.setReference(pRefCell, getRefCellValue(p_rgh, pRefCell));

            pEqn.solve(mesh.solver(p_rgh.select(pimple.finalInnerIter())));
		
            if (pimple.finalNonOrthogonalIter())
            {

                phi = (phiHbyA - pEqn.flux());

               // #include "continuityErrs.H"
                p_rgh.relax();
                surfaceScalarField SfGradp = pEqn.flux()/Dp;

                // Velocity correction step
                U = HbyA + rAU*fvc::reconstruct(phiDrag/rUAf-SfGradp);
                U.correctBoundaryConditions();
                fvOptions.correct(U);
			}
		}
		p = p_rgh + rho*gh;

		if (p_rgh.needReference())
		{
			p += dimensionedScalar
			(
				"p",
				p.dimensions(),
				pRefValue - getRefCellValue(p, pRefCell)
			);
			p_rgh = p - rho*gh;
		    p_rgh.correctBoundaryConditions();
		}

	   // #include "UaUbLimiter.H" NOT needed
		//phi = (fvc::interpolate(U) & mesh.Sf());
		//U.correctBoundaryConditions();
		//#include "rhoEqn.H"
	//	#include "compressibleContinuityErrs.H"

		// Update mixture velocity
		//U = alpha*Ua + beta*Ub;
   //     U.correctBoundaryConditions();
 
    
}
