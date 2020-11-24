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
scalar pi = constant::mathematical::pi;

// following is general form of mean flow + sine wave and 2nd order stokes waves
// Add oscilitary pressure gradient
gradPOSC =
(
    gradPMEAN
  + gradPAMP1*Foam::cos(initTheta*(pi)/180.0 + 2.0*(pi)*runTime.value()/oscpT)
  + gradPAMP2*Foam::sin(initTheta*(pi)/90.0 + 4.0*(pi)*runTime.value()/oscpT)
);


muEff=rhob*nuEffb;
//volSymmTensorField tau_Diffusion = 1*alpha*beta*rhoa*rhob/rho/rho*symm(WRel * WRel);
//volSymmTensorField tauTot= 1*nuEffTotal*devS;
//volSymmTensorField tauTurb= 0*turbulenceb->nut()*devS;

 //Info<< "tauTot"<<tauTot<<endl;


 //Info<< "tauTurb"<<tauTurb<<endl;
surfaceScalarField oneOverrho =
(
    fvc::interpolate
    (
        scalar(1.0)/(rho),
        "interpolate(oneOverrho)"
    )
);

//Info<< "phi BBBBBBBBBBB"<< phi<< endl;


fvVectorMatrix UEqn
    (
        fvm::ddt(rho, U)
      + fvm::div(rhoPhi, U)
      - fvm::Sp(fvc::div(rhoPhi), U)
      + fvc::div
        ( alpha*(1-alpha)*(rhoa*rhob/rho)*WRel*WRel,
            "div(phiWRel,WRel)"
        )
      - fvm::laplacian(muEff, U, "laplacian(muEff,U)")
      - scalar(1.0)*rhoa/(alpha+alphaSmall)*fvm::laplacian(nuFra, U, "laplacian(nuFra,U)")
    //  - (fvc::grad(U) & fvc::grad(muEff))
      ==
	fvOptions(rho, U)
    );
UEqn.relax();

 fvOptions.constrain(UEqn);
   if (pimple.momentumPredictor())
    {   solve
        (UEqn
          ==
            fvc::reconstruct
            ((
                  - ghf*fvc::snGrad(rho)
                   - (fvc::snGrad(pff))
                   - (fvc::snGrad(pa))           
                  - fvc::snGrad(p_rgh)     
                )*mesh.magSf()
            )
        );
         fvOptions.correct(Ua);
    }
