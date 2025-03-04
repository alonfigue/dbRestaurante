PGDMP     -    3                {            dbRestaurante    14.7    14.7 '    '           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            (           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            )           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            *           1262    16394    dbRestaurante    DATABASE     o   CREATE DATABASE "dbRestaurante" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Venezuela.1252';
    DROP DATABASE "dbRestaurante";
                postgres    false            �            1259    16395    clientes    TABLE     �   CREATE TABLE public.clientes (
    nom_cliente character varying(255),
    apellido_cliente character varying(255),
    direccion_cliente character varying(255),
    telefono_client character varying(255),
    id_cliente integer NOT NULL
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    16398    detalle_factura    TABLE     �   CREATE TABLE public.detalle_factura (
    id_detalle_factura integer NOT NULL,
    id_factura integer,
    id_empleado integer,
    id_plato integer,
    id_mesa integer
);
 #   DROP TABLE public.detalle_factura;
       public         heap    postgres    false            �            1259    16401 	   empleados    TABLE     1  CREATE TABLE public.empleados (
    id_empleado integer NOT NULL,
    apellido_empleado character varying(255),
    telefono character varying(255),
    direccion_empleado character varying(255),
    cargo character varying(255),
    id_establecimiento integer,
    nom_empleado character varying(255)
);
    DROP TABLE public.empleados;
       public         heap    postgres    false            �            1259    16404    establecimientos    TABLE     �   CREATE TABLE public.establecimientos (
    nom_establecimiento character varying(255),
    telefono character varying(255),
    direccion character varying(255),
    id_establecimiento integer NOT NULL
);
 $   DROP TABLE public.establecimientos;
       public         heap    postgres    false            �            1259    16409    factura    TABLE     i   CREATE TABLE public.factura (
    id_factura integer NOT NULL,
    fecha date,
    id_cliente integer
);
    DROP TABLE public.factura;
       public         heap    postgres    false            �            1259    16412    mesa    TABLE     Z   CREATE TABLE public.mesa (
    id_mesa integer NOT NULL,
    num_mesa integer NOT NULL
);
    DROP TABLE public.mesa;
       public         heap    postgres    false            �            1259    16415    platos    TABLE     �   CREATE TABLE public.platos (
    id_plato integer NOT NULL,
    precio_plato character varying(255),
    nom_plato character varying(255)
);
    DROP TABLE public.platos;
       public         heap    postgres    false            �            1259    16479    reservaciones    TABLE     �   CREATE TABLE public.reservaciones (
    id_reserva integer NOT NULL,
    id_cliente integer,
    id_mesa integer,
    fecha_reservacion date,
    id_establecimiento integer
);
 !   DROP TABLE public.reservaciones;
       public         heap    postgres    false                      0    16395    clientes 
   TABLE DATA           q   COPY public.clientes (nom_cliente, apellido_cliente, direccion_cliente, telefono_client, id_cliente) FROM stdin;
    public          postgres    false    209   K2                 0    16398    detalle_factura 
   TABLE DATA           i   COPY public.detalle_factura (id_detalle_factura, id_factura, id_empleado, id_plato, id_mesa) FROM stdin;
    public          postgres    false    210   h2                 0    16401 	   empleados 
   TABLE DATA           �   COPY public.empleados (id_empleado, apellido_empleado, telefono, direccion_empleado, cargo, id_establecimiento, nom_empleado) FROM stdin;
    public          postgres    false    211   �2                  0    16404    establecimientos 
   TABLE DATA           h   COPY public.establecimientos (nom_establecimiento, telefono, direccion, id_establecimiento) FROM stdin;
    public          postgres    false    212   �2       !          0    16409    factura 
   TABLE DATA           @   COPY public.factura (id_factura, fecha, id_cliente) FROM stdin;
    public          postgres    false    213   �2       "          0    16412    mesa 
   TABLE DATA           1   COPY public.mesa (id_mesa, num_mesa) FROM stdin;
    public          postgres    false    214   �2       #          0    16415    platos 
   TABLE DATA           C   COPY public.platos (id_plato, precio_plato, nom_plato) FROM stdin;
    public          postgres    false    215   �2       $          0    16479    reservaciones 
   TABLE DATA           o   COPY public.reservaciones (id_reserva, id_cliente, id_mesa, fecha_reservacion, id_establecimiento) FROM stdin;
    public          postgres    false    216   3       x           2606    16504    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    209            z           2606    16495 $   detalle_factura detalle_factura_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_pkey PRIMARY KEY (id_detalle_factura);
 N   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_pkey;
       public            postgres    false    210            |           2606    16489    empleados empleados_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id_empleado);
 B   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_pkey;
       public            postgres    false    211            ~           2606    16585 &   establecimientos establecimientos_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.establecimientos
    ADD CONSTRAINT establecimientos_pkey PRIMARY KEY (id_establecimiento);
 P   ALTER TABLE ONLY public.establecimientos DROP CONSTRAINT establecimientos_pkey;
       public            postgres    false    212            �           2606    16493    factura factura_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_pkey PRIMARY KEY (id_factura);
 >   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_pkey;
       public            postgres    false    213            �           2606    16487    mesa mesa_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.mesa
    ADD CONSTRAINT mesa_pkey PRIMARY KEY (id_mesa);
 8   ALTER TABLE ONLY public.mesa DROP CONSTRAINT mesa_pkey;
       public            postgres    false    214            �           2606    16497    platos platos_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.platos
    ADD CONSTRAINT platos_pkey PRIMARY KEY (id_plato);
 <   ALTER TABLE ONLY public.platos DROP CONSTRAINT platos_pkey;
       public            postgres    false    215            �           2606    16485     reservaciones reservaciones_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_pkey PRIMARY KEY (id_reserva);
 J   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_pkey;
       public            postgres    false    216            �           2606    16611 0   detalle_factura detalle_factura_id_empleado_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_empleado_fkey FOREIGN KEY (id_empleado) REFERENCES public.empleados(id_empleado);
 Z   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_empleado_fkey;
       public          postgres    false    3196    210    211            �           2606    16606 /   detalle_factura detalle_factura_id_factura_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_factura_fkey FOREIGN KEY (id_factura) REFERENCES public.factura(id_factura);
 Y   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_factura_fkey;
       public          postgres    false    210    3200    213            �           2606    16621 ,   detalle_factura detalle_factura_id_mesa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_mesa_fkey FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);
 V   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_mesa_fkey;
       public          postgres    false    3202    210    214            �           2606    16616 -   detalle_factura detalle_factura_id_plato_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.detalle_factura
    ADD CONSTRAINT detalle_factura_id_plato_fkey FOREIGN KEY (id_plato) REFERENCES public.platos(id_plato);
 W   ALTER TABLE ONLY public.detalle_factura DROP CONSTRAINT detalle_factura_id_plato_fkey;
       public          postgres    false    210    215    3204            �           2606    16626 +   empleados empleados_id_establecimiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.empleados
    ADD CONSTRAINT empleados_id_establecimiento_fkey FOREIGN KEY (id_establecimiento) REFERENCES public.establecimientos(id_establecimiento);
 U   ALTER TABLE ONLY public.empleados DROP CONSTRAINT empleados_id_establecimiento_fkey;
       public          postgres    false    212    211    3198            �           2606    16505    factura factura_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 I   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_cliente_fkey;
       public          postgres    false    209    3192    213            �           2606    16586     factura factura_id_cliente_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT factura_id_cliente_fkey1 FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 J   ALTER TABLE ONLY public.factura DROP CONSTRAINT factura_id_cliente_fkey1;
       public          postgres    false    213    3192    209            �           2606    16510 +   reservaciones reservaciones_id_cliente_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_cliente_fkey FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 U   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_id_cliente_fkey;
       public          postgres    false    216    209    3192            �           2606    16591 ,   reservaciones reservaciones_id_cliente_fkey1    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_cliente_fkey1 FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 V   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_id_cliente_fkey1;
       public          postgres    false    209    216    3192            �           2606    16601 3   reservaciones reservaciones_id_establecimiento_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_establecimiento_fkey FOREIGN KEY (id_establecimiento) REFERENCES public.establecimientos(id_establecimiento);
 ]   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_id_establecimiento_fkey;
       public          postgres    false    3198    216    212            �           2606    16596 (   reservaciones reservaciones_id_mesa_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservaciones
    ADD CONSTRAINT reservaciones_id_mesa_fkey FOREIGN KEY (id_mesa) REFERENCES public.mesa(id_mesa);
 R   ALTER TABLE ONLY public.reservaciones DROP CONSTRAINT reservaciones_id_mesa_fkey;
       public          postgres    false    214    216    3202                  x������ � �            x������ � �            x������ � �             x������ � �      !      x������ � �      "      x������ � �      #      x������ � �      $      x������ � �     