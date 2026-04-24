--
-- PostgreSQL database dump
--

\restrict klo6CbHTH93x70jL9WL0Vh2e2c9CgHieYpr88VnB8iffuUPj4X20D4LYiHcSAYs

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-04-24 07:46:52

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--Eliminamos la base de datos.
DROP DATABASE IF EXISTS db_inventario_empresa;
--
-- TOC entry 5044 (class 1262 OID 16384)
-- Name: db_inventario_empresa; Type: DATABASE; Schema: -; Owner: postgres
--

--Creamos la base de dtos.
CREATE DATABASE db_inventario_empresa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE db_inventario_empresa OWNER TO postgres;

\unrestrict klo6CbHTH93x70jL9WL0Vh2e2c9CgHieYpr88VnB8iffuUPj4X20D4LYiHcSAYs
\connect db_inventario_empresa
\restrict klo6CbHTH93x70jL9WL0Vh2e2c9CgHieYpr88VnB8iffuUPj4X20D4LYiHcSAYs

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 220 (class 1259 OID 16386)
-- Name: categorias; Type: TABLE; Schema: public; Owner: postgres
--

--Creamos la tabla categorías.
CREATE TABLE public.categorias (
    id_categoria integer NOT NULL,
    nombre_cat character varying(60) NOT NULL,
    descripcion text NOT NULL
);


ALTER TABLE public.categorias OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16385)
-- Name: categorias_id_categoria_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.categorias_id_categoria_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.categorias_id_categoria_seq OWNER TO postgres;

--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 219
-- Name: categorias_id_categoria_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.categorias_id_categoria_seq OWNED BY public.categorias.id_categoria;


--
-- TOC entry 221 (class 1259 OID 24583)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

--Creamos la tabla productos.
CREATE TABLE public.productos (
    id_producto integer NOT NULL,
    nombre_prod character varying(60) NOT NULL,
    precio numeric(10,2) NOT NULL,
    stock integer DEFAULT 0,
    fecha_ingreso date NOT NULL,
    id_categoria integer
);


ALTER TABLE public.productos OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 24591)
-- Name: productos_id_producto_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.productos_id_producto_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.productos_id_producto_seq OWNER TO postgres;

--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 222
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- TOC entry 223 (class 1259 OID 24592)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

--Creamos la tabla usuarios.
CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(60) NOT NULL,
    pass character varying(10) NOT NULL,
    email character varying(100) NOT NULL,
    id_producto integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 24599)
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuarios_id_usuario_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.usuarios_id_usuario_seq OWNER TO postgres;

--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 224
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 4866 (class 2604 OID 24600)
-- Name: categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);


--
-- TOC entry 4867 (class 2604 OID 24601)
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- TOC entry 4869 (class 2604 OID 24602)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 5034 (class 0 OID 16386)
-- Dependencies: 220
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Agregamos datos a la tabla categorías.
INSERT INTO public.categorias VALUES (9, 'Flores', 'Arreglos de flores para toda ocasión');
INSERT INTO public.categorias VALUES (10, 'Decoración', 'Elementos decorativos para el hogar');
INSERT INTO public.categorias VALUES (11, 'Plantas', 'Plantas de interior y exterior');


