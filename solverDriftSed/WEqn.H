{
	
	//################################### solving W #############################
		
		
	surfaceScalarField phiW(fvc::flux(W));
	volScalarField DragTerm(((1-alpha)/rhoa+alpha/rhob)*draga->K(mag(W)));
	volScalarField nufraContribution(scalar(1.0)/(alpha+alphaSmall)*fvc::laplacian(nuFra, (1-alpha)*rhob/rho)); 
	volScalarField nueffbContribution(scalar(1.0)/(1-alpha+alphaSmall)*fvc::laplacian(nuEffb, alpha*rhoa/rho)); 

	
	
	tauSw= scalar(1.0)/(alpha+alphaSmall)*(1-alpha)*rhob/rho*fvc::laplacian(nuFra, W)  + scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(W*(1-alpha)*rhob/rho))));
	tauFw= scalar(1.0)/(1-alpha+alphaSmall)*(alpha)*rhoa/rho*fvc::laplacian(nuEffb, W)+scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(W*(alpha)*rhoa/rho))));
	tauSU=scalar(1.0)/(alpha+alphaSmall)*fvc::laplacian(nuFra, U)+scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(U))));
	tauFu= - scalar(1.0)/(1-alpha+alphaSmall)*fvc::laplacian(nuEffb, U)- scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(U))));
	pSolid=(scalar(1.0)/rhoa-scalar(1.0)/rhob-scalar(1.0)/(alpha+alphaSmall)/rhoa)*(fvc::reconstruct(fvc::snGrad(pff+pa)*mesh.magSf()));
	pmixt=  -(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p)*mesh.magSf()));
	Dragterm=-fvc::Sp(DragTerm, W);
	//Info << "p" << p << endl;

	//Info << "pmixt" << pmixt << endl;
	//Info << "tauSU" << tauSU << endl;
	//Info << "tauFu" << tauFu << endl;
	//Info << "tauFw" << tauFw << endl;
	//Info << "tauSw" << tauSw << endl;

   fvVectorMatrix WEqn
    (
        fvm::ddt(W)
//	  +fvm::div(phiW, W)
	  +(pow((1-alpha)*rhob/rho,2)-pow(alpha*rhoa/rho,2))*fvm::div(phiW, W)
	  +(2*(1-alpha)*rhob/rho+2*alpha*rhoa/rho)*fvm::div(phi, W)

     //+ MRF.DDt(W)
     
	// Shear stress contribution - Relative velocity 
      - scalar(1.0)/(alpha+alphaSmall)*(1-alpha)*rhob/rho*fvm::laplacian(nuFra, W)
	  - scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(W*(1-alpha)*rhob/rho))))

      - scalar(1.0)/(1-alpha+alphaSmall)*(alpha)*rhoa/rho*fvm::laplacian(nuEffb, W)
	  - scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(W*(alpha)*rhoa/rho))))
	  
	  == 
			//fvOptions(W)

	// Granular pressure contribution 
	//(scalar(1.0)/rhoa-scalar(1.0)/rhob-scalar(1.0)/(alpha+alphaSmall)/rhoa)*fvc::grad(pff+pa)
	(scalar(1.0)/rhoa-scalar(1.0)/rhob-scalar(1.0)/(alpha+alphaSmall)/rhoa)*(fvc::reconstruct(fvc::snGrad(pff+pa)*mesh.magSf()))

	// Mixture pressure contribution 
	//-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*fvc::grad(p)
	-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p)*mesh.magSf()))
	//-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p_rgh)*mesh.magSf())+ fvc::reconstruct(ghf*fvc::snGrad(rho)*mesh.magSf())+rho*g)  // -> sometimes this leads to problems

	
	// Shear stress contribution - mixture part
      + scalar(1.0)/(alpha+alphaSmall)*fvc::laplacian(nuFra, U)
	  + scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(U))))
	  
      - scalar(1.0)/(1-alpha+alphaSmall)*fvc::laplacian(nuEffb, U)
	  - scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(U))))
	  
	  
	  
      ////// Shear stress contribution - Relative velocity (explicit term)
	 //+fvm::Sp(nufraContribution, W)
	 //+fvm::Sp(nueffbContribution, W)
	////  +(alpha/alphaMax)/rhoa*(gradPhasea)

	  // Drag term
	 -fvm::Sp(DragTerm, W)
    );


    
    WEqn.relax();
    WEqn.solve();
    W*= pos(alpha-alphaSmall);
    
	//Info << "W" << W << endl;


	
}
