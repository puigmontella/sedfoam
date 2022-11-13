/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     | Version:  2206                                  |
|   \\  /    A nd           | Website:  www.openfoam.com                      |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    format      ascii;
    arch        "LSB;label=32;scalar=64";
    class       volScalarField;
    location    "1720";
    object      alpha.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 0 0 0 0 0 0];

internalField   nonuniform List<scalar> 
120
(
0.399886
0.39997
0.39997
0.400063
0.400065
0.400159
0.400163
0.400257
0.400264
0.400357
0.400366
0.40046
0.400472
0.400566
0.40058
0.400675
0.400691
0.400786
0.400806
0.400901
0.400923
0.401019
0.401044
0.40114
0.401168
0.401265
0.401297
0.401394
0.401429
0.401527
0.401566
0.401664
0.401707
0.401806
0.401854
0.401954
0.402005
0.402106
0.402162
0.402265
0.402326
0.40243
0.402495
0.402602
0.402672
0.402781
0.402857
0.402968
0.40305
0.403164
0.403252
0.40337
0.403465
0.403586
0.403688
0.403814
0.403924
0.404056
0.404174
0.404312
0.40444
0.404585
0.404723
0.404877
0.405026
0.405191
0.405353
0.40553
0.405707
0.405898
0.406093
0.406303
0.406517
0.40675
0.406989
0.40725
0.407519
0.407818
0.408124
0.408475
0.40883
0.409257
0.409677
0.410222
0.410737
0.411484
0.412167
0.413313
0.414436
0.4167
0.613609
0.999831
0.999998
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
1
)
;

boundaryField
{
    inlet
    {
        type            cyclic;
    }
    outlet
    {
        type            cyclic;
    }
    top
    {
        type            calculated;
        value           uniform 1;
    }
    bottom
    {
        type            calculated;
        value           uniform 0.399886;
    }
    frontAndBackPlanes
    {
        type            empty;
    }
}


// ************************************************************************* //
