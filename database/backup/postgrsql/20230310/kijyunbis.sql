PGDMP         %        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16640 	   kijyunbis    TABLE       CREATE TABLE public.kijyunbis (
    id bigint NOT NULL,
    hiduke date NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.kijyunbis;
       public         heap    y-miso    false            �            1259    16639    kijyunbis_id_seq    SEQUENCE     y   CREATE SEQUENCE public.kijyunbis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.kijyunbis_id_seq;
       public          y-miso    false    248            �           0    0    kijyunbis_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.kijyunbis_id_seq OWNED BY public.kijyunbis.id;
          public          y-miso    false    247            #           2604    16643    kijyunbis id    DEFAULT     l   ALTER TABLE ONLY public.kijyunbis ALTER COLUMN id SET DEFAULT nextval('public.kijyunbis_id_seq'::regclass);
 ;   ALTER TABLE public.kijyunbis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    248    247    248            �          0    16640 	   kijyunbis 
   TABLE DATA           Y   COPY public.kijyunbis (id, hiduke, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    248   ;       �           0    0    kijyunbis_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.kijyunbis_id_seq', 2, true);
          public          y-miso    false    247            (           2606    16650    kijyunbis kijyunbis_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.kijyunbis
    ADD CONSTRAINT kijyunbis_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.kijyunbis DROP CONSTRAINT kijyunbis_pkey;
       public            y-miso    false    248            �   >   x�3�4202�50�50�4���u��D����������T�%.�FV��ĸb���� 0��     