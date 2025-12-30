--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    description text NOT NULL,
    element_abundance character varying(50),
    effective_radius_in_kiloparsecs numeric(20,4),
    galaxy_types_id integer
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
-- Name: galaxy_types; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy_types (
    galaxy_types_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    typical_structure character varying(50)
);


ALTER TABLE public.galaxy_types OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_types_galaxy_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_types_galaxy_types_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_types_galaxy_types_id_seq OWNED BY public.galaxy_types.galaxy_types_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    is_potato boolean,
    planet_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    is_dwarf boolean,
    star_id integer
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
    name character varying(50) NOT NULL,
    age_in_millions_of_years integer,
    solar_mass numeric(10,3),
    galaxy_id integer
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: galaxy_types galaxy_types_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types ALTER COLUMN galaxy_types_id SET DEFAULT nextval('public.galaxy_types_galaxy_types_id_seq'::regclass);


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
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 13600, 'Barred spiral galaxy containing the Solar System.', 'Hydrogen, Helium, Oxygen', 5.3000, 2);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 10000, 'Nearest large spiral galaxy to the Milky Way.', 'Hydrogen, Helium, Oxygen', 5.8000, 1);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 9000, 'Small spiral galaxy in the Local Group.', 'Hydrogen, Helium', 2.0000, 1);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', 13000, 'Giant elliptical galaxy with a supermassive black hole.', 'Helium-rich', 7.6000, 17);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 13000, 'Satellite galaxy of the Milky Way.', 'Hydrogen, Helium', 1.5000, 6);
INSERT INTO public.galaxy VALUES (6, 'Small Magellanic Cloud', 12000, 'Dwarf irregular galaxy near the Milky Way.', 'Hydrogen-rich', 1.2000, 6);
INSERT INTO public.galaxy VALUES (7, 'Sombrero Galaxy', 12000, 'Spiral galaxy with a bright nucleus and large bulge.', 'Oxygen-rich', 4.9000, 4);
INSERT INTO public.galaxy VALUES (8, 'Whirlpool Galaxy', 8000, 'Grand-design spiral galaxy interacting with a companion.', 'Hydrogen, Oxygen', 3.4000, 11);
INSERT INTO public.galaxy VALUES (9, 'Centaurus A', 11000, 'Peculiar elliptical galaxy with strong radio emission.', 'Helium, Nitrogen', 6.2000, 10);
INSERT INTO public.galaxy VALUES (10, 'IC 1101', 13500, 'One of the largest known galaxies.', 'Helium-rich', 17.5000, 3);
INSERT INTO public.galaxy VALUES (11, 'NGC 1300', 7000, 'Barred spiral galaxy in the Eridanus constellation.', 'Hydrogen, Oxygen', 3.1000, 2);
INSERT INTO public.galaxy VALUES (12, 'NGC 6822', 9000, 'Barnard’s Galaxy, a dwarf irregular galaxy.', 'Hydrogen-rich', 1.1000, 6);
INSERT INTO public.galaxy VALUES (13, 'Messier 81', 12000, 'Spiral galaxy with a bright active nucleus.', 'Hydrogen, Helium', 4.2000, 1);
INSERT INTO public.galaxy VALUES (14, 'Messier 82', 6000, 'Starburst galaxy with intense star formation.', 'Oxygen-rich', 2.6000, 13);
INSERT INTO public.galaxy VALUES (15, 'NGC 2403', 9000, 'Intermediate spiral galaxy in the M81 group.', 'Hydrogen, Helium', 2.9000, 1);
INSERT INTO public.galaxy VALUES (16, 'UGC 2885', 13000, 'Giant low surface brightness spiral galaxy.', 'Hydrogen-rich', 12.0000, 19);
INSERT INTO public.galaxy VALUES (17, 'NGC 4414', 10000, 'Flocculent spiral galaxy without strong arms.', 'Hydrogen, Oxygen', 3.7000, 1);
INSERT INTO public.galaxy VALUES (18, 'NGC 4486B', 12500, 'Compact elliptical galaxy near Messier 87.', 'Helium-rich', 1.8000, 20);
INSERT INTO public.galaxy VALUES (19, 'Tadpole Galaxy', 7000, 'Distorted galaxy with a long tidal tail.', 'Hydrogen, Helium', 4.5000, 11);
INSERT INTO public.galaxy VALUES (20, 'Cartwheel Galaxy', 5000, 'Ring galaxy formed by a high-speed collision.', 'Oxygen-rich', 6.0000, 9);


