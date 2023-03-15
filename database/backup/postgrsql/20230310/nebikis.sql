PGDMP     9    #        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16599    nebikis    TABLE     �  CREATE TABLE public.nebikis (
    id bigint NOT NULL,
    nounyusaki_id bigint NOT NULL,
    tanka_syubetsu_id bigint NOT NULL,
    nebiki integer NOT NULL,
    kaishibi date NOT NULL,
    syuuryoubi date,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    koujyou_id bigint
);
    DROP TABLE public.nebikis;
       public         heap    y-miso    false            �            1259    16598    nebikis_id_seq    SEQUENCE     w   CREATE SEQUENCE public.nebikis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.nebikis_id_seq;
       public          y-miso    false    242            �           0    0    nebikis_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.nebikis_id_seq OWNED BY public.nebikis.id;
          public          y-miso    false    241            #           2604    16602 
   nebikis id    DEFAULT     h   ALTER TABLE ONLY public.nebikis ALTER COLUMN id SET DEFAULT nextval('public.nebikis_id_seq'::regclass);
 9   ALTER TABLE public.nebikis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    242    241    242            �          0    16599    nebikis 
   TABLE DATA           �   COPY public.nebikis (id, nounyusaki_id, tanka_syubetsu_id, nebiki, kaishibi, syuuryoubi, hyouji_id, bikou, updated_at, created_at, koujyou_id) FROM stdin;
    public          y-miso    false    242          �           0    0    nebikis_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.nebikis_id_seq', 1, false);
          public          y-miso    false    241            (           2606    16609    nebikis nebikis_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.nebikis
    ADD CONSTRAINT nebikis_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.nebikis DROP CONSTRAINT nebikis_pkey;
       public            y-miso    false    242            )           2606    16610 %   nebikis nebikis_nounyusaki_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.nebikis
    ADD CONSTRAINT nebikis_nounyusaki_id_foreign FOREIGN KEY (nounyusaki_id) REFERENCES public.nounyusakis(id);
 O   ALTER TABLE ONLY public.nebikis DROP CONSTRAINT nebikis_nounyusaki_id_foreign;
       public          y-miso    false    242            *           2606    16615 )   nebikis nebikis_tanka_syubetsu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.nebikis
    ADD CONSTRAINT nebikis_tanka_syubetsu_id_foreign FOREIGN KEY (tanka_syubetsu_id) REFERENCES public.tanka_syubetsus(id);
 S   ALTER TABLE ONLY public.nebikis DROP CONSTRAINT nebikis_tanka_syubetsu_id_foreign;
       public          y-miso    false    242            �   �  x����N�@���O�H5v��.��aR��(- JIhC"�Z P!L"x�d��=��n:Nu]#�����gf�9wF�$E��P�&LMHZ�g�=�|�?���${�1����n�IQS����|�&���������|2a�4�*@�3d�����,L-�a���C�O������(\��� � ���.y[Q�z�䰟��d�:�fֺM�߲�i�zȕ2�jAg�[��g�$~D�o�Ѧ?����|��.�,I�+j����.oE%ܲ��8��E'>���(�CfHXH�R|ڴ{�bCri����߶Wm&�'��w/��&3 Yh�\gr8NXU�N��Wۺ��iv<�oSH�m��s"ٖ��nSٛ�?�I��7��<n�����Hh��OYy
.R��<����4���wL�Y,��A���	��{`a��J%>��N��2LԨ4�i�L��$��G�LEZU��`�x��3�LC��ZeX��_i��v[�T�X']Ж�$>�!iwO*�� 6H�{R��7���'��dIFZ�yt��$VuE���W
*=���-o�9M����^r��FQ�Ư�p���)��k�W���#�d��gw����	������r��m�ݾ=:�g?8jC�p�Q��l��u��=���A�{�2��G���_z��>ME     