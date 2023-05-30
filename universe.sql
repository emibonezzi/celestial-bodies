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
-- Name: continent; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.continent (
    name character varying(20) NOT NULL,
    planet_id integer,
    continent_id integer NOT NULL,
    width_in_millions integer
);


ALTER TABLE public.continent OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    name character varying(20) NOT NULL,
    galaxy_id integer NOT NULL,
    age_in_million_years numeric,
    description text,
    galaxy numeric(4,1)
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20) NOT NULL,
    moon_id integer NOT NULL,
    planet_id integer,
    surface_temperature numeric(5,2),
    orbital_period numeric(8,2)
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20) NOT NULL,
    is_spherical boolean,
    has_life boolean,
    planet_id integer NOT NULL,
    distance_from_earth bigint,
    planet_types integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20) NOT NULL,
    star_id integer NOT NULL,
    galaxy_id integer,
    spectral_type character varying(10),
    distance_from_earth numeric(10,2)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: continent; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.continent VALUES ('Africa', 3, 1, 30);
INSERT INTO public.continent VALUES ('Asia', 3, 2, 44);
INSERT INTO public.continent VALUES ('Europe', 3, 3, 10);
INSERT INTO public.continent VALUES ('North America', 3, 4, 24);
INSERT INTO public.continent VALUES ('South America', 3, 5, 17);
INSERT INTO public.continent VALUES ('Australia', 3, 6, 8);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES ('Milky Way', 1, 13000.5, 'The Milky Way is a barred spiral galaxy that is part of the Local Group of galaxies.', NULL);
INSERT INTO public.galaxy VALUES ('Andromeda', 2, 10000.0, 'Andromeda is a spiral galaxy located approximately 2.537 million light-years away from Earth.', NULL);
INSERT INTO public.galaxy VALUES ('Triangulum', 3, 7000.2, 'Triangulum is a small spiral galaxy and a member of the Local Group.', NULL);
INSERT INTO public.galaxy VALUES ('Whirlpool', 4, 500.8, 'The Whirlpool Galaxy is an interacting grand-design spiral galaxy located in the constellation Canes Venatici.', NULL);
INSERT INTO public.galaxy VALUES ('Sombrero', 5, 1000.0, 'The Sombrero Galaxy is an unbarred spiral galaxy located in the constellation Virgo.', NULL);
INSERT INTO public.galaxy VALUES ('Cartwheel', 6, 400.3, 'The Cartwheel Galaxy is a lenticular galaxy and a peculiar ring galaxy located in the constellation Sculptor.', NULL);
INSERT INTO public.galaxy VALUES ('Cigar', 7, 1200.1, 'The Cigar Galaxy, also known as M82, is a starburst galaxy located in the constellation Ursa Major.', NULL);
INSERT INTO public.galaxy VALUES ('Pinwheel', 8, 1800.6, 'The Pinwheel Galaxy, also known as M101, is a face-on spiral galaxy located in the constellation Ursa Major.', NULL);
INSERT INTO public.galaxy VALUES ('Black Eye', 9, 600.4, 'The Black Eye Galaxy, also known as M64, is a spiral galaxy located in the constellation Coma Berenices.', NULL);
INSERT INTO public.galaxy VALUES ('Tadpole', 10, 900.7, 'The Tadpole Galaxy is a disrupted barred spiral galaxy located in the constellation Draco.', NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('Luna', 1, 1, NULL, NULL);
INSERT INTO public.moon VALUES ('Phobos', 2, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Deimos', 3, 4, NULL, NULL);
INSERT INTO public.moon VALUES ('Io', 4, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Europa', 5, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Ganymede', 6, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Callisto', 7, 5, NULL, NULL);
INSERT INTO public.moon VALUES ('Titan', 8, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Rhea', 9, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Iapetus', 10, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Mimas', 11, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Enceladus', 12, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Tethys', 13, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Dione', 14, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Hyperion', 15, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Phoebe', 16, 6, NULL, NULL);
INSERT INTO public.moon VALUES ('Miranda', 17, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Ariel', 18, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Umbriel', 19, 7, NULL, NULL);
INSERT INTO public.moon VALUES ('Titania', 20, 7, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('Mercury', true, false, 1, 77000000, 1, 1);
INSERT INTO public.planet VALUES ('Venus', true, false, 2, 38000000, 1, 1);
INSERT INTO public.planet VALUES ('Earth', true, true, 3, 0, 1, 1);
INSERT INTO public.planet VALUES ('Mars', true, false, 4, 54000000, 1, 1);
INSERT INTO public.planet VALUES ('Jupiter', false, false, 5, 588000000, 2, 1);
INSERT INTO public.planet VALUES ('Saturn', false, false, 6, 1200000000, 2, 1);
INSERT INTO public.planet VALUES ('Uranus', false, false, 7, 2600000000, 3, 1);
INSERT INTO public.planet VALUES ('Neptune', false, false, 8, 4300000000, 3, 1);
INSERT INTO public.planet VALUES ('Pluto', true, false, 9, 5900000000, 4, 1);
INSERT INTO public.planet VALUES ('Moon', true, false, 10, 384400, 5, 3);
INSERT INTO public.planet VALUES ('Phobos', true, false, 11, 9377, 5, 4);
INSERT INTO public.planet VALUES ('Deimos', true, false, 12, 23460, 5, 4);
INSERT INTO public.planet VALUES ('Io', true, false, 13, 421700, 5, 5);
INSERT INTO public.planet VALUES ('Europa', true, false, 14, 671034, 5, 5);
INSERT INTO public.planet VALUES ('Ganymede', true, false, 15, 1070412, 5, 5);
INSERT INTO public.planet VALUES ('Callisto', true, false, 16, 1882709, 5, 5);
INSERT INTO public.planet VALUES ('Titan', true, false, 17, 1257065, 6, 6);
INSERT INTO public.planet VALUES ('Rhea', true, false, 18, 1831005, 6, 6);
INSERT INTO public.planet VALUES ('Iapetus', true, false, 19, 3560820, 6, 6);
INSERT INTO public.planet VALUES ('Mimas', true, false, 20, 185539, 6, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('Sun', 1, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Alpha Centauri', 2, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Sirius', 3, 1, NULL, NULL);
INSERT INTO public.star VALUES ('Proxima Centauri', 4, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Barnard''s Star', 5, 2, NULL, NULL);
INSERT INTO public.star VALUES ('Betelgeuse', 6, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Rigel', 7, 3, NULL, NULL);
INSERT INTO public.star VALUES ('Polaris', 8, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Vega', 9, 4, NULL, NULL);
INSERT INTO public.star VALUES ('Antares', 10, 5, NULL, NULL);


--
-- Name: continent continent_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_pkey PRIMARY KEY (continent_id);


--
-- Name: continent continent_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_unique UNIQUE (name, continent_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_unique UNIQUE (name, moon_id);


--
-- Name: galaxy name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT name_unique UNIQUE (name, galaxy_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_unique UNIQUE (name, planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_unique UNIQUE (name, star_id);


--
-- Name: continent continent_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.continent
    ADD CONSTRAINT continent_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

