{
	scalar pi = constant::mathematical::pi;

	//Reciprocal of ap (i.e. 1/a_p)
    volScalarField rAU("rAU", 1.0/UEqn.A());

	//(1/a_p)_f
    surfaceScalarField rAUf("rAUf", fvc::interpolate(rAU));

	//H(u)/a_p
    volVectorField HbyA(constrainHbyA(rAU*UEqn.H(), U, p_rgh));
		// volVectorField HbyA(constrainHbyA(rAU*UEqn.H(), U, p));

	//Approximate fluid volumetric flux (flux of HbyA) without pressure, surface tension or
	//buoyancy contribution
    surfaceScalarField phiHbyA
    (
        "phiHbyA",
        fvc::flux(HbyA)
      + fvc::interpolate(rho*rAU)*fvc::ddtCorr(U, phi)
    );

   adjustPhi(phiHbyA, U, p_rgh);
	//	adjustPhi(phiHbyA, U, p);

	// Calculate oscilitary pressure gradient
	gradPOSC =  gradPMEAN + gradPAMP1*Foam::cos(initTheta*(pi)/180.0 + 2.0*(pi)*runTime.value()/oscpT)
			  + gradPAMP2*Foam::sin(initTheta*(pi)/90.0 + 4.0*(pi)*runTime.value()/oscpT);

	//Surface tension, buoyancy and particle pressure contribution to approximate flux
    surfaceScalarField phig
    (
       (
           // mixture.surfaceTensionForce()
          - ghf*fvc::snGrad(rho)
        ) * rAUf*mesh.magSf()
         	  - (
			fvc::snGrad(pff)*mesh.magSf()
+			fvc::snGrad(pa)*mesh.magSf()
	    ) * rAUf

	  + (gradPOSC & mesh.Sf()) * rAUf
		+ fvc::interpolate(alpha/alphaMax)*(gradPhasea & mesh.Sf()) * rAUf
    );

    phiHbyA += phig;

    //Additional flux due to relative velocities

	surfaceScalarField phiW(fvc::flux(W));


	surfaceScalarField phir (
								fvc::flux( phiW, alpha*(1-alpha)*(rhoa-rhob)/rho)
							);

    dimensionedScalar RelaxPhi
    (
        "RelaxPhi",
        dimensionSet(0, 0, 0, 0, 0, 0, 0),
        1
    );
	phirNew=RelaxPhi*phir+(1-RelaxPhi)*phirNew;
							
    // Update the pressure BCs to ensure flux consistency
   constrainPressure(p_rgh, U, phiHbyA, rAUf);
		// constrainPressure(p, U, phiHbyA, rAUf);

		// Update the pressure BCs to ensure flux consistency
    while (pimple.correctNonOrthogonal())
    {



        fvScalarMatrix p_rghEqn
        (
            fvm::laplacian(rAUf, p_rgh) == fvc::div(phiHbyA - phirNew)
            //fvm::laplacian(rAUf, p_rgh) == fvc::div(phiHbyA)
        );

        p_rghEqn.setReference(pRefCell, getRefCellValue(p_rgh, pRefCell));

        p_rghEqn.solve(mesh.solver(p_rgh.select(pimple.finalInnerIter())));

        if (pimple.finalNonOrthogonalIter())
        {
            //Flux correction
						phi = phiHbyA - p_rghEqn.flux();

            p_rgh.relax();

						//Velocity correction
            U = HbyA + rAU*fvc::reconstruct((phig - p_rghEqn.flux())/rAUf);
						#include "ULimiter.H"

            U.correctBoundaryConditions();
			fvOptions.correct(U);

			Ua=1/rho*(W*(1-alpha)*rhob+rho*U);
			Ub=-W+Ua;
			//Relative velocity correction
			#include "WEqn.H"
        }



    }

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
