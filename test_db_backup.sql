PGDMP     6                    |            test_db    15.2    15.2     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16555    test_db    DATABASE     {   CREATE DATABASE test_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE test_db;
                postgres    false            �            1259    16562 
   test_table    TABLE     �   CREATE TABLE public.test_table (
    id integer NOT NULL,
    name character varying(255),
    created_at timestamp without time zone,
    price numeric(10,2)
);
    DROP TABLE public.test_table;
       public         heap    postgres    false            �          0    16562 
   test_table 
   TABLE DATA           A   COPY public.test_table (id, name, created_at, price) FROM stdin;
    public          postgres    false    214   �       e           2606    16566    test_table test_table_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.test_table
    ADD CONSTRAINT test_table_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.test_table DROP CONSTRAINT test_table_pkey;
       public            postgres    false    214            �   g   x�u�1�0���\ �v�H�Y�`#�,R�b��A����Km�L�g����"O��
�����>�fԏR� pp�g��8�#��D��Z����)ae z�*j     