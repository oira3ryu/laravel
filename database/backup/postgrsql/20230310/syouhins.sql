PGDMP     	    "        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16489    syouhins    TABLE     `  CREATE TABLE public.syouhins (
    id bigint NOT NULL,
    syouhin_syubetsu_id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.syouhins;
       public         heap    y-miso    false            �            1259    16488    syouhins_id_seq    SEQUENCE     x   CREATE SEQUENCE public.syouhins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.syouhins_id_seq;
       public          y-miso    false    232            �           0    0    syouhins_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.syouhins_id_seq OWNED BY public.syouhins.id;
          public          y-miso    false    231            #           2604    16492    syouhins id    DEFAULT     j   ALTER TABLE ONLY public.syouhins ALTER COLUMN id SET DEFAULT nextval('public.syouhins_id_seq'::regclass);
 :   ALTER TABLE public.syouhins ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    231    232    232            �          0    16489    syouhins 
   TABLE DATA           t   COPY public.syouhins (id, syouhin_syubetsu_id, meisyou, kana, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    232   3       �           0    0    syouhins_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.syouhins_id_seq', 1, false);
          public          y-miso    false    231            (           2606    16499    syouhins syouhins_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.syouhins
    ADD CONSTRAINT syouhins_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.syouhins DROP CONSTRAINT syouhins_pkey;
       public            y-miso    false    232            )           2606    16500 -   syouhins syouhins_syouhin_syubetsu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.syouhins
    ADD CONSTRAINT syouhins_syouhin_syubetsu_id_foreign FOREIGN KEY (syouhin_syubetsu_id) REFERENCES public.syouhin_syubetsus(id);
 W   ALTER TABLE ONLY public.syouhins DROP CONSTRAINT syouhins_syouhin_syubetsu_id_foreign;
       public          y-miso    false    232            �      x��]�v�^O��88������2Op_!�4	�8M����$v�	op_b,�^�
