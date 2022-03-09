{
	
	scalar pi = constant::mathematical::pi;

    rAU = 1.0/UEqn.A();
    //mesh.interpolate(rAU);
    surfaceScalarField faceMask(localMin<scalar>(mesh).interpolate(cellMask));
    surfaceScalarField rAUf("rAUf", fvc::interpolate(rAU));
    volVectorField H("H", UEqn.H());

    volVectorField HbyA("HbyA", U);
    //HbyA = rAU*UEqn.H();
    HbyA = constrainHbyA(rAU*H, U, p_rgh);
    if (massFluxInterpolation)
    {
        #include "interpolatedFaces.H"
    }
    surfaceScalarField phiHbyA("phiHbyA", fvc::flux(HbyA));

    if (ddtCorr)
    {
        surfaceScalarField faceMaskOld
        (
            localMin<scalar>(mesh).interpolate(cellMask.oldTime())
        );
        phiHbyA +=
            fvc::interpolate(rho*rAU)*faceMaskOld*fvc::ddtCorr(U, Uf);
    }
    
    MRF.makeRelative(phiHbyA);

    if (p_rgh.needReference())
    {
        fvc::makeRelative(phiHbyA, U);
        adjustPhi(phiHbyA, U, p_rgh);
        fvc::makeAbsolute(phiHbyA, U);
    }

    if (adjustFringe)
    {
        fvc::makeRelative(phiHbyA, U);
        oversetAdjustPhi(phiHbyA, U);
        fvc::makeAbsolute(phiHbyA, U);
    }

	// Calculate oscilitary pressure gradient
	gradPOSC =  gradPMEAN + gradPAMP1*Foam::cos(initTheta*(pi)/180.0 + 2.0*(pi)*runTime.value()/oscpT)
			  + gradPAMP2*Foam::sin(initTheta*(pi)/90.0 + 4.0*(pi)*runTime.value()/oscpT);

	//Surface tension, buoyancy and particle pressure contribution to approximate flux
    surfaceScalarField phig
    (
       (
           // mixture.surfaceTensionForce()
          - ghf*fvc::snGrad(rho) 
			-fvc::snGrad(pff)
			-fvc::snGrad(pa)
	    ) *faceMask*rAUf*mesh.magSf()

	  + (gradPOSC & mesh.Sf()) * rAUf
		+ fvc::interpolate(alpha/alphaMax)*(gradPhasea & mesh.Sf()) * rAUf
    );
    phiHbyA += phig;

    if (adjustFringe)
    {
        fvc::makeRelative(phiHbyA, U);
        oversetAdjustPhi(phiHbyA, U);
        fvc::makeAbsolute(phiHbyA, U);
    }

    //Additional flux due to relative velocities

	surfaceScalarField phiW(fvc::flux(W));


	surfaceScalarField phir (
								fvc::flux( phiW, alpha*(1-alpha)*(rhoa-rhob)/rho)
							);

    // Update the pressure BCs to ensure flux consistency
    constrainPressure(p_rgh, U, phiHbyA, rAUf, MRF);
    		// constrainPressure(p, U, phiHbyA, rAUf);

		// Update the pressure BCs to ensure flux consistency
    while (pimple.correctNonOrthogonal())
    {
           

        fvScalarMatrix p_rghEqn
        (
            fvm::laplacian(rAUf, p_rgh) == fvc::div(phiHbyA - phir)
        );

        p_rghEqn.setReference(pRefCell, getRefCellValue(p_rgh, pRefCell));

        p_rghEqn.solve(mesh.solver(p_rgh.select(pimple.finalInnerIter())));

        if (pimple.finalNonOrthogonalIter())
        {
			
            phi = phiHbyA - p_rghEqn.flux();

            p_rgh.relax();

            U =
                cellMask*
                (
                   HbyA + rAU*fvc::reconstruct((phig - p_rghEqn.flux())/rAUf)
                );

            U.correctBoundaryConditions();
			fvOptions.correct(U);
			//Ua=U-((1-alpha)-(1-alpha)*alpha*(rhoa-rhob)/rho)*W;
			Ua=1/rho*(W*(1-alpha)*rhob+rho*U);
			Ub=-W+Ua;
			//Relative velocity correction
			#include "WEqn.H"
			
			
        }


    }
    
    
    
    #include "continuityErrs.H"

    {
        Uf = fvc::interpolate(U);
        surfaceVectorField n(mesh.Sf()/mesh.magSf());
        Uf += n*(phi/mesh.magSf() - (n & Uf));
    }

    // Make the fluxes relative to the mesh motion
    fvc::makeRelative(phi, U);

    // Zero faces H-I for transport Eq after pEq
    phi *= faceMask;
    phia =     fvc::flux(Ua);
    phib =fvc::flux(Ub);
    
    #include "continuityErrs.H"
    p == p_rgh + rho*gh; 
    

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
}
