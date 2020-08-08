--
-- PostgreSQL database dump
--

-- Dumped from database version 11.6
-- Dumped by pg_dump version 12.2

-- Started on 2020-08-06 10:32:17

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

--
-- TOC entry 199 (class 1259 OID 31169)
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    customer_id text,
    customer_count bigint NOT NULL
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 31155)
-- Name: products; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.products (
    product_id text,
    product_title text
);


ALTER TABLE public.products OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 31149)
-- Name: review_id_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.review_id_table (
    review_id text,
    customer_id text,
    product_id text,
    product_parent text,
    review_date date
);


ALTER TABLE public.review_id_table OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 23818)
-- Name: reviews; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reviews (
    review_id text,
    review_headline text,
    review_body text
);


ALTER TABLE public.reviews OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 31177)
-- Name: vine_table; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.vine_table (
    review_id text,
    star_rating text,
    helpful_votes text,
    total_votes text,
    vine text
);


ALTER TABLE public.vine_table OWNER TO postgres;

--
-- TOC entry 3826 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM rdsadmin;
REVOKE ALL ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2020-08-02 11:35:27

--
-- PostgreSQL database dump complete
--

