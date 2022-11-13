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
    location    "2.7";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(�[�V���:^��4g�+;۔C��,;��+s);H�U��+;]vz��jA�4�=ۍ"A�x,}1G�lؤ5&�H��M��.J��U�~�J����yX^K���QյK�^�{���K����}8L���5nL��z��e�L�.N�K��L� y'3:�L�୞�JM�P�#���M�b�����N���
�=��p��PU?���x<�>����7^?�]]Թ�@��� �A��z
�y
b�Φ�Ȩ�b�'wܦNGb�(���b���p��c��$g#�c����{�c�w��Dd������id�Fum��d������d�f<<	e��=ĥ-�d��Qe�#7��>�]�qzq��v]���x�h^�:��}��^�����`_���0��_��[ٕ,ca�?4q	�:a��j��0-a��ߝf\��z@_�\���E�
�\��$9A=�\��q����\���*?o�\��M�"��\���5v��\���;�\���t/u]��M;�U\�����P\�{��2ȣh�^q,��h��3�Gi�Z�6* 6i��ew2H�h�:-��h������X��,��8�X�����\TX��>�PЙX�������X�I]��AY��ӣ�Y�FT���Y���%A�Z��W��mZ��:G��Z��B���Z�HwXl�MZ��k[���Y�� ��,5���z!;��i�)��:�^������5d������.
�'��o��0-s� �����d*;>�^��+;��߰6�;ـ��;�8o�9;/��xzX���>�#X���k��Y�);

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
        value           uniform -8.13869e-23;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(��Ե,�A���9�D�_����P�	�s�3eV�Pg�[��ܨ�D`��sb�rAQ�fd�\4}4"f�:���i�g�{���c�h�<q��n!j�K���k�|y��r�k�{�I�^�l��B%%m����m��G�o�m�+��4"n��`��IIn��?��a^n��K��cn��n�q\n���|�In��Օ[.n��#���
n����m�*�M��m�Id,���m����L.Qm�����m����l����X9�l������l�ni�*BNl�O1��ul�h��ֆ�k��AԠ��k�2 *�k������nk��/��Hk��U>�%k�]#�zk��:Z9��j��Aamv�j�����U�j�}�X�j�.�L�b�j�uq8Zmj�h_�H![j�yIs��Jj��\���;j�iK��-.j���wk"j��Y�6.j�.���rj���;�j���3��i���B(�i�k�E�i�]\�
��i�9C;��i�QdV��i����Z�i�����i���)�i��Pr��i�;�͗w�i���-��i�z��X�i�������i���vn�i�/�g�i��M����i�Ew9���i���t'�i�1]���i����-�i�[-����i�&�����i�V��F�i�K���i��`����i�o
����i�k��?��i��hn���i�@:/��i�������i�8�D��i��Iަ��i��Ѐ�i�4��F8�i�@�!j]�i�E�-V��i�G�i��i���3���i��Z�.�i�@�:B�i�Ɇ�s�i�!3���i�);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(��Ե,>:���9�D>_����P>	�s�3eV>Pg�[>�ܨ�D`>�sb>tAQ�fd>\4}4"f>:���i�g>{���c�h><q��n!j>K���k>|y��r�k>{�I�^�l>�B%%m>���m>�G�o�m>+��4"n>�`��IIn>�?��a^n>�K��cn>�n�q\n>��|�In>�Օ[.n>�#���
n>���m>*�M��m>Wd,���m>���L.Qm>����m>���l>���X9�l>�����l>ni�*BNl>O1��ul>h��ֆ�k>�AԠ��k>2 *�k>�����nk>�/��Hk>�U>�%k>W#�zk>�:Z9��j>�Aamv�j>����U�j>}�X�j>.�L�b�j>vq8Zmj>h_�H![j>yIs��Jj>�\���;j>iK��-.j>��wk"j>�Y�6.j>.���rj>��;�j>��3��i>��B(�i>k�E�i>]\�
��i>9C;��i>QdV��i>���Z�i>����i>��)�i>�Pr��i>:�͗w�i>��-��i>n��X�i>������i>��vn�i>/�g�i>�M����i>Ew9���i>��t'�i>1]���i>���-�i>[-����i>&�����i>V��F�i>K���i>�`����i>e
����i>h��?��i>�hn���i>A:/��i>������i>8�D��i>�Iަ��i>�Ѐ�i>2��F8�i>@�!j]�i>F�-V��i>G�i��i>��3���i>�Z�.�i>@�:B�i>Ɇ�s�i>!3���i>);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
