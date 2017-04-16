--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.6
-- Dumped by pg_dump version 9.5.6

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

--
-- Name: jenis_kelamin; Type: TYPE; Schema: public; Owner: postgres
--

CREATE TYPE jenis_kelamin AS ENUM (
    'L',
    'P'
);


ALTER TYPE jenis_kelamin OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: m_nasabah; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE m_nasabah (
    no_rek character varying(10) NOT NULL,
    nama character varying(150) NOT NULL,
    jenis_kelamin jenis_kelamin DEFAULT 'L'::jenis_kelamin NOT NULL,
    alamat character varying(255)
);


ALTER TABLE m_nasabah OWNER TO postgres;

--
-- Data for Name: m_nasabah; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO m_nasabah (no_rek, nama, jenis_kelamin, alamat) VALUES ('10010001', 'Dimas Maryanto', 'L', 'Jl.bukit indah No B8');
INSERT INTO m_nasabah (no_rek, nama, jenis_kelamin, alamat) VALUES ('10010002', 'Putri Noviana', 'P', 'Medan');


--
-- Name: m_nasabah_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY m_nasabah
    ADD CONSTRAINT m_nasabah_pkey PRIMARY KEY (no_rek);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

