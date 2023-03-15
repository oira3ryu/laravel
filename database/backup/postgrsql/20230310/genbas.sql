PGDMP     
    &        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16523    genbas    TABLE     B  CREATE TABLE public.genbas (
    id bigint NOT NULL,
    koujyou_id bigint NOT NULL,
    nounyusaki_id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT genbas_hyouji_id_check CHECK ((hyouji_id >= 1)),
    CONSTRAINT genbas_koujyou_id_check CHECK ((koujyou_id >= 1)),
    CONSTRAINT genbas_nounyusaki_id_check CHECK ((nounyusaki_id >= 1))
);
    DROP TABLE public.genbas;
       public         heap    y-miso    false            �            1259    16522    genbas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.genbas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genbas_id_seq;
       public          y-miso    false    236            �           0    0    genbas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genbas_id_seq OWNED BY public.genbas.id;
          public          y-miso    false    235            #           2604    16526 	   genbas id    DEFAULT     f   ALTER TABLE ONLY public.genbas ALTER COLUMN id SET DEFAULT nextval('public.genbas_id_seq'::regclass);
 8   ALTER TABLE public.genbas ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    235    236    236            �          0    16523    genbas 
   TABLE DATA           x   COPY public.genbas (id, koujyou_id, nounyusaki_id, meisyou, kana, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    236   ;       �           0    0    genbas_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.genbas_id_seq', 1, true);
          public          y-miso    false    235            +           2606    16533    genbas genbas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genbas
    ADD CONSTRAINT genbas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genbas DROP CONSTRAINT genbas_pkey;
       public            y-miso    false    236            ,           2606    16534     genbas genbas_koujyou_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.genbas
    ADD CONSTRAINT genbas_koujyou_id_foreign FOREIGN KEY (koujyou_id) REFERENCES public.koujyous(id);
 J   ALTER TABLE ONLY public.genbas DROP CONSTRAINT genbas_koujyou_id_foreign;
       public          y-miso    false    236            -           2606    16539 #   genbas genbas_nounyusaki_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.genbas
    ADD CONSTRAINT genbas_nounyusaki_id_foreign FOREIGN KEY (nounyusaki_id) REFERENCES public.nounyusakis(id);
 M   ALTER TABLE ONLY public.genbas DROP CONSTRAINT genbas_nounyusaki_id_foreign;
       public          y-miso    false    236            �   �	  x��Z[v�L~�V��yp�Z-	�E�
fsf��?Ɖ��;�ql��n.�v�`�bD7�)[��n����997���._}U���h���y���^x�+�=�r^l�y�:t>��StMח���ӄ�vL�1�yk*Ut�*��{��_�,���dX�#+_����^���=������O�{G�_����-����'�G��A;��d�s[�=��sϽ�)(��8���F���=x�Z�]x�����:<J筩(�Е��|��鄗���j-�]Y�4<̍�6�����>���KÇ��c=9}68�A�u�Љ����c�e-��4���RMp�v:��nV�}�5��ğ�_��Nqlc�itet��o����ަ�Sa�U�\P�7����^��o܋8�SRe4�U��7`�K��.�{��AS�#ږA9��z�ih+�p���I�=� qG�#�6*�2�C	du1Gܿ1GP͕X�����b��A���<�Q�!�
z�oOx�.N~K<xH1�I�h��~録[�˃���+Ã�s��N�Z�ַ��緛q��t��H�X4!e�v}it�诼�w�c'����~�6��^���>^��ek�n1 ����u �JK���f�#~�C.�9ih�o".�%�B�_-ӍZ��au�)1���^ǒ�y��ƀ�v���� �T�P�"!��t�� R��>K�2uE��+X�§��r}��!WD�ȼ@*�v���R�Aw����UD�H�!v�^.��u�P��U)�_`��U.DXE�ɵb	�-�]~���;�1%��5���n2#�<���A�>)�
5��Y�hG�?c)!L\2)UA8��T��:t��`k�ѕLPk���?fC� ��2��1uU�"�DI"@ݱ5e��-QCK�z	�\�}ЯE1��w���zJ�L�`�Õ#/��H��s$�n=n@���ւӑ�A��V�ߕ"����w�����G��d�j��񵄨{HP0dc�.kј�1UJd���!KC����Q�O���7���f���u,��(����i�M/|lH#.��?��A��*5w����>�྆C�*5�#5g�_�k��L~=槏/���R�)�������VDr����5�����uA�~=���f��턀ϲ�XRm�V�J��VX�,��JɱĦ�'p8[0bu}��PfG�?��o	v�,O�}U0��x݌%����K���3|�b�e�x�=)ђ=��b{�M]5�q�s=���A�o�a{�y5��"���hɳ��6��E�ʏ+{7fbDsXO%@<T��RD�����G��,��^+�cG�C��- ���l9l`F��S�>�����Ψ�mXɂ}������-�;��[2Z�NU���"���������s�P���	̅O`�U#i���Ӝ�z��q����T��r�E<Ms, 5�a���������U�IR�Z,��c����\� f*�OV&$A4G7�ĚD"o�������߼���#\�ޮ-&�گb��b�����300�|���c��~�i0)|	K7��A���^�����͠�@�����_�J0�sO�ӹXR���e��~����-�u4����d�a��/6�G��i����H��h��ɍxS����b�&G��ט�e
�I)~a�}: ��*ؽ>��E�y.�A,�"Rb
a3��������m��O9�R�tx.��e�F�<:����<�!���u�|�g=V(���[��[�cU��?h�����T�To�ٔ�����m�{�>�A��2s��3�� ��b����xptt|�����Sz������"��c�Xk�r��vH8���ތ2ߠ����&�(����) �@���`(ڎf��)��(���<��EVD�L��zۓ�N2��L�X���(��b��2���|�J�e�ķw�p̺̦���Q�(,���y��uš�{��A��{�g��t3�B�9J��!c)�+���GH��F���o4}L��DI���+lsmr�x)�l]\Y�c=���x#ܔ�G��h�%�Q|��[����KE�
J��ʰ�팿v���~#����F�VL五:xQ0���)[�����q���c���ԔLZ��~ tA�|Κjk��)�n�/���3Es|��U�[w��B?l9Zzڀ�	̀��5�&�@0�OCs��d���ކ:�lά��FU;:�|�F/Yɹ��)S���ɶp��T�5�W���Ws�#���.��k��6d;��z�~)^v�Gg�xi��-���'��8���6گ���ER`�u�!�5�6�A`&�~	�G���h�]/1�9Jѩ���hn}���Y��X�J�r6��d�SV�*�ѥ8�~P�v��uHhhM�S���Y��bE<9]Sm;h#��_����Кjc�dw��V�eub�/���~���Jh:�H�[S�Z��G/:͂&��ʻ����TQ>}����A�3ǫI��2�IH�HW�}K�6j�!�/k6�A�~v�"P���������     