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
    location    "2.5";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(�Bd�s��H�Qj��Oڝ�8�����l�H����cѐ�	��f���=�D3a��c���/��6�P����8���Ľ	8�^��P�8�ϯ��	(9������9�A'<�:�j��~O:���KOV:��y�Lh2:��R�t��9����&/�9���W�:��x�e�>���#}��;�ʓ�p_�p�M-s/`���>�z`��4�B�`�V���sV`�����S`�^1��s�`�*�1�a�E3�Q�ta�k3W�Wa���E��oe������e�}/l�>De�>.�\6fe���4Lve�q�Y��e��J@M�Jd��ǌ��c���f(P�c����&d�\U�b7�c��I�r1d�8��C�d�\��T�d��ӣ���d�[9hM�d��1`!E�e��RH}.f��!�Q�f��пbmq��c	�]q�!C�o}q�k诽�q�a����wq�&Ow�lq��oɎgq�`�gfq�A%d!hq�����tq��[r�q�h2�1(�q����8�q��m@82�q�w����gq�goX�N�e��Q�]?e�g��A�d�@��@̘U������T���%M�T�d>X�`�T���g�ζT�j����T�$�|��T�p���T���
cU��M�y�<U�@|����U�뺢^�bU�ZˡaV�U�̲0�i�T�4A�79;���:�Q;�ɟ���Q;�x��7���iߓ9���`��9�3����7��N��T�5�`��̤�_���)�_���e+S�`��\��`��Υ1�Ca�Ɔ���`��ATja�?k@ç`�);

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
        value           uniform -1.11162e-22;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(�Z�76.�u����XE����P� �R�*�V���ӓ��[�^�0O�_�ƙ�	��a�ε��s�c��a���e�P�$�Ff���m.�Kg��Cjq!h������h�� ��Qi�Y��_>�i�� B��i��I�d=&j�� #�6;j�`5 ;�<j��(i�m.j�p:�dj���uL�i�*��]�i�R�g ��i��	�Hi�Z%	i�	5gO�h�C1,�]�h��c��?Ah�i(D���g����r��g��뒍B~g��ل�3Ag��i�g��5�4"�f��$F��f��R�if�(9���:f�k�KC{f����b�e�Gs��R�e�w|\N1�e��:]���e�q5��>de�Fn*q'Je�yt2e������e�*�	e��5 r+�d�𞻭��d�+i�}�d�]�����d���z��d�@�!�d�V��(�d�I�#'h�d�}Y�c��d����I��d�7��H�d��=���d������d��r��d���m|�d�wB�e�d�}��n�d�3d���d�³�f~d���U��|d����{d�����zd�p����yd����5�xd��bt4xd� �3�wd�iѵ�*wd��w��vd�����qvd��M�'-vd�&x��ud�ԧ�3�ud��Œ�ud��/�ud���hǁud��*~zud�l�myud����ud����ud�ن)3�ud��	<�ud��(���ud�pv���ud�b���vd�9�7�Kvd����}vd�/;!ɳvd�:�!�vd�CQ)+,wd��F]mwd��δ�wd�b�U{�wd�);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(�Z�76.>u����XE>���P> �R�*�V>��ӓ��[>_�0O�_>ƙ�	��a>е��s�c>�a���e>P�$�Ff>��m.�Kg>�Cjq!h>�����h>� ��Qi>Y��_>�i>� B��i>�I�d=&j>� #�6;j>`5 ;�<j>�(i�m.j>p:�dj>��uL�i>6��]�i>R�g ��i>�	�Hi>Z%	i>	5gO�h>C1,�]�h>�c��?Ah>i(D���g>���r��g>�뒍B~g>�ل�3Ag>�i�g>�5�4"�f>�$F��f>�R�if>(9���:f>j�KC{f>���b�e>Gs��R�e>w|\N1�e>�:]���e>q5��>de>Fn*q'Je>yt2e>�����e>*�	e>�5 r+�d>𞻭��d>+i�}�d>i�����d>��z��d>@�!�d>V��(�d>I�#'h�d>}Y�c��d>���I��d>7��H�d>�=���d>�����d>�r��d>��m|�d>wB�e�d>}��n�d>3d���d>���f~d>��U��|d>���{d>�����zd>p����yd>���5�xd>�bt4xd> �3�wd>iѵ�*wd>�w��vd>����qvd>�M�'-vd>&x��ud>ԧ�3�ud>�Œ�ud>�/�ud>��hǁud>�*~zud>g�myud>���ud>���ud>ن)3�ud>�	<�ud>�(���ud>pv���ud>o���vd>9�7�Kvd>���}vd>/;!ɳvd>:�!�vd>CQ)+,wd>�F]mwd>�δ�wd>b�U{�wd>);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
