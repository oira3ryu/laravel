PGDMP     ,    "        
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16477    syouhin_syubetsus    TABLE     @  CREATE TABLE public.syouhin_syubetsus (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
 %   DROP TABLE public.syouhin_syubetsus;
       public         heap    y-miso    false            �            1259    16476    syouhin_syubetsus_id_seq    SEQUENCE     �   CREATE SEQUENCE public.syouhin_syubetsus_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.syouhin_syubetsus_id_seq;
       public          y-miso    false    230            �           0    0    syouhin_syubetsus_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.syouhin_syubetsus_id_seq OWNED BY public.syouhin_syubetsus.id;
          public          y-miso    false    229            #           2604    16480    syouhin_syubetsus id    DEFAULT     |   ALTER TABLE ONLY public.syouhin_syubetsus ALTER COLUMN id SET DEFAULT nextval('public.syouhin_syubetsus_id_seq'::regclass);
 C   ALTER TABLE public.syouhin_syubetsus ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    229    230    230            �          0    16477    syouhin_syubetsus 
   TABLE DATA           h   COPY public.syouhin_syubetsus (id, meisyou, kana, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    230          �           0    0    syouhin_syubetsus_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.syouhin_syubetsus_id_seq', 1, false);
          public          y-miso    false    229            (           2606    16487 (   syouhin_syubetsus syouhin_syubetsus_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.syouhin_syubetsus
    ADD CONSTRAINT syouhin_syubetsus_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.syouhin_syubetsus DROP CONSTRAINT syouhin_syubetsus_pkey;
       public            y-miso    false    230            �   �   x���K
�0���Sx�J�V�	<�N�`u�*��s�օ�3��[8)�n
C��o�� R!���� �^�H�v�-EAʪ�U2o��v܂�U�DŒ���O�NL	HM?A������׽����% �3��T�I�eK�y��V��k����� J�E鼓n��u/i���!��� \�5ٌ]�h,�Ox��f�yF�:�(��|C�QR�hY�����     