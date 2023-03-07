--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_table_access_method = heap;

--
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    size numeric(10,2),
    distance_from_sun numeric(10,2),
    is_potentially_hazardous boolean NOT NULL
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_id_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    size numeric(10,2),
    distance_from_sun numeric(10,2),
    is_periodic boolean NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(255) NOT NULL,
    type character varying(255) NOT NULL,
    age integer,
    distance_from_earth numeric(10,2),
    has_life boolean NOT NULL,
    unique_values integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(255) NOT NULL,
    is_inhabited boolean NOT NULL,
    planet_id integer NOT NULL,
    discovery_date date,
    distance_from_planet numeric(10,2) NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(255) NOT NULL,
    star_id integer NOT NULL,
    habitable_zone boolean NOT NULL,
    distance_from_star numeric(10,2),
    has_atmosphere boolean NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(255) NOT NULL,
    galaxy_id integer NOT NULL,
    mass numeric(10,2),
    luminosity numeric(10,2),
    is_black_hole boolean NOT NULL,
    age integer NOT NULL,
    finder text,
    randomizer integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_id_seq'::regclass);


--
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'asteroid1', 'stable', 123.35, 12324234.53, true);
INSERT INTO public.asteroid VALUES (2, 'asteroid2', 'stable', 234.50, 123434.53, false);
INSERT INTO public.asteroid VALUES (4, 'as123', 'not stable', 345.23, 345634.23, false);


--
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'random comet', 'falling', 123.65, 3456.64, true);
INSERT INTO public.comet VALUES (2, 'that one you know', 'stable', 123.65, 3456.64, true);
INSERT INTO public.comet VALUES (3, 'a big one', 'not stable', 123.50, 34123123.00, false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'barred spiral', 25000, 13000000.00, false, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 'spiral', 340000, 123000.00, false, NULL);
INSERT INTO public.galaxy VALUES (3, 'the third one', 'spiral', 64884554, 2838448.00, true, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'unknown', 2342, 134443.00, true, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'unknown', 567342, 12343.00, true, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'spiral', 567342, 12343.00, true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Our moon', false, 1, '1990-12-12', 234.66);
INSERT INTO public.moon VALUES (2, 'Not Our moon', true, 2, '1567-12-23', 123.56);
INSERT INTO public.moon VALUES (3, 'ASD MOON', false, 3, '1234-12-12', 34563.76);
INSERT INTO public.moon VALUES (4, 'second moon', true, 1, '1995-12-12', 123.66);
INSERT INTO public.moon VALUES (5, 'second moon', true, 1, '1995-12-11', 123.66);
INSERT INTO public.moon VALUES (6, 'second moon', true, 1, '1995-12-10', 123.66);
INSERT INTO public.moon VALUES (7, 'second moon', true, 1, '1995-12-01', 123.66);
INSERT INTO public.moon VALUES (8, 'second moon', true, 1, '1995-12-02', 123.66);
INSERT INTO public.moon VALUES (9, 'second moon', true, 1, '1995-11-02', 123.66);
INSERT INTO public.moon VALUES (10, 'second moon', true, 1, '1995-10-02', 123.66);
INSERT INTO public.moon VALUES (11, 'second moon', true, 1, '1965-10-02', 123.66);
INSERT INTO public.moon VALUES (12, 'second moon', true, 1, '1982-10-02', 123.66);
INSERT INTO public.moon VALUES (13, 'second moon', true, 1, '1562-10-02', 123.66);
INSERT INTO public.moon VALUES (14, 'second moon', true, 1, '1562-07-02', 123.66);
INSERT INTO public.moon VALUES (15, 'second moon', true, 1, '1672-07-02', 123.66);
INSERT INTO public.moon VALUES (16, 'second moon', true, 1, '1234-07-02', 123.66);
INSERT INTO public.moon VALUES (17, 'second moon', true, 1, '1234-07-06', 123.66);
INSERT INTO public.moon VALUES (18, 'second moon', true, 1, '1454-07-06', 123.66);
INSERT INTO public.moon VALUES (19, 'second moon', true, 1, '1454-07-12', 123.66);
INSERT INTO public.moon VALUES (20, 'second moon', true, 1, '1554-07-12', 123.66);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 340059.00, true);
INSERT INTO public.planet VALUES (2, 'Earth2', 2, false, 32329.00, true);
INSERT INTO public.planet VALUES (3, 'Earth56', 5, true, 563453.00, true);
INSERT INTO public.planet VALUES (4, 'Earth234', 5, false, 23423.00, false);
INSERT INTO public.planet VALUES (5, 'RandomEarth', 1, false, 234.56, true);
INSERT INTO public.planet VALUES (9, 'RandomEarth', 6, false, 234.54, true);
INSERT INTO public.planet VALUES (10, 'RandomEarth', 7, false, 234.54, true);
INSERT INTO public.planet VALUES (11, 'RandomEarth', 8, false, 234.54, true);
INSERT INTO public.planet VALUES (13, 'real earth', 10, true, 23423.23, true);
INSERT INTO public.planet VALUES (14, 'h123', 11, true, 1231321.54, false);
INSERT INTO public.planet VALUES (15, 'h123', 12, true, 1231321.54, false);
INSERT INTO public.planet VALUES (16, 'h123', 13, true, 1231321.54, false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, 1.65, 6.23, false, 5, 'humans', NULL);
INSERT INTO public.star VALUES (2, 'Alpha Centauri', 2, 7.35, 3.66, false, 6, 'pinco', NULL);
INSERT INTO public.star VALUES (5, 'New Sun', 3, 23.60, 5.90, true, 19, 'a dead guy', NULL);
INSERT INTO public.star VALUES (6, 'star4', 4, 4.67, 34.50, false, 3, 'tizio', NULL);
INSERT INTO public.star VALUES (7, 'star5', 5, 4.47, 34.50, false, 3, 'caio', NULL);
INSERT INTO public.star VALUES (8, 'star6', 6, 234.00, 34.00, true, 6, 'sempronio', NULL);
INSERT INTO public.star VALUES (10, 'random star', 4, 123.00, 123.00, true, 4, 'io', NULL);
INSERT INTO public.star VALUES (11, 'random', 1, 23.34, 34.34, false, 4, 'me stesso', NULL);
INSERT INTO public.star VALUES (12, 'random', 1, 23.34, 34.34, false, 4, 'me stesso', NULL);
INSERT INTO public.star VALUES (13, 'random', 1, 23.34, 34.34, false, 4, 'me stesso', NULL);


--
-- Name: asteroid_asteroid_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_id_seq', 4, true);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 13, true);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy galaxy_unique_values_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_unique_values_key UNIQUE (unique_values);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_star_id_key UNIQUE (name, star_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon unique_discovery_date; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_discovery_date UNIQUE (discovery_date);


--
-- Name: asteroid unique_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_name UNIQUE (name);


--
-- Name: star unique_random; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_random UNIQUE (randomizer);


--
-- Name: asteroid unique_size; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT unique_size UNIQUE (size);


--
-- Name: comet unique_type; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT unique_type UNIQUE (type);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

