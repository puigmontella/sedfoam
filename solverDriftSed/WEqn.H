{
	
	//################################### solving W #############################
    word schemeNu("div(nuW)");

		
	surfaceScalarField phiW(fvc::flux(W));
	volScalarField DragTerm(((1-alpha)/rhoa+alpha/rhob)*draga->K(mag(W)));
	
	////volScalarField DragTerm((1+(1-alpha)/alpha*rhob/rhoa)/(rhob*(1-alpha))*draga->K(mag(W)));

	
	tauSw= scalar(1.0)/(alpha+alphaSmall)*(1-alpha)*rhob/rho*fvc::laplacian(nuFra, W)  + scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(W*(1-alpha)*rhob/rho))));
	tauFw= scalar(1.0)/(1-alpha+alphaSmall)*(alpha)*rhoa/rho*fvc::laplacian(nuEffb, W)+scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(W*(alpha)*rhoa/rho))));
	tauSU=scalar(1.0)/(alpha+alphaSmall)*fvc::laplacian(nuFra, U)+scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(U))));
	tauFu= - scalar(1.0)/(1-alpha+alphaSmall)*fvc::laplacian(nuEffb, U)- scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(U))));
	pSolid=(-scalar(1.0)/(alpha+alphaSmall)/rhoa)*(fvc::reconstruct(fvc::snGrad(pff+pa)*mesh.magSf()));
	pmixt=  -(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p)*mesh.magSf()));
	Dragterm=-fvc::Sp(DragTerm, W);
	
	
    //dimensionedScalar nuArt
    //(
        //"nuArt",
        //dimensionSet(0, 2, -1, 0, 0, 0, 0),
        //1e-5
    //);
	
	
	
	
//// CASE A
   fvVectorMatrix WEqn
    (
        fvm::ddt(W)
//	  +fvm::div(phiW, W)
	  +(pow((1-alpha)*rhob/rho,2)-pow(alpha*rhoa/rho,2))*fvm::div(phiW, W)
	  +(2*(1-alpha)*rhob/rho+2*alpha*rhoa/rho)*fvm::div(phi, W)

     
	// Shear stress contribution - Relative velocity 
      - scalar(1.0)/(alpha+alphaSmall)*(1-alpha)*rhob/rho*fvm::laplacian(nuFra, W)
	  - scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(W*(1-alpha)*rhob/rho))),schemeNu)

      - scalar(1.0)/(1-alpha+alphaSmall)*(alpha)*rhoa/rho*fvm::laplacian(nuEffb, W)
	  - scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(W*(alpha)*rhoa/rho))),schemeNu)
	  
	  
	  == 

	// Granular pressure contribution 
	//(scalar(1.0)/rhoa-scalar(1.0)/rhob-scalar(1.0)/(alpha+alphaSmall)/rhoa)*fvc::grad(pff+pa)
	(-scalar(1.0)/(alpha+alphaSmall)/rhoa)*(fvc::reconstruct(fvc::snGrad(pff+pa)*mesh.magSf()))

	// Mixture pressure contribution 
	//-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*fvc::grad(p)
	-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p)*mesh.magSf()))
	//-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p_rgh)*mesh.magSf())+ fvc::reconstruct(ghf*fvc::snGrad(rho)*mesh.magSf())+rho*g)  // -> sometimes this leads to problems

	
	// Shear stress contribution - mixture part
      + scalar(1.0)/(alpha+alphaSmall)*fvc::laplacian(nuFra, U)
	  + scalar(1.0)/(alpha+alphaSmall)*fvc::div(nuFra*dev2(T(fvc::grad(U))),schemeNu)
	  
      - scalar(1.0)/(1-alpha+alphaSmall)*fvc::laplacian(nuEffb, U)
	  - scalar(1.0)/(1-alpha+alphaSmall)*fvc::div(nuEffb*dev2(T(fvc::grad(U))),schemeNu)

	  // Drag term
	 -fvm::Sp(DragTerm, W)
    );



    
    WEqn.relax();
    WEqn.solve();
    W*= pos(alpha-alphaSmall);


	
}
