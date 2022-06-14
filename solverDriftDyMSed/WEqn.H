
{
	//W *= cellMask;
	//################################### solving W #############################
		
	surfaceScalarField phiW(fvc::flux(W));

	volScalarField DragTerm(((1-alpha)/rhoa+alpha/rhob)*draga->K(mag(W)));

	//tauSw=scalar(1.0)/(rhoa*(alpha+alphaSmall))*fvc::laplacian(granularRheology.mua()*(1-alpha)*rhob/rho, W)+scalar(1.0)/(rhoa*(alpha+alphaSmall))*fvc::div(granularRheology.mua()*(1-alpha)*rhob/rho*dev2(T(fvc::grad(W))));

	//tauFw=scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::laplacian(nuEffb*rhob*(alpha)*rhoa/rho, W)+scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::div(nuEffb*rhob*(alpha)*rhoa/rho*dev2(T(fvc::grad(W))));
	
	//tauSU= scalar(1.0)/(rhoa*(alpha+alphaSmall))*fvc::laplacian(granularRheology.mua(), U)+ scalar(1.0)/(rhoa*(alpha+alphaSmall))*fvc::div(granularRheology.mua()*dev2(T(fvc::grad(U))));
	
	//tauFu= - scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::laplacian(nuEffb*rhob, U)  - scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::div(nuEffb*rhob*dev2(T(fvc::grad(U))));
	//pSolid=(scalar(1.0)/rhoa-scalar(1.0)/rhob-scalar(1.0)/(alpha+alphaSmall)/rhoa)*(fvc::reconstruct(fvc::snGrad(pff+pa)*mesh.magSf()));
	//pmixt=  -(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p)*mesh.magSf()));
	//Dragterm=-fvc::Sp(DragTerm, W);


   fvVectorMatrix WEqn
    (
        fvm::ddt(W)
//	  +fvm::div(phiW, W)
	  +(pow((1-alpha)*rhob/rho,2)-pow(alpha*rhoa/rho,2))*fvm::div(phiW, W)
	  +(2*(1-alpha)*rhob/rho+2*alpha*rhoa/rho)*fvm::div(phi, W)

     + MRF.DDt(W)
     
	 ////Shear stress contribution - Relative velocity 
      //- scalar(1.0)/((alpha+alphaSmall))*fvm::laplacian(nuFra*(1-alpha)*rhob/rho, W)
	  //- scalar(1.0)/((alpha+alphaSmall))*fvc::div(nuFra*(1-alpha)*rhob/rho*dev2(T(fvc::grad(W))))
	  
      //- scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvm::laplacian(nuEffb*rhob*(alpha)*rhoa/rho, W)
	  //- scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::div(nuEffb*rhob*(alpha)*rhoa/rho*dev2(T(fvc::grad(W))))
	  
	  == 
			fvOptions(W)

	// Granular pressure contribution 
	//+(scalar(1.0)/rhoa-scalar(1.0)/rhob-scalar(1.0)/(alpha+alphaSmall)/rhoa)*fvc::grad(pff+pa)
	+(-scalar(1.0)/(alpha+alphaSmall)/rhoa)*(fvc::reconstruct(fvc::snGrad(pff+pa)*mesh.magSf()))

	// Mixture pressure contribution 
	//-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*fvc::grad(p)
	-(scalar(1.0)/rhoa-scalar(1.0)/rhob)*(fvc::reconstruct(fvc::snGrad(p)*mesh.magSf()))
	
	
	// Shear stress contribution - mixture part
 
	  ////Ua=1/rho*(W*(1-alpha)*rhob+rho*U);
	  ////Ub=1/rho*(-W*alpha*rhoa+rho*U);
	  
      //+ scalar(1.0)/((alpha+alphaSmall))*fvc::laplacian(nuFra, Ua)
	  //+ scalar(1.0)/((alpha+alphaSmall))*fvc::div(nuFra*dev2(T(fvc::grad(Ua))))
	  
      //- scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::laplacian(nuEffb*rhob, Ub)
	  //- scalar(1.0)/(rhob*(1-alpha+alphaSmall))*fvc::div(nuEffb*rhob*dev2(T(fvc::grad(Ub))))
	  
	  // Drag term
	 -fvm::Sp(DragTerm, W)
    );

    dimensionedScalar Wbig
    (
        "Wbig",
        dimensionSet(0,1, -1, 0, 0, 0, 0),
        1e-4
    );
    dimensionedScalar Wsmall
    (
        "Wsmall",
        dimensionSet(0,1, -1, 0, 0, 0, 0),
        1e-7
    );

    WEqn.relax();
    WEqn.solve();
    W*= pos(alpha-alphaSmall);
    W*= pos(Wbig-mag(W));


    W *= cellMask;

    W.correctBoundaryConditions();

	
}
