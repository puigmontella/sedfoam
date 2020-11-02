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
//

volScalarField Re_p=d_part*sqrt(WRel & WRel)/nub;

//volScalarField nVal=4.7*(1+0.15*pow(Re_p,0.687))/(1+0.253*pow(Re_p,0.687));
volScalarField Drag_c=24/max(Re_p,1e-8)*(1+0.15*pow(Re_p,0.687));


dimensionedScalar Ksmall
(
	"Ksmall",
	dimensionSet(1, -3, -1, 0, 0, 0, 0),
	1e-8
);

//falta afegir divergència i ddt!
//volVectorField w_i=4./3.*d_part*d_part*rhob*(rhoa-rho)/(nub*K*Re_p)*(gravity-fvc::div( U, schemeRel)*( U)-fvc::ddt( U));
volVectorField w_i=4./3.*d_part*d_part*(rhoa-rho)/(rhob*nub*max(Drag_c,1e-8)*max(Re_p,1e-8))*(gravity-fvc::ddt(U)- fvc::div(phi, U)*(1/rho));


////turbulent diffusion contribution
//dimensionedScalar nu_t_Rel
    //(
        //"nu_t_Rel",
        //dimensionSet(0, 2, -1, 0, 0, 0, 0),
        //scalar(0.5)
    //);
    
//dimensionedScalar schmidt_REL
    //(
        //"schmidt_REL",
        //dimensionSet(0, 0, 0, 0, 0, 0, 0),
        //scalar(0.5)
    //);
    
//dimensionedScalar eddy_visc_REL
    //(
        //"eddy_visc_REL",
        //dimensionSet(0, 0, 0, 0, 0, 0, 0),
        //scalar(0.5)
    //);
    
//volVectorField w_td=nu_t_Rel/(eddy_visc_REL*schmidt_REL)*(fvc::grad(alpha)/alpha-fvc::grad(beta)/beta);


//shear-induced self-diffusion contribution
volTensorField gradUTRel = fvc::grad(U)().T();
volSymmTensorField D_Rel = symm(gradUTRel);
volScalarField magD_Rel = ::sqrt(2.0)*mag(D_Rel);

volVectorField w_sd=-0.15*pow(d_part*alpha,2)*fvc::grad(magD_Rel);


//Info<< "WRel" << WRel << endl;
WRel=(w_i+w_sd);
//WRel=w_i+w_td+w_sd;

WRel.correctBoundaryConditions();



