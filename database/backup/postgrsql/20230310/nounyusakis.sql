PGDMP         #        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16506    nounyusakis    TABLE     Z  CREATE TABLE public.nounyusakis (
    id bigint NOT NULL,
    koujyou_id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.nounyusakis;
       public         heap    y-miso    false            �            1259    16505    nounyusakis_id_seq    SEQUENCE     {   CREATE SEQUENCE public.nounyusakis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.nounyusakis_id_seq;
       public          y-miso    false    234            �           0    0    nounyusakis_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.nounyusakis_id_seq OWNED BY public.nounyusakis.id;
          public          y-miso    false    233            #           2604    16509    nounyusakis id    DEFAULT     p   ALTER TABLE ONLY public.nounyusakis ALTER COLUMN id SET DEFAULT nextval('public.nounyusakis_id_seq'::regclass);
 =   ALTER TABLE public.nounyusakis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    234    233    234            �          0    16506    nounyusakis 
   TABLE DATA           n   COPY public.nounyusakis (id, koujyou_id, meisyou, kana, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    234   K       �           0    0    nounyusakis_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nounyusakis_id_seq', 1, false);
          public          y-miso    false    233            (           2606    16516    nounyusakis nounyusakis_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.nounyusakis
    ADD CONSTRAINT nounyusakis_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.nounyusakis DROP CONSTRAINT nounyusakis_pkey;
       public            y-miso    false    234            )           2606    16517 *   nounyusakis nounyusakis_koujyou_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.nounyusakis
    ADD CONSTRAINT nounyusakis_koujyou_id_foreign FOREIGN KEY (koujyou_id) REFERENCES public.koujyous(id);
 T   ALTER TABLE ONLY public.nounyusakis DROP CONSTRAINT nounyusakis_koujyou_id_foreign;
       public          y-miso    false    234            �   )  x��W�N�0��>�^���K�x�=�~�a��G�"����ZF[(����0���-v�oZ:&9���*��s���9v\�u�������җ�ݍ*�%kJ.+�P��EOɾ�%~*ف��gl���0�._\,�-��Kc9��F08J��� ��}�7�_��aFÃL3�]���!
N�S���%���֯���䉒�۶�+����;��6;FxDlvFr��:؀��h�_��
4�	��_��I\:�C���#v�%�@���9�w(n�`O�;���� ���m�8и�J�Z��뒞گ�k[�?;`%���t�ak#<�")�kxN�.�JܙN*O��P�J^��U5�P?-�j���u)��Jz���+��4�MJ��%v
Z�� ���U�2^q�/��F�u�vL���(j!�S���]?>���6�m%�R��¯5�;��PB7��\�����-栢IF�Ӣ2t�n\��mjYȀ',~/){����AiBXzy��#��g����|V ��3���LB��S��Q�7�>�'�i�>[ E3�}��/���P�(�y⧬b�'��*�ya�/����i�>G�e�-�y�st�4b����ƾ��X��&��c�"�����fzw�t�ӿ�0F�l��[��~T����vS{����h��p�j+�R���h'��Wl�̗$�J��f���u�M�yv�d\�����m���g����auEo����n\:&.���A!(�D�
�5��J�݄��������Ҹh�ٛ8�7u���0��pհ�#P��<V�?���r���d"     