--
-- PostgreSQL database dump
--

-- Dumped from database version 10.9
-- Dumped by pg_dump version 11.3

-- Started on 2019-08-22 13:12:12

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

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 22977636)
-- Name: attraction; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.attraction (
    id integer NOT NULL,
    city_id integer NOT NULL,
    name character varying(50) NOT NULL,
    subtitle character varying(100),
    description text,
    distance double precision,
    duration integer,
    rank integer,
    latitude double precision,
    longitude double precision,
    location character varying(100),
    time_open character varying(500),
    ticket character varying(500),
    phone_number character varying(50),
    email character varying(50),
    website character varying(100),
    file_name character varying(100),
    attraction_category_id integer NOT NULL,
    favorited boolean DEFAULT false NOT NULL
);


ALTER TABLE public.attraction OWNER TO student;

--
-- TOC entry 202 (class 1259 OID 22977852)
-- Name: attraction_category; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.attraction_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    file_name character varying(100)
);


ALTER TABLE public.attraction_category OWNER TO student;

--
-- TOC entry 201 (class 1259 OID 22977850)
-- Name: attraction_category_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.attraction_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attraction_category_id_seq OWNER TO student;

--
-- TOC entry 3829 (class 0 OID 0)
-- Dependencies: 201
-- Name: attraction_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.attraction_category_id_seq OWNED BY public.attraction_category.id;


--
-- TOC entry 199 (class 1259 OID 22977634)
-- Name: attraction_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.attraction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.attraction_id_seq OWNER TO student;

--
-- TOC entry 3830 (class 0 OID 0)
-- Dependencies: 199
-- Name: attraction_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.attraction_id_seq OWNED BY public.attraction.id;


--
-- TOC entry 198 (class 1259 OID 22977519)
-- Name: city; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.city (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    short_desc character varying(100),
    time_zone character varying(100),
    file_name character varying(100),
    country_id character varying(2) NOT NULL,
    temperature_celsius double precision,
    weather character varying(20)
);


ALTER TABLE public.city OWNER TO student;

--
-- TOC entry 197 (class 1259 OID 22977517)
-- Name: city_id_seq; Type: SEQUENCE; Schema: public; Owner: student
--

CREATE SEQUENCE public.city_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.city_id_seq OWNER TO student;

--
-- TOC entry 3831 (class 0 OID 0)
-- Dependencies: 197
-- Name: city_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: student
--

ALTER SEQUENCE public.city_id_seq OWNED BY public.city.id;


--
-- TOC entry 196 (class 1259 OID 22977388)
-- Name: country; Type: TABLE; Schema: public; Owner: student
--

CREATE TABLE public.country (
    id character varying(2) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.country OWNER TO student;

--
-- TOC entry 3684 (class 2604 OID 22977639)
-- Name: attraction id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction ALTER COLUMN id SET DEFAULT nextval('public.attraction_id_seq'::regclass);


--
-- TOC entry 3686 (class 2604 OID 22977855)
-- Name: attraction_category id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction_category ALTER COLUMN id SET DEFAULT nextval('public.attraction_category_id_seq'::regclass);


--
-- TOC entry 3683 (class 2604 OID 22977522)
-- Name: city id; Type: DEFAULT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.city ALTER COLUMN id SET DEFAULT nextval('public.city_id_seq'::regclass);


--
-- TOC entry 3696 (class 2606 OID 22977859)
-- Name: attraction_category attraction_category_name_key; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction_category
    ADD CONSTRAINT attraction_category_name_key UNIQUE (name);


--
-- TOC entry 3698 (class 2606 OID 22977857)
-- Name: attraction_category attraction_category_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction_category
    ADD CONSTRAINT attraction_category_pkey PRIMARY KEY (id);


--
-- TOC entry 3694 (class 2606 OID 22977644)
-- Name: attraction attraction_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction
    ADD CONSTRAINT attraction_pkey PRIMARY KEY (id);


--
-- TOC entry 3692 (class 2606 OID 22977527)
-- Name: city city_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_pkey PRIMARY KEY (id);


--
-- TOC entry 3688 (class 2606 OID 22977394)
-- Name: country country_name_key; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_name_key UNIQUE (name);


--
-- TOC entry 3690 (class 2606 OID 22977392)
-- Name: country country_pkey; Type: CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.country
    ADD CONSTRAINT country_pkey PRIMARY KEY (id);


--
-- TOC entry 3701 (class 2606 OID 22977895)
-- Name: attraction attraction_attraction_category_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction
    ADD CONSTRAINT attraction_attraction_category_id_fkey FOREIGN KEY (attraction_category_id) REFERENCES public.attraction_category(id);


--
-- TOC entry 3700 (class 2606 OID 22977645)
-- Name: attraction attraction_city_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.attraction
    ADD CONSTRAINT attraction_city_id_fkey FOREIGN KEY (city_id) REFERENCES public.city(id);


--
-- TOC entry 3699 (class 2606 OID 22977555)
-- Name: city city_country_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: student
--

ALTER TABLE ONLY public.city
    ADD CONSTRAINT city_country_id_fkey FOREIGN KEY (country_id) REFERENCES public.country(id);


--
-- TOC entry 3828 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: awsadmin
--

GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2019-08-22 13:12:51

--
-- PostgreSQL database dump complete
--

