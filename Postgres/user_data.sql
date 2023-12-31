PGDMP         /        	        {        
   msipp_form    15.3    15.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16399 
   msipp_form    DATABASE     �   CREATE DATABASE msipp_form WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
    DROP DATABASE msipp_form;
                postgres    false            �            1259    16400 	   user_data    TABLE     �  CREATE TABLE public.user_data (
    id integer NOT NULL,
    first_name character varying(20) NOT NULL,
    last_name character varying(20) NOT NULL,
    email character varying(50) NOT NULL,
    res_state character varying(2) NOT NULL,
    res_zip character varying(20) NOT NULL,
    institution character varying(100),
    ins_state character varying(2),
    ins_zip character varying(20),
    msi_type character varying(10),
    sec_msi_type character varying(10),
    classification character varying(20),
    major character varying(100),
    prin_investigator character varying(50),
    msipp_prog character varying(20) NOT NULL,
    msipp_year_parti integer NOT NULL,
    national_lab character varying(30) NOT NULL
);
    DROP TABLE public.user_data;
       public         heap    postgres    false            �            1259    16403    user_data_id_seq    SEQUENCE     �   CREATE SEQUENCE public.user_data_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.user_data_id_seq;
       public          postgres    false    214            �           0    0    user_data_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.user_data_id_seq OWNED BY public.user_data.id;
          public          postgres    false    215            d           2604    16404    user_data id    DEFAULT     l   ALTER TABLE ONLY public.user_data ALTER COLUMN id SET DEFAULT nextval('public.user_data_id_seq'::regclass);
 ;   ALTER TABLE public.user_data ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214            �          0    16400 	   user_data 
   TABLE DATA           �   COPY public.user_data (id, first_name, last_name, email, res_state, res_zip, institution, ins_state, ins_zip, msi_type, sec_msi_type, classification, major, prin_investigator, msipp_prog, msipp_year_parti, national_lab) FROM stdin;
    public          postgres    false    214   �       �           0    0    user_data_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.user_data_id_seq', 1, false);
          public          postgres    false    215            f           2606    16409    user_data user_data_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.user_data
    ADD CONSTRAINT user_data_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.user_data DROP CONSTRAINT user_data_pkey;
       public            postgres    false    214            �      x������ � �     