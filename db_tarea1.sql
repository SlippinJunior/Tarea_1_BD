PGDMP      &                |            tarea_1    16.2    16.2 (               0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16398    tarea_1    DATABASE     {   CREATE DATABASE tarea_1 WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Mexico.1252';
    DROP DATABASE tarea_1;
                postgres    false            �            1259    16758    actor    TABLE     �   CREATE TABLE public.actor (
    id_actor integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.actor;
       public         heap    postgres    false            �            1259    16757    actor_id_actor_seq    SEQUENCE     �   ALTER TABLE public.actor ALTER COLUMN id_actor ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.actor_id_actor_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    218            �            1259    16774    actor_participa_en_pelicula    TABLE     l   CREATE TABLE public.actor_participa_en_pelicula (
    id_actor integer,
    id_pelicula integer NOT NULL
);
 /   DROP TABLE public.actor_participa_en_pelicula;
       public         heap    postgres    false            �            1259    16752    director    TABLE     �   CREATE TABLE public.director (
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    edad integer NOT NULL
);
    DROP TABLE public.director;
       public         heap    postgres    false            �            1259    16751    director_id_director_seq    SEQUENCE     �   ALTER TABLE public.director ALTER COLUMN id_director ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.director_id_director_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    216            �            1259    16764    pelicula    TABLE     �   CREATE TABLE public.pelicula (
    id_pelicula integer NOT NULL,
    id_director integer NOT NULL,
    nombre character varying(45) NOT NULL,
    genero character varying(45) NOT NULL,
    duracion integer NOT NULL,
    fecha_publicacion date NOT NULL
);
    DROP TABLE public.pelicula;
       public         heap    postgres    false            �            1259    16763    pelicula_id_pelicula_seq    SEQUENCE     �   ALTER TABLE public.pelicula ALTER COLUMN id_pelicula ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.pelicula_id_pelicula_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    220            �            1259    16799    premio_mejor_actor    TABLE     �   CREATE TABLE public.premio_mejor_actor (
    id_premio integer NOT NULL,
    id_actor integer NOT NULL,
    anio integer NOT NULL
);
 &   DROP TABLE public.premio_mejor_actor;
       public         heap    postgres    false            �            1259    16798     premio_mejor_actor_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_actor ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_actor_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    225            �            1259    16788    premio_mejor_director    TABLE     �   CREATE TABLE public.premio_mejor_director (
    id_premio integer NOT NULL,
    id_director integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_director;
       public         heap    postgres    false            �            1259    16787 #   premio_mejor_director_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_director ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_director_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    223            �            1259    16808    premio_mejor_pelicula    TABLE     �   CREATE TABLE public.premio_mejor_pelicula (
    id_premio integer NOT NULL,
    id_pelicula integer NOT NULL,
    anio integer NOT NULL
);
 )   DROP TABLE public.premio_mejor_pelicula;
       public         heap    postgres    false            �            1259    16807 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE     �   ALTER TABLE public.premio_mejor_pelicula ALTER COLUMN id_premio ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.premio_mejor_pelicula_id_premio_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    227                      0    16758    actor 
   TABLE DATA           7   COPY public.actor (id_actor, nombre, edad) FROM stdin;
    public          postgres    false    218   ~1                 0    16774    actor_participa_en_pelicula 
   TABLE DATA           L   COPY public.actor_participa_en_pelicula (id_actor, id_pelicula) FROM stdin;
    public          postgres    false    221   9                 0    16752    director 
   TABLE DATA           =   COPY public.director (id_director, nombre, edad) FROM stdin;
    public          postgres    false    216   r?                 0    16764    pelicula 
   TABLE DATA           i   COPY public.pelicula (id_pelicula, id_director, nombre, genero, duracion, fecha_publicacion) FROM stdin;
    public          postgres    false    220   G                 0    16799    premio_mejor_actor 
   TABLE DATA           G   COPY public.premio_mejor_actor (id_premio, id_actor, anio) FROM stdin;
    public          postgres    false    225   p]                 0    16788    premio_mejor_director 
   TABLE DATA           M   COPY public.premio_mejor_director (id_premio, id_director, anio) FROM stdin;
    public          postgres    false    223   ^                 0    16808    premio_mejor_pelicula 
   TABLE DATA           M   COPY public.premio_mejor_pelicula (id_premio, id_pelicula, anio) FROM stdin;
    public          postgres    false    227   �^                  0    0    actor_id_actor_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.actor_id_actor_seq', 200, true);
          public          postgres    false    217                       0    0    director_id_director_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.director_id_director_seq', 200, true);
          public          postgres    false    215                       0    0    pelicula_id_pelicula_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.pelicula_id_pelicula_seq', 300, true);
          public          postgres    false    219                        0    0     premio_mejor_actor_id_premio_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.premio_mejor_actor_id_premio_seq', 22, true);
          public          postgres    false    224            !           0    0 #   premio_mejor_director_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_director_id_premio_seq', 32, true);
          public          postgres    false    222            "           0    0 #   premio_mejor_pelicula_id_premio_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.premio_mejor_pelicula_id_premio_seq', 36, true);
          public          postgres    false    226            p           2606    16762    actor actor_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.actor
    ADD CONSTRAINT actor_pkey PRIMARY KEY (id_actor);
 :   ALTER TABLE ONLY public.actor DROP CONSTRAINT actor_pkey;
       public            postgres    false    218            n           2606    16756    director director_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.director
    ADD CONSTRAINT director_pkey PRIMARY KEY (id_director);
 @   ALTER TABLE ONLY public.director DROP CONSTRAINT director_pkey;
       public            postgres    false    216            r           2606    16768    pelicula pelicula_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_pkey PRIMARY KEY (id_pelicula);
 @   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_pkey;
       public            postgres    false    220            t           2606    16792 0   premio_mejor_director premio_mejor_director_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_pkey PRIMARY KEY (id_premio);
 Z   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_pkey;
       public            postgres    false    223            v           2606    16777 E   actor_participa_en_pelicula actor_participa_en_pelicula_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor);
 o   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_actor_fkey;
       public          postgres    false    221    218    4720            w           2606    16782 H   actor_participa_en_pelicula actor_participa_en_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.actor_participa_en_pelicula
    ADD CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula);
 r   ALTER TABLE ONLY public.actor_participa_en_pelicula DROP CONSTRAINT actor_participa_en_pelicula_id_pelicula_fkey;
       public          postgres    false    221    220    4722            u           2606    16769 "   pelicula pelicula_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.pelicula
    ADD CONSTRAINT pelicula_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director) ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.pelicula DROP CONSTRAINT pelicula_id_director_fkey;
       public          postgres    false    216    220    4718            y           2606    16802 3   premio_mejor_actor premio_mejor_actor_id_actor_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_actor
    ADD CONSTRAINT premio_mejor_actor_id_actor_fkey FOREIGN KEY (id_actor) REFERENCES public.actor(id_actor) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.premio_mejor_actor DROP CONSTRAINT premio_mejor_actor_id_actor_fkey;
       public          postgres    false    225    218    4720            x           2606    16793 <   premio_mejor_director premio_mejor_director_id_director_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_director
    ADD CONSTRAINT premio_mejor_director_id_director_fkey FOREIGN KEY (id_director) REFERENCES public.director(id_director) ON UPDATE RESTRICT ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.premio_mejor_director DROP CONSTRAINT premio_mejor_director_id_director_fkey;
       public          postgres    false    216    4718    223            z           2606    16811 <   premio_mejor_pelicula premio_mejor_pelicula_id_pelicula_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.premio_mejor_pelicula
    ADD CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey FOREIGN KEY (id_pelicula) REFERENCES public.pelicula(id_pelicula) ON DELETE CASCADE;
 f   ALTER TABLE ONLY public.premio_mejor_pelicula DROP CONSTRAINT premio_mejor_pelicula_id_pelicula_fkey;
       public          postgres    false    4722    227    220               �  x�mWYv�8�O��#H�˧�J^dY�d�o~�*�
