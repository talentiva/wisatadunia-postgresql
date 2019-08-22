--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.3

-- Started on 2019-08-22 13:12:31

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
-- TOC entry 3829 (class 0 OID 22977852)
-- Dependencies: 202
-- Data for Name: attraction_category; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.attraction_category (id, name, file_name) FROM stdin;
2	Cultural	attraction_category/cultural.jpg
1	Museums	attraction_category/museums.jpg
4	Architecture	attraction_category/architecture.jpg
3	Must see	attraction_category/must_see.jpg
\.


--
-- TOC entry 3823 (class 0 OID 22977388)
-- Dependencies: 196
-- Data for Name: country; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.country (id, name) FROM stdin;
IT	Italy
ID	Republic of Indonesia
\.


--
-- TOC entry 3825 (class 0 OID 22977519)
-- Dependencies: 198
-- Data for Name: city; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.city (id, name, short_desc, time_zone, file_name, country_id, temperature_celsius, weather) FROM stdin;
1	Rome	is a historical powerhouse	Europe/Rome	city/rome1.jpg	IT	-2	Scattered clouds
\.


--
-- TOC entry 3827 (class 0 OID 22977636)
-- Dependencies: 200
-- Data for Name: attraction; Type: TABLE DATA; Schema: public; Owner: student
--

COPY public.attraction (id, city_id, name, subtitle, description, distance, duration, rank, latitude, longitude, location, time_open, ticket, phone_number, email, website, file_name, attraction_category_id, favorited) FROM stdin;
2	1	The Trevi Fountain	It was designed by architect Nicola Salvi in the 18th	The Trevi Fountain (Italian: Fontana di Trevi) is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres (86 ft) high and 49.15 metres (161.3 ft) wide,[1] it is the largest Baroque fountain in the city and one of the most famous fountains in the world. The fountain has appeared in several notable films, including Roman Holiday, Federico Fellini's La Dolce Vita, the eponymous Three Coins in the Fountain, The Lizzie McGuire Movie, and Sabrina Goes to Rome.	3.39999999999999991	20	4	41.9010279999999966	12.4832269999999994	Piazza in Trevi	`Monday - Saturday 00.00 am - 23.59 pm`	Free Entry	+39 06 0608	\N	turismoroma.it	attraction/trevi_fountain.jpg	4	t
3	1	Castel Sant'Angelo	Erected on the banks of the Tiber River	The Mausoleum of Hadrian, usually known as Castel Sant'Angelo (Italian pronunciation: [kaˈstɛl sanˈtandʒelo]; English: Castle of the Holy Angel), is a towering cylindrical building in Parco Adriano, Rome, Italy. It was initially commissioned by the Roman Emperor Hadrian as a mausoleum for himself and his family. The building was later used by the popes as a fortress and castle, and is now a museum. The structure was once the tallest building in Rome.	4.40000000000000036	25	3	41.9031590000000023	12.4662760000000006	Lungotevere Castello	`Monday - Saturday 09.00 am - 19.30 pm`	€12/person	+39 06 681 9111	\N	beniculturali.it	attraction/castel_san_angelo.jpg	1	f
1	1	The Colosseum	One of the most recognizable sites in the world	Rome’s great gladiatorial arena is the most thrilling of the city's ancient sights. Inaugurated in AD 80, the 50,000-seat Colosseum, also known as the Flavian Amphitheatre, was originally clad in travertine and covered by a huge canvas awning. Inside, tiered seating encircled the arena, itself built over an underground complex where animals were caged and stage sets prepared. Games involved gladiators fighting wild animals or each other.\n\nTwo thousand years on and it's Italy's top tourist attraction.	2.39999999999999991	15	2	41.8902101999999985	12.4922308999999991	Piazza del Colosseo	`Monday - Sunday 8.30 am - 6.00 pm\nSaturday - Sunday 8.30 am - 7.00 pm`	Adult/reduced incl Roman Forum & Palatino €12/7.50, SUPER ticket €18/13.50	06 3996 7700	pa-colosseo@benicultural.it	http://www.parcocolosseo.it/	attraction/the_colosseum.jpg	3	f
\.


--
-- TOC entry 3835 (class 0 OID 0)
-- Dependencies: 201
-- Name: attraction_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.attraction_category_id_seq', 3, true);


--
-- TOC entry 3836 (class 0 OID 0)
-- Dependencies: 199
-- Name: attraction_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.attraction_id_seq', 1, true);


--
-- TOC entry 3837 (class 0 OID 0)
-- Dependencies: 197
-- Name: city_id_seq; Type: SEQUENCE SET; Schema: public; Owner: student
--

SELECT pg_catalog.setval('public.city_id_seq', 1, true);


-- Completed on 2019-08-22 13:13:15

--
-- PostgreSQL database dump complete
--

