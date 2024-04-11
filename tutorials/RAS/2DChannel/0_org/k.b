/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2.1.0                                 |
|   \\  /    A nd           | Web:      www.OpenFOAM.org                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    class       volScalarField;
    location    "0";
    object      k;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 2 -2 0 0 0 0];

internalField   uniform 1e-9; 

boundaryField
{
    inlet
    {
        type            fixedValue;
        value           uniform  1e-4;
    }
    outlet
    {
        type            zeroGradient;
    }
    top
    {
        type            zeroGradient;
    }
    walls
    {
        type            fixedValue;
	value		uniform 1e-6;
    }
    front
    {
        type            empty;
    }
    back
    {
        type            empty;
    }
}


// ************************************************************************* //
