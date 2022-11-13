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
    location    "2.3";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(��+�`��:"����4�b &rmz5�
����5�J$�8?5��'+QB�\�p_�A�_�^�D��3-W`F� I�5#�E� �ޘ��E��]cl(�E������E��� kS�E���27��E�F�g�q�E�+$�?m�E����[~3E���Q�zD�'�x�
E��W}8AF�׏�N"vG��H)��F�F䨶�F���}Y�D�p�v�\E�
	A���D��^�E�
�\��;;T�]�;;�ͱ^S:;�}H9�8;���g�;�>7Fz��<��J2̇	;�2c���;�/�%�/�<�\�p2u=��~�"UA�Y.~��A��Fk��}B��Uz��7B����`�C��Ҁ��&C�o�L��B�\�����B�ؿ�>�bC�y�ޒB���<]�fF���/H�OG�k�XN�G��7��I����H�2إ.MlH� &1�LDH�l��fZH� ��~pH�tK5L�H���f�H�����H�Ǝ��;I�\�oN�J���EP�I��q��Q�3&�>�Q�4�rx�Q���ݘ�(Q��InH!S���6 S��Q{��Y�X���XY�-G�I%�X���x��Y���~!Y���8��.Y�%�^dzJY�8_��]kY�b򄄉�Y�h-5��Y�k˓v@�Y��b�mNZ����*�&Z���R�S/Z�Ԛ��i'S��	�I��P����u �P���:�?L�@���K�}%��J�@'���6J� O�v#$K��IAM��K��0ߤzL��`@b'H��R|�EH�Pz��H��u]HpI�ڸ�U�MI��/m:,sI�);

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
        value           uniform -4.37529e-23;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(���;�,��4D�y��MO�>��Ud�T�|���#�X�8��l\������w_��D��m�`�=E�k@b���aΙ�b���qgrc���z�L�c�[��4d��-%}Gbd���DB�sd�(u��md�6���Sd�s��v])d��w�G��c���D��c�#���ec�w�%9�c�1�8�6�b��PfKklb����8�b��v�v��a�����ja�K�j�a�B~�E"�`�i�R{{`���lv2`�ԣ���_�#��X_�:��T��^��+�m^�J%Sޤ^�i���H�]�8�3�H]���\��\��g�U��\�v�IOig\�8H2u�)\�Zv�=��[��Y�V8�[��\V@�[�H�gi[����2E[����x�$[����P[���B���Z����Z�U_h���Z��E�kz�Z�v�� G�Z��	t��Z�s�ԓd�Z��'�N�Z�	�^�xZ����.�pZ����hjZ��0+�dZ����E�_Z���|�[Z�d�3�#XZ���X�UZ��Q��xRZ���* @PZ��i��\NZ��R��LZ��8,�gKZ�z-��BJZ�|	�%LIZ�5�G}HZ�ܖ���GZ�I[��?GZ�M�~��FZ�:(�DgFZ�v8_�FZ�J���EZ��z�EZ��ϋՈEZ��1͗rEZ�8�:�gEZ���gEZ�z7��pEZ���}�EZ� ��EZ�N:к�EZ��'nv�EZ�ܤa�7FZ��fU,~FZ��&,��FZ����0,GZ�����GZ��#HZ�ŧ`��HZ���$]IZ������IZ�O8�BJZ�a^�JZ�);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(���;�,>���4D>y��MO>>��Ud�T>|���#�X><��l\>�����w_>�D��m�`>=E�k@b>��aΙ�b>��qgrc>��z�L�c>[��4d>�-%}Gbd>��DB�sd>(u��md>6���Sd>s��v])d>�w�G��c>��D��c>#���ec>w�%9�c>1�8�6�b>�PfKklb>���8�b>�v�v��a>����ja>K�j�a>9~�E"�`>i�R{{`>��lv2`>ԣ���_>,#��X_>:��T��^>�+�m^>J%Sޤ^>i���H�]>8�3�H]>��\��\>�g�U��\>v�IOig\>8H2u�)\>[v�=��[>�Y�V8�[>�\V@�[>H�gi[>���2E[>���x�$[>���P[>��B���Z>���Z>V_h���Z>�E�kz�Z>v�� G�Z>�	t��Z>s�ԓd�Z>�'�N�Z>	�^�xZ>���.�pZ>���hjZ>�0+�dZ>���E�_Z>��|�[Z>h�3�#XZ>��X�UZ>�Q��xRZ>��* @PZ>�i��\NZ>�R��LZ>�8,�gKZ>z-��BJZ>|	�%LIZ>5�G}HZ>ܖ���GZ>I[��?GZ>M�~��FZ>:(�DgFZ>v8_�FZ>J���EZ>�z�EZ>�ϋՈEZ>�1͗rEZ>8�:�gEZ>��gEZ>x7��pEZ>��}�EZ>���EZ>N:к�EZ>�'nv�EZ>ܤa�7FZ>�fU,~FZ>�&,��FZ>���0,GZ>�����GZ>�#HZ>ŧ`��HZ>��$]IZ>�����IZ>O8�BJZ>a^�JZ>);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