--
-- TOC entry 5035 (class 0 OID 24583)
-- Dependencies: 221
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Agregamos datos a la tabla productos.
INSERT INTO public.productos VALUES (49, 'Flor de Loto', 15.00, 30, '2026-04-24', 9);
INSERT INTO public.productos VALUES (50, 'Heliconia', 20.00, 25, '2026-04-24', 9);
INSERT INTO public.productos VALUES (51, 'Ranúnculo Cloni', 25.00, 30, '2026-04-24', 9);
INSERT INTO public.productos VALUES (52, 'Anturio Negro', 15.00, 25, '2026-04-24', 9);
INSERT INTO public.productos VALUES (53, 'Banksia', 30.00, 30, '2024-04-24', 9);
INSERT INTO public.productos VALUES (54, 'Gloriosa', 15.50, 25, '2024-04-24', 9);
INSERT INTO public.productos VALUES (55, 'Vanda', 25.00, 30, '2024-04-24', 9);
INSERT INTO public.productos VALUES (56, 'Medinilla Magnífica', 35.00, 15, '2026-04-24', 10);
INSERT INTO public.productos VALUES (57, 'Alocasia Black Velvet', 25.00, 10, '2026-04-24', 10);
INSERT INTO public.productos VALUES (58, 'Calathea Ornata', 16.00, 20, '2026-04-24', 10);
INSERT INTO public.productos VALUES (59, 'Cymbidium', 50.00, 10, '2026-04-24', 10);
INSERT INTO public.productos VALUES (60, 'Tillandsia Xerographica', 35.50, 15, '2026-04-24', 10);
INSERT INTO public.productos VALUES (61, 'Calla Lily', 25.50, 10, '2026-04-24', 10);
INSERT INTO public.productos VALUES (62, 'Sanseveria', 25.50, 12, '2026-04-24', 11);
INSERT INTO public.productos VALUES (63, 'Monstera Deliciosa', 34.50, 10, '2026-04-24', 11);
INSERT INTO public.productos VALUES (64, 'Ficus Lyrata', 59.99, 10, '2026-04-24', 11);
INSERT INTO public.productos VALUES (65, 'Lirio de la Paz', 34.99, 15, '2026-04-24', 11);
INSERT INTO public.productos VALUES (66, 'Anturio', 35.00, 10, '2026-04-24', 11);
INSERT INTO public.productos VALUES (67, 'Palma Areca', 60.00, 5, '2026-04-24', 11);
INSERT INTO public.productos VALUES (68, 'Pothos', 18.00, 20, '2026-04-24', 11);


--
-- TOC entry 5037 (class 0 OID 24592)
-- Dependencies: 223
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Agregamos datos a la tabla usuarios.
INSERT INTO public.usuarios VALUES (4, 'Administrador', '12345', 'administrador@gmail.com', NULL);
INSERT INTO public.usuarios VALUES (5, 'Vendedor', '12345', 'vendedor@gmail.com', NULL);
INSERT INTO public.usuarios VALUES (6, 'Invitado', '12345', 'invitado@gmail.com', NULL);


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 219
-- Name: categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 13, true);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 222
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 68, true);


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 224
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 6, true);


--
-- TOC entry 4871 (class 2606 OID 16398)
-- Name: categorias categorias_nombre_cat_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción de UNIQUE para que no se duplique el nombre de la categoría.
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_nombre_cat_key UNIQUE (nombre_cat);


--
-- TOC entry 4873 (class 2606 OID 16396)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave primaria a la tabla categorías.
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 4875 (class 2606 OID 24582)
-- Name: categorias nombre_cat_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción de UNIQUE para que no se duplique el nombre de la categoría.
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT nombre_cat_unique UNIQUE (nombre_cat);


--
-- TOC entry 4877 (class 2606 OID 24604)
-- Name: productos nombre_prod_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción de UNIQUE para que no se duplique el nombre del producto.
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT nombre_prod_unique UNIQUE (nombre_prod);


--
-- TOC entry 4881 (class 2606 OID 24606)
-- Name: usuarios nombre_usuario_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción de UNIQUE para que no se duplique el nombre del usuario.
ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT nombre_usuario_unique UNIQUE (nombre_usuario);


--
-- TOC entry 4879 (class 2606 OID 24608)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave primaria a la tabla productos.
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 4883 (class 2606 OID 24610)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave primaria a la tabla usuarios.
ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4884 (class 2606 OID 24611)
-- Name: productos productos_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave foránea a la tabla productos para relacionarla con la tabla categorías.
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria);


--
-- TOC entry 4885 (class 2606 OID 24616)
-- Name: usuarios usuarios_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave foránea a la tabla usuarios para relacionarla con la tabla productos.
ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


-- Completed on 2026-04-24 07:46:53

--
-- PostgreSQL database dump complete
--

\unrestrict klo6CbHTH93x70jL9WL0Vh2e2c9CgHieYpr88VnB8iffuUPj4X20D4LYiHcSAYs

