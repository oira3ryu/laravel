PGDMP         !        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16453    tanka_syubetsus    TABLE     >  CREATE TABLE public.tanka_syubetsus (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
 #   DROP TABLE public.tanka_syubetsus;
       public         heap    y-miso    false            �            1259    16452    tanka_syubetsus_id_seq    SEQUENCE        CREATE SEQUENCE public.tanka_syubetsus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.tanka_syubetsus_id_seq;
       public          y-miso    false    226            �           0    0    tanka_syubetsus_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tanka_syubetsus_id_seq OWNED BY public.tanka_syubetsus.id;
          public          y-miso    false    225            #           2604    16456    tanka_syubetsus id    DEFAULT     x   ALTER TABLE ONLY public.tanka_syubetsus ALTER COLUMN id SET DEFAULT nextval('public.tanka_syubetsus_id_seq'::regclass);
 A   ALTER TABLE public.tanka_syubetsus ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    226    225    226            �          0    16453    tanka_syubetsus 
   TABLE DATA           f   COPY public.tanka_syubetsus (id, meisyou, kana, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    226   �       �           0    0    tanka_syubetsus_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tanka_syubetsus_id_seq', 1, false);
          public          y-miso    false    225            (           2606    16463 $   tanka_syubetsus tanka_syubetsus_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tanka_syubetsus
    ADD CONSTRAINT tanka_syubetsus_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tanka_syubetsus DROP CONSTRAINT tanka_syubetsus_pkey;
       public            y-miso    false    226            �   p   x�3�|�b�]�87Ozܼ�qӲ�M;7/}ܼ�Ӑ�����X��P��H�������� $f�kh�k`�``�21�2�|�b����v?nn~ܴ�q��花���� �o-�     