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
    location    "1140";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
119
(
1.57592e-15
3.19298e-15
4.81126e-15
6.4744e-15
8.14235e-15
9.85453e-15
1.15752e-14
1.33392e-14
1.51156e-14
1.6934e-14
1.87691e-14
2.06451e-14
2.25429e-14
2.44801e-14
2.64441e-14
2.84457e-14
3.04795e-14
3.25499e-14
3.46584e-14
3.68021e-14
3.89898e-14
4.12124e-14
4.34851e-14
4.57921e-14
4.81556e-14
5.05542e-14
5.3016e-14
5.55138e-14
5.80817e-14
6.0688e-14
6.33708e-14
6.60951e-14
6.89028e-14
7.17561e-14
7.4699e-14
7.76928e-14
8.07826e-14
8.39294e-14
8.7179e-14
9.04935e-14
9.39177e-14
9.7417e-14
1.01034e-13
1.0474e-13
1.08575e-13
1.12514e-13
1.16598e-13
1.20807e-13
1.25178e-13
1.297e-13
1.34405e-13
1.39288e-13
1.44378e-13
1.49673e-13
1.55199e-13
1.60959e-13
1.66977e-13
1.73264e-13
1.7985e-13
1.86764e-13
1.94057e-13
2.01794e-13
2.10069e-13
2.19003e-13
2.28754e-13
2.39519e-13
2.51547e-13
2.6512e-13
2.80559e-13
2.98472e-13
3.19871e-13
3.44518e-13
3.69315e-13
3.90788e-13
4.04169e-13
4.21596e-13
1.38342e-12
1.86565e-12
2.11458e-12
2.22641e-12
2.27747e-12
2.30114e-12
2.31254e-12
2.31809e-12
2.32079e-12
2.32209e-12
2.32265e-12
2.32277e-12
2.32397e-12
2.33146e-12
2.34769e-12
1.88513e-12
7.75285e-12
4.45319e-12
5.49513e-14
9.69141e-15
1.7473e-15
1.64077e-18
5.4913e-19
1.31673e-19
-9.13577e-19
-2.42548e-19
-1.10672e-18
5.24215e-19
3.47735e-20
1.23621e-18
5.2669e-19
8.35645e-20
-1.46765e-18
-9.05747e-19
4.36024e-19
3.52879e-19
9.60826e-19
-4.18281e-19
5.09697e-19
-1.26746e-18
1.64563e-19
-1.84194e-19
6.5342e-19
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
-2.12462e-27
-6.37792e-27
-1.06446e-26
-1.4919e-26
-1.92195e-26
-2.35486e-26
-2.79339e-26
-3.23178e-26
-3.6743e-26
-4.1281e-26
-4.5853e-26
-5.04553e-26
-5.52139e-26
-6.00178e-26
-6.49137e-26
-6.99096e-26
-7.50137e-26
-8.02344e-26
-8.55804e-26
-9.10604e-26
-9.66838e-26
-1.0246e-25
-1.08397e-25
-1.14152e-25
-1.2081e-25
-1.27309e-25
-1.34216e-25
-1.40921e-25
-1.4806e-25
-1.55914e-25
-1.63553e-25
-1.70926e-25
-1.79072e-25
-1.87511e-25
-1.96256e-25
-2.04704e-25
-2.13896e-25
-2.24762e-25
-2.33362e-25
-2.4579e-25
-2.54341e-25
-2.66973e-25
-2.77766e-25
-2.89768e-25
-3.01403e-25
-3.1701e-25
-3.28695e-25
-3.43589e-25
-3.5514e-25
-3.72163e-25
-3.87786e-25
-4.03962e-25
-4.20706e-25
-4.38018e-25
-4.54689e-25
-4.74409e-25
-4.93486e-25
-5.13135e-25
-5.36165e-25
-5.54079e-25
-5.75327e-25
-5.97086e-25
-6.1932e-25
-6.42033e-25
-6.68781e-25
-6.84991e-25
-7.12995e-25
-7.37961e-25
-7.63736e-25
-7.90441e-25
-8.22929e-25
-8.45631e-25
-8.72498e-25
-8.96625e-25
-9.15384e-25
-9.26598e-25
-1.00116e-24
-1.37091e-23
-1.76318e-23
-1.92017e-23
-2.06303e-23
-2.22956e-23
-2.43585e-23
-2.70479e-23
-3.06944e-23
-3.58367e-23
-3.03371e-23
-2.61916e-23
-2.21247e-23
-1.91611e-23
-1.68356e-23
-1.4969e-23
-1.36706e-23
-1.33802e-23
-1.2841e-23
-1.22212e-23
-1.16137e-23
-1.10187e-23
-1.04346e-23
-9.86172e-24
-9.3e-24
-8.74954e-24
-8.21027e-24
-7.68193e-24
-7.16416e-24
-6.65642e-24
-6.15812e-24
-5.66856e-24
-5.18703e-24
-4.71278e-24
-4.24508e-24
-3.7832e-24
-3.32646e-24
-2.87417e-24
-2.42569e-24
-1.98039e-24
-1.53766e-24
-1.09691e-24
-6.57571e-25
-2.1907e-25
)
;
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
120
(
2.12462e-27
6.37792e-27
1.06446e-26
1.4919e-26
1.92195e-26
2.35486e-26
2.79339e-26
3.23178e-26
3.6743e-26
4.1281e-26
4.5853e-26
5.04553e-26
5.52139e-26
6.00178e-26
6.49137e-26
6.99096e-26
7.50137e-26
8.02344e-26
8.55804e-26
9.10604e-26
9.66838e-26
1.0246e-25
1.08397e-25
1.14152e-25
1.2081e-25
1.27309e-25
1.34216e-25
1.40921e-25
1.4806e-25
1.55914e-25
1.63553e-25
1.70926e-25
1.79072e-25
1.87511e-25
1.96256e-25
2.04704e-25
2.13896e-25
2.24762e-25
2.33362e-25
2.4579e-25
2.54341e-25
2.66973e-25
2.77766e-25
2.89768e-25
3.01403e-25
3.1701e-25
3.28695e-25
3.43589e-25
3.5514e-25
3.72163e-25
3.87786e-25
4.03962e-25
4.20706e-25
4.38018e-25
4.54689e-25
4.74409e-25
4.93486e-25
5.13135e-25
5.36165e-25
5.54079e-25
5.75327e-25
5.97086e-25
6.1932e-25
6.42033e-25
6.68781e-25
6.84991e-25
7.12995e-25
7.37961e-25
7.63736e-25
7.90441e-25
8.22929e-25
8.45631e-25
8.72498e-25
8.96625e-25
9.15384e-25
9.26598e-25
1.00116e-24
1.37091e-23
1.76318e-23
1.92017e-23
2.06303e-23
2.22956e-23
2.43585e-23
2.70479e-23
3.06944e-23
3.58367e-23
3.03371e-23
2.61916e-23
2.21247e-23
1.91611e-23
1.68356e-23
1.4969e-23
1.36706e-23
1.33802e-23
1.2841e-23
1.22212e-23
1.16137e-23
1.10187e-23
1.04346e-23
9.86172e-24
9.3e-24
8.74954e-24
8.21027e-24
7.68193e-24
7.16416e-24
6.65642e-24
6.15812e-24
5.66856e-24
5.18703e-24
4.71278e-24
4.24508e-24
3.7832e-24
3.32646e-24
2.87417e-24
2.42569e-24
1.98039e-24
1.53766e-24
1.09691e-24
6.57571e-25
2.1907e-25
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
