/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2.4.0                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       dictionary;
    location    "constant";
    object      turbulenceProperties;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

simulationType  RAS;

RAS{
RASModel        twophaseMixingLength;
//RASModel        twophasekEpsilon;
//RASModel        twophasekOmega;

turbulence      on;
printCoeffs     on;
twophaseMixingLengthCoeffs
{
expoLM 1.0;
alphaMaxLM 0.61;
kappaLM 0.41;
}
}

// ************************************************************************* //
