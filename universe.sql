--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: asteroid_belt; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid_belt (
    asteroid_belt_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    planet_id integer
);


ALTER TABLE public.asteroid_belt OWNER TO freecodecamp;

--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_belt_asteroid_belt_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_belt_asteroid_belt_id_seq OWNER TO freecodecamp;

--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_belt_asteroid_belt_id_seq OWNED BY public.asteroid_belt.asteroid_belt_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    galaxy_types integer NOT NULL,
    age_in_millions_of_years integer,
    description text
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
    name character varying(50) NOT NULL,
    distance_from_earth numeric NOT NULL,
    description text,
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
    planet_types integer NOT NULL,
    has_life boolean,
    description text,
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
    is_spherical boolean NOT NULL,
    age_in_millions_of_years integer,
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
-- Name: asteroid_belt asteroid_belt_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt ALTER COLUMN asteroid_belt_id SET DEFAULT nextval('public.asteroid_belt_asteroid_belt_id_seq'::regclass);


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
-- Data for Name: asteroid_belt; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid_belt VALUES (1, 'Main Belt', 'The region of space between Mars and Jupiter.', 5);
INSERT INTO public.asteroid_belt VALUES (2, 'Hecuba', 'A large asteroid in the main belt.', 5);
INSERT INTO public.asteroid_belt VALUES (3, 'Eros', 'An asteroid that orbits close to Earth.', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 1, 13000, 'The galaxy containing our solar system.');
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2, 10000, 'The closest spiral galaxy to the Milky Way.');
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 1, 3000, 'A spiral galaxy located in the constellation Triangulum.');
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 1, 10000, 'Known for its bright nucleus and prominent dust lane.');
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', 1, 5000, 'A classic spiral galaxy in the constellation Canes Venatici.');
INSERT INTO public.galaxy VALUES (6, 'Pinwheel', 1, 10000, 'A large spiral galaxy located in the constellation Ursa Major.');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 384400, 'Natural satellite of Earth.', 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 6000, 'One of the moons of Mars, known for its irregular shape.', 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 23000, 'The smaller and outermost moon of Mars.', 4);
INSERT INTO public.moon VALUES (4, 'Io', 628000, 'A moon of Jupiter known for its volcanic activity.', 5);
INSERT INTO public.moon VALUES (5, 'Europa', 628000, 'A moon of Jupiter believed to have an ocean beneath its surface.', 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 628000, 'The largest moon in the solar system, also of Jupiter.', 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 628000, 'A heavily cratered moon of Jupiter.', 5);
INSERT INTO public.moon VALUES (8, 'Titan', 1270000, 'Largest moon of Saturn, known for its dense atmosphere.', 6);
INSERT INTO public.moon VALUES (9, 'Rhea', 1270000, 'A moon of Saturn with a heavily cratered surface.', 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 1270000, 'A moon of Saturn known for its icy geysers.', 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 1270000, 'A small, heavily cratered moon of Saturn.', 6);
INSERT INTO public.moon VALUES (12, 'Triton', 354800, 'The largest moon of Neptune, known for its retrograde orbit.', 7);
INSERT INTO public.moon VALUES (13, 'Charon', 19570, 'Largest moon of the dwarf planet Pluto.', 8);
INSERT INTO public.moon VALUES (14, 'Titania', 436000, 'The largest moon of Uranus.', 9);
INSERT INTO public.moon VALUES (15, 'Oberon', 583000, 'The second-largest moon of Uranus.', 9);
INSERT INTO public.moon VALUES (16, 'Miranda', 129000, 'A moon of Uranus with a patchwork surface.', 9);
INSERT INTO public.moon VALUES (17, 'Luna', 40000, 'Fictional moon in a distant galaxy.', 10);
INSERT INTO public.moon VALUES (18, 'Coruscant', 50000, 'Fictional moon in a distant galaxy.', 11);
INSERT INTO public.moon VALUES (19, 'Theia', 2000000, 'Hypothetical moon that collided with early Earth.', 12);
INSERT INTO public.moon VALUES (20, 'Daphnis', 1380000, 'A small moon of Saturn that creates waves in the rings.', 6);
INSERT INTO public.moon VALUES (21, 'Pandora', 1410000, 'A moon of Saturn located between the F ring and the A ring.', 6);
INSERT INTO public.moon VALUES (22, 'Atlas', 1370000, 'A moon of Saturn that has a unique saucer shape.', 6);
INSERT INTO public.moon VALUES (23, 'Janus', 1510000, 'A moon of Saturn that shares its orbit with Epimetheus.', 6);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 1, false, 'The closest planet to the Sun.', 1);
INSERT INTO public.planet VALUES (2, 'Venus', 1, false, 'Known for its thick, toxic atmosphere.', 1);
INSERT INTO public.planet VALUES (3, 'Earth', 1, true, 'The only planet known to support life.', 1);
INSERT INTO public.planet VALUES (4, 'Mars', 1, false, 'The red planet, known for its iron oxide.', 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 1, false, 'The largest planet in our solar system.', 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 1, false, 'Known for its stunning ring system.', 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 1, false, 'An ice giant with a unique tilt.', 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 1, false, 'The furthest planet from the Sun.', 1);
INSERT INTO public.planet VALUES (9, 'Alpha Proxima b', 1, true, 'Potentially habitable exoplanet.', 2);
INSERT INTO public.planet VALUES (10, 'Planet X', 1, false, 'A hypothetical planet in the outer solar system.', 3);
INSERT INTO public.planet VALUES (11, 'Kepler-22b', 1, true, 'An exoplanet in the habitable zone of its star.', 4);
INSERT INTO public.planet VALUES (12, 'Kepler-16b', 1, false, 'A circumbinary planet in the constellation Cygnus.', 4);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', true, 4600, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', true, 4500, 1);
INSERT INTO public.star VALUES (3, 'Sirius', true, 200, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', true, 10000, 2);
INSERT INTO public.star VALUES (5, 'Rigel', true, 800, 2);
INSERT INTO public.star VALUES (6, 'Vega', true, 455, 3);


--
-- Name: asteroid_belt_asteroid_belt_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_belt_asteroid_belt_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 23, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: asteroid_belt asteroid_belt_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_name_key UNIQUE (name);


--
-- Name: asteroid_belt asteroid_belt_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_pkey PRIMARY KEY (asteroid_belt_id);


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
-- Name: asteroid_belt asteroid_belt_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid_belt
    ADD CONSTRAINT asteroid_belt_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

