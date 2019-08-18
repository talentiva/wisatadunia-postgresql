--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.3

-- Started on 2019-08-18 15:56:50

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3828 (class 0 OID 22977852)
-- Dependencies: 202
-- Data for Name: attraction_category; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.attraction_category (id, name, file_name) FROM stdin;
1	Must see	must-see.jpg
\.


--
-- TOC entry 3822 (class 0 OID 22977388)
-- Dependencies: 196
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.country (id, name) FROM stdin;
IT	Italy
ID	Republic of Indonesia
\.


--
-- TOC entry 3824 (class 0 OID 22977519)
-- Dependencies: 198
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.city (id, name, short_desc, time_zone, file_name, country_id, temperature_celsius, weather) FROM stdin;
1	Rome	is a historical powerhouse	Europe/Rome	rome.jpg	IT	\N	Scattered clouds
\.


--
-- TOC entry 3826 (class 0 OID 22977636)
-- Dependencies: 200
-- Data for Name: attraction; Type: TABLE DATA; Schema: public; Owner: -
--

COPY public.attraction (id, city_id, name, subtitle, description, distance, duration, rank, latitude, longitude, location, time_open, ticket, phone_number, email, website, file_name, attraction_category_id) FROM stdin;
\.


--
-- TOC entry 3834 (class 0 OID 0)
-- Dependencies: 201
-- Name: attraction_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.attraction_category_id_seq', 1, true);


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 199
-- Name: attraction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.attraction_id_seq', 1, false);


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 197
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('public.city_id_seq', 1, true);


-- Completed on 2019-08-18 15:57:23

--
-- PostgreSQL database dump complete
--