#.�(�����Y�b����_�  ����r�z�?󫳜�3+��d���&���q>1Qg�!J�^���I���j�M/��̚.셒�����Y����"k�9�1��$��:��g-��{-��ZN����}�~���yZԤffU��!���e�`��"���Ww�s����I�z�3�%{XO�g�U�ț�W�c�&��Ji�j��唿�3+y���F���;��M�7��� ����?�.8���x�o�^'쩱�G?�3]V>mʬ��<ke<��(y�}�M����O�2�'i�S�[^�I?3�{���#PW�p�)v/e��U���E����@9���c�8�4��m*T۲g����\��D����0�c�PuY��[5���GzU���i�gi�+����旴Q��������IE��`&��I�W��BЕ�M�U-��O`�7��a�^u(٣%Ӈ���BZ����@���.�GuՒ������*���غ�QdM��ebޥ����5u���Ge�9��� OTպ���d�~쭞�d��_Js��q�����'i�s�~���-�xB�65\�n�ܢ�Ӟ	��g��Q���"� �N�Q'�p\�kz�_��("�L�h�D���Ӣ�-Q�o`u�ENu?:�:*�u�h3!ح�p.4��8I��E(�{��2ѱ�S���!b�>�uS<�I�H�Ev�2AD��2��3H4��O+`�A���P���"K�&���Ț&U�;�BI��x��9E��9�.�i������6"k�(r�Pu�rH�d�&��5ے�����������N�m;�ᨆ����GI��"r��l�ov	mJ���~{Q"
�J<�Ĵ=��X��uY$�`Wxer�'D�q�ѷ����ͺ�]�~���U�{��R[^��%�����tMj%*P]g]�ʰ�Fm���������@�/�~�����"듸������E���+�z�I=鶚rI�"j/�=��,3q�o\֘.&�i�zu�&	�GE��1_ ���/������'鸝wGiYQ�;sZ��T�<�B�%K"�D�w����bQ�K�������p�
<x!,�ܰB��qՎ�s��m[;�)�.�&�yM���9~Q1��oGd��̹���,4�1�Ә�"������ׇ��<1��x��m�QM�!�6��_Љ��	�����#䀎�0wT������D���6K�G4x�k����[� �98�F��uj���OyXwG�J ���Cè�^�p�ϖ����7y�(p%�FE`���״�H�4����Μ8���<C��qd�m�pqC[g�&����.b��a��D>k�qH��H�q󳯡X�"�a�w�7���~��р��|����ɋ'U��V���!G�u�Z�mo�lʉ�`h|$=A��nh:��yȯ�:�&rç��}����� ��Ye;Q�0��ct�k�EPB7��Sa(��r�(X/0�C�-ڥ� �1`���fac�(R-Y���|��#���:Z����&�=���p��Ă&N�t+� V�$� ^�����f�`H��� �"X(gک;`*�y?;HQ���I�:�
��(ɰ��bù��E�o(��Ļ�t;�I:p7N&�2�28�ൾ�nE��BS=�.���_��b�z1��PR����D���|yķ/�5~��+�-2M�.���m(2|FxC�2��Q{���"�oxd��|8��8R����58e !�HWK$4+�l��6��k�:l%�w��8��yN������
!V��}�GLJZ���h����mv����&}��p�HM�\�6L���}���l4��$%�!�>$\b���G�e�}`ρ         O  x�5�ɕ�8Ϥ1�ĝ����c"�_��-	�d&P����^ޭ�\���y����J_�����x<��u��.m���.�s���*Xi�{��p�'�ps�r�{����������9�c;��ɸu�����}��Y'ο^��s����:�j᭭U�Wz�q���9J�^�5	^~�Ln��s
�����'<s����G�t��>w흯XM&o���ysL��(T��Q�#�6�����z�T�}^�_�"4�qJ�W�D�W	�?��]�
i��k��]��v]+Y�.�d;9�S�˛��M�9a�r�xL��s�i5��O6�P�E����bm��*α��㲠-�j���<�2O�on2A��^[�oF,�LG����ٲ�d��N˽Lo�[p����h[�Di�9���.�Z`���/�M���Q�?�}�U��X�مH�H3�/RڧΕ�mVg�bF�KI�D����HT��q�FE|\J�I��x��h/1>���tc~��U���R���֔73���+3p��\&s ��P�g�54(ǧ����db�`Ԏl�+M^�́?�CM���@�:�&��"!Ӂ5�����
�	.+��c$70�G������>iH�XU��U��Mօ��ZYZЊ��\7���뀄h��B(v����}���8�\KQz��}Kh�QY�FQ'o�X�i'�Ot�l�g��Mj�VB�B7��/��2$&P(�+0{���iD	�]L���h���׊��ZJ]�J�(����>+�N�=���M�^��<��> Q�4^N[B؀K}�a���iu�	��W�ƷgN^���/��n�ASX)�C-�/�
��Q7�Κ�����x�NGt�)��ZY��j�N:�G2�:�4EQ�J<��c�3�H�W=���`T���PNp.�^��������ZVDԢdĳ퓹��x&�丐��{�Uh���ic�w|����69B�nJ�����I��^�g�9��9_N{�NR�m'�@�8i1>e���}�H�������s�J /rN�GƅfQyi=w�/>r��K�{�F#r���9l�[�������9C_���2z?QF��}3[�ۓ�AB;��@�V.A�֙��rr��B��|������:��ɀ~a`�3Q�ci	��Y�B����_'/b��AT5V����17��	�yaL�O�
e���D����i�s�F���p Z���	C��ι��0�U�g���W��I��51� ���7�2s����HE͖�,�z��Rǐ_!
9��s�`��Ha���^Y
]RF���;{@�R� $4T�o/�����s�!���# �-8s�D'1�<-�1�� �z��X�1�V�'�q{L�M���si*�v��̏��c�$v*X��FR���M�Jo�F5�כR�z���U�n�&��rWx�0����_*��!{c2�F� 6�G^�!4<'h�k�_Î	\쮂�]��(�b�mF��R^b��������!�z��i��[�#�RH+�p�x��5�O`�c��*���;�,o9ImSL	��a��;oq�R�\�6�����c���i]�Wbo9��[��;4�+��?-����,P~Jx��j��`�'~         �  x�mWYv۸�V��!H?��v��I�>��	��)ѝx7����W�}�O��p���E���l������b_Logg�ׇ�}��L*^������xg�4�e�wLJްw�hf7���4��V7\�׽�Q��~�&+��77��jy�>��e6ŕ��n����z����{o������v��%%�7?�\\<�qzbK�}_fW��qbm�E���j,��1��5\4�{��ŋi�!��${�G�������X��P�~����@���e���ٹ���'Ô�B������f_���g�H.:vnF�8�ZX�xUƇ��������{����1�aߢr��U�ޘ�ޡ����n6�Ѽjؕ��X\N��T�J��nB�FW|w�`����b_]���@�~Ceu��N�9��?s��4��~�⋙w�@	U�5Gi�k��u�^Xs��sq�#5���A�s:����ƍ���M��:"1�ۖ�n����z�fx��q�4�%�J��Պ]x��qvXd��`�R�k<��{;�f�Nū �Lac�*��WoJv�����'3LˍH����b�n��w4J
�Թ�{3��M���{�E��i�&�����ƪB��'��8��l}]�
��m<�H���q"�6��ѱK3�g�ey��v�q)b�3q����%�e�>.vĖ$HG6`�M��U��,� (�JUM�@��`���(>��8yHI�H��;ԸwC����>�y&Yi�*�޽�t#^Ւ+�t�v�]���Ϋi<���扢V	c76o���w�&�N�׭큯{"�\�5�6m��Ǚ�	��Č��-�����
ޞ��v7�'] �[~�`�9��+�*.vƁE��m�n��<$���-������ʠ����B�2Ҷ'�p�{�ⴚ� �ɕ-�GR�����Z�\��[�j���*��T�O�fo(]'���h�m`�n�؟�@p-��P�0:T����6�ORZc�f�2����y�%]��b��ĒK7X"I��
�:�c|t��h8��u���K%�:%-�2=�"�bٱҲ�GH�B�;�E!h
���T���G�e��>x���D#E)V�M��F���1q��.�:h��1-B�E�dȝǜ�`�R�:���ТTy|�F?�\�$v�&/�a��q�B*���˂���̠�j,0�Iq>O�!����Ɍ�1����i��<�!����B�0���d=�;��d	H�)9�����8�.%+f��~�l�p(0��@��7O'<������Z9����0�i�U�]j/DI�x��Hǳ0�~��U���XӍ:�7�1:�i������ˉU�aL�lA���HC���Ri�ywV��+1���ҕ�FYb��^�<2i �M���"l`��r��ib��iW�/��$���A�o���\�Z�<�� `a������0�O��	�0I�Od��#�֎��;$�j��6^b��������n��ٕ�]��.��*��VO~�
�̶Q����M���j:-��M_T�މ���k�&
���L����!�Z@P�9��y+��������)C�3lA�3^.���>���\��a�P[p��_ʜ�UM7�P�&��I����RE���WC�?X�(����R[�NpD+0
+ҳ�'p�)���{�BaVOA_G�
�֯I��A�R�*����L�*O��~��O%��<GGۢ@pI�i>�]jD2��TF�<10~��'�R0������+,ë��w1v!���e��<�a�gȗ�*j�ZIE�k�P�̦�:�"�����t���x����0y�����z��¡L�:yU0'��ݠe47���|�����OT�w���Ό�Ӂn�4>`b���ZW�� ٭�S�?�q����J            x��\���8�������HQ$ev{�Yg�s�Qe��4P�j����~�5�cp޺�b�����1=h&�`�_|U��ux���eY�.���t���i�g����O�x=M����t�>��Z���T��sc�_�������x���C��Ӳ��w^���m:s������g��j5n��KGY~���r��P)M���j��������O�xN������q~zOo�����:\�M��{V��*Cw�nx&����5�����i���m�<���c�C��L�j3������1�`�ƃAz��4�v�R���?���P����>^o#]��<�U?�4x��=��m8G����53Mo�2=�ón꾂����x;�_��4��ǟ���r�'�W�]x
8�z`��u�X��Nx�i���=���JU�^c�N��!��r����?�Vvoq�m<�#l���װ�;yC���t����۴Ϫp�V5�ŇA#��i��?��V�K�J_U�;����Np�_��e�
�n
���~
ｎ�8�w��}e���8q=/��d��b�ۄ��3���r���^V��ْ���]յ�U�|�N�����.Ę�1<����;����%��tΜ�;<�F�]���{�G��߲�u�[㞵�M,E����~h�����B��Cr�����)�/�u<a��e������e�N�eZ�G�l^�dp�%z���m��px���2O຿�G���U8���c�z���orY����[�/(<F��Ļ��Q���?����m~�8���(ϟPK�`=�@ 0뵼\�=a ��`�#������,	�5F�6��׺�X�Uo��:E� ���W W\�����$|ŝn��	a�F�^���hM���~�1{�]#P�B5���z��<�i���srt���M˭?�FXH�5�ڿ@T�
O��~pbՙ��f�?��7QpM�@�ìp>�����`^@��f�8�9��C~vƾ���u�R�|q� �>����	�[{d{�N^�a�z�r��� ��M�n?5Ma��hASi����a������Y�gS�x�X�1]CJ�mXϟ�_#�֥kkC�%=]���
���H\�Qr�kXe�_����������ҝХ#۠'�^���2�8O���z��X�#���_����䊩h8����qD$=8�������6J	(xQ���S`��L|�B������:e��í��ܪ`�Ӝ���ߓ��n{;ڴ�=N��Q�Sڴqp���W�k�l���h*ޕ�'���;E���ȸ�+�h��)㘭�v�֏�Xt}���a�����	�=D��0�@+�C�x�%�B��\���߆�_8)�j�&���>�uUK�0#�$��A�H�-И��r!��c,��-��|��5�} �;p�Fm遀^z~����"�c-?�C�#�0{.�Ұ� Z���	���'2a�qM~�;yE {_[tZu ���Z���hz�$I�Ulʉ��<��2� "�:C�Q/�R�9,�^����M3^��Қm+��; K��3��u�ښʩ#o��7�%sq��u�à����l�[.���b��i�~�_��A�����!�Q���[I�
� x�'O��'�_DM���tc�������_�R���@�Z.5�}eYT��q��
��7�g�)l
��Lj[B*:�!8�|_��CM��wz�Xb�N��4���ػG��o���);x?�j�'Hu��[��5�8�FS<�6DbU�C����5�3{�6%$�~��R�� �sK��ϙ��mH���P���g�ẞ��9�
6r���'��J���5�4U/nq[./k�����J��1P����'�|��2m(%$�"��RTc{Uu����k5��擄#ƂI�<BS�H� �F3.��Cb����+37UR��� ��@�����>���u�L�X�F8��FP+�p0�Y r�g#�ib�� �WG�)yi�ttx�S��J�]���"�(;�1
����YD¶��}\j�3�Ǥ��N({�P�TN��~�D��$.�>�е��1� -P�<�({���{]�e/�AA���R.�۪o~�e���E���m�	���n�t����жG$~S
~	T�]�d5RA�y!���[!-�Ύ%tMx+Wu].�E*6PHoY $(����c�m�:��IԨ�aM�2�(
؀K�<)'�"�OE�D0f�{��Nbl2�^��"n4Ȕ��^�� �_��(��m���*��h�N����D���9g�����r�Ң�e�ò΄�W�{1���4������8���F������r��e��>���C��N8�%v|�9��<^�T=)��ެW�C�>>V�+��{���FT��h��d��-]U��>v�Ղ▽�=�RT��m7�l�5�V3D���2	�62��bUBj\$ ��q�F���P$����%o����V��+;�QB?	�T�l5�92ۤH&�dܚ��MY�P���BrĘ&襞�m+�J�\��T	�7��IF���%Y+ޒ� +-�l��ܶI��[�!�J1hx�n��l�0p{zQ`xX�o)�i1�Q�ָJQz�"��}qb���	�WS��A`�I�
�Ց�Q�J}�Pd8�*P�0�)`HZ/U_��5���;>�X�8etH���l�h�� ��^ZZ�U��r�nc��mY��&Ɯ��$��JOrv���\4�i�dȡ���u�g*�d@8��O!��q�{��˚�i��S��NR��=\p�[{,с���r.~���!Y�M=`/,��&n���N�%��kר�4e2��E}�@G�	�Aٚ�>��M8�;�.�+ڪ�{�YȞ�q�A��b�vC��R�����ՀY�ӸD���a7��ޡʡ�>4�ˎ�0��z.��#8x��M��g,QIwNћB�QG|��db�&��NZ��]},2~h��AB
K��GM���%�h86���(J;����]�6�.<��PN7�����X��A-/MU�h���I���N��0$�ꨔH���>�|�_�d�p���@�wG=z�T�����ĥ�l��<�/��TH3Q9�W���Y!&=��S�>;-�L��/I)(���1�\_s��Z�rS6FI��(?���l�i]�?��%����zI�B���u9�e�$��j��쁕�iӹD\G�۶!�Q2o݆�̛�	�ޒ=�S �;]��1&�l��Ŕ�~������H�9��"QE�P-�i�ߐd��1߈����*�V
=,&�,�в�R���Z?u�C�y��<��k[���U��5";r-hc�e[�>%e�E<�K!���;�����{Y�m�f�����?"�fs��H#�2�z'�B3{�;O�fH�cZܳFC�̑���\G⎟�#�=���<����������hwi4���L.�d��"� ���	�����s4�_��Z�ʆˀ/Mϡ������ۏ�D�P$bcM��Y�N!r�t����c	��]T�f��>�e2v���T�o줉t�Ğ�.`z��8F�	��m�n�*Th�������Cui�C��DME"6=�oy�W�/;��,�
N�釽����$/ۓo���jT󋆟�θ�����ۂ�c����N�H�Q�8���L:*�#K�I:*����oH��5N�4v�ݶ��C*���o���5�ڝ�_�]&���V;J�v7�Q�b�9IўM�a=-O��͍*YĄ�ǘz?�ǹ�uHed0c+qO��~��];U<�T<��(�;������{��뉑@�&�Ń"�FT׭�kz!���=��f*	^�XGBy�<��H��i�ql]K��F�"�n�m��*��������w�PSc["2�U�|�{���JS!��(V2�>�(���7�Pu됃k*}��U��B�C34�� :�b[�o��i�<�:�HWvG��h�����i��s�]��$���O6$<�������ِ� I  şpHÑy2�������¬��ʚ�:����ݡ��+)"6�*?�»yYV�챡��U�I�覯X�����|�0�Ip��F��9�)���Z��5����I��0�5�+-dc_��<2�Ϯ�6&�Za�!��s�68�4�C�P�����J9�WP�F���'���@�ގ7p���^�{��m��Y]���*�I�4��B,�2ލPǑI�k<�l9H�������im�����N�pýԬ����.�ж��I/��E�[k�~���S�T6#ݣ��,�rN�GC�&������a��u���^c�2*��[_ھ�B�Y�b� �\JCִ{%#g��M�8ˡ��u�\ٌ���^�N�Y4�e�F)����9���R�w5(�7���)�k��=/�C���l����W�M���h�0�Z��"�l�������;FI<���,~���"�Mi⽨���*�:˙�S���Ȏ�&���0��P�S4�	�n�M�]r�4m��h)�P�zT~��Dҷ2��5��6d�p���H�4�hDZ�l��$Y��\�F^b�H^פ�j�$�wn��ز��%t�<ׇKV��%��dC�NDE� �i�����J���p)�dDT��߀zT��a�V�Gb��>,��ZF��*f�/<8J������(�G�n!M�n������ez)�0`���$�y�xG�P$�x�V�#k�U�8ˮE^�q^w��݂�S��q�=���A�s�xhqKa�f�+�\�>8��|�E��u�9��y�^���NOKlde&#$��kY�ܖ�R��7N�V��j�f��WH��u�3x�Ww�АYp��_�IR2%�x�u�|4mgE�叏P��G�^z�<�}����8��L�F_���(��7����g���GxnS  �٦�&��pd�����Ǫб;�}�H_��1�ԲDއr6w�6k�������Qi�Ϗ[��^/o��u�Fu�>�Ʉ���,���'���w·ߊ)�^�[�����q�.���0g�o)_�0��$�bN��p�4�u�ؼ4�b�p�~;*2��<��;k4�m��Ϳ,�$0"���ѹ�ֻ�]�?iI��+��?���I-�8a�Њ���4~]�����q��A�6����P���$�I��
�{J�X+���}^�ﹻ0�@08�3fZ�(G�k��*�΄�d,ro��C������Y~}�^����*䤏����|z��a����|8�­̢kNt;}2�(c��־���3�&�KU�C]L((b+�,_(�4�0�� ��\��j���P�qH�7X,zL!�H>(&	u#��k�H�͘���ky����|(�k��7K��w�����++U���}zڅ��}�x��#)�
6�K�E�BT�R��n ���m�&ƍ �I��o	u%������X
�.��W2U���+�$�2,�H��k�X�8K�v�0K˘M�j�����BK�5�����#�;61�q���Fa��C2����V<���V��r6��g����Ƒ&w𱑬7�Fm�	DN�/S�ܹ��%}`��
_�;�Qw܀�*T�-��^M��8�m%m�p��[]��l�         �   x�=��C1C�x�
� �t�9jҪ'�e���2v;���c�%Y��{c[��Gc���t�l��m��p�A(�R���bo�UU�*�k� ��0N��B�
�5�ҡ q��p_+�*���oO�|z
����'
         �   x�5P�!����Hy����s\%$,��*�E�&ƳL�U���b1ώ#䖁D$��s�]�J��.蒽�VCU��̑6Q�8��ڑf\L(�Q.|�)����h�Z�gnÖ�G"���i�"�ǹ��v볰�X8�q�\,�^�{ZwS�~�����2�J�ۓ���|? ~�8�         �   x�-P�1z�b2:|���_G��cg�@",VZ�/��[t�� :��]ύIF�ZX���_4a��I
v��I7�ӡ��࿖�@0���,/f\k���:��	�\��g���5�Ѷ��t�7С�Ѳ�r�[)�Z�9lr���R.�t�&E� ��*hb�����ܖ�F�����r�_c�J�&��-Uosrڼꀚ�k�~ � �@�     