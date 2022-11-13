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
    class       surfaceScalarField;
    location    "1400";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
119
(
1.23092e-15
2.48828e-15
3.74588e-15
5.03207e-15
6.32031e-15
7.6364e-15
8.95622e-15
1.03029e-14
1.1655e-14
1.30329e-14
1.44183e-14
1.58281e-14
1.72475e-14
1.86899e-14
2.01441e-14
2.16197e-14
2.31096e-14
2.46193e-14
2.61456e-14
2.76903e-14
2.92542e-14
3.08352e-14
3.24382e-14
3.40572e-14
3.57012e-14
3.73606e-14
3.90484e-14
4.07516e-14
4.24868e-14
4.42382e-14
4.6026e-14
4.78315e-14
4.96781e-14
5.1545e-14
5.34584e-14
5.53957e-14
5.73853e-14
5.94034e-14
6.14801e-14
6.35905e-14
6.57658e-14
6.79807e-14
7.02666e-14
7.2598e-14
7.50058e-14
7.74643e-14
8.00034e-14
8.25975e-14
8.52743e-14
8.80086e-14
9.08255e-14
9.37002e-14
9.66546e-14
9.96643e-14
1.02748e-13
1.05881e-13
1.0908e-13
1.12321e-13
1.15615e-13
1.18942e-13
1.22309e-13
1.25697e-13
1.29111e-13
1.32534e-13
1.35968e-13
1.39399e-13
1.42827e-13
1.46241e-13
1.4964e-13
1.53013e-13
1.56361e-13
1.59675e-13
1.62953e-13
1.6619e-13
1.69386e-13
1.72532e-13
1.75632e-13
1.78677e-13
1.81671e-13
1.84607e-13
1.87484e-13
1.90322e-13
1.93061e-13
1.95863e-13
1.98474e-13
2.0129e-13
2.04768e-13
2.07723e-13
2.12199e-13
2.50602e-13
-2.53249e-14
3.4075e-15
7.69154e-17
1.2845e-19
8.30047e-22
-7.71905e-20
-5.07468e-20
-7.53117e-20
-5.95696e-20
1.04001e-19
1.1258e-19
-4.0431e-20
3.37731e-20
3.95606e-20
-1.70978e-19
-3.77505e-20
4.87619e-20
-4.17489e-20
1.85622e-19
2.18398e-20
-9.61559e-20
1.52773e-20
-1.63222e-19
9.44201e-20
-1.43795e-20
9.10818e-20
-1.3303e-20
2.07941e-20
-5.32472e-20
)
;

