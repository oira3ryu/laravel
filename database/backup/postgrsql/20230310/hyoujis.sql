PGDMP     (    %        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16441    hyoujis    TABLE     4  CREATE TABLE public.hyoujis (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.hyoujis;
       public         heap    y-miso    false            �            1259    16440    hyoujis_id_seq    SEQUENCE     w   CREATE SEQUENCE public.hyoujis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.hyoujis_id_seq;
       public          y-miso    false    224            �           0    0    hyoujis_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hyoujis_id_seq OWNED BY public.hyoujis.id;
          public          y-miso    false    223            #           2604    16444 
   hyoujis id    DEFAULT     h   ALTER TABLE ONLY public.hyoujis ALTER COLUMN id SET DEFAULT nextval('public.hyoujis_id_seq'::regclass);
 9   ALTER TABLE public.hyoujis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    223    224    224            �          0    16441    hyoujis 
   TABLE DATA           [   COPY public.hyoujis (id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    224   )       �           0    0    hyoujis_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hyoujis_id_seq', 1, false);
          public          y-miso    false    223            (           2606    16451    hyoujis hyoujis_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hyoujis
    ADD CONSTRAINT hyoujis_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hyoujis DROP CONSTRAINT hyoujis_pkey;
       public            y-miso    false    224            �   X   x�3�|�p��%�87Ozܼ�qӲ�M;899���uu�ͭL�L�bF
FV�VF\F�/��C6�10-�f�ĸb���� uE-�     