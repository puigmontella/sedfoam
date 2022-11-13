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
    location    "1";
    object      phi.b;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

dimensions      [0 3 -1 0 0 0 0];

oriented        oriented;

internalField   nonuniform List<scalar> 
99
(ݑ���&^3I�񺇴ًz��?f�'���^0 ���,�Q ��x9�o|�\I���#�p��.���X� ���m�y ����>���u��<	��v��g��N�������}���XR)(�ﺀ"�и�:��```M�:z�4P�h;Q|���:Zh�q��;f�!��[;ϓ��[;�O9L�\; �:�\;��Ao'\;^��[;�O����Z;��#�[;u҈���[;ue���J\;*��rJ�`;T����`;:SHJ��`;��*Fa;��Mta;R�����a;�!�{c;Ҡ�e6c;��p��b;�g����b;v���d;�y��`e;PeH!
e;}�@��=e;�{�=�1e;�L9��se;�7��f;��g;9PLIg;�м�f;��4<2f;i�)f�f;\fA�tf;m2s��\f;:XyOgJf;�(�DAf;b�{>f;��cg[@f;�`Zq�9f;3�!i�]f;� ��}f;!$�u�Fe;X��E0e;,�{��e;|����Hd;�����pb;@����;b;�rӄW�b;A��b;��p�$�b;�B�a1c;��M�Rc;�%��ic;�Q[J�{c;��.V�c;h;�0�c;$'+u�c;�NZ�c;4�.��c;�5�M(=d;�2h(d;�|Q�lpd;;��W;0b;E_��3b;��sC�`;�Z	�Oa;�%��7�`;yok�`;/�m~�Ha;�C_��b;��*~{kc;��
�b;��F˅b;�O!���b;�88��m;�,��n;��,�m;);

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
        value           uniform 2.0118e-22;
    }
    inlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(p�3�2">9�e�$;>W��z�dF>xii��N>�2���S>^��{bW>w�7)� [>l����_^>h�,�ɾ`>�\�-b>n)<8{c>���%5�d>���P�e>@���f>��o�G�g>��F�Kh>Z�R	T�h>���S�i>�G[u�j>��I�j>�-�u�j><�u�6k>����Ak>gn�(�k>�3(2�k>�OmYl>��~2uBl>P`�~�al>L���Z{l>p�w�Ȑl>̰x[w�l>Id`���l>�X5޼l>�1���l>�m�s^�l>y��
��l>qJ/���l>x-&5��l>x�eg�l>��)ߙ�l>J����l>� 3�l>�rt�o�l>�K:�e�l>�fյ$�l>sM&���l>鷖(�l>◝�~�l>�vm^��l>Pׯ��l>���r�l>ET�3�l>���H�l>�?H5X�l>���c�l>���rl�l>�x)�r�l>�,�w�l>V�%{�l>����}�l>x_���l>��ͺ��l>=��<��l>c�$���l>'����l>��|��l>����l>-'���l>�^���l>E����l>�����l>������l>߀,��l>��7���l>��=;��l>��}���l>Q���l>K��I��l>?�'���l>�ɘ���l>�����l>v�Bg��l>$����l>��4�l>�H}�l>�7Wa.�l>�'�C�l>�J��Z�l>��S$s�l>�����l>D�o��l>k��,��l><oFi��l>,u�O��l>�(`@�l>L/o}*�l>7�2)@�l>\J�CR�l>Um�_�l>^�2g�l>);
    }
    outlet
    {
        type            cyclic;
        value           nonuniform List<scalar> 
100
(o�3�2"�8�e�$;�W��z�dF�xii��N��2���S�\��{bW�w�7)� [�k����_^�h�,�ɾ`��\�-b�n)<8{c����%5�d����P�e�@���f���o�G�g���F�Kh�Z�R	T�h����S�i��G[u�j���I�j��-�u�j�<�u�6k�����Ak�gn�(�k��3(2�k��OmYl���~2uBl�P`�~�al�K���Z{l�p�w�Ȑl�̰x[w�l�Id`���l��X5޼l��1���l��m�s^�l�y��
��l�qJ/���l�x-&5��l�z�eg�l���)ߙ�l�J����l�� 3�l��rt�o�l��K:�e�l��fյ$�l�sM&���l�鷖(�l�◝�~�l��vm^��l�Pׯ��l����r�l�DT�3�l����H�l��?H5X�l����c�l����rl�l��x)�r�l��,�w�l�V�%{�l�����}�l�x_���l���ͺ��l�=��<��l�b�$���l�'����l���|��l�����l�+'���l��^���l�E����l������l�������l�߀,��l���7���l���=;��l���}���l�Q���l�K��I��l�?�'���l��ɘ���l������l�v�Bg��l�$����l���4�l��H}�l��7Wa.�l��'�C�l��J��Z�l���S$s�l������l�D�o��l�m��,��l�<oFi��l�+u�O��l��(`@�l�L/o}*�l�B�2)@�l�\J�CR�l�Um�_�l�^�2g�l�);
    }
    defaultFaces
    {
        type            empty;
        value           nonuniform List<scalar> 0;
    }
}


// ************************************************************************* //
