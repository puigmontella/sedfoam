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
    location    "1.8";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(���Ԛ�:�+�3� ;�u����!;�q�9|!;�gT�L";�Y�
\;��E��;I��)O�:P<��&��:[Q����:%p�&��:$9
��S�:�H����:\��T��:|��k�:��J��:w��l�:���`��:Z�׵v��:@�n�c�:V�`/[��:Ɩ\�â�:��<�7!;H�!*� ;����e ;։CH�;*H��! ;��V�a ;���@�.�7H�V�./�+���=-�1���T-�����(�>�'$Y'�Js���'��uC��%�j��d�!��)�tx#��-jN��t�x�,�ͧ=��X�,��^O!�rd�D�-,;`��)��*;6�n�|+;ziG.;��ӽ��*;(Q�}�,;8v��B�ٶ+�rh��,`~�������;T4��yw�2��ј���4� -\9�_5��KBy��5���Q}�6���1�6��Nΰ��5���#�/5��.�8L�5�x���2�5�䷞C�B6������B�>��h��B�|{�m�C���C>G�J�̓�ʳ�F���;��F�h�T�F� H���F���)�shE�s���� E��`�厼D�v��D�e�HHvD���Uc�dD��ԅ7�RD�	����4D��e���C�~��-�C���}�B��]���B�$�=F��?��Ȓ5�#����l�%�r]��A���w�A��3x�EPB���$��B�`6cf��A��C���-F�^R90i�F�۹��P�W�+O��F�W�j�W������F�|6��
F�*�/�s�E�);

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
        value           uniform -3.52199e-23;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(h$�!�8��pq���2���J ��:�1��#^@�eu�T&B������B���n9i C�vT���YB������%A���Aۇ�>�w��H;� Ӷ1|6��8s|S�1�����K�(���~짝�2I��(�������>��-�x[!>O��Uw+>�V��2>y���>7>.���9�;>��~���?>	Xx���A>���8�C>�$�(PE>�Y*�b�F>��'[�CH>��+(܍I>�L�ԹJ>���h�K>)�<�P�L>4�FX�M>sH4lL_N>�Wm��O>���O>�U���P>Ҥ���WP>��Y䇍P>
�^Z��P>(p[��P>�-{�	Q>�q��)Q>�3��+DQ>���3�[Q>���oQ>�a
P�Q>�X��ُQ>%y�L��Q>��FL�Q>�O��t�Q>�^_�6�Q>�N�ľQ>;c�4I�Q>)�{��Q>��y��Q>�m?�Q>�̦���Q>U.�Q>��O��Q>��wr�Q>�L��Q> c����Q>��Qժ�Q>g��c�Q>׽k���Q>%�R{�Q>?� <��Q>3)=�;�Q>e�����Q>M��q��Q>������Q>�4�#�Q>T��K�Q>��,um�Q>����Q>���#��Q>�h���Q>;�!���Q>���5��Q>�"�{��Q><%�B	�Q>��F�Q>  (�Q>�j#�Q>�Nu$�Q>�I9� �Q>[b_�Q>�]���Q>����Q>N;���Q>� ����Q>5�ao�Q>е,�-�Q>>�l���Q>LJ%���Q>v�.H�Q>I��!��Q> y���Q>���{W�Q>);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(d$�!�8>�pq���2>��J ��:>1��#^@>eu�T&B>�����B>��n9i C>xT���YB>�����%A>��Aۇ�>>w��H;> Ӷ1|6>�8s|S�1>����K�(>��~짝>2I��(�=��������-�x[!�O��Uw+��V��2�y���>7�.���9�;���~���?�	Xx���A����8�C��$�(PE��Y*�b�F���'[�CH���+(܍I��L�ԹJ����h�K�)�<�P�L�4�FX�M�sH4lL_N��Wm��O����O��U���P�Ҥ���WP���Y䇍P�
�^Z��P�(p[��P��-{�	Q��q��)Q��3��+DQ����3�[Q����oQ��a
P�Q��X��ُQ�!y�L��Q���FL�Q��O��t�Q��^_�6�Q��N�ľQ�;c�4I�Q�)�{��Q���y��Q��m?�Q��̦���Q�U.�Q���O��Q���wr�Q��L��Q� c����Q���Qժ�Q�g��c�Q�׽k���Q�!�R{�Q�A� <��Q�3)=�;�Q�e�����Q�M��q��Q�������Q��4�#�Q�T��K�Q���,um�Q�����Q����#��Q��h���Q�;�!���Q����5��Q��"�{��Q�<%�B	�Q���F�Q� (�Q��j#�Q��Nu$�Q��I9� �Q�[b_�Q��]���Q�����Q�N;���Q�� ����Q�5�ao�Q�ĵ,�-�Q�>�l���Q�LJ%���Q���.H�Q�I��!��Q� y���Q����{W�Q�);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
