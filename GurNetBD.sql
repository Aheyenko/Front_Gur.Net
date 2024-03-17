PGDMP  .    !                |         	   GurNet2.0    16.2    16.2 ;    ,           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            -           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            .           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            /           1262    24195 	   GurNet2.0    DATABASE     �   CREATE DATABASE "GurNet2.0" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Ukrainian_Ukraine.1251';
    DROP DATABASE "GurNet2.0";
                postgres    false            �            1259    24279    DormRoom    TABLE     �   CREATE TABLE public."DormRoom" (
    "dormRoom_id" integer NOT NULL,
    "Capasity" character varying(50) DEFAULT ''::character varying NOT NULL,
    "Dorm_number" character varying DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public."DormRoom";
       public         heap    postgres    false            �            1259    24234    Dormitories    TABLE     �   CREATE TABLE public."Dormitories" (
    dormitory_id integer NOT NULL,
    dormitory_number integer NOT NULL,
    total_rooms integer NOT NULL
);
 !   DROP TABLE public."Dormitories";
       public         heap    postgres    false            �            1259    24262 	   Institute    TABLE     p   CREATE TABLE public."Institute" (
    "Institute_id" integer NOT NULL,
    "Institute_name" integer NOT NULL
);
    DROP TABLE public."Institute";
       public         heap    postgres    false            �            1259    24196    Students    TABLE       CREATE TABLE public."Students" (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) DEFAULT ''::character varying NOT NULL,
    midle_name character varying(50) DEFAULT ''::character varying NOT NULL,
    dormitory_number integer NOT NULL,
    room_number integer NOT NULL,
    phone_number character varying(50) DEFAULT ''::character varying NOT NULL,
    paid_until date NOT NULL,
    identification_code character varying(50) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public."Students";
       public         heap    postgres    false            �            1259    24273 
   University    TABLE     �   CREATE TABLE public."University" (
    university_id integer NOT NULL,
    details character varying(255) DEFAULT ''::character varying NOT NULL
);
     DROP TABLE public."University";
       public         heap    postgres    false            �            1259    24288    User    TABLE     �  CREATE TABLE public."User" (
    user_id integer NOT NULL,
    first_name character varying(20) DEFAULT ''::character varying NOT NULL,
    last_name character varying(20) DEFAULT ''::character varying NOT NULL,
    midle_name character varying(20) DEFAULT ''::character varying NOT NULL,
    user_name character varying(20) DEFAULT ''::character varying NOT NULL,
    user_role character varying(20) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public."User";
       public         heap    postgres    false            �            1259    24245    Wachman    TABLE     -  CREATE TABLE public."Wachman" (
    first_name integer NOT NULL,
    wachman_id integer NOT NULL,
    last_name integer NOT NULL,
    midle_name integer NOT NULL,
    dormitory_number integer DEFAULT 15 NOT NULL,
    identification_code character varying(50) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public."Wachman";
       public         heap    postgres    false            �            1259    24298    entrance_log    TABLE       CREATE TABLE public.entrance_log (
    entrance_log_id integer NOT NULL,
    entrance_date date NOT NULL,
    exit_date date NOT NULL,
    new_field integer NOT NULL,
    student_id integer NOT NULL,
    dorm_id integer NOT NULL,
    "Student_email" integer NOT NULL
);
     DROP TABLE public.entrance_log;
       public         heap    postgres    false            �            1259    24205    guest    TABLE     �  CREATE TABLE public.guest (
    gues_id integer NOT NULL,
    habitans_id character varying(50) DEFAULT ''::character varying NOT NULL,
    gues_first_name character varying(50) DEFAULT ''::character varying NOT NULL,
    gues_last_name character varying(50) DEFAULT ''::character varying NOT NULL,
    gues_midle_name character varying(50) DEFAULT ''::character varying NOT NULL,
    inhabitant_first_name character varying(50) DEFAULT ''::character varying NOT NULL,
    inhabitant_last_name character varying(50) DEFAULT ''::character varying NOT NULL,
    inhabitant_midle_name character varying(50) DEFAULT ''::character varying NOT NULL,
    room_number character varying(50) DEFAULT ''::character varying NOT NULL,
    "Hour" date NOT NULL
);
    DROP TABLE public.guest;
       public         heap    postgres    false            �            1259    24267    payment    TABLE     g   CREATE TABLE public.payment (
    summ character varying(20) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.payment;
       public         heap    postgres    false            '          0    24279    DormRoom 
   TABLE DATA           N   COPY public."DormRoom" ("dormRoom_id", "Capasity", "Dorm_number") FROM stdin;
    public          postgres    false    222   �O       "          0    24234    Dormitories 
   TABLE DATA           T   COPY public."Dormitories" (dormitory_id, dormitory_number, total_rooms) FROM stdin;
    public          postgres    false    217   �O       $          0    24262 	   Institute 
   TABLE DATA           G   COPY public."Institute" ("Institute_id", "Institute_name") FROM stdin;
    public          postgres    false    219   �O                  0    24196    Students 
   TABLE DATA           �   COPY public."Students" (student_id, first_name, last_name, midle_name, dormitory_number, room_number, phone_number, paid_until, identification_code) FROM stdin;
    public          postgres    false    215   �O       &          0    24273 
   University 
   TABLE DATA           >   COPY public."University" (university_id, details) FROM stdin;
    public          postgres    false    221   �O       (          0    24288    User 
   TABLE DATA           b   COPY public."User" (user_id, first_name, last_name, midle_name, user_name, user_role) FROM stdin;
    public          postgres    false    223   P       #          0    24245    Wachman 
   TABLE DATA           y   COPY public."Wachman" (first_name, wachman_id, last_name, midle_name, dormitory_number, identification_code) FROM stdin;
    public          postgres    false    218   7P       )          0    24298    entrance_log 
   TABLE DATA           �   COPY public.entrance_log (entrance_log_id, entrance_date, exit_date, new_field, student_id, dorm_id, "Student_email") FROM stdin;
    public          postgres    false    224   TP       !          0    24205    guest 
   TABLE DATA           �   COPY public.guest (gues_id, habitans_id, gues_first_name, gues_last_name, gues_midle_name, inhabitant_first_name, inhabitant_last_name, inhabitant_midle_name, room_number, "Hour") FROM stdin;
    public          postgres    false    216   qP       %          0    24267    payment 
   TABLE DATA           '   COPY public.payment (summ) FROM stdin;
    public          postgres    false    220   �P       �           2606    24287 !   DormRoom DormRoom_dormRoom_id_key 
   CONSTRAINT     i   ALTER TABLE ONLY public."DormRoom"
    ADD CONSTRAINT "DormRoom_dormRoom_id_key" UNIQUE ("dormRoom_id");
 O   ALTER TABLE ONLY public."DormRoom" DROP CONSTRAINT "DormRoom_dormRoom_id_key";
       public            postgres    false    222            i           2606    24240 (   Dormitories Dormitories_dormitory_id_key 
   CONSTRAINT     o   ALTER TABLE ONLY public."Dormitories"
    ADD CONSTRAINT "Dormitories_dormitory_id_key" UNIQUE (dormitory_id);
 V   ALTER TABLE ONLY public."Dormitories" DROP CONSTRAINT "Dormitories_dormitory_id_key";
       public            postgres    false    217            k           2606    24242 ,   Dormitories Dormitories_dormitory_number_key 
   CONSTRAINT     w   ALTER TABLE ONLY public."Dormitories"
    ADD CONSTRAINT "Dormitories_dormitory_number_key" UNIQUE (dormitory_number);
 Z   ALTER TABLE ONLY public."Dormitories" DROP CONSTRAINT "Dormitories_dormitory_number_key";
       public            postgres    false    217            m           2606    24238    Dormitories Dormitories_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public."Dormitories"
    ADD CONSTRAINT "Dormitories_pkey" PRIMARY KEY (dormitory_id, dormitory_number);
 J   ALTER TABLE ONLY public."Dormitories" DROP CONSTRAINT "Dormitories_pkey";
       public            postgres    false    217    217            o           2606    24244 '   Dormitories Dormitories_total_rooms_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."Dormitories"
    ADD CONSTRAINT "Dormitories_total_rooms_key" UNIQUE (total_rooms);
 U   ALTER TABLE ONLY public."Dormitories" DROP CONSTRAINT "Dormitories_total_rooms_key";
       public            postgres    false    217            }           2606    24266 $   Institute Institute_Institute_id_key 
   CONSTRAINT     m   ALTER TABLE ONLY public."Institute"
    ADD CONSTRAINT "Institute_Institute_id_key" UNIQUE ("Institute_id");
 R   ALTER TABLE ONLY public."Institute" DROP CONSTRAINT "Institute_Institute_id_key";
       public            postgres    false    219            U           2606    24204    Students Students_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_pkey" PRIMARY KEY (student_id);
 D   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_pkey";
       public            postgres    false    215            �           2606    24278    University University_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public."University"
    ADD CONSTRAINT "University_pkey" PRIMARY KEY (university_id);
 H   ALTER TABLE ONLY public."University" DROP CONSTRAINT "University_pkey";
       public            postgres    false    221            �           2606    24297    User User_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_pkey" PRIMARY KEY (user_id);
 <   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_pkey";
       public            postgres    false    223            q           2606    24259 $   Wachman Wachman_dormitory_number_key 
   CONSTRAINT     o   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_dormitory_number_key" UNIQUE (dormitory_number);
 R   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_dormitory_number_key";
       public            postgres    false    218            s           2606    24251    Wachman Wachman_first_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_first_name_key" UNIQUE (first_name);
 L   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_first_name_key";
       public            postgres    false    218            u           2606    24261 '   Wachman Wachman_identification_code_key 
   CONSTRAINT     u   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_identification_code_key" UNIQUE (identification_code);
 U   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_identification_code_key";
       public            postgres    false    218            w           2606    24255    Wachman Wachman_last_name_key 
   CONSTRAINT     a   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_last_name_key" UNIQUE (last_name);
 K   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_last_name_key";
       public            postgres    false    218            y           2606    24257    Wachman Wachman_midle_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_midle_name_key" UNIQUE (midle_name);
 L   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_midle_name_key";
       public            postgres    false    218            {           2606    24253    Wachman Wachman_wachman_id_key 
   CONSTRAINT     c   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_wachman_id_key" UNIQUE (wachman_id);
 L   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_wachman_id_key";
       public            postgres    false    218            �           2606    24302    entrance_log entrance_log_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.entrance_log
    ADD CONSTRAINT entrance_log_pkey PRIMARY KEY (entrance_log_id);
 H   ALTER TABLE ONLY public.entrance_log DROP CONSTRAINT entrance_log_pkey;
       public            postgres    false    224            W           2606    24233    guest guest_Hour_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT "guest_Hour_key" UNIQUE ("Hour");
 @   ALTER TABLE ONLY public.guest DROP CONSTRAINT "guest_Hour_key";
       public            postgres    false    216            Y           2606    24219    guest guest_gues_first_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_gues_first_name_key UNIQUE (gues_first_name);
 I   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_gues_first_name_key;
       public            postgres    false    216            [           2606    24221    guest guest_gues_last_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_gues_last_name_key UNIQUE (gues_last_name);
 H   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_gues_last_name_key;
       public            postgres    false    216            ]           2606    24223    guest guest_gues_midle_name_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_gues_midle_name_key UNIQUE (gues_midle_name);
 I   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_gues_midle_name_key;
       public            postgres    false    216            _           2606    24217    guest guest_habitans_id_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_habitans_id_key UNIQUE (habitans_id);
 E   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_habitans_id_key;
       public            postgres    false    216            a           2606    24225 %   guest guest_inhabitant_first_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_inhabitant_first_name_key UNIQUE (inhabitant_first_name);
 O   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_inhabitant_first_name_key;
       public            postgres    false    216            c           2606    24227 $   guest guest_inhabitant_last_name_key 
   CONSTRAINT     o   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_inhabitant_last_name_key UNIQUE (inhabitant_last_name);
 N   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_inhabitant_last_name_key;
       public            postgres    false    216            e           2606    24229 %   guest guest_inhabitant_midle_name_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_inhabitant_midle_name_key UNIQUE (inhabitant_midle_name);
 O   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_inhabitant_midle_name_key;
       public            postgres    false    216            g           2606    24231    guest guest_room_number_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_room_number_key UNIQUE (room_number);
 E   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_room_number_key;
       public            postgres    false    216                       2606    24272    payment payment_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT payment_pkey PRIMARY KEY (summ);
 >   ALTER TABLE ONLY public.payment DROP CONSTRAINT payment_pkey;
       public            postgres    false    220            �           2606    24333    DormRoom DormRoom_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."DormRoom"
    ADD CONSTRAINT "DormRoom_fk0" FOREIGN KEY ("dormRoom_id") REFERENCES public."Dormitories"(dormitory_number);
 C   ALTER TABLE ONLY public."DormRoom" DROP CONSTRAINT "DormRoom_fk0";
       public          postgres    false    217    222    4715            �           2606    24313    Dormitories Dormitories_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Dormitories"
    ADD CONSTRAINT "Dormitories_fk0" FOREIGN KEY (dormitory_id) REFERENCES public."University"(university_id);
 I   ALTER TABLE ONLY public."Dormitories" DROP CONSTRAINT "Dormitories_fk0";
       public          postgres    false    217    4737    221            �           2606    24323    Institute Institute_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Institute"
    ADD CONSTRAINT "Institute_fk0" FOREIGN KEY ("Institute_id") REFERENCES public."University"(university_id);
 E   ALTER TABLE ONLY public."Institute" DROP CONSTRAINT "Institute_fk0";
       public          postgres    false    221    219    4737            �           2606    24303    Students Students_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."Students"
    ADD CONSTRAINT "Students_fk0" FOREIGN KEY (student_id) REFERENCES public."Dormitories"(dormitory_id);
 C   ALTER TABLE ONLY public."Students" DROP CONSTRAINT "Students_fk0";
       public          postgres    false    217    4713    215            �           2606    24328    University University_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public."University"
    ADD CONSTRAINT "University_fk1" FOREIGN KEY (details) REFERENCES public.payment(summ);
 G   ALTER TABLE ONLY public."University" DROP CONSTRAINT "University_fk1";
       public          postgres    false    221    4735    220            �           2606    24338    User User_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public."User"
    ADD CONSTRAINT "User_fk0" FOREIGN KEY (user_id) REFERENCES public."Dormitories"(dormitory_number);
 ;   ALTER TABLE ONLY public."User" DROP CONSTRAINT "User_fk0";
       public          postgres    false    217    4715    223            �           2606    24318    Wachman Wachman_fk1    FK CONSTRAINT     �   ALTER TABLE ONLY public."Wachman"
    ADD CONSTRAINT "Wachman_fk1" FOREIGN KEY (wachman_id) REFERENCES public."Dormitories"(dormitory_number);
 A   ALTER TABLE ONLY public."Wachman" DROP CONSTRAINT "Wachman_fk1";
       public          postgres    false    218    217    4715            �           2606    24343    entrance_log entrance_log_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.entrance_log
    ADD CONSTRAINT entrance_log_fk0 FOREIGN KEY (entrance_log_id) REFERENCES public."Dormitories"(dormitory_number);
 G   ALTER TABLE ONLY public.entrance_log DROP CONSTRAINT entrance_log_fk0;
       public          postgres    false    224    4715    217            �           2606    24308    guest guest_fk0    FK CONSTRAINT     �   ALTER TABLE ONLY public.guest
    ADD CONSTRAINT guest_fk0 FOREIGN KEY (gues_id) REFERENCES public."Dormitories"(dormitory_number);
 9   ALTER TABLE ONLY public.guest DROP CONSTRAINT guest_fk0;
       public          postgres    false    4715    216    217            '      x������ � �      "      x������ � �      $      x������ � �             x������ � �      &      x������ � �      (      x������ � �      #      x������ � �      )      x������ � �      !      x������ � �      %      x������ � �     