--
-- Data for Name: galaxy_types; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy_types VALUES (1, 'Spiral', 'Disk galaxy with well-defined spiral arms and ongoing star formation.', 'Disk with spiral arms');
INSERT INTO public.galaxy_types VALUES (2, 'Barred Spiral', 'Spiral galaxy featuring a central bar-shaped structure.', 'Barred disk with arms');
INSERT INTO public.galaxy_types VALUES (3, 'Elliptical', 'Smooth, ellipsoidal galaxy with little gas or dust.', 'Smooth ellipsoid');
INSERT INTO public.galaxy_types VALUES (4, 'Lenticular', 'Intermediate galaxy type between spiral and elliptical.', 'Disk without arms');
INSERT INTO public.galaxy_types VALUES (5, 'Irregular', 'Galaxy with no clear shape or symmetry.', 'Chaotic');
INSERT INTO public.galaxy_types VALUES (6, 'Dwarf Irregular', 'Small irregular galaxy with active star formation.', 'Small chaotic body');
INSERT INTO public.galaxy_types VALUES (7, 'Dwarf Elliptical', 'Low-mass elliptical galaxy with older stars.', 'Compact ellipsoid');
INSERT INTO public.galaxy_types VALUES (8, 'Ultra-Faint Dwarf', 'Extremely low-luminosity dwarf galaxy.', 'Diffuse faint structure');
INSERT INTO public.galaxy_types VALUES (9, 'Ring', 'Galaxy characterized by a prominent ring structure.', 'Circular ring');
INSERT INTO public.galaxy_types VALUES (10, 'Peculiar', 'Galaxy with unusual or distorted morphology.', 'Distorted structure');
INSERT INTO public.galaxy_types VALUES (11, 'Interacting', 'Galaxy undergoing strong gravitational interaction.', 'Tidal distorted system');
INSERT INTO public.galaxy_types VALUES (12, 'Merging', 'Two or more galaxies in the process of merging.', 'Overlapping cores');
INSERT INTO public.galaxy_types VALUES (13, 'Starburst', 'Galaxy with exceptionally high star formation rate.', 'Compact active core');
INSERT INTO public.galaxy_types VALUES (14, 'Active Galactic Nucleus', 'Galaxy with an extremely energetic central nucleus.', 'Bright central core');
INSERT INTO public.galaxy_types VALUES (15, 'Seyfert', 'Spiral galaxy with a luminous active nucleus.', 'Disk with active nucleus');
INSERT INTO public.galaxy_types VALUES (16, 'Quasar Host', 'Galaxy hosting a quasar at its center.', 'Bright point-like core');
INSERT INTO public.galaxy_types VALUES (17, 'Radio Galaxy', 'Galaxy emitting strong radio-frequency radiation.', 'Elliptical with jets');
INSERT INTO public.galaxy_types VALUES (18, 'LINER', 'Galaxy with low-ionization nuclear emission lines.', 'Weakly active nucleus');
INSERT INTO public.galaxy_types VALUES (19, 'Low Surface Brightness', 'Galaxy with very faint disk and low stellar density.', 'Diffuse disk');
INSERT INTO public.galaxy_types VALUES (20, 'Compact Elliptical', 'Small, dense elliptical galaxy.', 'Dense compact ellipsoid');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 4400, false, 1);
INSERT INTO public.moon VALUES (2, 'Alpha Luna', 5100, false, 2);
INSERT INTO public.moon VALUES (3, 'Proxima Luna', 4700, true, 3);
INSERT INTO public.moon VALUES (4, 'Andromeda Moon I', 5900, false, 4);
INSERT INTO public.moon VALUES (5, 'Andromeda Dwarf Moon', 8800, true, 5);
INSERT INTO public.moon VALUES (6, 'Triangulum Pebble', 4200, true, 6);
INSERT INTO public.moon VALUES (7, 'M87 Major Moon', 10800, false, 7);
INSERT INTO public.moon VALUES (8, 'LMC Lava Moon', 1900, false, 8);
INSERT INTO public.moon VALUES (9, 'SMC Irregular Moon', 2900, true, 9);
INSERT INTO public.moon VALUES (10, 'Sombrero Small Moon', 8300, true, 10);
INSERT INTO public.moon VALUES (11, 'Whirlpool Proto Moon', 950, true, 11);
INSERT INTO public.moon VALUES (12, 'Centaurus A Moon', 6800, false, 12);
INSERT INTO public.moon VALUES (13, 'IC 1101 Heavy Moon', 9800, false, 13);
INSERT INTO public.moon VALUES (14, 'NGC 1300 Rocky Moon', 4900, false, 14);
INSERT INTO public.moon VALUES (15, 'Barnards Minor Moon', 6400, true, 15);
INSERT INTO public.moon VALUES (16, 'UGC 2885 Large Moon', 10800, false, 16);
INSERT INTO public.moon VALUES (17, 'NGC 4414 Ice Moon', 7600, false, 17);
INSERT INTO public.moon VALUES (18, 'NGC 4486B Potato Moon', 9100, true, 18);
INSERT INTO public.moon VALUES (19, 'Tadpole Tail Moon', 2400, true, 19);
INSERT INTO public.moon VALUES (20, 'Cartwheel Ring Moon', 780, false, 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, true, 1);
INSERT INTO public.planet VALUES (2, 'Alpha Centauri Bb', 5200, false, 2);
INSERT INTO public.planet VALUES (3, 'Proxima b', 4800, false, 3);
INSERT INTO public.planet VALUES (4, 'Andromeda Planet I', 6000, false, 4);
INSERT INTO public.planet VALUES (5, 'Andromeda Dwarf I', 9000, true, 5);
INSERT INTO public.planet VALUES (6, 'Triangulum Minor', 4300, true, 6);
INSERT INTO public.planet VALUES (7, 'M87 Gas Giant', 11000, false, 7);
INSERT INTO public.planet VALUES (8, 'LMC Hot Jupiter', 2000, false, 8);
INSERT INTO public.planet VALUES (9, 'SMC Rocky Planet', 3000, false, 9);
INSERT INTO public.planet VALUES (10, 'Sombrero Dwarf Planet', 8500, true, 10);
INSERT INTO public.planet VALUES (11, 'Whirlpool Proto Planet', 1000, false, 11);
INSERT INTO public.planet VALUES (12, 'Centaurus A Exoplanet', 7000, false, 12);
INSERT INTO public.planet VALUES (13, 'IC 1101 Super Jupiter', 10000, false, 13);
INSERT INTO public.planet VALUES (14, 'NGC 1300 Terrestrial', 5000, false, 14);
INSERT INTO public.planet VALUES (15, 'Barnards Planet X', 6500, false, 15);
INSERT INTO public.planet VALUES (16, 'UGC 2885 Giant Planet', 11000, false, 16);
INSERT INTO public.planet VALUES (17, 'NGC 4414 Ice Planet', 7800, false, 17);
INSERT INTO public.planet VALUES (18, 'NGC 4486B Dwarf Planet', 9200, true, 18);
INSERT INTO public.planet VALUES (19, 'Tadpole Ring Planet', 2500, false, 19);
INSERT INTO public.planet VALUES (20, 'Cartwheel Young Planet', 800, false, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 4600, 1.000, 1);
INSERT INTO public.star VALUES (2, 'Alpha Centauri A', 5200, 1.100, 2);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 4800, 0.122, 3);
INSERT INTO public.star VALUES (4, 'Andromeda Star A', 6000, 1.300, 4);
INSERT INTO public.star VALUES (5, 'Andromeda Red Giant', 9000, 2.100, 5);
INSERT INTO public.star VALUES (6, 'Triangulum Star B', 4500, 0.900, 6);
INSERT INTO public.star VALUES (7, 'M87 Core Star', 11000, 3.500, 7);
INSERT INTO public.star VALUES (8, 'LMC Blue Giant', 2000, 8.400, 8);
INSERT INTO public.star VALUES (9, 'SMC Main Sequence Star', 3000, 1.200, 9);
INSERT INTO public.star VALUES (10, 'Sombrero Bulge Star', 8500, 1.800, 10);
INSERT INTO public.star VALUES (11, 'Whirlpool Young Star', 1200, 2.600, 11);
INSERT INTO public.star VALUES (12, 'Centaurus A Star', 7000, 1.500, 12);
INSERT INTO public.star VALUES (13, 'IC 1101 Massive Star', 10000, 4.800, 13);
INSERT INTO public.star VALUES (14, 'NGC 1300 Star', 5000, 1.100, 14);
INSERT INTO public.star VALUES (15, 'Barnards Galaxy Star', 6500, 0.850, 15);
INSERT INTO public.star VALUES (16, 'UGC 2885 Giant Star', 11000, 6.200, 16);
INSERT INTO public.star VALUES (17, 'NGC 4414 Star', 7800, 1.400, 17);
INSERT INTO public.star VALUES (18, 'NGC 4486B Star', 9200, 2.900, 18);
INSERT INTO public.star VALUES (19, 'Tadpole Galaxy Star', 2500, 2.300, 19);
INSERT INTO public.star VALUES (20, 'Cartwheel Ring Star', 800, 5.600, 20);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: galaxy_types_galaxy_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_types_galaxy_types_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: galaxy_types galaxy_types_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_pkey PRIMARY KEY (galaxy_types_id);


--
-- Name: galaxy_types galaxy_types_type_of_galaxy_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy_types
    ADD CONSTRAINT galaxy_types_type_of_galaxy_key UNIQUE (name);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy galaxy_galaxy_types_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_types_id_fkey FOREIGN KEY (galaxy_types_id) REFERENCES public.galaxy_types(galaxy_types_id);


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

