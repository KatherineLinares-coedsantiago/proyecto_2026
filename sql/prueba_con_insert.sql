--
-- PostgreSQL database dump
--

\restrict z17KjhVEo6bsmLBbli3CddBIlbzfT3r9RRKVZ0ojkklD6fjemlvkqujUPUZUEPr

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-04-23 05:49:05

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

-- Eliminamos la base de datos.
DROP DATABASE IF EXISTS db_inventario_empresa;
--
-- TOC entry 5044 (class 1262 OID 16384)
-- Name: db_inventario_empresa; Type: DATABASE; Schema: -; Owner: postgres
--

-- Creamos la base de datos.
CREATE DATABASE db_inventario_empresa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE db_inventario_empresa OWNER TO postgres;

\unrestrict z17KjhVEo6bsmLBbli3CddBIlbzfT3r9RRKVZ0ojkklD6fjemlvkqujUPUZUEPr
\connect db_inventario_empresa
\restrict z17KjhVEo6bsmLBbli3CddBIlbzfT3r9RRKVZ0ojkklD6fjemlvkqujUPUZUEPr

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

-- Se crea la tabla categorías.
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
-- TOC entry 222 (class 1259 OID 16400)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

-- Se crea la tabla productos.
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
-- TOC entry 221 (class 1259 OID 16399)
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
-- Dependencies: 221
-- Name: productos_id_producto_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.productos_id_producto_seq OWNED BY public.productos.id_producto;


--
-- TOC entry 224 (class 1259 OID 16433)
-- Name: usuarios; Type: TABLE; Schema: public; Owner: postgres
--

-- Se crea la tabla usuarios.
CREATE TABLE public.usuarios (
    id_usuario integer NOT NULL,
    nombre_usuario character varying(60) NOT NULL,
    pass character varying(10) NOT NULL,
    email character varying(100) NOT NULL,
    id_producto integer
);


ALTER TABLE public.usuarios OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16432)
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
-- Dependencies: 223
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuarios_id_usuario_seq OWNED BY public.usuarios.id_usuario;


--
-- TOC entry 4866 (class 2604 OID 16389)
-- Name: categorias id_categoria; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.categorias ALTER COLUMN id_categoria SET DEFAULT nextval('public.categorias_id_categoria_seq'::regclass);


--
-- TOC entry 4867 (class 2604 OID 16403)
-- Name: productos id_producto; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.productos ALTER COLUMN id_producto SET DEFAULT nextval('public.productos_id_producto_seq'::regclass);


--
-- TOC entry 4869 (class 2604 OID 16436)
-- Name: usuarios id_usuario; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuarios ALTER COLUMN id_usuario SET DEFAULT nextval('public.usuarios_id_usuario_seq'::regclass);


--
-- TOC entry 5034 (class 0 OID 16386)
-- Dependencies: 220
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Se insertan datos en la tabla categorías.
INSERT INTO public.categorias VALUES (1, 'ropa', 'ropa importada de China');


--
-- TOC entry 5036 (class 0 OID 16400)
-- Dependencies: 222
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Se insertan datos en la tabla productos.
INSERT INTO public.productos VALUES (9, 'Tulipanes', 17.05, 20, '2026-04-20', 1);
INSERT INTO public.productos VALUES (10, 'Rosas', 22.00, 25, '2026-04-20', 1);
INSERT INTO public.productos VALUES (11, 'Margaritas', 19.80, 30, '2026-04-20', 1);
INSERT INTO public.productos VALUES (12, 'Lirios', 27.50, 30, '2026-04-20', 1);
INSERT INTO public.productos VALUES (13, 'Orquídeas', 33.00, 15, '2026-04-20', 1);
INSERT INTO public.productos VALUES (14, 'Claveles', 11.00, 25, '2026-04-20', 1);
INSERT INTO public.productos VALUES (15, 'Gerberas', 24.20, 20, '2026-04-20', 1);
INSERT INTO public.productos VALUES (16, 'Peonias', 30.80, 15, '2026-04-20', 1);
INSERT INTO public.productos VALUES (17, 'Dalias', 20.35, 30, '2026-04-20', 1);
INSERT INTO public.productos VALUES (18, 'Hortensias', 49.50, 35, '2026-04-20', 1);
INSERT INTO public.productos VALUES (19, 'Lavanda', 38.50, 20, '2026-04-20', 1);
INSERT INTO public.productos VALUES (20, 'Lisianthus', 49.50, 25, '2026-04-20', 1);
INSERT INTO public.productos VALUES (21, 'Proteas', 77.00, 30, '2026-04-20', 1);
INSERT INTO public.productos VALUES (22, 'Alstroemerias', 13.20, 20, '2026-04-20', 1);
INSERT INTO public.productos VALUES (23, 'Anémonas', 19.80, 25, '2026-04-20', 1);
INSERT INTO public.productos VALUES (24, 'Cala Lilies', 27.50, 15, '2026-04-20', 1);
INSERT INTO public.productos VALUES (25, 'Fresias', 11.00, 30, '2026-04-20', 1);
INSERT INTO public.productos VALUES (26, 'Gladiolos', 16.50, 20, '2026-04-20', 1);
INSERT INTO public.productos VALUES (27, 'Ranúnculos', 24.20, 25, '2026-04-20', 1);
INSERT INTO public.productos VALUES (31, 'Veraneras', 11.00, 30, '2026-04-20', 1);
INSERT INTO public.productos VALUES (5, 'Arreglo de Girasoles', 13.75, 4, '2026-04-20', 1);


