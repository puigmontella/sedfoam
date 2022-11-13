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
    location    "1.7";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(>��Op�:���3u������-�T �i���+�r)�;��������20����6���� m`uh� o�F��.QN�f��bܖ�����[�x�����S!��&������������ɚ���]���4�(�s�,�M
f���@y�c��9�pob��=��6@�!sY�@���^A�@�X1lU�@���j�;$A��eH[��A��b��cF�6�]쐎F�(c��bF��Y[���F���`�r?�`K���;@��f����?�l�b�?�8���0>��mW=��=������0A�Z�a�@�6��BA�)
j`@�����;?��H��G=���jWB�;�r�%:�@:���5���;�vA|�F=;�T~7�j�@;O3_A��A;fhY�8B;)3[A!�@;tD^�M_@;)e*`�@;��"��@;����@;ŕ���@;����{j@;���m@;��
#�@;-{e���@;@���ĄA;���$��A;6EM��!D;5p�<�
D;?�۹@�D;@v��S�:r��h�"�Z��\��$��V���(�m�)�;(��.W��\&���i@:o%�|�7���$�bq��k�$�(.3}8$����ܸ�#���ӯ��#����lS$��I5�.%��Π$�c#�����L ���?AX3�S�5\�E;��.}(A;G�s��A;"�࣢�8;w8v&�6;�h���5;|r׍j5;�z��3;�����4;�(4�н6;mO���6�Y?au�7���v��9��$5�Q�U�=
o
R��9�Q`�Q�);

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
        value           uniform -6.0148e-23;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(	������L)�/)����H1�N�!{�3��ŏߡ4���Ϝ�2��99&�`0�8��U�)�!!J��� �֒���U	��S~��_>��R� >ŰJ��,>NSR�<�4>���U�:>�L�:nZ@>0�=��GC>��c�F>�)��;�H>�Hl��XK>$Q�%�M>��oT��O>f��S�Q>��3UkR>9��kr�R>�&�U�S>ł5��vT>3����#U>V�� �U>M+6�LV>X��y:�V>Ʊ|<W>;
����W>M�G��W>�S?��HX>O��O�X>�hۂ��X>g�
K= Y>�ws�.Y>!�T<WY>���hNzY>�V웘Y>o����Y>��s �Y>�]�VQ�Y>�V���Y>���ԣ�Y>���4xZ>��WdzZ>K����Z>!H Z>u��<�%Z>�2X��*Z>��/Z>�b�\�2Z>\n9�r5Z>m[��7Z>�F3��9Z>��
Ef;Z>X�BB�<Z>�H�U�=Z>��4!�>Z>�PF�q?Z>:�x+@Z>JkR'�@Z>'��@Z>'�;FAZ>R6�AZ>^)1��AZ>ÖJ��AZ>֍	�%BZ>�ZKKBZ>;�^lBZ>�\��BZ>*�M�BZ>ͯ!��BZ>���9�BZ>��8��BZ><���CZ>"�BCZ>I��)CZ>!xʬ:CZ>�"]�JCZ>�UPXCZ> +�wcCZ>y$TgkCZ>W�joCZ>є�nCZ>�"�UhCZ>�lQ[CZ>�XӇFCZ>���(CZ>��r� CZ>����BZ>�d�BZ>؈��<BZ>Ap���AZ>�4j�jAZ>�� ��@Z>(�EhK@Z>);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(����>�L)�/)>���H1>N�!{�3>�ŏߡ4>��Ϝ�2>�99&�`0>9��U�)>!!J��� >֒���U	>�S~��_���R� �ŰJ��,�NSR�<�4����U�:��L�:nZ@�0�=��GC���c�F��)��;�H��Hl��XK�$Q�%�M���oT��O�_��S�Q���3UkR�9��kr�R��&�U�S�ł5��vT�3����#U�T�� �U�M+6�LV�X��y:�V�Ʊ|<W�?
����W�M�G��W��S?��HX�O��O�X��hۂ��X�g�
K= Y��ws�.Y�!�T<WY����hNzY��V웘Y�o����Y���s �Y��]�VQ�Y��V���Y����ԣ�Y����4xZ���WdzZ�K����Z�!H Z�t��<�%Z��2X��*Z���/Z��b�\�2Z�\n9�r5Z�m[��7Z��F3��9Z���
Ef;Z�X�BB�<Z��H�U�=Z���4!�>Z��PF�q?Z�;�x+@Z�JkR'�@Z�'��@Z��;FAZ�R6�AZ�^)1��AZ�ÖJ��AZ�֍	�%BZ��ZKKBZ�;�^lBZ��\��BZ�*�M�BZ�ͯ!��BZ����9�BZ���8��BZ�<���CZ�"�BCZ�I��)CZ�!xʬ:CZ��"]�JCZ��UPXCZ�+�wcCZ�y$TgkCZ�T�joCZ�є�nCZ��"�UhCZ��lQ[CZ��XӇFCZ����(CZ���r� CZ�����BZ��d�BZ�؈��<BZ�6p���AZ��4j�jAZ��� ��@Z�(�EhK@Z�);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
