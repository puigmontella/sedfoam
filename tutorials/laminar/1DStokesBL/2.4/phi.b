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
    location    "2.4";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(�;�C-�k�47�Q<�.�6\��=�i.���?�N���{>�R	�:�P��:��Q��w\�=Z�ߝ�Ů?Z�e�i^0Z�B~��?Z�O	�bE<Z����WkZ�φ�i~�Z��8q��Z��p' �Z�����Z��G1	��Z�A��:[�Z�l��f�Z�^ep���Z��>�4�Z�o�JKMT���
	< T�-t�o7T�v����S��Tw�{$S�VZT�R�P[��G�8��E�4�}�wE���ƾGIE���L�|�H���y��I���c"�3K�"�8(�K��O=�'L�#���lM��L}�?G;��V5�oE;.r��`�C;n�8�C;	�Vծ N�i�c9&L���M�<%��M�xn�1{N����&|zL��nB�T�H\�$��T��U0.{U�x���{�C���+D��8�X�$D��v��n�C�@�n+D�9B�Z�dD�|����D���y��D�����D�_�2䢙E�n>��F���kB�<F�2.&=�H��^���I�z�{̞K����e�gN��M��?�U�C�e�>�V����)��`���bx��`��9LNW�`�o��`���o3�`�����`�z*.��`�x���`�H6T'��`��Wi��a�l*^]a��\{m'a����5	a�@�.m,wa����!#2d�&�c��b�ˍ�Evc�[�,�j1l�X��O�l��-l��#v��l�Nr1T�l�;�t@m�������l�}� ���i�#`Qǹi�N���~i�0�N�Kd�j6h�c�@�7�"d�);

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
        value           uniform -1.34488e-22;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(K���-�\HeJ,�D��GZT<{P�,`�p�U�WT�h}Z�m�<B8�^�,�,{�a������b�(�����c�dv���d��H�+��e����Ef��3v��f����:�g����Yg��Q|��xg�;��Ϙ�g��}s%�vg���4[g�lps�S2g��'姝�f�s"_�m�f�7��f������8f��
D��e��D�ޢe��k��Ve�-_=e�w�#���d�%H"coxd���|�2d��N���c�	H�c��;$�sc��r�g;c��%rT�c�b�~�}�b����b���`|b�X�BUb��2:�21b�n7�Ytb���Ģ�a��X���a��uf&�a�ȭ;���a���Rh!�a�מ~Q�a��Z dsa�C�F0ea����؎Xa��D��ZMa����qCa������:a���Ѕ�2a��<,a�]��P&a���Sf#!a�����a�6����a�DZ�9Ja��v��Va�RB�l�a�N&u7�a������a��ck`
a�?��¬a�\��{a��k��wa��T�Q�a��*g_�a��s�H?a��T��a� ��SHa����a������a�F���[a��R'a���H��a��v�a�t̕�a�^�SC�a����٫a�?�
ڨa���n�a��mB��a��+�a�>���a�:���a��Ֆ�a���V�2a��v�[a���a�k����a�&ɢ~�a���9*4a��va���*1�a�q��a�pL\�Ua�);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(
K���->iHeJ,�D>�GZT<{P>,`�p�U>WT�h}Z>v�<B8�^>,�,{�a>�����b>(�����c>dv���d>�H�+��e>���Ef>�3v��f>���:�g>���Yg>�Q|��xg>;��Ϙ�g>�}s%�vg>��4[g>lps�S2g>�'姝�f>s"_�m�f>4��f>�����8f>�
D��e>�D�ޢe>�k��Ve>-_=e>t�#���d>%H"coxd>��|�2d>�N���c>
H�c>�;$�sc>�r�g;c>�%rT�c>b�~�}�b>���b>��`|b>X�BUb>�2:�21b>n7�Ytb>��Ģ�a>�X���a>�uf&�a>ȭ;���a>��Rh!�a>מ~Q�a>�Z dsa>C�F0ea>���؎Xa>zD��ZMa>���qCa>�����:a>��Ѕ�2a>�<,a>]��P&a>��Sf#!a>����a>6����a>DZ�9Ja>�v��Va>RB�l�a>O&u7�a>�����a>�ck`
a>@��¬a>\��{a>�k��wa>�T�Q�a>�*g_�a>�s�H?a>�T��a> ��SHa>���a>�����a>F���[a>�R'a>��H��a>�v�a>t̕�a>^�SC�a>���٫a>B�
ڨa>��n�a>�mB��a>+�a>>���a>:���a>�Ֆ�a>��V�2a>�v�[a>��a>h����a>&ɢ~�a>��9*4a>�va>��*1�a>q��a>pL\�Ua>);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