--
-- TOC entry 5038 (class 0 OID 16433)
-- Dependencies: 224
-- Data for Name: usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

-- Se insertan datos en la tabla usuarios.
INSERT INTO public.usuarios VALUES (1, 'Administrador', '12345', 'administrador@gmail.com', NULL);
INSERT INTO public.usuarios VALUES (2, 'Vendedor', '12345', 'vendedor@gmail.com', NULL);


--
-- TOC entry 5048 (class 0 OID 0)
-- Dependencies: 219
-- Name: categorias_id_categoria_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.categorias_id_categoria_seq', 1, true);


--
-- TOC entry 5049 (class 0 OID 0)
-- Dependencies: 221
-- Name: productos_id_producto_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.productos_id_producto_seq', 31, true);


--
-- TOC entry 5050 (class 0 OID 0)
-- Dependencies: 223
-- Name: usuarios_id_usuario_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuarios_id_usuario_seq', 3, true);


--
-- TOC entry 4871 (class 2606 OID 16398)
-- Name: categorias categorias_nombre_cat_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restrinción UNIQUE para que no se duplique el nombre de la categoría.
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_nombre_cat_key UNIQUE (nombre_cat);


--
-- TOC entry 4873 (class 2606 OID 16396)
-- Name: categorias categorias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrga la llave primaria a la tabla categorías.
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT categorias_pkey PRIMARY KEY (id_categoria);


--
-- TOC entry 4875 (class 2606 OID 24582)
-- Name: categorias nombre_cat_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción UNIQUE para que no se duplique el nombre de la categoría.
ALTER TABLE ONLY public.categorias
    ADD CONSTRAINT nombre_cat_unique UNIQUE (nombre_cat);


--
-- TOC entry 4877 (class 2606 OID 24578)
-- Name: productos nombre_prod_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción UNIQUE para que no se duplique el nombre del producto.
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT nombre_prod_unique UNIQUE (nombre_prod);


--
-- TOC entry 4881 (class 2606 OID 24580)
-- Name: usuarios nombre_usuario_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la restricción UNIQUE para que no se duplique el nombre de usuario.
ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT nombre_usuario_unique UNIQUE (nombre_usuario);


--
-- TOC entry 4879 (class 2606 OID 16410)
-- Name: productos productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave primaria a la tabla productos.
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id_producto);


--
-- TOC entry 4883 (class 2606 OID 16442)
-- Name: usuarios usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave primaria a la tabla usuarios.
ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_pkey PRIMARY KEY (id_usuario);


--
-- TOC entry 4884 (class 2606 OID 16411)
-- Name: productos productos_id_categoria_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave foránea a la tabla productos para relacionarla con la tabla categorías.
ALTER TABLE ONLY public.productos
    ADD CONSTRAINT productos_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES public.categorias(id_categoria);


--
-- TOC entry 4885 (class 2606 OID 16443)
-- Name: usuarios usuarios_id_producto_fkey; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

-- Se agrega la llave foránea a la tabla usuarios para relacionarla con la tabla productos.
ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT usuarios_id_producto_fkey FOREIGN KEY (id_producto) REFERENCES public.productos(id_producto);


-- Completed on 2026-04-23 05:49:06

--
-- PostgreSQL database dump complete
--

\unrestrict z17KjhVEo6bsmLBbli3CddBIlbzfT3r9RRKVZ0ojkklD6fjemlvkqujUPUZUEPr

