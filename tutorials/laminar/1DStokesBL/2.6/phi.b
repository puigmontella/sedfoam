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
    format      binary;
    arch        "LSB;label=32;scalar=64";
    class       surfaceScalarField;
    location    "2.6";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(d�i+�	;���2C;`j �Z
D;�T+��C;L'�?reC;�v���D;�k̆?�D;�d�R�C;�}�+~D;�I����D;&�y�&0E;�����$E;B��4�E;yX�շ�D;W�
cc�D;��v���D;L?~���D;�k�T��D;�",���D;g&r�xD;kg��C;�ޒ�9/C;.��bP7;��a�5;"�Ͻ�2;�g���~3;�!�-�5;!�z�6;��>^�3;Tބ!}�4;��e���3;l?�f�3;�R������������R�7;��B�EAt8���y�`��4H#��Zs�7��V�]O�9�YiM��<��1T�:�m�<�ZN���1/tO�vQ[���O����MP�����P��.|Ƚ�P��@%dD����SB��3�UQA����^U=�2�G�*?��2E+��=��}�1�<�?���\<��U�Y��;�w܃vy;��^݁��:���<YWE:�y���@;�=���	3:�8�؆�8�iGV��H`�����ߍ`���[�`���3���N��71&Q������8Q� �Ȏ3J���k��J�0E���lK�4L76�bL�;�M���~/ϙM����N�G�J��`N�@x�7��N��M2���N�T;�hDO�����\VO��;�O�@5��HP��ʵ�|�P�l/,�Q�xp��P�m�$Z11��j��5�4�{-��<�4�A�|�6��r*0s5�(��>��%��=������vy<;,�	*��>;v�1�w�@;�����^;��Ԁ�^;��P�^;);

boundaryField
{
    bottom
    {
        type            fixedValue;
        value           uniform 0;
    }
    top
    {
        type            calculated;
        value           uniform 1.01936e-22;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(~�����-��Ďd�@E�J��U�P�-�km��V�ֽ"o�[��#�bR`�r�us�gb���l��>d�H�M}��e�FxhtW=g��/LZDmh��BΖmi�� ^Bj���ߜ�j�V�()<yk���?p�k�L����0l�2]2~3el�mn��:�l�#R%��l�ی�l�l�����|l�J&�P�_l����%�:l���Tol�R��@��k��Q���k��n�N�mk�Ti�G3k�H��j��K$ɼj�w��C�j���}Ij����Htj���x6��i���˨i�ن'xi��*]�)Ji�e��i��b�2f�h�Mc����h���%L��h�mm}5�h���\oh�% �y�Sh�1}X��:h��ev$h����Gh�܌�'t�g���/q�g�8�	�g�/���V�g�nC����g�Nó��g���=�g�. �(_�g�~(�ߛ�g��,m���g�w�;૏g��_��S�g��h��g����z��g�iU��}g��W��zg���(xg�݀�ug����sg��&?�qg�Z.�<pg�Px+��ng�����mg�;\��lg�FU�&�kg�i�A�>kg��4U`�jg�ZZa$jg��(���ig�[��_ig�Vk�ig�i�@��hg��ΐ�hg�=t0��hg�d��uhg���Ughg� ���`hg� a�'bhg����jhg�Kśyhg�u!b��hg�w���hg�v���hg�9�hg�?�.ig�lMcGig��eyig���p��ig�4L���ig�s��� jg����[jg�Ϧ�jg�);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(x�����->�Ďd�@E>J��U�P>-�km��V>ֽ"o�[>�#�bR`>r�us�gb>��l��>d>H�M}��e>FxhtW=g>�/LZDmh>�BΖmi>� ^Bj>��ߜ�j>V�()<yk>��?p�k>L����0l>2]2~3el>mn��:�l>#R%��l>ی�l�l>����|l>L&�P�_l>���%�:l>��Tol>R��@��k>�Q���k>�n�N�mk>Ti�G3k>H��j>�K$ɼj>w��C�j>��}Ij>���Htj>��x6��i>��˨i>ن'xi>�*]�)Ji>e��i>�b�2f�h>Mc����h>��%L��h>qm}5�h>��\oh>% �y�Sh>1}X��:h>�ev$h>���Gh>ٌ�'t�g>��/q�g>8�	�g>.���V�g>nC����g>Nó��g>��=�g>. �(_�g>~(�ߛ�g>�,m���g>w�;૏g>�_��S�g>�h��g>���z��g>iU��}g>�W��zg>��(xg>݀�ug>���sg>�&?�qg>Z.�<pg>Nx+��ng>����mg>;\��lg>FU�&�kg>i�A�>kg>�4U`�jg>ZZa$jg>�(���ig>[��_ig>Vk�ig>i�@��hg>�ΐ�hg>=t0��hg>d��uhg>��Ughg> ���`hg> a�'bhg>���jhg>Kśyhg>u!b��hg>w���hg>v���hg>혺9�hg>?�.ig>gMcGig>�eyig>��p��ig>)L���ig>s��� jg>���[jg>Ϧ�jg>);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
