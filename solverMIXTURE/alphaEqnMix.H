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
    //word scheme("div(phi,alpha)");
    //word schemer("div(phir,alpha)");
    //word schemeRel("div(phiRel,RelMixPar)");


    //surfaceScalarField phic("phic", phi);
    //surfaceScalarField phir("phir", phi*0); //to be changed!!!!

////check if Wrel to phiRel is ok. fvc::flux is not clear . alpha is embedded in beta so should we write it in a explicit way?
	//volScalarField RelMixPar = beta*rhob/rho;
	//surfaceScalarField phiRel = (fvc::interpolate(RelMixPar*WRel) & mesh.Sf());


surfaceScalarField phiAlpha
(
	IOobject
	(
		"phiAlpha",
		runTime.timeName(),
		mesh
	),
	(mesh.Sf() & fvc::interpolate(((1-alpha)-alpha*(1-alpha)*(rhoa-rhob)/rho)*WRel))
);

    for (int acorr=0; acorr<nAlphaCorr; acorr++)
    {
    fvScalarMatrix AlphaEqn
    (
          fvm::ddt( alpha)
        + fvm::div(phi, alpha)
        + fvm::div(phiAlpha, alpha)
        //- fvm::laplacian(mut, Alpha)
    );
    AlphaEqn.relax();
    AlphaEqn.solve();

    Info<< "Solid phase fraction = "
        << alpha.weightedAverage(mesh.V()).value()
        << "  Min(Alpha) = " << min(alpha).value()
        << "  Max(Alpha) = " << max(alpha).value()
        << endl;

	alpha.min(alphaMax);
	alpha.max(0);
    rho == rhob*(scalar(1)-alpha)+alpha*rhoa;

    
    
    
        //fvScalarMatrix alphaEqn
        //(
             //fvm::ddt(alpha)
           //+ fvm::div(phic, alpha, scheme)
         ////  + fvm::div(-fvc::flux(-phir, beta, schemer), alpha, schemer)
        ////  + fvm::div(phiRel,alpha*(1-alpha)*rhob/rho,schemeRel)
          //+ fvm::div(phiRel,alpha,schemeRel)
        //);

        //alphaEqn.relax();
        //alphaEqn.solve();
        
   //     RelMixPar = alpha*beta*rhob/rho;

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

        //beta = scalar(1.0) - alpha;

        //if (debugInfo)
        //{
            //Info<< "Dispersed phase volume fraction = "
            //<< alpha.weightedAverage(mesh.V()).value()
            //<< "  Min(alpha) = " << gMin(alpha)
            //<< "  Max(alpha) = " << gMax(alpha)
            //<< endl;
        //}
    }
}

//rho = alpha*rhoa + beta*rhob;