boundaryField
{
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
120
(
-3.03835e-27
-9.12082e-27
-1.52198e-26
-2.13349e-26
-2.74845e-26
-3.36745e-26
-3.99302e-26
-4.62109e-26
-5.25539e-26
-5.90177e-26
-6.55456e-26
-7.21384e-26
-7.88965e-26
-8.57384e-26
-9.27033e-26
-9.98007e-26
-1.0704e-25
-1.14432e-25
-1.21985e-25
-1.29709e-25
-1.37615e-25
-1.45712e-25
-1.5401e-25
-1.62257e-25
-1.71263e-25
-1.80239e-25
-1.8961e-25
-1.98928e-25
-2.08666e-25
-2.19027e-25
-2.29336e-25
-2.39562e-25
-2.50459e-25
-2.61684e-25
-2.73252e-25
-2.84752e-25
-2.96743e-25
-3.10073e-25
-3.2194e-25
-3.36647e-25
-3.48776e-25
-3.63917e-25
-3.77937e-25
-3.92965e-25
-4.0792e-25
-4.25796e-25
-4.41168e-25
-4.58944e-25
-4.74658e-25
-4.94324e-25
-5.13273e-25
-5.32844e-25
-5.53057e-25
-5.73922e-25
-5.94646e-25
-6.17677e-25
-6.40576e-25
-6.64151e-25
-6.90208e-25
-7.13391e-25
-7.3901e-25
-7.65237e-25
-7.92026e-25
-8.1934e-25
-8.49243e-25
-8.7299e-25
-9.03659e-25
-9.32371e-25
-9.61201e-25
-9.90062e-25
-1.02129e-24
-1.04726e-24
-1.07534e-24
-1.10291e-24
-1.12982e-24
-1.15591e-24
-1.18102e-24
-1.20499e-24
-1.22767e-24
-1.2489e-24
-1.26854e-24
-1.28644e-24
-1.30246e-24
-1.3165e-24
-1.32848e-24
-1.3447e-24
-1.34556e-24
-1.35054e-24
-1.35319e-24
-1.35427e-24
-1.35899e-24
-1.58776e-24
-2.10351e-24
-2.60665e-24
-3.08907e-24
-3.54329e-24
-3.96247e-24
-4.34047e-24
-4.67201e-24
-4.95268e-24
-5.17903e-24
-5.34859e-24
-5.45984e-24
-5.5122e-24
-5.50597e-24
-5.44225e-24
-5.32286e-24
-5.15023e-24
-4.92732e-24
-4.6575e-24
-4.34449e-24
-3.9922e-24
-3.60473e-24
-3.18627e-24
-2.74103e-24
-2.27323e-24
-1.78706e-24
-1.28666e-24
-7.76149e-25
-2.59582e-25
)
;
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
120
(
3.03835e-27
9.12082e-27
1.52198e-26
2.13349e-26
2.74845e-26
3.36745e-26
3.99302e-26
4.62109e-26
5.25539e-26
5.90177e-26
6.55456e-26
7.21384e-26
7.88965e-26
8.57384e-26
9.27033e-26
9.98007e-26
1.0704e-25
1.14432e-25
1.21985e-25
1.29709e-25
1.37615e-25
1.45712e-25
1.5401e-25
1.62257e-25
1.71263e-25
1.80239e-25
1.8961e-25
1.98928e-25
2.08666e-25
2.19027e-25
2.29336e-25
2.39562e-25
2.50459e-25
2.61684e-25
2.73252e-25
2.84752e-25
2.96743e-25
3.10073e-25
3.2194e-25
3.36647e-25
3.48776e-25
3.63917e-25
3.77937e-25
3.92965e-25
4.0792e-25
4.25796e-25
4.41168e-25
4.58944e-25
4.74658e-25
4.94324e-25
5.13273e-25
5.32844e-25
5.53057e-25
5.73922e-25
5.94646e-25
6.17677e-25
6.40576e-25
6.64151e-25
6.90208e-25
7.13391e-25
7.3901e-25
7.65237e-25
7.92026e-25
8.1934e-25
8.49243e-25
8.7299e-25
9.03659e-25
9.32371e-25
9.61201e-25
9.90062e-25
1.02129e-24
1.04726e-24
1.07534e-24
1.10291e-24
1.12982e-24
1.15591e-24
1.18102e-24
1.20499e-24
1.22767e-24
1.2489e-24
1.26854e-24
1.28644e-24
1.30246e-24
1.3165e-24
1.32848e-24
1.3447e-24
1.34556e-24
1.35054e-24
1.35319e-24
1.35427e-24
1.35899e-24
1.58776e-24
2.10351e-24
2.60665e-24
3.08907e-24
3.54329e-24
3.96247e-24
4.34047e-24
4.67201e-24
4.95268e-24
5.17903e-24
5.34859e-24
5.45984e-24
5.5122e-24
5.50597e-24
5.44225e-24
5.32286e-24
5.15023e-24
4.92732e-24
4.6575e-24
4.34449e-24
3.9922e-24
3.60473e-24
3.18627e-24
2.74103e-24
2.27323e-24
1.78706e-24
1.28666e-24
7.76149e-25
2.59582e-25
)
;
    }
    top
    {
        type            fixedValue;
        value           uniform 0;
    }
    bottom
    {
        type            fixedValue;
        value           uniform 0;
    }
    frontAndBackPlanes
    {
        type            empty;
        value           nonuniform List<scalar> 0();
    }
}


// ************************************************************************* //
