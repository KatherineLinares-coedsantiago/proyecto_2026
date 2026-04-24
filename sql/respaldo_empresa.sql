--
-- PostgreSQL database dump
--

\restrict w8YNMn9NEjbXnedpvrwlHZFdLq6yXCiqQpGkvBiHB9ADtgrMXaDiU0a3uBe0Rkq

-- Dumped from database version 18.2
-- Dumped by pg_dump version 18.2

-- Started on 2026-04-24 07:04:37

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

DROP DATABASE db_inventario_empresa;
--
-- TOC entry 5044 (class 1262 OID 16384)
-- Name: db_inventario_empresa; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE db_inventario_empresa WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Spain.1252';


ALTER DATABASE db_inventario_empresa OWNER TO postgres;

\unrestrict w8YNMn9NEjbXnedpvrwlHZFdLq6yXCiqQpGkvBiHB9ADtgrMXaDiU0a3uBe0Rkq
\connect db_inventario_empresa
\restrict w8YNMn9NEjbXnedpvrwlHZFdLq6yXCiqQpGkvBiHB9ADtgrMXaDiU0a3uBe0Rkq

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

--
-- TOC entry 5034 (class 0 OID 16386)
-- Dependencies: 220
-- Data for Name: categorias; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.categorias VALUES (9, 'Flores', 'Arreglos de flores para toda ocasión');
INSERT INTO public.categorias VALUES (10, 'Decoración', 'Elementos decorativos para el hogar');
INSERT INTO public.categorias VALUES (11, 'Plantas', 'Plantas de interior y exterior');


--
-- TOC entry 5035 (class 0 OID 24583)
-- Dependencies: 221
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

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


-- Completed on 2026-04-24 07:04:38

--
-- PostgreSQL database dump complete
--

\unrestrict w8YNMn9NEjbXnedpvrwlHZFdLq6yXCiqQpGkvBiHB9ADtgrMXaDiU0a3uBe0Rkq

