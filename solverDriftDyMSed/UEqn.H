//Diffusion stresses
	word tauDmScheme("div(tauDm)");
	volSymmTensorField tauDm (
							  - alpha*(1-alpha)
							  * rhoa*rhob/rho
							  * sqr(W)
							);

// 
// fvVectorMatrix divDevRhoReff(
// 			- fvm::laplacian(rho*turbulenceb->nut(), U)
// 			- fvc::div(rho*turbulenceb->nut()*dev2(fvc::grad(U)().T()))
// 	

MRF.correctBoundaryVelocity(U);
//muEff.correctBoundaryConditions();

//Construct the Momentum equation
    fvVectorMatrix UEqn
    (
        fvm::ddt(rho, U) + fvm::div(rhoPhi, U)
      - fvm::Sp(fvc::ddt(rho) + fvc::div(rhoPhi), U)
      + MRF.DDt(rho, U)

      - fvm::laplacian(muEff, U)
	  - fvc::div(muEff * dev2(T(fvc::grad(U))))
	  
      //- fvm::laplacian(alpha*nuFra*rhoa, U)
	  //- fvc::div(alpha*nuFra*rhoa * dev2(T(fvc::grad(U))))
      //- fvm::laplacian((1-alpha)*nuEffb*rhob, U)
	  //- fvc::div(alpha*(1-alpha)*nuEffb*rhob * dev2(T(fvc::grad(U))))
	 
	 
	       - fvc::div(tauDm, tauDmScheme)
		//	+divDevRhoReff
			     // + (turbulenceb->divDevReff(U))*rho
			== fvOptions(rho,U)
      //+ fvc::laplacian((1-alpha)*alpha*nuFra*rhoa*rhob/rho, W)
	  //+ fvc::div(alpha*(1-alpha)*alpha*nuFra*rhoa*rhob/rho * dev2(T(fvc::grad(W))))
      //- fvc::laplacian((1-alpha)*alpha*nuEffb*rhob*rhoa/rho, W)
	  //- fvc::div(alpha*(1-alpha)*alpha*nuEffb*rhob*rhoa/rho * dev2(T(fvc::grad(W))))
					
			         // +rho*g
    );

    UEqn.relax();
		//fvOptions.constrain(UEqn);
		//U.correctBoundaryConditions();
		fvOptions.correct(U);
	//Solve the momentum equation if required
    if (pimple.momentumPredictor())
    {
			solve
			(
					UEqn
			 ==
					cellMask*fvc::reconstruct
					(
							(
				fvc::snGrad(p_rgh)
				 // fvc::snGrad(p)
								- ghf*fvc::snGrad(rho)
							//	+ mixture.surfaceTensionForce()
							) * mesh.magSf()
					)
	-  (fvc::reconstruct(fvc::snGrad(pff)*mesh.magSf()))
	-  (fvc::reconstruct(fvc::snGrad(pa)*mesh.magSf()))
			);
        fvOptions.correct(U);
    }

 
 
 
 
 

