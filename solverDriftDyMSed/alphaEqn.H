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
    word scheme("div(phi,alpha)");
    word schemer("div(phir,alpha)");
    word alphadrScheme("div(phir,alpha)");

    surfaceScalarField phic("phic", MRF.absolute(phi));
surfaceScalarField phir("phir", MRF.absolute(phia - phib));
    //Relative flux between dispersed and continuous phase(s)
  //	#include "WEqn.H"

  	surfaceScalarField phiW(fvc::flux(W));
  	
  	
    surfaceScalarField phi3
    (
			 -fvc::flux( -phiW,
							   (1-alpha)
						 	 - alpha*(1-alpha)*(rhoa-rhob)/rho,
							 alphadrScheme
					   )
		);

     phiU=phic;
          phiWsa=phi3;
//Info << "phi3 a"<< phi3<<endl;

//Info << "phic a"<< phic<<endl;

    for (int acorr=0; acorr<nAlphaCorr; acorr++)
    {
        alpha.correctBoundaryConditions();
        fvScalarMatrix alphaEqn
        (
             fvm::ddt(alpha)
           + fvm::div(phic, alpha, scheme)
           + fvm::div(phi3, alpha, alphadrScheme)

        );

        alphaEqn.relax();
        alphaEqn.solve();

        if (packingLimiter)
        {
            int i=0;
            while (i<100 && max(alpha).value()>=alphaMax.value())
            {
                #include "packingLimiter.H"
                i++;
            }
        }


        alpha.min(alphaMax);
        alpha.max(0);

        alpha *= cellMask;

        

        alpha*= pos(alpha-alphaSmall);

        
        //beta = cellMask*(scalar(1.0) - alpha);
        beta = (scalar(1.0) - alpha);
        beta.max(0);
        
        alpha.correctBoundaryConditions();
       // beta.correctBoundaryConditions();

        if (debugInfo)
        {
            Info<< "Dispersed phase volume fraction = "
            << alpha.weightedAverage(mesh.V()).value()
            << "  Min(alpha) = " << gMin(alpha)
            << "  Max(alpha) = " << gMax(alpha)
            << endl;
        }
    }
}

rho = alpha*rhoa + beta*rhob;
//rho.correctBoundaryConditions();
rhoPhi = fvc::interpolate(rho)*phi;
