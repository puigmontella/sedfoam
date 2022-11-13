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
    location    "1.3";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(�i@�r��ȳT��;�g�ƈ;(34�@�;Z���;;�1��*�&;!�i���$;�le�)+;C9g�.;�gl=_.;�h$��H.;��_�[/;�R�iz&0;r/RV��0;�A���0;F�=(61;ch̫�1;,g��(2;	K�6�2;h ���Q3;n��R�5;����[�7;���?"C;^�D��B;�?�U��B;X����/C;���8�C;�Y�'�~C;��ô0�E;8_�L�E;�D�U�D;�n�M~GE;<���E;�2d��F;�Od�G;�;�H;�̜��yI;GٍEJ;R��9�@;8���sA;�A��5@;��A-��A;���� B;�Ǟ4 tC;E�0��D;ʸ2t�D;��OTW>D;���3��B;)ޖ�E���7F�z.�I�F��)�o5Z7; �"A�6;�%a �5;вne+6;��2VM4;��I�2�2;�o�Ĩ�1;q�g7c�0;��$,�W0;aŬ��0;"�qV�2; \��Ʃ2;L>�R�H;D�g��H;�/+�2�G;��G��_;��o"W;��W;�Q�K�V;�H�ЭW;L�MzW;>Hݩ�W;DHDS�W;���j��W;0���W;��X��W;4�X��W;nkh���W;�5���W;��D��W;�޾���W;r#�0�X;��&i;�CY���T; %O�T;pq�2��R;&&�<�TS;M�zX�T;�hU��T;r7���T;���[�T;����3T;4Tw6IS;	�w"�yS;�,1��R;�DH��|T;��㹜T;|����S;);

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
        value           uniform 6.25924e-23;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(Q���ښ>�s��c(>-�����5>�a	�c0@>�3���E>��p��AK>]@w��nP>�uF&Y4S>�;��Y�U>IO ��X>T��<[>.T
��^]>k�"��_>�uU+�`>$���V�a>W���C�b>��	?~c><%�b�;d>������d>�J�Jւe>�ȷf>Y%���f>�z@YV�f>�� �q[g>e��K��g>N�����g>�	C�w@h>^ڭ=czh>�6<��h>!Y9L�h>�� {�h>��n��i>~F��8i>�v*5GPi>A�s�di>��R��ti>p6f�҂i>���7��i>��2w�i>�yo���i>mG��w�i>:���i>�X𫷱i>5�;̃�i>A-2���i>GF��%�i>-J�L3�i>Z�:Bܾi>l�n�2�i>o=��E�i> m��!�i>���q��i>h���\�i>�6	���i>��b�"�i>��e�g�i>�����i>�; ��i>i��]��i>K9�p�i>R~M��i>�9+(�i>d+v 5�i>~P��?�i>n�ZH�i>�|
�O�i>�@�aV�i>���q\�i>q%�Bb�i>3��h�i>>�n�i>Ω�Ft�i>AC��z�i>ԳCC��i>�Q�.��i>�Ӓ�i>C)�A��i>��^���i>@:m���i>E�����i>����i>�\+.��i>X����i>��/���i>��NX�i>�9jQ�i>Kɵi%�i>0?�Y5�i>�i��D�i>.��US�i>hq��`�i>Z4��k�i>��,tt�i>\���y�i>�b�>{�i>�څ�w�i>sN�n�i>m��y]�i>��D�i>>#�_"�i>);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(Q���ښ��s��c(�-�����5��a	�c0@��3���E���p��AK�]@w��nP��uF&Y4S��;��Y�U�IO ��X�T��<[�.T
��^]�k�"��_��uU+�`�$���V�a�W���C�b���	?~c�<%�b�;d�������d��J�Jւe��ȷf�Y%���f��z@YV�f��� �q[g�e��K��g�N�����g��	C�w@h�^ڭ=czh��6<��h�!Y9L�h��� {�h���n��i�~F��8i��v*5GPi�A�s�di���R��ti�p6f�҂i����7��i���2w�i��yo���i�mG��w�i�:���i��X𫷱i�5�;̃�i�A-2���i�GF��%�i�-J�L3�i�Z�:Bܾi�b�n�2�i�o=��E�i� m��!�i����q��i�h���\�i��6	���i���b�"�i���e�g�i������i��; ��i�i��]��i�K9�p�i�R~M��i��9+(�i�d+v 5�i��P��?�i�n�ZH�i��|
�O�i��@�aV�i����q\�i�q%�Bb�i�3��h�i�>�n�i�Ω�Ft�i�AC��z�i�ԳCC��i��Q�.��i��Ӓ�i�C)�A��i���^���i�@:m���i�E�����i�����i��\+.��i�X����i���/���i���NX�i��9jQ�i�Jɵi%�i�0?�Y5�i��i��D�i�.��US�i�hq��`�i�Z4��k�i���,tt�i�[���y�i��b�>{�i��څ�w�i�tN�n�i�m��y]�i���D�i�>#�_"�i�);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
