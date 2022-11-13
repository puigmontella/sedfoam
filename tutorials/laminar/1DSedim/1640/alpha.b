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
    location    "1640";
    object      alpha.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 0 0 0 0 0 0];

internalField   nonuniform List<scalar> 
120
(
0.399893
0.399977
0.399977
0.40007
0.400073
0.400166
0.400171
0.400265
0.400272
0.400365
0.400375
0.400469
0.40048
0.400575
0.400589
0.400683
0.4007
0.400795
0.400814
0.40091
0.400932
0.401027
0.401053
0.401149
0.401178
0.401274
0.401306
0.401403
0.401439
0.401536
0.401576
0.401674
0.401718
0.401816
0.401864
0.401963
0.402016
0.402116
0.402173
0.402275
0.402337
0.40244
0.402507
0.402612
0.402684
0.402791
0.402869
0.402978
0.403062
0.403175
0.403265
0.40338
0.403477
0.403597
0.403701
0.403826
0.403937
0.404067
0.404187
0.404324
0.404453
0.404597
0.404736
0.404889
0.40504
0.405203
0.405367
0.405542
0.405721
0.405911
0.406107
0.406316
0.406532
0.406762
0.407004
0.407262
0.407535
0.40783
0.408141
0.408486
0.408849
0.409266
0.409697
0.410229
0.410757
0.411494
0.412175
0.413353
0.414363
0.417132
0.612267
0.99983
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
        value           uniform 0.399893;
    }
    frontAndBackPlanes
    {
        type            empty;
    }
}


// ************************************************************************* //
