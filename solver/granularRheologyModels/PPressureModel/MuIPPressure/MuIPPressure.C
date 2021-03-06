/*---------------------------------------------------------------------------*\
Copyright (C) 2015 Cyrille Bonamy, Julien Chauchat, Tian-Jian Hsu
                   and contributors

License
    This file is part of SedFOAM.

    SedFOAM is free software: you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    SedFOAM is distributed in the hope that it will be useful, but WITHOUT
    ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
    FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
    for more details.

    You should have received a copy of the GNU General Public License
    along with SedFOAM.  If not, see <http://www.gnu.org/licenses/>.

\*---------------------------------------------------------------------------*/

#include "MuIPPressure.H"
#include "addToRunTimeSelectionTable.H"

// * * * * * * * * * * * * * * Static Data Members * * * * * * * * * * * * * //

namespace Foam
{
namespace granularRheologyModels
{
    defineTypeNameAndDebug(MuIPPressure, 0);
    addToRunTimeSelectionTable(PPressureModel, MuIPPressure, dictionary);
}
}

// * * * * * * * * * * * * * * * * Constructors  * * * * * * * * * * * * * * //

Foam::granularRheologyModels::MuIPPressure::MuIPPressure(const dictionary& dict)
:
    PPressureModel(dict)
{}


// * * * * * * * * * * * * * * * * Destructor  * * * * * * * * * * * * * * * //

Foam::granularRheologyModels::MuIPPressure::~MuIPPressure()
{}


// * * * * * * * * * * * * * * * Member Functions  * * * * * * * * * * * * * //

Foam::tmp<Foam::volScalarField> Foam::granularRheologyModels::MuIPPressure::pa
(
    const volScalarField& pf,
    const dimensionedScalar& Bphi,
    const dimensionedScalar& rhoa,
    const dimensionedScalar& da,
    const dimensionedScalar& rhob,
    const dimensionedScalar& nub,
    const volScalarField& magD,
    const volScalarField& alpha,
    const dimensionedScalar& alphaMax,
    const dimensionedScalar& Alphasmall
) const

{
    return pow(Bphi*alpha/max(alphaMax - alpha, scalar(1e-3)), 2)
          *rhoa*pow(da, 2)*pow(magD, 2);
}

Foam::tmp<Foam::volScalarField> Foam::granularRheologyModels::
MuIPPressure::alphaEq
(
    const volScalarField& pa,
    const dimensionedScalar& Bphi,
    const dimensionedScalar& rhoa,
    const dimensionedScalar& da,
    const dimensionedScalar& rhob,
    const dimensionedScalar& nub,
    const volScalarField& magD,
    const dimensionedScalar& alphaMax
) const

{
    return alphaMax/(1+Bphi*da*magD*pow(pa/rhoa, -0.5));
}


// ************************************************************************* //
