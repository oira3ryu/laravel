PGDMP         $        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16465    koujyous    TABLE     7  CREATE TABLE public.koujyous (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.koujyous;
       public         heap    y-miso    false            �            1259    16464    koujyous_id_seq    SEQUENCE     x   CREATE SEQUENCE public.koujyous_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.koujyous_id_seq;
       public          y-miso    false    228            �           0    0    koujyous_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.koujyous_id_seq OWNED BY public.koujyous.id;
          public          y-miso    false    227            #           2604    16468    koujyous id    DEFAULT     j   ALTER TABLE ONLY public.koujyous ALTER COLUMN id SET DEFAULT nextval('public.koujyous_id_seq'::regclass);
 :   ALTER TABLE public.koujyous ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    227    228    228            �          0    16465    koujyous 
   TABLE DATA           _   COPY public.koujyous (id, meisyou, kana, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    228   E       �           0    0    koujyous_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.koujyous_id_seq', 1, false);
          public          y-miso    false    227            (           2606    16475    koujyous koujyous_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.koujyous
    ADD CONSTRAINT koujyous_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.koujyous DROP CONSTRAINT koujyous_pkey;
       public            y-miso    false    228            �   �   x�3�|�fϋ���ۗ>]���qӪ��ݏ��?nZ��i��e��v<n^dprr��)ZZ�X��Čt��L�������Аˈ�٦�O�.����qs��5����7���
h��	���\1z\\\ �
GR     