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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    name character varying(50) NOT NULL,
    team_id integer NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (257, 2018, 'Final', 121, 122, 4, 2);
INSERT INTO public.games VALUES (258, 2018, 'Third Place', 123, 124, 2, 0);
INSERT INTO public.games VALUES (259, 2018, 'Semi-Final', 122, 124, 2, 1);
INSERT INTO public.games VALUES (260, 2018, 'Semi-Final', 121, 123, 1, 0);
INSERT INTO public.games VALUES (261, 2018, 'Quarter-Final', 122, 125, 3, 2);
INSERT INTO public.games VALUES (262, 2018, 'Quarter-Final', 124, 126, 2, 0);
INSERT INTO public.games VALUES (263, 2018, 'Quarter-Final', 123, 127, 2, 1);
INSERT INTO public.games VALUES (264, 2018, 'Quarter-Final', 121, 128, 2, 0);
INSERT INTO public.games VALUES (265, 2018, 'Eighth-Final', 124, 129, 2, 1);
INSERT INTO public.games VALUES (266, 2018, 'Eighth-Final', 126, 130, 1, 0);
INSERT INTO public.games VALUES (267, 2018, 'Eighth-Final', 123, 131, 3, 2);
INSERT INTO public.games VALUES (268, 2018, 'Eighth-Final', 127, 132, 2, 0);
INSERT INTO public.games VALUES (269, 2018, 'Eighth-Final', 122, 133, 2, 1);
INSERT INTO public.games VALUES (270, 2018, 'Eighth-Final', 125, 134, 2, 1);
INSERT INTO public.games VALUES (271, 2018, 'Eighth-Final', 128, 135, 2, 1);
INSERT INTO public.games VALUES (272, 2018, 'Eighth-Final', 121, 136, 4, 3);
INSERT INTO public.games VALUES (273, 2014, 'Final', 137, 136, 1, 0);
INSERT INTO public.games VALUES (274, 2014, 'Third Place', 138, 127, 3, 0);
INSERT INTO public.games VALUES (275, 2014, 'Semi-Final', 136, 138, 1, 0);
INSERT INTO public.games VALUES (276, 2014, 'Semi-Final', 137, 127, 7, 1);
INSERT INTO public.games VALUES (277, 2014, 'Quarter-Final', 138, 139, 1, 0);
INSERT INTO public.games VALUES (278, 2014, 'Quarter-Final', 136, 123, 1, 0);
INSERT INTO public.games VALUES (279, 2014, 'Quarter-Final', 127, 129, 2, 1);
INSERT INTO public.games VALUES (280, 2014, 'Quarter-Final', 137, 121, 1, 0);
INSERT INTO public.games VALUES (281, 2014, 'Eighth-Final', 127, 140, 2, 1);
INSERT INTO public.games VALUES (282, 2014, 'Eighth-Final', 129, 128, 2, 0);
INSERT INTO public.games VALUES (283, 2014, 'Eighth-Final', 121, 141, 2, 0);
INSERT INTO public.games VALUES (284, 2014, 'Eighth-Final', 137, 142, 2, 1);
INSERT INTO public.games VALUES (285, 2014, 'Eighth-Final', 138, 132, 2, 1);
INSERT INTO public.games VALUES (286, 2014, 'Eighth-Final', 139, 143, 2, 1);
INSERT INTO public.games VALUES (287, 2014, 'Eighth-Final', 136, 130, 1, 0);
INSERT INTO public.games VALUES (288, 2014, 'Eighth-Final', 123, 144, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES ('France', 121);
INSERT INTO public.teams VALUES ('Croatia', 122);
INSERT INTO public.teams VALUES ('Belgium', 123);
INSERT INTO public.teams VALUES ('England', 124);
INSERT INTO public.teams VALUES ('Russia', 125);
INSERT INTO public.teams VALUES ('Sweden', 126);
INSERT INTO public.teams VALUES ('Brazil', 127);
INSERT INTO public.teams VALUES ('Uruguay', 128);
INSERT INTO public.teams VALUES ('Colombia', 129);
INSERT INTO public.teams VALUES ('Switzerland', 130);
INSERT INTO public.teams VALUES ('Japan', 131);
INSERT INTO public.teams VALUES ('Mexico', 132);
INSERT INTO public.teams VALUES ('Denmark', 133);
INSERT INTO public.teams VALUES ('Spain', 134);
INSERT INTO public.teams VALUES ('Portugal', 135);
INSERT INTO public.teams VALUES ('Argentina', 136);
INSERT INTO public.teams VALUES ('Germany', 137);
INSERT INTO public.teams VALUES ('Netherlands', 138);
INSERT INTO public.teams VALUES ('Costa Rica', 139);
INSERT INTO public.teams VALUES ('Chile', 140);
INSERT INTO public.teams VALUES ('Nigeria', 141);
INSERT INTO public.teams VALUES ('Algeria', 142);
INSERT INTO public.teams VALUES ('Greece', 143);
INSERT INTO public.teams VALUES ('United States', 144);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 288, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 144, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games fk_opponent; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_opponent FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games fk_winner; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT fk_winner FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