w�{zT�4ժ�sN�5���z������J���ţ�xU?W?���/{�V?�D��9�S���g.��B�_���)u�g���e��� �1M��/�bf��� ��d�˛����í��*�o��eY�Ų���޹<i_����;�Fê^2�X<p�����m<p�L.���G�XϸO��OYxe���#����ϝR��:i/8�u<r����&9<f��)Jz>�VI{��L�OC��3���W3̠���I{��Lɯ	�&�'2�?� >34�@� >34�@�0ò��I����g�&�g3,��ԟ̰|fhR60�
�A*�fX3(��gDx�ĥ���U�h/8�)�5u�^0"JM�4i/8�)�5�c�1�P
�+B��Ȕ�i�a��0��|����C�	������_0M�NdR&0��A*�f3Hf3263��_���������� ��fd|f ��,0#�3Hf��@)�,�l�� $d��!�� � �?I�(�AH" �&)���V�b�bؿ2�R����}eĥ�������"������9r�����H����^9q�ݧ�^9q��O5��^p"�՟j&���D���@8q`�^����{�2���f�����'�Y�A�=�f�#2Y�A�=�f�#2Y�A�=�f�#r����ocח����s���K*�6ܰ|n����V�R6p��aI����熍���ܰn�H�8^9q��g�s"�rⒻ�^C������z%�Nd���5�h/8�#�/��=Rzn>7�
�4�0ln�dh7�9Y����FN��n>7��	L�#�F�=7267rR�YÍ��R�Y�F&���,p#p��_��	�9�i��I�ѧtM.~N�S*�&� ?��)BH% �)}J�R	rJ���T��ҏ��B�(��k.�>�a6����rp��ޭ/{?}ٻ�N���e�[9|������i<���<��?��_���M�1�O�jq�����ٜ�=ۺ��~�~a�E r�R��i ���4�� `�#"��.  ��V�'ͷ��)ޠ�ӮE@�@��w`cS�	�.T/_ ��A��]�`4�\�l�ͣJE4l��ŰR��C=��?~M,zV��\���O��Y~��PQ27gCշ�L�Y�)����LN���&JQ2ocj�d%s�S���
E���Tad�BQB1�B ]�W %ts6�[��T�UGxM	=�";�� (��K�,�j*Y�1S�㐎�0�ȶ�.���s�������"QMZ]�#*��Cd�V@D�s�l�����bI�c:�b�9D6pu ���-����@�x��4���U�6rM�39dh��\��!C��m�B <Z�mw`����k��������S�_]�i�-_��\�*n;� �C@��UFVWAD�sHRWAD�s�����8C�Zĺ�GT�a��b] g�Cd�X@D���7�Qq�9D��uDt�a�]d] ���2䲔V1�\�\��*��@��RZŀsHrYJ�p.I.K��qs�0�f��Vƀ*{��Q��W�l�A�Ѻz����Ѻpe�� T��'L55u�Ϣu1���=�Y�*F,hqRY�*F,9�̢U1�`AÓ�"
�h�'�Y�&T�'8Z�	�)�,Z�	���fњM��kIeњ8���{k#;�ބE�sf��U�l�hU<a���I�hU<a���I�hU<a���I�hU�Y$ksR6��6�E�n'e�u1���Ϣh]�X$�}R6Z#	Z�T����P*����X$j�RytW=�I_�r]��e�^���eΞ��@��/�(2r�M���7yo9�" ��@��Ԛ �{���S�`�d�[N�
��7�yo}jU 콁�{�S� �D�[�Z {o ���Tv콁�{�S���2�Q1`I��~Dǀ9$���[�!��֏��bI��~D�sH�i�]��"�M��b��7yo�l콁�{�d� �$ޛ&�� {o ��4�.�{����v1����7M����@�i�a��"�M�c��7�xo�l콁�{�d�`�DޛV����"�M��`��7yo��콁�{�d? �$ޛ&�� {o ��4��{����n0����7Mv���@�i���"�M��`��7�xo��콁�{�d7`�Dޛ&�� {o ��4��{����~0@�H�7Mv���@�i���"�M��`��7yo��콁�{�d/ �$ޛ&{� yo ��4�	�{����N0����7Mv���@�i����M�}`��7�xo��콁�{�d`�Dޛ&�� {o ��4�ǽ7zo��佁�{�d' �$ޛ&;� {o ��4�	�{����N0����7Mv��q��ޛ&�� yo ��4��{����^0����7M����@�i���"�M��`p�{����~0����7�:�h����DޛN�y�EF�������݇
m��h����G��I�����IY��i[��b��P��'Y򟲸ﾻ~�{e��������/I�n9�.���p��M�Q�+TR��󣋃�H�ʢ�T��f�.��9^�����,�v�+��y>���iԣ��yX���}���3�ŵz���Sm>�����80��M�V���{��ы�nRѻ5��1w2�a6>��x[OUE�FO]��g�����
�\�����Y�1z�Q)�X�z[M�����;������2gN���y�����/�h����T�����1z�>�o9�my���ݽ\����j�:]�65M[��~Qln�Sf{���7��ܭ��?�Ĩ~�rKG��M��ٍ�d���f�K2����M�m�>>�`K�	Ԝ	X�J��4�x��f��p'��k&xbVy�>H�����{�s���vK���A��r��������Ad������������� v�����XA6e[
����n�lN���qʽc�L��=~s��v�������e�Tx���������3�`�C���T��Gחk��k��jXR!�`�\�����>~[��V?M�������>>|�c������-�x��ԓ���E� o<8Z{Tv�����V�G�����n�9|������[���<�6W[�����~����-v������%f��f���5M�^/�������x�i�=Z��u��z5˟�p�)��7���¼�*ԬF�x��!��~�P�4jO��0�'���n��\�n�O���x�H"�~�qd��
cv��ƓS������F�h��1�w��|����w[f5�'�����6�b_����81�[5F�^�6c�-7�����s�x{{t���ʓ�ۣ��WVǷ��U���������멤���~��[Sݨ�հ�^rk��x�WZU�ڭ+��fGr��]`�GoU/'�k�=�0ݢtx����j�I�i��� /\�]/��_'�qɿ�Fnz�j��t��������J��{V7:�_Wt�����O�?��zQ%�$�ӝ&��̼��xН��q_�gϏ�֑�N�9��>����knG��L��IN�Ϲ]�������&kL@��X�P˜ᯱF���,���(�����k�z�f;ʄ�B%�zv͍fz���e~�5(G;諾�������_�c�{�Wc/X��U4�|��]��Jܿ� �D��6՟ɧ6��1�������;��:�NȒ���yP��w�_G�M��-#omS�9g�3c�<a=Ł���љ��CK��Ǧ��PYcs���8*�y:3�E�FOqt�=���O|�,`]׿r��ZY>̔:_�~�����s̨�癉f�F��Hmס��(�e�?K>��]�����SX?r8=3>�Q��0պ?О��x����l?y9�{k�a��՝���>�C?�����ު�<�9�>��\�Wa���n�A��_`��C�v�����߇~��hV��
/Ա���p��x�����`� %   Uո�~��)lg6c�WJU�.�f�{g�{�̙3���q     