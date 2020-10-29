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

    volScalarField rUA = 1.0/UEqn.A();

    rUAf = fvc::interpolate(rUA);


    // limiter for the explicit stress terms to avoid numerical instability and
    // too strong limitation on the time step
    volScalarField nuFraExp = nuFra;
    nuFraExp.min(nuMaxExp);
    nuFraExp.correctBoundaryConditions();

    // interpolate 1/(alpha+alphaSmall) on the faces
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

 Info<< "cccc"<<endl;

    while (pimple.correct())
    {
        volVectorField HbyA = U;
        HbyA = rUA*UEqn.H();


        // Momentum fluxes computed on the faces for the particle phase phiDraga
        // and the fluid phase phiDragb
        surfaceScalarField phiDrag =
        (
        // explicit drag term : now tricks
        //bonamy fvc::interpolate(beta/rhoa*K*rUaA)*phib
        // turbulent suspension term (comment the next 2 lines
        // if suspension term in UaEqn: susa)
           //-(fvc::interpolate
            //(
                //SUS*(K/rhoa)*turbulenceb->nut()*(beta/(alpha + alphaSmall))
            //)
          // *fvc::snGrad(alpha))*rUAf*mesh.magSf()
            // grad(pa)
          - (oneOverrho*fvc::snGrad(pa))*rUAf*mesh.magSf()
            // grad(Pf)
             - (oneOverrho*fvc::snGrad(pff))*rUAf*mesh.magSf()
            // diagonal part of stress
        //  + (1./rho*fvc::snGrad(lambdaU*tr(gradUT)))
        //   *rUaAf*mesh.magSf()
            // diagonal part of stress 2
        //  - (scalar(2.0/3.0)*fvc::snGrad(nuFraExp*tr(gradUaT)))
         //  *rUaAf*mesh.magSf()
           // stress part 3

            //// gravity
                //+(
                   //oneOverrho*ghf*fvc::snGrad(rho)
                //)*rUAf*mesh.magSf()
          + rUAf
           *(
               oneOverrho*(rhoa-rhob)*(gravity & mesh.Sf())
            )
        // + rUaAf*(gravity & mesh.Sf())
        // mean pressure gradient
        //  + rUAf*((gradPOSC/(tilt*rhob +(1.0-tilt)*rhoa)) & mesh.Sf())
        );



        //    fvOptions.makeRelative(phiHabyA);
        //    fvOptions.makeRelative(phiHbbyA);


        // Fix for gravity on outlet boundary.
        forAll(p_rbgh.boundaryField(), patchi)
    {
      if (isA<zeroGradientFvPatchScalarField>(p_rbgh.boundaryField()[patchi]))
      {
          phiDrag.boundaryFieldRef()[patchi] = 0.0;
      //    phiDragb.boundaryFieldRef()[patchi] = 0.0;
      }
        if (isA<symmetryFvPatchScalarField>(p_rbgh.boundaryField()[patchi]))
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
         //   phiDragb.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rbgh.boundaryField().types()[patchi] == "symmetryPlane")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
         //   phiDragb.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rbgh.boundaryField().types()[patchi] == "groovyBC")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
         //   phiDragb.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rbgh.boundaryField().types()[patchi] == "outletInlet")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
         //   phiDragb.boundaryFieldRef()[patchi] = 0.0;
        }
        if (p_rbgh.boundaryField().types()[patchi] == "fixedFluxPressure")
        {
            phiDrag.boundaryFieldRef()[patchi] = 0.0;
        //    phiDragb.boundaryFieldRef()[patchi] = 0.0;
        }
    }

        surfaceScalarField phiU =
        (
            (fvc::interpolate(HbyA) & mesh.Sf()) + rUAf*fvc::ddtCorr(U, phi)
        );


        //surfaceScalarField phiUb =
        //(
            //(fvc::interpolate(HbbyA) & mesh.Sf()) + rUbAf*fvc::ddtCorr(Ub, phib)
        //);

        surfaceScalarField phiHbyA = phiU + phiDrag;
        
 Info<< "oneOverrho*(rhoa-rhob)*(gravity & mesh.Sf())"<< oneOverrho*(rhoa-rhob)*(gravity & mesh.Sf()) << endl;
         Info<< "rUAf"<< rUAf<< endl;

     //   surfaceScalarField phibHbyA = phiUb + phiDragb;

        //// Face-drag coefficients
        //surfaceScalarField rAUKd(fvc::interpolate(beta/rhoa*K*rUA));
      ////  surfaceScalarField rAUKdb(fvc::interpolate(alpha/rhob*K*rUbA));

        //surfaceScalarField phiHbyA = alphaf*(phiaHbyA + rAUKda*phib)
                                   //+ betaf*(phibHbyA + rAUKdb*phia);

    //    surfaceScalarField phiHbyA = alphaf*phiaHbyA + betaf*phibHbyA;

    //    adjustPhi(phiHbyA, U, p_rbgh);

        // Poisson equation for the pressure
        
        surfaceScalarField Dp
        (
            "(rho*(1|A(U)))",
            oneOverrho*rUAf
        );

        // Update the fixedFluxPressure BCs to ensure flux consistency
        setSnGrad<fixedFluxPressureFvPatchScalarField>
        (
            p_rbgh.boundaryFieldRef(),
            (
                phiHbyA.boundaryField()
   - (mesh.Sf().boundaryField() & U.boundaryField())               
             )
            /(mesh.magSf().boundaryField()*Dp.boundaryField())
        );

        while (pimple.correctNonOrthogonal())
        {
            fvScalarMatrix pEqn
            (
                fvm::laplacian(Dp, p_rbgh) == fvc::div(phiHbyA)
            );

            pEqn.setReference(pRefCell, getRefCellValue(p_rbgh, pRefCell));

#if OFVERSION >= 700
            pEqn.solve();
#else
            pEqn.solve(mesh.solver(p_rbgh.select(pimple.finalInnerIter())));
#endif

            if (pimple.finalNonOrthogonalIter())
            {
               // surfaceScalarField SfGradp = pEqn.flux()/Dp;
                //surfaceScalarField phias = phiaHbyA - rUAf*SfGradp/rhoa;
                //surfaceScalarField phibs = phibHbyA - rUbAf*SfGradp/rhob;
                phi = phiHbyA - pEqn.flux();

                //surfaceScalarField phir
                //(
                    //((phias + rAUKda*phibs) - (phibs + rAUKdb*phias))
      //          /(1 - rAUKda*rAUKdb)
                //);

                //phia = phi + betaf*(phir);
                //phib = phi - alphaf*(phir);
 Info<< "dddd"<<endl;
                #include "continuityErrs.H"
                p_rbgh.relax();
                surfaceScalarField SfGradp = pEqn.flux()/Dp;
 Info<< "eeee"<<endl;
                // Velocity correction step
                U = HbyA + rUA*fvc::reconstruct(phiDrag/rUAf-oneOverrho*SfGradp);
                //volVectorField Uas =
                //(
                    //HabyA + rUaA*fvc::reconstruct(phiDraga/rUaAf-SfGradp/rhoa)
                //);
                //volScalarField Da(beta/rhoa*K*rUaA);
                //volScalarField Db(alpha/rhob*K*rUbA);
                //U = alpha*(Uas + Da*Ub) + beta*(Ubs + Db*Ua);
                //volVectorField Ur(((1 - Db)*Uas - (1 - Da)*Ubs)/(1 - Da*Db));

               // Ua = U + beta*Ur;
                Info<< "ffffff"<<endl;
                U.correctBoundaryConditions();
                fvOptions.correct(U);

                //Ub = U - alpha*Ur;
                //Ub.correctBoundaryConditions();
                //fvOptions.correct(Ub);

                p = p_rbgh + rho*gh;
                 Info<< "gggg"<<endl;
                if (p_rbgh.needReference())
                {
                    p += dimensionedScalar
                    (
                        "p",
                        p.dimensions(),
                        pRefValue - getRefCellValue(p, pRefCell)
                    );
                    p_rbgh = p - rho*gh;
                    p_rbgh.correctBoundaryConditions();
                }
                 Info<< "hhhhhh"<<endl;
                
               // #include "UaUbLimiter.H" NOT needed
               
                U.correctBoundaryConditions();
                // Update mixture velocity
                //U = alpha*Ua + beta*Ub;
           //     U.correctBoundaryConditions();
            }
        }
    }
}
