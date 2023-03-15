PGDMP                  
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16545    tankas    TABLE     �  CREATE TABLE public.tankas (
    id bigint NOT NULL,
    syouhin_id bigint NOT NULL,
    tanka_syubetsu_id bigint NOT NULL,
    tanka integer NOT NULL,
    kaishibi date NOT NULL,
    syuuryoubi date,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.tankas;
       public         heap    y-miso    false            �            1259    16544    tankas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.tankas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.tankas_id_seq;
       public          y-miso    false    238            �           0    0    tankas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tankas_id_seq OWNED BY public.tankas.id;
          public          y-miso    false    237            #           2604    16548 	   tankas id    DEFAULT     f   ALTER TABLE ONLY public.tankas ALTER COLUMN id SET DEFAULT nextval('public.tankas_id_seq'::regclass);
 8   ALTER TABLE public.tankas ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    238    237    238            �          0    16545    tankas 
   TABLE DATA           �   COPY public.tankas (id, syouhin_id, tanka_syubetsu_id, tanka, kaishibi, syuuryoubi, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    238   �       �           0    0    tankas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tankas_id_seq', 1, false);
          public          y-miso    false    237            (           2606    16555    tankas tankas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tankas
    ADD CONSTRAINT tankas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tankas DROP CONSTRAINT tankas_pkey;
       public            y-miso    false    238            )           2606    16556     tankas tankas_syouhin_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.tankas
    ADD CONSTRAINT tankas_syouhin_id_foreign FOREIGN KEY (syouhin_id) REFERENCES public.syouhins(id);
 J   ALTER TABLE ONLY public.tankas DROP CONSTRAINT tankas_syouhin_id_foreign;
       public          y-miso    false    238            *           2606    16561 '   tankas tankas_tanka_syubetsu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.tankas
    ADD CONSTRAINT tankas_tanka_syubetsu_id_foreign FOREIGN KEY (tanka_syubetsu_id) REFERENCES public.tanka_syubetsus(id);
 Q   ALTER TABLE ONLY public.tankas DROP CONSTRAINT tankas_tanka_syubetsu_id_foreign;
       public          y-miso    false    238            �      x���k�%����V�� �&�"z��u��P�Q>"�Z�S���A:-h��������O~s��[������.�_�������_o���Ұ�H��o��������W~2`����-���O���� V����_a�����M kO#l)��?����3K�Ӝ�$�*�l=��������S�hڿ��T%�]��.��2(�-	nj��Ir+v)��������AR\�=��쓕���1��q��x��"N�d0��܊���cÛ%G����}�˓9>�Mrt��Ux�ړQ%����O��I���Go��!9��c�
I�浫�'+yA�wq�Ǹ�D\�]~
�"InEٓ�"<��VE��li{n(�v�)V]�OaU$�c\�SXY��=I�E2~��ꞻ��jU!�`��TVE�۵<�ح��n&XYR�=�U��ןʪȒ�qOeUdI���T�
ɔ����*�d�އ��WL�ɶ�4�Sr�-?�}Ŕ�l+O+�KN�>�Z'+9��d�l	�?��
�۸��Y�-��6�f��d�n�i�mK��>���ӭۖ�d=?=��^�^th�O�tۊ;��ӛ����]����Ӈ�d�Ӆ�v_O_�t�ϰn[2��I׀���%5;�3�ۖ����tۊe�gXUH�џa}���>�3����Ӗ$����;��>��
��s�g
�홟iݶdB6�3�ۖ��Ϭm�l��x�gv]:�3����gZUH^s=s�:��>����+=+	�.?˺m�8�ʳ��=^�Y�mK�՞eݶd�Y�Y]7l��,�
I��泦n��ֳl�g^�x�	l�:�i`��O�Հخ���v%���� �4�]�����?lW �I`P���(c�* 
vRU �kjإJf�	
����r������U@��K=��J��]�����j0-�]~��wE�����9�0=�]�e5��v9�����M�n��ħ�;����*1]�_N�=�S���w����/z=�S������*1}�kj�)�������JL������m*���0<��uӹ���Ĕ�q����Y+e\Nn=�S���.C�6�{j��P�M��Z��*1�[uʻJL�������to�5��m���������}����Ub���lQ=�ӿo�������s��*1���P���T��o0=���5���*��v��*�^o�ut�P©��[���_�^o���J����!�pj��v	��*�*^���-+�h^Pś�)�Z�.Nm����J����衍SW�zPǩ��^OܿޭOѼm��wۛ�闡�S'W5�P�M)W��ʛf��R޻��Vnzy�T
�rS̻fԃ^n���!sSͻf���t��P�M9���ܴ�!:�]%����s�ϧf��zn
����~n�мm���O���*�>*�)���<�����S4G����tQ'-������PӧrL��n�z״�P�MU������5�%��S��]}*׾����.z9@[7}]�Tu���)=�릱�� (즲Ö́���_{�]%���1����>5�P�Mm����v��o��;�F�W�n���6�H�6�g�9�$7%���oQ�r}�kk_�������־$����d��{D�!6�s���3Uw���/�)�I��/p�eJ�k�v�$���0�])���9�])��kݔ])��E�}9�J�F_o?~���R��K����U�d�/�������0�M���k�<��vN���~����r����J�F_ow�y�])��k�<��~N�����M��||���4z��\�&�F�y9`�i�]��1��k�����4���)eW�i�]�)0i�>E3�+�R>�d�j��l����eW�i���1�])�^S)eW�G�׌�e����kN�n�G��L���ˏF�����5K���J1�^�/�
C���sݕ���5���+�~�pW�i���5pW��V�,��n��ow�:@�G�לr����53��+��k���+E���+���K��g_��i�RZ��mW
5�v�9�w�P��Zn�綇]��B��������L(�kf!}�mc�����*�.��FvY�s�]!��9�)x�@(�'p��Ҽ���Ю����2�D���%2�w�x�] �zO�����Ϯ9�]�	y�8���,��Yl�Ÿޙ���ϩ��*bn�|�/�������a��a�r��r��(�g�ށ<�t���dvs��Ix�pT��'o�HIw���^��W�7��xW������a�%����p��00�ͨր���&,���h�Kւ���%�r��݃�N������J+o�C�l�R�
�&��6� �:��v�)/߀���7aF���������w���^x	y���2̐��7$��*�����!��vX	y�C��%o�tH�[p�ݏ��'Hȃ��mב߿�l��WM��v'|���!�"^���s/��@6:ܞVWE�]�]~����Sq|�N�uq�i�ݩ�����w��A�ݢ����$��KnW�E��.����Ӝ-S�t5<�@�w�;�<lm'��u�����]�<lB��i*z���� ��:.�\v���y�!��>.7x�<|�K��~�cE��Y��/��Ӽ^ ��>��מ.Z���A ��v�E�����y� �[}�}���P��i�2���j�W]9y�繡� �-wyA*�:���$��w"J%_�O���,���/�T�U���k�i��)8x������<�|�h��*Ut�_oHT���.�#R%_�F���L���M���k�l������}�=�x�����]^B�J�6{vy�*�����$��kf�W��^Pt��*��η#\<M���t�Қ�Wa�9��|���|��nZr�3!a�����B��|2V�uT�˫Y�RV�ӌo�#fEׯ΁�]�:'�V�u���[HZ����EԊn=b%d���we��Ϸ mEׯ�����^Cފ�_]�+�:$��$���$�7����</�+�::���!�H��u���~���+��s�W��"<ߊ��oh�GC򊬿�oG�J��:vy�+�:x��M���w!}E�O��"~E֯֔����~)#�%_g0���YYSE�����!�Ex|!,�:��������&bX�u���[�a�׉�o�|u�x^sB�l���(����,�zq�f��@.?;p��y,�:��vf� (i�+�����"����,B�b>K�60���ri�#į�����(��բ{l���]J`ef��,%TJ鬔�ywAKO���f21=Y�hf�PӓU���^�o��F�z:uU-CP��^�䋉
E����[�
I����s���o�)k���- j��?��^�f���s��i���Na�6a�.��%+�x��I�O+��S[ߥ�9����z`a~K��rq���-�:n�6��k;ؙߒ��O]�`~K�v*u���-�ک�.��k�N��&�k�`�؀n*�蔱�d�K�X��"����-���6��h)lC7�}jZ[�C7�]�j�Ft�5bb�FtS�5_�VlD7�]�9h�Nt���2��f���=�.�0�%_�;�����|���[ Ԍ�ؓN�]v�[ Ԍ�؛Nٽd�)/����a����M-c�:�wU��M��K��بN�]��a�:��R4�(6�w�S4o�V���k�e�V���j�]����[ ��د޻���v�n}��R�_�[����_�[�":����|����[����o��)=.p0�%_G4�����|���[�)��ЙL�״�m�e25�2��f���`"X��"�Sv�� ���ְ�}~��v�`:')��]��_f�����٘Ұ��T�&io���,�y6ld7]�I&K;٧p��a+��}5�e7i^�r�fv��5KU��M��4Zv���-�!�a?���C2�l��n�����=Cb~�l�aK�)����.03��è��[ �L�t ��5�6:�i��F�.�#6��n
�G��=bk_���[���2t ��/#k\ �������Ax�/�i�o?�@���_N�V�    �k�oؘ���5��-��
����te8�ߒ��.����� �P����z����|���3�[ �\���-�)�: 5��4�!t j��f�.�3�%_~���� /�6p2�e/��]�b~��3�i���x����V�<`f~W�$�:�i���.�2���%h��1�%_�����6��`~��x��� /��<�b~����`�m���[�uB���o��	�.�0����V淰��ܔ���&��3��%S8���C��'�[~�=�b~���t���=`b~���:�m��]2����-�:��V�O�1��}�ؙߒ�Y]�`~����o���~.p1�%_��x@� ��e� ��o�[\`f~K��oq���-X(��*�[�u܅l�oɗ��.�3�%_淸������o���[��vX�⼨����i����o���-.�0�E�@c�ߤy�1�%_緸����|�C���[D���ݥ[�oQ�8��/�%淈`4�Q�
�[��˫�o���:��)�K`��-"�`~�6�ߒ��[\�b~�j��Xٟ]��ܱ�O�]u���>yX؟��TǺ>5����ؘ�"+^���:����%��o���[�m>��â��ͨ:~nz��ǽ��'Y/�XЧ�.�U淈`��-�%w��*�&��x��-��]�ouj���o�]���ߢ�e����X�ߒo�8\^e~��טߢ�u��x��-��L��x��-��/�[t����|����2�[t��������-:^c~�f0���-�>�������7���-�/ ������1�*���|��u~�l0-����?�&��b����c���h<L}������O��0���E~�􇑙^���"��0�2N�`lb��`�9�?��⤇af���`���h��u�s>˧u�q���+���&�W�(����s�=��<��9�;��%'x�� 99t<X���c�%n>�l����Yp}��������?q ��{~�E�����r'9����5��{ot���C̾�i��H�#'v�'������X}͂�����'I_���4䒤/[��8y$	;�c����g"D��,䎀�b�y#�>�qp%䌤���?q2�Eҗ�O��\�����"O$}mm��Ӑ#����~�t䇤/g��8�a�����O��������g!'$}�N��Aq6������,,;t}ƛ���+v<9 �˷�'NE�G��g��Ӑ���r{~�t�}�;��������g"�C�Y����Z���Ӟ�}���i/�i��������io�i���x�;vsڇ�:�9�5����nN���������H�i��tX?����a�`��vs:>�`���t��{ws:l�{���t�x_0vs:���1�@���&�3җ!�O��܌p�3vs:���[
��m>;��|�y�b��������}������ӑ��,�~��^������������ӕǳ��e�`l����*�>n��tY?{ws�����ws��`�����p�w�i��t͛����T\��y��|
�u��K�9�U��B�dfO�9��qNe�D��0�t�J�9�qq�d�D���9M��ͩ	��pB�2#" :��y��h�%T	P�]��D�q(�z�����	-�Ʉ#x�&#xj1�b�C�2O��.Ք�Ѧ�T8��(3�!}�$�*�rH_�H?�*#җ�O����b��^���y8��@�Q�؇����hH_�~-F3��}ӿ�Я�f��8=PbC�27�	�� P쮡e�l���O���|�؍Q�S�X����`���MF* t�mx��(\����+�Ú�*����̈~eF&�/3��@�Q	 �^��^�=ٱ�+%�Z�ר3�X�����X��Qt�T�骹Z�> (4�a���#��DK!��.�y�̈������0� }����4H_�?��½�D#kjb���ɉ�^d��5=�����^�����f����&�Y�cM�D;k�b�
��W��O�����}��5Yqƞl���+��(2�Ϛ���G41���~-F�_��Y�W쮡�5qq�N����+ԊN����١r��5}1�fM��&0�X����yv4�gO����١���~v~�١#B?K�18��gMf����~v*���gMh��6k��5�1�>B?kR�M"��N���D?;k#������E?krclIc��5�q�J��	��W-�Y*����*��(v��Ϯo�'�Y��z�����p;�A�}�b��Rv�������c�oG�V4v�a����𵵑�]�-�kk#�Z� �ǚ����>�1|����E�	ۿw)Nm�"�k#1Т5~���/ٓ���/}�FB�G?j���.6���AF�}`�G��~������p�K�dǖ}`�G��n��@��� ��E+{�bE�͊|�Owix�D�z�bc?�+R��-�a�"5��b#-6,��'v,�\���ŏ+Z�Y4r��I�����h�z>}9#����i�3V����h��i<�>dlI~z�u18󇗞�]65���h��'�y26��4�AOm�2����^���OFa�gdpi�x�A�5��}4��k6x2���]�̳c�F�w�b��L�.����4�ӍMh��]pj����+�O�A�^�k�EVh�vv�f#AP�u;�Q��/ص����A�i���Ӣ=}Y���f�~�`RG	�O�@�V���{x�Q���Vt=�A��]���`=g�c��s��c쥿�5g�c�x:-�ӗ��O�A+���W9���E���e��6rTC�D�� $�"=|i`7��Si�<�F+� ��=�>OO�	F��|/$�Qb�@��6��/�f��E*e�?-�Z����A����x!�l���,d���=�A���MZ��o��H�����B��i��B��L1�`�S�}���r<<�@L�mbr:-���2�(&� ���AȢ�x�����ኀ��[.F��mN�e��yy�B���N��TZ��_��h�tZ��/K�@�V��r&-��E��0�����s����aϴ��s
����Ui��4Zy�?���tZx�9�����<i��,Zu���xiѝ�,��-�_��i�}���XZq��҃��03�:���g�_f<LHZ���f>�����Y���.~:�݊Z
�ᗓ&=]=b<,�;+l(�ӊq�떜��|�����~�q��S?��M.<�Xe���9V�F�4G?t�|�Ow�y|RJN�C��|j��q�q9�������b ��t���ǁ��>L�9����@0!'��`y��u���9V�@�
l����3�9���	
=���3A�Vp���BP�b7s+N�Ù;�;8��kn�5�����^Q.h��;��Ey�=�>٧
���6v�� �{���=١	�U8t�sF�`�͋<���|�-�L��)��p��箐.h��;��'z�=�W{�C��J0���Ƈ.�wl]��V`�P��*��
���[��.xjn��˂G4`��>1���f�<��n�����f�bp���~1�@d�I@�� G�=��o�6���;�[mP�ow>O�rA����j�&�����-XwNm�]�8nP�yw��ڠ�n��AP�}w��ڠ
��|����A��������?`�ϭ�]Є�7[��-�xZ�}>cZk%�xN�!Pښ������t�{���A�5{���AkI�Urjfނ�o��+ڬ=�ϡ�F{���d�v�s)��=�Wѯ�%�Uxz��9�`�-h������>�{�_�A_�{�_]1@�����T��{�_K�|8�5M-.�hCa|�l�ں��Jo��M$>w}�t��u���V�]��͊K���)zL�N��<"�#��w*�|�.	)���u�����g�4L�%Uz~㘂H��A�n'vI��� �LȐ�C���I�oA�A�4-�����P����I�����%�%e��삤B�o���f|k�� �  ���B�t����YS&O-�]Ҡ8�)����dM���/>�5}r��y&P��$���P�n�wI�6��ܽ�%���s{�Ti�Ͻ�\R�x>�(sI�V��ܤ�%z��s+/�4i��7]��E7p���3Z�*O�\R���:�SZ+�
�@�}�B������Y �+���\R�)x>�QpI�����l�%Mڂ�s�3����a4#��Z���6.)�<�����Lk�|���
��A
�w�Ȗ�e�:5����`�c�e��ݠ?x>�JsI�ᘏ��<�^�F��|ق#'|yL��-1�G)8�ك�X�y��}��BL�ӠS8H���<&cg��1�4��#��Ǆ��L&�������]R�]x>�rI�~���7�%U��s�w�����͇]R�ex>O�rI�����`�%M���28���y�?�`�3>�� )�7\0�Y�����!��!�3S�u8f=�j�_�隧y.��<\��c�)�#ؕ��Ǥ���	�=�m���=�j]���g %:�_T�Kʴ��`�T�!~��*M��K�Kjt�x���Nq�gb.i�G<�����I#��%-:��sH��9���%%z��t8�qIذ�ެ�$�����.�����+��"9;�eۺJ���-��U�u�9u�c�t�'x���
�	s�wެи$l}^��Ü }�U��B_q�u�4��^�.��Y<�����Nk�G� i�[�b��%M���t8�uI����܇�#aN��?\5rI�����'sꜵ�'�	�s�L��J��|���=�A
�0'��Yk�y�:g��1s�9Ox���3~���xm>:g��9'0��4��%eZ�S�S��x>7vwI�f����F���%uڍ���l�4�7�8'����s���|�1'�蜱�s���<;�	>:gl��9�G猍-�ض���5���;��8'����
��3�V����%�%-z��|�0'0��tu�%%����@��i?�8�B��|8�*��y��Kjt ��9]R�y>�hqI���܂�%M����;�	�s��{$�	�sې��Dr���@�F�����%:��S�@�SiE�O��]N���u��@�n���a�%Mڑ�c�P��G��M(=��7��]R�#����T���(�Г<�{���JS�|fr�R]ɣ�N[r���%�&�ɣ��L�`̠��$z��cS�iN.xw`ȧ��TړG)���QJ�Ay>7(wI���W=F�y���KZ�(�Fy.���Q~*&�[�۔��B��x�a�7�2|H�N���iU. z��c�r4iV�`�7�2�8O�2خc��`���	S
���}TZ�ǋ���3
�4-�ڠky�����K��[͗���ܸ�%%:��ck�i]. z�@���P�{y������Р���&��E�|�<��Ks(��<~�W��� T�b|�J�|nc�}�󱏹�42��������_����;t?     