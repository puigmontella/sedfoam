//Diffusion stress
	word tauDmScheme("div(tauDm)");
	volSymmTensorField tauDm (
							  - alpha*(1-alpha)
							  * rhoa*rhob/rho
							  * sqr(W)
							);

//muEff.correctBoundaryConditions();



//// limiter for the explicit stress terms to avoid numerical instability and
//// too strong limitation on the time step
//volScalarField nuFraExp(nuFra);
//nuFraExp.min(nuMaxExp);
//nuFraExp.correctBoundaryConditions();

//// Compute explicit stress term for phase a
//volTensorField Rca
//(
    //"Rca",
    //((2.0/3.0)*I)*rhoa*((nuEffa+nuFraExp/(alpha+alphaSmall))*tr(T(fvc::grad(U)))
    //+ spherSigmaSGSa)
    //- rhoa*(nuEffa+nuFraExp/(alpha+alphaSmall))*T(fvc::grad(U))
//);

//volTensorField RcaW
//(
    //"RcaW",
    //((2.0/3.0)*I)*rhoa*rhob*beta/rho*((nuEffa+nuFraExp/(alpha+alphaSmall))*tr(T(fvc::grad(W)))
    //+ spherSigmaSGSa)
    //- rhoa*rhob*beta/rho*(nuEffa+nuFraExp/(alpha+alphaSmall))*T(fvc::grad(W))
//);


//// Compute concentration gradient stress contribution on cell faces for phase a
//surfaceScalarField phiRa
//(
   //-rhoa*fvc::interpolate(nuEffa)*mesh.magSf()*(fvc::snGrad(alpha))
   ///fvc::interpolate(alpha+ alphaSmall)
//);
//surfaceScalarField phiRaW
//(
   //-rhoa*fvc::interpolate(nuEffa*rhob*beta/rho)*mesh.magSf()*(fvc::snGrad(alpha))
   ///fvc::interpolate(alpha+ alphaSmall)
//);
	//// Compute explicit stress term for phase b
//volTensorField Rcb
//(
    //"Rcb",
    //((2.0/3.0)*I)*(nuEffb*rhob*tr(T(fvc::grad(U))) + rhob*spherSigmaSGSb)
    //- nuEffb*rhob*T(fvc::grad(U))
//);
//volTensorField RcbW
//(
    //"RcbW",
    //((2.0/3.0)*I)*(nuEffb*rhob*rhoa*alpha/rho*tr(T(fvc::grad(W))) + rhob*spherSigmaSGSb)
    //- nuEffb*rhob*rhoa*alpha/rho*T(fvc::grad(W))
//);

//// Compute concentration gradient stress contribution on cell faces for phase b
//surfaceScalarField phiRb
//(
  //- rhob*fvc::interpolate(nuEffb)*mesh.magSf()*(fvc::snGrad(beta))
   ///fvc::interpolate(beta)
//);
//surfaceScalarField phiRbW
//(
  //- rhob*fvc::interpolate(nuEffb*rhoa*alpha/rho)*mesh.magSf()*(fvc::snGrad(beta))
   ///fvc::interpolate(beta)
//);

//Construct the Momentum equation
    fvVectorMatrix UEqn
    (
        fvm::ddt(rho, U)
         + fvm::div(rhoPhi, U)
         //+ fvm::div(rhoPhi, U)
      //- fvm::Sp(fvc::ddt(rho) + fvc::div(rhoPhi), U)
      
      - fvm::laplacian(muEff, U)
	  - fvc::div(muEff * dev2(T(fvc::grad(U))))
	  
      //- fvm::laplacian(alpha*nuFra*rhoa, U)
	  //- fvc::div(alpha*nuFra*rhoa * dev2(T(fvc::grad(U))))
      //- fvm::laplacian((1-alpha)*nuEffb*rhob, U)
	  //- fvc::div((1-alpha)*nuEffb*rhob * dev2(T(fvc::grad(U))))
	  
	 //// shear stress - sediment part contribution 
  //- scalar(1.0)/(alpha+alphaSmall)*fvm::laplacian(rhoa*nuFra, U)
  //- fvm::laplacian(rhoa*nuEffa, U)
  //+ fvm::div(phiRa, U)
  //- fvm::Sp(fvc::div(phiRa), U)
  //+ fvc::div(Rca)
  //+ (fvc::grad(alpha)/(alpha+alphaSmall) & Rca)
  
  
  
	 //// shear stress - fluid part contribution 
  //- fvm::laplacian(rhob*nuEffb, U)
  //+ fvm::div(phiRb, U)
  //- fvm::Sp(fvc::div(phiRb), U)
  //+ fvc::div(Rcb)
  //+ (fvc::grad(beta)/(beta) & Rcb)
  
  
	       - fvc::div(tauDm, tauDmScheme)
		//	+divDevRhoReff
			     // + (turbulenceb->divDevReff(U))*rho
			== fvOptions(rho,U)
      //+ fvc::laplacian((1-alpha)*alpha*nuFra*rhoa*rhob/rho, W)
	  //+ fvc::div(alpha*(1-alpha)*nuFra*rhoa*rhob/rho * dev2(T(fvc::grad(W))))
      //- fvc::laplacian((1-alpha)*alpha*nuEffb*rhob*rhoa/rho, W)
	  //- fvc::div(alpha*(1-alpha)*nuEffb*rhob*rhoa/rho * dev2(T(fvc::grad(W))))
	  

	 //// shear stress - sediment part contribution  - Relative part
  //+ scalar(1.0)/(alpha+alphaSmall)*fvc::laplacian(rhoa*nuFra*rhob*beta/rho, W)
  //+ fvc::laplacian(rhoa*nuEffa*rhob*beta/rho, W)
  //- fvc::div(phiRaW, W)
  //+ fvc::Sp(fvc::div(phiRaW), W)
  //- fvc::div(RcaW)
  //- (fvc::grad(alpha)/(alpha+alphaSmall) & RcaW)


  
	 //// shear stress - fluid part contribution  - Relative part
  //- fvc::laplacian(rhob*nuEffb*rhoa*alpha/rho, W)
  //+ fvc::div(phiRbW, W)
  //- fvc::Sp(fvc::div(phiRbW), W)
  //+ fvc::div(RcbW)
  //+ (fvc::grad(beta)/(beta) & RcbW)
  
    );

    UEqn.relax();
		fvOptions.constrain(UEqn);
		U.correctBoundaryConditions();
		fvOptions.correct(U);
	//Solve the momentum equation if required
    if (pimple.momentumPredictor())
    {
			solve
			(
					UEqn
			 ==
					fvc::reconstruct
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
