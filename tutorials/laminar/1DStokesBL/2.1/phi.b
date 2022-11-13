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
    location    "2.1";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(P�rZ�:�q�wS0�6#���I�
��� ���h��� ��qk��B;�\#B;��Ç�U;�y�8�U;���?��U;�t|Zw�U;���0��U;�Z��xxU;e�֩`U;��@�GPU;��1xGU;H�� �EU;d���PU;��anU;Ryı�>U;F��?�9U;���I�rU;��:�/lG;<��L�F;�$�$��F;bq���F;��Y�F;2�mP�F;�F����@;�a���LA;�3l�/�@;�-t��@;1���9;���
F:9;��%z8;�¢4DN8;o#�+f%8;�R"��7;�~96�$8;A�Y���8;��MN�8;��(m��8;30Z�eF;G(�!��E;��mĬE;*� �9F;�>��l�E;��f�!�E;�b�$R;,?��z4R;�E�\R;�=��2�R;� 7 ��R;�J��R;S�a�R;�E�q!�R;(�O��S;%+X@S;6x�\XS;q�]��S;�3߹(�R;;'��^�R;&���o�R;ľ^���E;�ED� �E;{b���E;�6�GH;�	mn'�F;�'��6�F;Я����M;�R�-=�M;^�N� +N;��0!�QN;{��މ`N;��^�fN;U�٣NlN;*F%"QtN;��DQN;�C)�ӊN;ŋ�lv�N;Q� �N;�z��QN;�9�.P�M;^��{�P;�{ס�P;%@*�;Q;�\���P;^��y"�P;�-�P;B�m�<Q;�xe�F0Q;m�p���Q;��\�A�Q;eR�9�R;6�p��S;��췾NS;����R;�\�$�R;eJ�>�R;);

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
        value           uniform 6.25765e-23;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(�֎vQ�(���Z�@����m��I��.B�X�P�'d�W�S��G^�?V��m���.X��>�qs�Y�� �Ѽ�Z��Sm�R[�IIPM�[���GB �[�\�ғ[�џ��!;[��~���Z��bꑲZ���+dY��Y�VƚX���c�W����&��V�CW��V��4��l%U��	�%�FT��!��cmS�E�����R���� T�Q�GI��TQ��i�!XP��g�i�XO��ݮ�4N�sё���L�
�;D�K���H0�J���y��I����I�A��~HH�}�\bc�G�k��F�F�����aF�i�\���E�^����gE�B"���D��d�ޠD�����MD�u�H�	D�S\JB	�C�.��҉C��(�ʚWC�Vҍ�+C����EC���)��B���H��B�K&p��B��櫳��B����I�B��&�[2uB�eQ��egB�?�J��[B�?h}�QB�AH��HB�ҝ�(�AB����r;B�e��@56B�늇s�1B�
�O.B�S�$��*B�ۉ&@D(B�>��G&B��k��/$B���`��"B�nTeR!B����: B����QB�,�ώB�����B�ac�fB������B���\l�B��|HdXB�%7��!B��4���B��%���B�w�M��B�u� ��B�s��B�=��)B��h�:B��p1{B�,�E�B���g2B�t����B��(�};B�4�]�B�q�*�B���-�{ B����Nq!B����%�"B�mjK�#B�N��9�$B�mx`j&B�);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(�֎vQ�(>��Z�@>���m��I>�.B�X�P>'d�W�S>�G^�?V>�m���.X>�>�qs�Y>� �Ѽ�Z>�Sm�R[>IIPM�[>��GB �[>\�ғ[>џ��!;[>�~���Z>�bꑲZ>��+dY>�Y�VƚX>��c�W>���&��V>CW��V>�4��l%U>�	�%�FT>�!��cmS>E�����R>��� T�Q>GI��TQ>�i�!XP>�g�i�XO>�ݮ�4N>sё���L>
�;D�K>��H0�J>��y��I>���I>A��~HH>}�\bc�G>k��F�F>����aF>i�\���E>^����gE>B"���D>�d�ޠD>����MD>u�H�	D>S\JB	�C>.��҉C>�(�ʚWC>Hҍ�+C>���EC>��)��B>��H��B>K&p��B>�櫳��B>���I�B>�&�[2uB>eQ��egB>?�J��[B>?h}�QB>AH��HB>ҝ�(�AB>���r;B>e��@56B>���s�1B>
�O.B>S�$��*B>ى&@D(B>@��G&B>�k��/$B>��`��"B>nTeR!B>���: B>���QB>,�ώB>����B>ac�fB>�����B>��\l�B>�|HdXB>%7��!B>�4���B>�%���B>w�M��B>r� ��B>r��B>=��)B>�h�:B>�p1{B>,�E�B>��g2B>t����B>�(�};B>4�]�B>n�*�B>��-�{ B>���Nq!B>���%�"B>mjK�#B>N��9�$B>mx`j&B>);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
