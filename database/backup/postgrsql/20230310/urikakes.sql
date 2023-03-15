PGDMP     4             
        {            laravel    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16567    urikakes    TABLE        CREATE TABLE public.urikakes (
    id bigint NOT NULL,
    hiduke date NOT NULL,
    koujyou_id bigint NOT NULL,
    nounyusaki_id bigint NOT NULL,
    genba_id bigint NOT NULL,
    syouhin_id bigint NOT NULL,
    tanka double precision,
    suuryou double precision NOT NULL,
    kingaku double precision,
    hyouji_id bigint DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.urikakes;
       public         heap    y-miso    false            �            1259    16566    urikakes_id_seq    SEQUENCE     x   CREATE SEQUENCE public.urikakes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.urikakes_id_seq;
       public          y-miso    false    240            �           0    0    urikakes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.urikakes_id_seq OWNED BY public.urikakes.id;
          public          y-miso    false    239            #           2604    16570    urikakes id    DEFAULT     j   ALTER TABLE ONLY public.urikakes ALTER COLUMN id SET DEFAULT nextval('public.urikakes_id_seq'::regclass);
 :   ALTER TABLE public.urikakes ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    240    239    240            �          0    16567    urikakes 
   TABLE DATA           �   COPY public.urikakes (id, hiduke, koujyou_id, nounyusaki_id, genba_id, syouhin_id, tanka, suuryou, kingaku, hyouji_id, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    240   b       �           0    0    urikakes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.urikakes_id_seq', 13, true);
          public          y-miso    false    239            (           2606    16577    urikakes urikakes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_pkey;
       public            y-miso    false    240            )           2606    16588 "   urikakes urikakes_genba_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_genba_id_foreign FOREIGN KEY (genba_id) REFERENCES public.genbas(id);
 L   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_genba_id_foreign;
       public          y-miso    false    240            *           2606    16578 $   urikakes urikakes_koujyou_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_koujyou_id_foreign FOREIGN KEY (koujyou_id) REFERENCES public.koujyous(id);
 N   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_koujyou_id_foreign;
       public          y-miso    false    240            +           2606    16583 '   urikakes urikakes_nounyusaki_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_nounyusaki_id_foreign FOREIGN KEY (nounyusaki_id) REFERENCES public.nounyusakis(id);
 Q   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_nounyusaki_id_foreign;
       public          y-miso    false    240            ,           2606    16593 $   urikakes urikakes_syouhin_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_syouhin_id_foreign FOREIGN KEY (syouhin_id) REFERENCES public.syouhins(id);
 N   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_syouhin_id_foreign;
       public          y-miso    false    240            �   �   x����� D��Y��}�{�N���(iӦMM"O�qgM`��-�����i�������AfGu b4�6+�\��E�6s(ͱM�l�Έ՝�ؔG�|��ugd�o�:֞޾	�B��WF�S}
5UKb����9h�2D­2�+g�)b$9�E��(�e$�`a�=     