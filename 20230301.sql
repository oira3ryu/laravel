PGDMP     '    "                {            laravel    15.2    15.1 �    E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    16390    laravel    DATABASE     �   CREATE DATABASE laravel WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LC_COLLATE = 'C' LC_CTYPE = 'C.UTF-8';
    DROP DATABASE laravel;
                y-miso    false            �            1259    16630    articles    TABLE     �   CREATE TABLE public.articles (
    id bigint NOT NULL,
    title character varying(255) NOT NULL,
    content text NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.articles;
       public         heap    y-miso    false            I           0    0    COLUMN articles.title    COMMENT     ;   COMMENT ON COLUMN public.articles.title IS 'タイトル';
          public          y-miso    false    246            J           0    0    COLUMN articles.content    COMMENT     7   COMMENT ON COLUMN public.articles.content IS '本文';
          public          y-miso    false    246            �            1259    16629    articles_id_seq    SEQUENCE     x   CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.articles_id_seq;
       public          y-miso    false    246            K           0    0    articles_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;
          public          y-miso    false    245            �            1259    16621 	   employees    TABLE     J  CREATE TABLE public.employees (
    id bigint NOT NULL,
    employee_id character varying(255),
    name character varying(255),
    year integer,
    email character varying(255),
    dept character varying(255),
    start_day date,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.employees;
       public         heap    y-miso    false            �            1259    16620    employees_id_seq    SEQUENCE     y   CREATE SEQUENCE public.employees_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.employees_id_seq;
       public          y-miso    false    244            L           0    0    employees_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.employees_id_seq OWNED BY public.employees.id;
          public          y-miso    false    243            �            1259    16417    failed_jobs    TABLE     &  CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);
    DROP TABLE public.failed_jobs;
       public         heap    y-miso    false            �            1259    16416    failed_jobs_id_seq    SEQUENCE     {   CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.failed_jobs_id_seq;
       public          y-miso    false    220            M           0    0    failed_jobs_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;
          public          y-miso    false    219            �            1259    16523    genbas    TABLE     v  CREATE TABLE public.genbas (
    id bigint NOT NULL,
    koujyou_id bigint NOT NULL,
    nounyusaki_id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.genbas;
       public         heap    y-miso    false            �            1259    16522    genbas_id_seq    SEQUENCE     v   CREATE SEQUENCE public.genbas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.genbas_id_seq;
       public          y-miso    false    236            N           0    0    genbas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.genbas_id_seq OWNED BY public.genbas.id;
          public          y-miso    false    235            �            1259    16441    hyoujis    TABLE     4  CREATE TABLE public.hyoujis (
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
       public          y-miso    false    224            O           0    0    hyoujis_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.hyoujis_id_seq OWNED BY public.hyoujis.id;
          public          y-miso    false    223            �            1259    16465    koujyous    TABLE     5  CREATE TABLE public.koujyous (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
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
       public          y-miso    false    228            P           0    0    koujyous_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.koujyous_id_seq OWNED BY public.koujyous.id;
          public          y-miso    false    227            �            1259    16392 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    y-miso    false            �            1259    16391    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          y-miso    false    215            Q           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          y-miso    false    214            �            1259    16599    nebikis    TABLE     �  CREATE TABLE public.nebikis (
    id bigint NOT NULL,
    nounyusaki_id bigint NOT NULL,
    tanka_syubetsu_id bigint NOT NULL,
    nebiki integer NOT NULL,
    kaishibi date NOT NULL,
    syuuryoubi date,
    hyouji integer DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.nebikis;
       public         heap    y-miso    false            �            1259    16598    nebikis_id_seq    SEQUENCE     w   CREATE SEQUENCE public.nebikis_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.nebikis_id_seq;
       public          y-miso    false    242            R           0    0    nebikis_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.nebikis_id_seq OWNED BY public.nebikis.id;
          public          y-miso    false    241            �            1259    16506    nounyusakis    TABLE     X  CREATE TABLE public.nounyusakis (
    id bigint NOT NULL,
    koujyou_id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
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
       public          y-miso    false    234            S           0    0    nounyusakis_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.nounyusakis_id_seq OWNED BY public.nounyusakis.id;
          public          y-miso    false    233            �            1259    16409    password_resets    TABLE     �   CREATE TABLE public.password_resets (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);
 #   DROP TABLE public.password_resets;
       public         heap    y-miso    false            �            1259    16429    personal_access_tokens    TABLE     �  CREATE TABLE public.personal_access_tokens (
    id bigint NOT NULL,
    tokenable_type character varying(255) NOT NULL,
    tokenable_id bigint NOT NULL,
    name character varying(255) NOT NULL,
    token character varying(64) NOT NULL,
    abilities text,
    last_used_at timestamp(0) without time zone,
    expires_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
 *   DROP TABLE public.personal_access_tokens;
       public         heap    y-miso    false            �            1259    16428    personal_access_tokens_id_seq    SEQUENCE     �   CREATE SEQUENCE public.personal_access_tokens_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.personal_access_tokens_id_seq;
       public          y-miso    false    222            T           0    0    personal_access_tokens_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.personal_access_tokens_id_seq OWNED BY public.personal_access_tokens.id;
          public          y-miso    false    221            �            1259    16477    syouhin_syubetsus    TABLE     >  CREATE TABLE public.syouhin_syubetsus (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
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
       public          y-miso    false    230            U           0    0    syouhin_syubetsus_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.syouhin_syubetsus_id_seq OWNED BY public.syouhin_syubetsus.id;
          public          y-miso    false    229            �            1259    16489    syouhins    TABLE     ^  CREATE TABLE public.syouhins (
    id bigint NOT NULL,
    syouhin_syubetsu_id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
    bikou text,
    updated_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP,
    created_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP
);
    DROP TABLE public.syouhins;
       public         heap    y-miso    false            �            1259    16488    syouhins_id_seq    SEQUENCE     x   CREATE SEQUENCE public.syouhins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.syouhins_id_seq;
       public          y-miso    false    232            V           0    0    syouhins_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.syouhins_id_seq OWNED BY public.syouhins.id;
          public          y-miso    false    231            �            1259    16453    tanka_syubetsus    TABLE     <  CREATE TABLE public.tanka_syubetsus (
    id bigint NOT NULL,
    meisyou text NOT NULL,
    kana text NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
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
       public          y-miso    false    226            W           0    0    tanka_syubetsus_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.tanka_syubetsus_id_seq OWNED BY public.tanka_syubetsus.id;
          public          y-miso    false    225            �            1259    16545    tankas    TABLE     �  CREATE TABLE public.tankas (
    id bigint NOT NULL,
    syouhin_id bigint NOT NULL,
    tanka_syubetsu_id bigint NOT NULL,
    tanka integer NOT NULL,
    kaishibi date NOT NULL,
    syuuryoubi date,
    hyouji integer DEFAULT 1 NOT NULL,
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
       public          y-miso    false    238            X           0    0    tankas_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.tankas_id_seq OWNED BY public.tankas.id;
          public          y-miso    false    237            �            1259    16567    urikakes    TABLE       CREATE TABLE public.urikakes (
    id bigint NOT NULL,
    hiduke date NOT NULL,
    koujyou_id bigint NOT NULL,
    nounyusaki_id bigint NOT NULL,
    genba_id bigint NOT NULL,
    syouhin_id bigint NOT NULL,
    tanka double precision NOT NULL,
    suuryou double precision NOT NULL,
    kingaku double precision NOT NULL,
    hyouji integer DEFAULT 1 NOT NULL,
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
       public          y-miso    false    240            Y           0    0    urikakes_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.urikakes_id_seq OWNED BY public.urikakes.id;
          public          y-miso    false    239            �            1259    16399    users    TABLE     x  CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);
    DROP TABLE public.users;
       public         heap    y-miso    false            �            1259    16398    users_id_seq    SEQUENCE     u   CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.users_id_seq;
       public          y-miso    false    217            Z           0    0    users_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;
          public          y-miso    false    216            ^           2604    16633    articles id    DEFAULT     j   ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);
 :   ALTER TABLE public.articles ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    246    245    246            ]           2604    16624    employees id    DEFAULT     l   ALTER TABLE ONLY public.employees ALTER COLUMN id SET DEFAULT nextval('public.employees_id_seq'::regclass);
 ;   ALTER TABLE public.employees ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    243    244    244            2           2604    16420    failed_jobs id    DEFAULT     p   ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);
 =   ALTER TABLE public.failed_jobs ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    220    219    220            M           2604    16526 	   genbas id    DEFAULT     f   ALTER TABLE ONLY public.genbas ALTER COLUMN id SET DEFAULT nextval('public.genbas_id_seq'::regclass);
 8   ALTER TABLE public.genbas ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    235    236    236            5           2604    16444 
   hyoujis id    DEFAULT     h   ALTER TABLE ONLY public.hyoujis ALTER COLUMN id SET DEFAULT nextval('public.hyoujis_id_seq'::regclass);
 9   ALTER TABLE public.hyoujis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    223    224    224            =           2604    16468    koujyous id    DEFAULT     j   ALTER TABLE ONLY public.koujyous ALTER COLUMN id SET DEFAULT nextval('public.koujyous_id_seq'::regclass);
 :   ALTER TABLE public.koujyous ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    227    228    228            0           2604    16395    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    215    214    215            Y           2604    16602 
   nebikis id    DEFAULT     h   ALTER TABLE ONLY public.nebikis ALTER COLUMN id SET DEFAULT nextval('public.nebikis_id_seq'::regclass);
 9   ALTER TABLE public.nebikis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    242    241    242            I           2604    16509    nounyusakis id    DEFAULT     p   ALTER TABLE ONLY public.nounyusakis ALTER COLUMN id SET DEFAULT nextval('public.nounyusakis_id_seq'::regclass);
 =   ALTER TABLE public.nounyusakis ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    234    233    234            4           2604    16432    personal_access_tokens id    DEFAULT     �   ALTER TABLE ONLY public.personal_access_tokens ALTER COLUMN id SET DEFAULT nextval('public.personal_access_tokens_id_seq'::regclass);
 H   ALTER TABLE public.personal_access_tokens ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    221    222    222            A           2604    16480    syouhin_syubetsus id    DEFAULT     |   ALTER TABLE ONLY public.syouhin_syubetsus ALTER COLUMN id SET DEFAULT nextval('public.syouhin_syubetsus_id_seq'::regclass);
 C   ALTER TABLE public.syouhin_syubetsus ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    230    229    230            E           2604    16492    syouhins id    DEFAULT     j   ALTER TABLE ONLY public.syouhins ALTER COLUMN id SET DEFAULT nextval('public.syouhins_id_seq'::regclass);
 :   ALTER TABLE public.syouhins ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    232    231    232            9           2604    16456    tanka_syubetsus id    DEFAULT     x   ALTER TABLE ONLY public.tanka_syubetsus ALTER COLUMN id SET DEFAULT nextval('public.tanka_syubetsus_id_seq'::regclass);
 A   ALTER TABLE public.tanka_syubetsus ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    226    225    226            Q           2604    16548 	   tankas id    DEFAULT     f   ALTER TABLE ONLY public.tankas ALTER COLUMN id SET DEFAULT nextval('public.tankas_id_seq'::regclass);
 8   ALTER TABLE public.tankas ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    237    238    238            U           2604    16570    urikakes id    DEFAULT     j   ALTER TABLE ONLY public.urikakes ALTER COLUMN id SET DEFAULT nextval('public.urikakes_id_seq'::regclass);
 :   ALTER TABLE public.urikakes ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    239    240    240            1           2604    16402    users id    DEFAULT     d   ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);
 7   ALTER TABLE public.users ALTER COLUMN id DROP DEFAULT;
       public          y-miso    false    216    217    217            B          0    16630    articles 
   TABLE DATA           N   COPY public.articles (id, title, content, created_at, updated_at) FROM stdin;
    public          y-miso    false    246   &�       @          0    16621 	   employees 
   TABLE DATA           p   COPY public.employees (id, employee_id, name, year, email, dept, start_day, created_at, updated_at) FROM stdin;
    public          y-miso    false    244   C�       (          0    16417    failed_jobs 
   TABLE DATA           a   COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
    public          y-miso    false    220   `�       8          0    16523    genbas 
   TABLE DATA           u   COPY public.genbas (id, koujyou_id, nounyusaki_id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    236   }�       ,          0    16441    hyoujis 
   TABLE DATA           [   COPY public.hyoujis (id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    224   b�       0          0    16465    koujyous 
   TABLE DATA           \   COPY public.koujyous (id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    228   ʱ       #          0    16392 
   migrations 
   TABLE DATA           :   COPY public.migrations (id, migration, batch) FROM stdin;
    public          y-miso    false    215   b�       >          0    16599    nebikis 
   TABLE DATA           �   COPY public.nebikis (id, nounyusaki_id, tanka_syubetsu_id, nebiki, kaishibi, syuuryoubi, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    242   }�       6          0    16506    nounyusakis 
   TABLE DATA           k   COPY public.nounyusakis (id, koujyou_id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    234   �       &          0    16409    password_resets 
   TABLE DATA           C   COPY public.password_resets (email, token, created_at) FROM stdin;
    public          y-miso    false    218   X�       *          0    16429    personal_access_tokens 
   TABLE DATA           �   COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
    public          y-miso    false    222   u�       2          0    16477    syouhin_syubetsus 
   TABLE DATA           e   COPY public.syouhin_syubetsus (id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    230   ��       4          0    16489    syouhins 
   TABLE DATA           q   COPY public.syouhins (id, syouhin_syubetsu_id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    232   �       .          0    16453    tanka_syubetsus 
   TABLE DATA           c   COPY public.tanka_syubetsus (id, meisyou, kana, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    226   ��       :          0    16545    tankas 
   TABLE DATA           �   COPY public.tankas (id, syouhin_id, tanka_syubetsu_id, tanka, kaishibi, syuuryoubi, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    238   9�       <          0    16567    urikakes 
   TABLE DATA           �   COPY public.urikakes (id, hiduke, koujyou_id, nounyusaki_id, genba_id, syouhin_id, tanka, suuryou, kingaku, hyouji, bikou, updated_at, created_at) FROM stdin;
    public          y-miso    false    240   5�       %          0    16399    users 
   TABLE DATA           u   COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at) FROM stdin;
    public          y-miso    false    217   R�       [           0    0    articles_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.articles_id_seq', 1, false);
          public          y-miso    false    245            \           0    0    employees_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.employees_id_seq', 1, false);
          public          y-miso    false    243            ]           0    0    failed_jobs_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);
          public          y-miso    false    219            ^           0    0    genbas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.genbas_id_seq', 1, false);
          public          y-miso    false    235            _           0    0    hyoujis_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.hyoujis_id_seq', 1, false);
          public          y-miso    false    223            `           0    0    koujyous_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.koujyous_id_seq', 1, false);
          public          y-miso    false    227            a           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 16, true);
          public          y-miso    false    214            b           0    0    nebikis_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.nebikis_id_seq', 1, false);
          public          y-miso    false    241            c           0    0    nounyusakis_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.nounyusakis_id_seq', 1, false);
          public          y-miso    false    233            d           0    0    personal_access_tokens_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 1, false);
          public          y-miso    false    221            e           0    0    syouhin_syubetsus_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.syouhin_syubetsus_id_seq', 1, false);
          public          y-miso    false    229            f           0    0    syouhins_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.syouhins_id_seq', 1, false);
          public          y-miso    false    231            g           0    0    tanka_syubetsus_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.tanka_syubetsus_id_seq', 1, false);
          public          y-miso    false    225            h           0    0    tankas_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.tankas_id_seq', 1, false);
          public          y-miso    false    237            i           0    0    urikakes_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.urikakes_id_seq', 1, false);
          public          y-miso    false    239            j           0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          y-miso    false    216            �           2606    16637    articles articles_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.articles DROP CONSTRAINT articles_pkey;
       public            y-miso    false    246            �           2606    16628    employees employees_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT employees_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.employees DROP CONSTRAINT employees_pkey;
       public            y-miso    false    244            h           2606    16425    failed_jobs failed_jobs_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_pkey;
       public            y-miso    false    220            j           2606    16427 #   failed_jobs failed_jobs_uuid_unique 
   CONSTRAINT     ^   ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);
 M   ALTER TABLE ONLY public.failed_jobs DROP CONSTRAINT failed_jobs_uuid_unique;
       public            y-miso    false    220            }           2606    16533    genbas genbas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.genbas
    ADD CONSTRAINT genbas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.genbas DROP CONSTRAINT genbas_pkey;
       public            y-miso    false    236            q           2606    16451    hyoujis hyoujis_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.hyoujis
    ADD CONSTRAINT hyoujis_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.hyoujis DROP CONSTRAINT hyoujis_pkey;
       public            y-miso    false    224            u           2606    16475    koujyous koujyous_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.koujyous
    ADD CONSTRAINT koujyous_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.koujyous DROP CONSTRAINT koujyous_pkey;
       public            y-miso    false    228            `           2606    16397    migrations migrations_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.migrations DROP CONSTRAINT migrations_pkey;
       public            y-miso    false    215            �           2606    16609    nebikis nebikis_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.nebikis
    ADD CONSTRAINT nebikis_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.nebikis DROP CONSTRAINT nebikis_pkey;
       public            y-miso    false    242            {           2606    16516    nounyusakis nounyusakis_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.nounyusakis
    ADD CONSTRAINT nounyusakis_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.nounyusakis DROP CONSTRAINT nounyusakis_pkey;
       public            y-miso    false    234            f           2606    16415 $   password_resets password_resets_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.password_resets
    ADD CONSTRAINT password_resets_pkey PRIMARY KEY (email);
 N   ALTER TABLE ONLY public.password_resets DROP CONSTRAINT password_resets_pkey;
       public            y-miso    false    218            l           2606    16436 2   personal_access_tokens personal_access_tokens_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_pkey;
       public            y-miso    false    222            n           2606    16439 :   personal_access_tokens personal_access_tokens_token_unique 
   CONSTRAINT     v   ALTER TABLE ONLY public.personal_access_tokens
    ADD CONSTRAINT personal_access_tokens_token_unique UNIQUE (token);
 d   ALTER TABLE ONLY public.personal_access_tokens DROP CONSTRAINT personal_access_tokens_token_unique;
       public            y-miso    false    222            w           2606    16487 (   syouhin_syubetsus syouhin_syubetsus_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.syouhin_syubetsus
    ADD CONSTRAINT syouhin_syubetsus_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.syouhin_syubetsus DROP CONSTRAINT syouhin_syubetsus_pkey;
       public            y-miso    false    230            y           2606    16499    syouhins syouhins_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.syouhins
    ADD CONSTRAINT syouhins_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.syouhins DROP CONSTRAINT syouhins_pkey;
       public            y-miso    false    232            s           2606    16463 $   tanka_syubetsus tanka_syubetsus_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.tanka_syubetsus
    ADD CONSTRAINT tanka_syubetsus_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.tanka_syubetsus DROP CONSTRAINT tanka_syubetsus_pkey;
       public            y-miso    false    226                       2606    16555    tankas tankas_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.tankas
    ADD CONSTRAINT tankas_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.tankas DROP CONSTRAINT tankas_pkey;
       public            y-miso    false    238            �           2606    16577    urikakes urikakes_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_pkey;
       public            y-miso    false    240            b           2606    16408    users users_email_unique 
   CONSTRAINT     T   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);
 B   ALTER TABLE ONLY public.users DROP CONSTRAINT users_email_unique;
       public            y-miso    false    217            d           2606    16406    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            y-miso    false    217            o           1259    16437 8   personal_access_tokens_tokenable_type_tokenable_id_index    INDEX     �   CREATE INDEX personal_access_tokens_tokenable_type_tokenable_id_index ON public.personal_access_tokens USING btree (tokenable_type, tokenable_id);
 L   DROP INDEX public.personal_access_tokens_tokenable_type_tokenable_id_index;
       public            y-miso    false    222    222            �           2606    16534     genbas genbas_koujyou_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.genbas
    ADD CONSTRAINT genbas_koujyou_id_foreign FOREIGN KEY (koujyou_id) REFERENCES public.koujyous(id);
 J   ALTER TABLE ONLY public.genbas DROP CONSTRAINT genbas_koujyou_id_foreign;
       public          y-miso    false    3701    228    236            �           2606    16539 #   genbas genbas_nounyusaki_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.genbas
    ADD CONSTRAINT genbas_nounyusaki_id_foreign FOREIGN KEY (nounyusaki_id) REFERENCES public.nounyusakis(id);
 M   ALTER TABLE ONLY public.genbas DROP CONSTRAINT genbas_nounyusaki_id_foreign;
       public          y-miso    false    234    3707    236            �           2606    16610 %   nebikis nebikis_nounyusaki_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.nebikis
    ADD CONSTRAINT nebikis_nounyusaki_id_foreign FOREIGN KEY (nounyusaki_id) REFERENCES public.nounyusakis(id);
 O   ALTER TABLE ONLY public.nebikis DROP CONSTRAINT nebikis_nounyusaki_id_foreign;
       public          y-miso    false    242    234    3707            �           2606    16615 )   nebikis nebikis_tanka_syubetsu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.nebikis
    ADD CONSTRAINT nebikis_tanka_syubetsu_id_foreign FOREIGN KEY (tanka_syubetsu_id) REFERENCES public.tanka_syubetsus(id);
 S   ALTER TABLE ONLY public.nebikis DROP CONSTRAINT nebikis_tanka_syubetsu_id_foreign;
       public          y-miso    false    226    242    3699            �           2606    16517 *   nounyusakis nounyusakis_koujyou_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.nounyusakis
    ADD CONSTRAINT nounyusakis_koujyou_id_foreign FOREIGN KEY (koujyou_id) REFERENCES public.koujyous(id);
 T   ALTER TABLE ONLY public.nounyusakis DROP CONSTRAINT nounyusakis_koujyou_id_foreign;
       public          y-miso    false    3701    234    228            �           2606    16500 -   syouhins syouhins_syouhin_syubetsu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.syouhins
    ADD CONSTRAINT syouhins_syouhin_syubetsu_id_foreign FOREIGN KEY (syouhin_syubetsu_id) REFERENCES public.syouhin_syubetsus(id);
 W   ALTER TABLE ONLY public.syouhins DROP CONSTRAINT syouhins_syouhin_syubetsu_id_foreign;
       public          y-miso    false    3703    230    232            �           2606    16556     tankas tankas_syouhin_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.tankas
    ADD CONSTRAINT tankas_syouhin_id_foreign FOREIGN KEY (syouhin_id) REFERENCES public.syouhins(id);
 J   ALTER TABLE ONLY public.tankas DROP CONSTRAINT tankas_syouhin_id_foreign;
       public          y-miso    false    3705    238    232            �           2606    16561 '   tankas tankas_tanka_syubetsu_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.tankas
    ADD CONSTRAINT tankas_tanka_syubetsu_id_foreign FOREIGN KEY (tanka_syubetsu_id) REFERENCES public.tanka_syubetsus(id);
 Q   ALTER TABLE ONLY public.tankas DROP CONSTRAINT tankas_tanka_syubetsu_id_foreign;
       public          y-miso    false    226    3699    238            �           2606    16588 "   urikakes urikakes_genba_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_genba_id_foreign FOREIGN KEY (genba_id) REFERENCES public.genbas(id);
 L   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_genba_id_foreign;
       public          y-miso    false    236    240    3709            �           2606    16578 $   urikakes urikakes_koujyou_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_koujyou_id_foreign FOREIGN KEY (koujyou_id) REFERENCES public.koujyous(id);
 N   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_koujyou_id_foreign;
       public          y-miso    false    3701    228    240            �           2606    16583 '   urikakes urikakes_nounyusaki_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_nounyusaki_id_foreign FOREIGN KEY (nounyusaki_id) REFERENCES public.nounyusakis(id);
 Q   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_nounyusaki_id_foreign;
       public          y-miso    false    240    234    3707            �           2606    16593 $   urikakes urikakes_syouhin_id_foreign    FK CONSTRAINT     �   ALTER TABLE ONLY public.urikakes
    ADD CONSTRAINT urikakes_syouhin_id_foreign FOREIGN KEY (syouhin_id) REFERENCES public.syouhins(id);
 N   ALTER TABLE ONLY public.urikakes DROP CONSTRAINT urikakes_syouhin_id_foreign;
       public          y-miso    false    240    232    3705            B      x������ � �      @      x������ � �      (      x������ � �      8   �	  x��Z�V���y
.�¬�93��`��^���?bb0�c�x �r5 Hx��{���®�`��a���ep���:|�U5D"��J���;UQ#��򗞛��^����^�J�e�0?�ڢ�a��RP�g�Jz�h?���ς(	^i�
YVIJ%�B��g�2!�J&�(��:�)��f�H�{��+�{��<���R�o��9u�<eY�RJ�1�P�=�5I�4�~ܡ��ˀ�{�,m|��+ں��|��<���~������s/����Ͷ��һO �?�>��;YԒ-����x��sV��I�`�

N�ӛUvߦ��4q���נ �P�J��=v�����N��W�JQ�nX���|_�I�[�dL��l�({X�7<w��nso����E4ǒ_/0�m����}~tt��!!��<F�F�c�,K?�AV�����\I$��8Ub�-�?�A��
Y	�`�1k�x���g��C�$��U���)�Kw��b_�B#�q����v2�������O<�nR薣�2�bcj)!�uK���`�=����e����.X�=��x����{�&b���2�1-�0�%�8t[?Y��I]	cI"1&�8�j1Xn�)VG�
��z�u"XW�5����4� ¬�ܬ� �D�3Q��`(]V�,��=�ȞT��DO�G����)W9�f_ �?��ka��u�U�,�bȝ��O�*V��K�ך�.��]��&"<E�ɷ	�Z{��v�v�c*J�(k���dG�y�����4G*�`/l��:�	~Md/05ɤU����V�S�P	 O��]�fO�p@-�G�}�E���k1d0�c��j��I#�u�����J�6�P:�@�A=�IYP�ꨚ�Z�eB���W��܎$�ω�Ϻ��	a�{�[���C_!~WK�[������J.�m�O,� �Ț2U����x��@��)�������Cֈ(�7w��F�Y��YN�����z��f\��ul��Mh����i��,||��B�����N�V��B���~tA��C2���9�5G�ǵg4�_����֭[�fp6�_=�b%�pCKH��x�&�6!-�%
]ذ_� 4޳#�vB�g�w"���Y+d�F{+�z���tO��Db3��8�m��%�Bh�����ѷ=��'q޾�A���L$�D��[��M�g���2�ݱn2z� �{-r9����JuU�5�l��W��ּ�**���ZT�ē��es�ﶼ��¸���!z��U+������w�"r�����R�V��z	;����xP-d�!�#n������~>~vG�o~5������-�]��"[�NM��Ǽ��N>�V�Uc�9�a�Uz���'�3���4�k�5�|���k*=�n}!�0��m��МH�L�)�ld1�~!=ǋ'�i҆Ԡ^ ϥ�ج�u;�* ������	I�Qul��۩?{����"��W|�����9���D�E���}�h������阢���w��^��duP���b��aF���v�C;�kU
ח�It��H�ݾ�����PA�M����"4U��7������!��������n��+���U��3�����������6�W��>�����k���$"-�$�6C�=~��������L��D��a\&$�0��nw��c�,��v�j��;��b�����L܊���m�E�Iԅ�*5�{�������w�hՉzn��m<�vWw��u@x)21$��he����9;�g�wO�ͧ#w����|��Ś3�#�$�C��Pet�f���8���7)F��,L�����S�vC6�7HE.�n�sk�dyV͌���Ia�=y�$��ŝ�+�r/n*�-<���|�;^`tF�Nl{7
Ǵ��j�*�E��mO�G�DWJ�W�X�_ =s��p�i���QB�x�8�0����ZAb5����q�@��+tsmr�vəl���58c=���d+\��#i����,�~A��h[xq�Y�BӞ�ʨ�l�v���~3�G�Q�߭�u5����YpԈl٢U�����f\3��L��b����Kl��s�ɶm���6�r[A�1�4Ƿ��\ŧu�6��a�Q2��H):�Ȏ��6�'�>����+F6�U�6����3�Q4َ/1���Kfzn~��3}y�N��)�L�����՜��Q1���`���io�b��{��./wVG�ǣ�M�4��fr��ѓ��r<���p�W*��b%0Qm9Ę�L��x)�_��Q�<7�\��AN|�St��])�[�<��uh����J�z�_^��)���{?l�Q;N]�:"4�L�-�Oެ~�Z1c��>�m;#����_�����3��� -��~�������i_t+q�3�J)*D��{&g�0M9��/�͜%��z���&��TQ>}����Al2ǫI��2�JHhH��}��6�)�.+6�����3����dY���L      ,   X   x�3�|�p��%�87Ozܼ�qӲ�M;899���uu�ͭL�L�bF
FV�VF\F�/��C6�10-�f�ĸb���� uE-�      0   �   x�3�|�fϋ���ۗ>]���qӪ��ݏ��?nZ��i��e��v<n^dprr��)ZZ�X��Čt��L�������Аˈ�٦�O�.����qs��5�����j�b����LSM-�b���� �:GS      #     x�m��n�0�sy�	'�»L��V
K�T��C!�N�oǉ�"JP%������2͌�c�p�n�"�p�Or�e�-;�cDn����)�E��7|�.r���9�I��	�����Y�d�B������j��i�Q�Lz$t���!��f"�/�D�dV�<���m��B�B��:`m�.��d^��_��f�QBEF���$Tf�=��#��`������p:nxJ��o������dVN+�Q�լd%����C?%��(�_92��      >   �  x����N�@��'O�H�;�v�����AP@�BhC�D�Z �B�D�2���-:��ް�z]#����r���J��@�X�.$���p�N?��{z6M�J�o�q��u�W�[�hE�X!{�Suk;�Nc�
��?��xN�I%��i|�^�灗�|3/=����.<���x���{�\\�l@6$c��^z~�"1��xL��x�=m�%��\ead�6伽��^a���mƷ᤭GO�~�����qq.�C.YI=�v]VR"d<n@F����|%Ym4t�uI��]�YK���Բs�	,��-}��Dd�xK4FǗ�ۚ��c5P�1>Ň}^��P�O�x>u�R�f���us�AfE_z,��>��c6�����≝�q�󨳟��8	hi,Ӗ�d��	V��ȝ�*MqT���Gp�[ܓ}@��,���-��������JӜ�x�4'	���8�9!V��ğh�:�{���ڨl���U����mT*ͩdi7eҜ s�)���2��Ri�(s���[����ՌL
'W��q8�
Aٿ��!	��2����Y���t�=��k��]q>_w�Ur���#�H.\��o�|�nQN�}P���e�D&{z���N��gq\ \&\|�՛��&zx����j�����t����V��Y�9�      6   )  x��W�N�0��>�^���K�x�=�~�a��G�"����ZF[(����0���-v�oZ:&9���*��s���9v\�u�������җ�ݍ*�%kJ.+�P��EOɾ�%~*ف��gl���0�._\,�-��Kc9��F08J��� ��}�7�_��aFÃL3�]���!
N�S���%���֯���䉒�۶�+����;��6;FxDlvFr��:؀��h�_��
4�	��_��I\:�C���#v�%�@���9�w(n�`O�;���� ���m�8и�J�Z��뒞گ�k[�?;`%���t�ak#<�")�kxN�.�JܙN*O��P�J^��U5�P?-�j���u)��Jz���+��4�MJ��%v
Z�� ���U�2^q�/��F�u�vL���(j!�S���]?>���6�m%�R��¯5�;��PB7��\�����-栢IF�Ӣ2t�n\��mjYȀ',~/){����AiBXzy��#��g����|V ��3���LB��S��Q�7�>�'�i�>[ E3�}��/���P�(�y⧬b�'��*�ya�/����i�>G�e�-�y�st�4b����ƾ��X��&��c�"�����fzw�t�ӿ�0F�l��[��~T����vS{����h��p�j+�R���h'��Wl�̗$�J��f���u�M�yv�d\�����m���g����auEo����n\:&.���A!(�D�
�5��J�݄��������Ҹh�ٛ8�7u���0��pհ�#P��<V�?���r���d"      &      x������ � �      *      x������ � �      2   �   x���K
�0���Sx�J�V�	<�N�`u�*��s�օ�3��[8)�n
C��o�� R!���� �^�H�v�-EAʪ�U2o��v܂�U�DŒ���O�NL	HM?A������׽����% �3��T�I�eK�y��V��k����� J�E鼓n��u/i���!��� \�5ٌ]�h,�Ox��f�yF�:�(��|C�QR�hY�����      4      x��]�v�^O��88������2Op_!�4	�8M����$v�	op_b,�^�
w�{zT�4ժ�sN�5���z������J���ţ�xU?W?���/{�V?�D��9�S���g.��B�_���)u�g���e��� �1M��/�bf��� ��d�˛����í��*�o��eY�Ų���޹<i_����;�Fê^2�X<p�����m<p�L.���G�XϸO��OYxe���#����ϝR��:i/8�u<r����&9<f��)Jz>�VI{��L�OC��3���W3̠���I{��Lɯ	�&�'2�?� >34�@� >34�@�0ò��I����g�&�g3,��ԟ̰|fhR60�
�A*�fX3(��gDx�ĥ���U�h/8�)�5u�^0"JM�4i/8�)�5�c�1�P
�+B��Ȕ�i�a��0��|����C�	������_0M�NdR&0��A*�f3Hf3263��_���������� ��fd|f ��,0#�3Hf��@)�,�l�� $d��!�� � �?I�(�AH" �&)���V�b�bؿ2�R����}eĥ�������"������9r�����H����^9q�ݧ�^9q��O5��^p"�՟j&���D���@8q`�^����{�2���f�����'�Y�A�=�f�#2Y�A�=�f�#2Y�A�=�f�#r����ocח����s���K*�6ܰ|n����V�R6p��aI����熍���ܰn�H�8^9q��g�s"�rⒻ�^C������z%�Nd���5�h/8�#�/��=Rzn>7�
�4�0ln�dh7�9Y����FN��n>7��	L�#�F�=7267rR�YÍ��R�Y�F&���,p#p��_��	�9�i��I�ѧtM.~N�S*�&� ?��)BH% �)}J�R	rJ���T��ҏ��B�(��k.�>�a6����rp��ޭ/{?}ٻ�N���e�[9|������i<���<��?��_���M�1�O�jq�����ٜ�=ۺ��~�~a�E r�R��i ���4�� `�#"��.  ��V�'ͷ��)ޠ�ӮE@�@��w`cS�	�.T/_ ��A��]�`4�\�l�ͣJE4l��ŰR��C=��?~M,zV��\���O��Y~��PQ27gCշ�L�Y�)����LN���&JQ2ocj�d%s�S���
E���Tad�BQB1�B ]�W %ts6�[��T�UGxM	=�";�� (��K�,�j*Y�1S�㐎�0�ȶ�.���s�������"QMZ]�#*��Cd�V@D�s�l�����bI�c:�b�9D6pu ���-����@�x��4���U�6rM�39dh��\��!C��m�B <Z�mw`����k��������S�_]�i�-_��\�*n;� �C@��UFVWAD�sHRWAD�s�����8C�Zĺ�GT�a��b] g�Cd�X@D���7�Qq�9D��uDt�a�]d] ���2䲔V1�\�\��*��@��RZŀsHrYJ�p.I.K��qs�0�f��Vƀ*{��Q��W�l�A�Ѻz����Ѻpe�� T��'L55u�Ϣu1���=�Y�*F,hqRY�*F,9�̢U1�`AÓ�"
�h�'�Y�&T�'8Z�	�)�,Z�	���fњM��kIeњ8���{k#;�ބE�sf��U�l�hU<a���I�hU<a���I�hU<a���I�hU�Y$ksR6��6�E�n'e�u1���Ϣh]�X$�}R6Z#	Z�T����P*����X$j�RytW=�I_�r]��e�^���eΞ��@��/�(2r�M���7yo9�" ��@��Ԛ �{���S�`�d�[N�
��7�yo}jU 콁�{�S� �D�[�Z {o ���Tv콁�{�S���2�Q1`I��~Dǀ9$���[�!��֏��bI��~D�sH�i�]��"�M��b��7yo�l콁�{�d� �$ޛ&�� {o ��4�.�{����v1����7M����@�i�a��"�M�c��7�xo�l콁�{�d�`�DޛV����"�M��`��7yo��콁�{�d? �$ޛ&�� {o ��4��{����n0����7Mv���@�i���"�M��`��7�xo��콁�{�d7`�Dޛ&�� {o ��4��{����~0@�H�7Mv���@�i���"�M��`��7yo��콁�{�d/ �$ޛ&{� yo ��4�	�{����N0����7Mv���@�i����M�}`��7�xo��콁�{�d`�Dޛ&�� {o ��4�ǽ7zo��佁�{�d' �$ޛ&;� {o ��4�	�{����N0����7Mv��q��ޛ&�� yo ��4��{����^0����7M����@�i���"�M��`p�{����~0����7�:�h����DޛN�y�EF�������݇
m��h����G��I�����IY��i[��b��P��'Y򟲸ﾻ~�{e��������/I�n9�.���p��M�Q�+TR��󣋃�H�ʢ�T��f�.��9^�����,�v�+��y>���iԣ��yX���}���3�ŵz���Sm>�����80��M�V���{��ы�nRѻ5��1w2�a6>��x[OUE�FO]��g�����
�\�����Y�1z�Q)�X�z[M�����;������2gN���y�����/�h����T�����1z�>�o9�my���ݽ\����j�:]�65M[��~Qln�Sf{���7��ܭ��?�Ĩ~�rKG��M��ٍ�d���f�K2����M�m�>>�`K�	Ԝ	X�J��4�x��f��p'��k&xbVy�>H�����{�s���vK���A��r��������Ad������������� v�����XA6e[
����n�lN���qʽc�L��=~s��v�������e�Tx���������3�`�C���T��Gחk��k��jXR!�`�\�����>~[��V?M�������>>|�c������-�x��ԓ���E� o<8Z{Tv�����V�G�����n�9|������[���<�6W[�����~����-v������%f��f���5M�^/�������x�i�=Z��u��z5˟�p�)��7���¼�*ԬF�x��!��~�P�4jO��0�'���n��\�n�O���x�H"�~�qd��
cv��ƓS������F�h��1�w��|����w[f5�'�����6�b_����81�[5F�^�6c�-7�����s�x{{t���ʓ�ۣ��WVǷ��U���������멤���~��[Sݨ�հ�^rk��x�WZU�ڭ+��fGr��]`�GoU/'�k�=�0ݢtx����j�I�i��� /\�]/��_'�qɿ�Fnz�j��t��������J��{V7:�_Wt�����O�?��zQ%�$�ӝ&��̼��xН��q_�gϏ�֑�N�9��>����knG��L��IN�Ϲ]�������&kL@��X�P˜ᯱF���,���(�����k�z�f;ʄ�B%�zv͍fz���e~�5(G;諾�������_�c�{�Wc/X��U4�|��]��Jܿ� �D��6՟ɧ6��1�������;��:�NȒ���yP��w�_G�M��-#omS�9g�3c�<a=Ł���љ��CK��Ǧ��PYcs���8*�y:3�E�FOqt�=���O|�,`]׿r��ZY>̔:_�~�����s̨�癉f�F��Hmס��(�e�?K>��]�����SX?r8=3>�Q��0պ?О��x����l?y9�{k�a��՝���>�C?�����ު�<�9�>��\�Wa���n�A��_`��C�v�����߇~��hV��
/Ա���p��x�����`� %   Uո�~��)lg6c�WJU�.�f�{g�{�̙3���q      .   p   x�3�|�b�]�87Ozܼ�qӲ�M;7/}ܼ�Ӑ�����X��P��H�������� $f�kh�k`�``�21�2�|�b����v?nn~ܴ�q��花���� �o-�      :      x���k�%����V�� �&�"z��u��P�Q>"�Z�S���A:-h��������O~s��[������.�_�������_o���Ұ�H��o��������W~2`����-���O���� V����_a�����M kO#l)��?����3K�Ӝ�$�*�l=��������S�hڿ��T%�]��.��2(�-	nj��Ir+v)��������AR\�=��쓕���1��q��x��"N�d0��܊���cÛ%G����}�˓9>�Mrt��Ux�ړQ%����O��I���Go��!9��c�
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
�4-�ڠky�����K��[͗���ܸ�%%:��ck�i]. z�@���P�{y������Р���&��E�|�<��Ks(��<~�W��� T�b|�J�|nc�}�󱏹�42��������_����;t?      <      x������ � �      %      x������ � �     