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
    location    "1600";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
119
(
1.18273e-16
2.40255e-16
3.6143e-16
4.85339e-16
6.08597e-16
7.3525e-16
8.61141e-16
9.90473e-16
1.11899e-15
1.25089e-15
1.38207e-15
1.51643e-15
1.65031e-15
1.78701e-15
1.92362e-15
2.06256e-15
2.20192e-15
2.34298e-15
2.48507e-15
2.62812e-15
2.77296e-15
2.91788e-15
3.06541e-15
3.21207e-15
3.36224e-15
3.51053e-15
3.66325e-15
3.81304e-15
3.96822e-15
4.1194e-15
4.27689e-15
4.42933e-15
4.58899e-15
4.74259e-15
4.90423e-15
5.05888e-15
5.22235e-15
5.37797e-15
5.54308e-15
5.6996e-15
5.86617e-15
6.02356e-15
6.19142e-15
6.34966e-15
6.51867e-15
6.67775e-15
6.8478e-15
7.0078e-15
7.17878e-15
7.33978e-15
7.51168e-15
7.67381e-15
7.84663e-15
8.01006e-15
8.18387e-15
8.34884e-15
8.52378e-15
8.69061e-15
8.86697e-15
9.03614e-15
9.21442e-15
9.38668e-15
9.56776e-15
9.74427e-15
9.92952e-15
1.0112e-14
1.03035e-14
1.04944e-14
1.06951e-14
1.08975e-14
1.11109e-14
1.13284e-14
1.15587e-14
1.17943e-14
1.20452e-14
1.23001e-14
1.25742e-14
1.28457e-14
1.31436e-14
1.34225e-14
1.37431e-14
1.40122e-14
1.43551e-14
1.45893e-14
1.49585e-14
1.51328e-14
1.55228e-14
1.56809e-14
1.59009e-14
2.01267e-14
-4.72007e-13
-4.74322e-16
2.33685e-17
9.39894e-21
3.65312e-21
-1.25673e-21
4.97275e-21
1.565e-20
-4.97346e-21
-2.06093e-20
3.74037e-21
8.6472e-21
-8.08543e-21
4.23724e-21
7.22255e-21
-1.97948e-21
2.87647e-21
-7.3722e-21
-7.24584e-21
-6.0945e-22
8.76836e-21
1.34131e-20
-1.27827e-20
6.03857e-21
-2.2941e-20
1.55602e-20
-1.05517e-21
1.3365e-20
-9.76131e-21
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
-3.88506e-27
-1.16606e-26
-1.94514e-26
-2.72667e-26
-3.51173e-26
-4.30129e-26
-5.09651e-26
-5.8979e-26
-6.70675e-26
-7.52453e-26
-8.35161e-26
-9.18891e-26
-1.00383e-25
-1.08999e-25
-1.17751e-25
-1.26647e-25
-1.35698e-25
-1.44914e-25
-1.54304e-25
-1.63879e-25
-1.73647e-25
-1.83618e-25
-1.93802e-25
-2.04182e-25
-2.14844e-25
-2.25719e-25
-2.36855e-25
-2.48217e-25
-2.59856e-25
-2.71797e-25
-2.83982e-25
-2.96413e-25
-3.09165e-25
-3.2221e-25
-3.35552e-25
-3.49153e-25
-3.62763e-25
-3.76763e-25
-3.90896e-25
-4.05553e-25
-4.2024e-25
-4.35455e-25
-4.50821e-25
-4.66522e-25
-4.82453e-25
-4.98866e-25
-5.15275e-25
-5.32093e-25
-5.48923e-25
-5.66259e-25
-5.83686e-25
-6.01299e-25
-6.19076e-25
-6.36995e-25
-6.54968e-25
-6.73166e-25
-6.91366e-25
-7.09603e-25
-7.27991e-25
-7.46237e-25
-7.64565e-25
-7.82799e-25
-8.00901e-25
-8.18833e-25
-8.36711e-25
-8.5386e-25
-8.71203e-25
-8.88056e-25
-9.04538e-25
-9.2061e-25
-9.36404e-25
-9.51349e-25
-9.65936e-25
-9.79952e-25
-9.93358e-25
-1.00612e-24
-1.01819e-24
-1.02955e-24
-1.04016e-24
-1.04998e-24
-1.059e-24
-1.06718e-24
-1.0745e-24
-1.08095e-24
-1.08652e-24
-1.09166e-24
-1.09491e-24
-1.09773e-24
-1.09963e-24
-1.10061e-24
-1.10087e-24
-1.09395e-24
-1.07845e-24
-1.06211e-24
-1.04474e-24
-1.02616e-24
-1.00621e-24
-9.84719e-25
-9.6155e-25
-9.36567e-25
-9.09655e-25
-8.80718e-25
-8.49679e-25
-8.16483e-25
-7.81094e-25
-7.43501e-25
-7.03714e-25
-6.61766e-25
-6.17709e-25
-5.71621e-25
-5.23598e-25
-4.73758e-25
-4.22237e-25
-3.69188e-25
-3.1478e-25
-2.59197e-25
-2.02637e-25
-1.45304e-25
-8.74135e-26
-2.91863e-26
)
;
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
120
(
3.88506e-27
1.16606e-26
1.94514e-26
2.72667e-26
3.51173e-26
4.30129e-26
5.09651e-26
5.8979e-26
6.70675e-26
7.52453e-26
8.35161e-26
9.18891e-26
1.00383e-25
1.08999e-25
1.17751e-25
1.26647e-25
1.35698e-25
1.44914e-25
1.54304e-25
1.63879e-25
1.73647e-25
1.83618e-25
1.93802e-25
2.04182e-25
2.14844e-25
2.25719e-25
2.36855e-25
2.48217e-25
2.59856e-25
2.71797e-25
2.83982e-25
2.96413e-25
3.09165e-25
3.2221e-25
3.35552e-25
3.49153e-25
3.62763e-25
3.76763e-25
3.90896e-25
4.05553e-25
4.2024e-25
4.35455e-25
4.50821e-25
4.66522e-25
4.82453e-25
4.98866e-25
5.15275e-25
5.32093e-25
5.48923e-25
5.66259e-25
5.83686e-25
6.01299e-25
6.19076e-25
6.36995e-25
6.54968e-25
6.73166e-25
6.91366e-25
7.09603e-25
7.27991e-25
7.46237e-25
7.64565e-25
7.82799e-25
8.00901e-25
8.18833e-25
8.36711e-25
8.5386e-25
8.71203e-25
8.88056e-25
9.04538e-25
9.2061e-25
9.36404e-25
9.51349e-25
9.65936e-25
9.79952e-25
9.93358e-25
1.00612e-24
1.01819e-24
1.02955e-24
1.04016e-24
1.04998e-24
1.059e-24
1.06718e-24
1.0745e-24
1.08095e-24
1.08652e-24
1.09166e-24
1.09491e-24
1.09773e-24
1.09963e-24
1.10061e-24
1.10087e-24
1.09395e-24
1.07845e-24
1.06211e-24
1.04474e-24
1.02616e-24
1.00621e-24
9.84719e-25
9.6155e-25
9.36567e-25
9.09655e-25
8.80718e-25
8.49679e-25
8.16483e-25
7.81094e-25
7.43501e-25
7.03714e-25
6.61766e-25
6.17709e-25
5.71621e-25
5.23598e-25
4.73758e-25
4.22237e-25
3.69188e-25
3.1478e-25
2.59197e-25
2.02637e-25
1.45304e-25
8.74135e-26
2.91863e-26
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
