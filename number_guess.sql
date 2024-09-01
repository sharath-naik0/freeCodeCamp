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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
    user_id integer NOT NULL,
    best_guess integer DEFAULT 0 NOT NULL
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
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL,
    frequent_games integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 6, 10);
INSERT INTO public.games VALUES (2, 7, 736);
INSERT INTO public.games VALUES (3, 7, 492);
INSERT INTO public.games VALUES (4, 8, 84);
INSERT INTO public.games VALUES (5, 8, 98);
INSERT INTO public.games VALUES (6, 7, 950);
INSERT INTO public.games VALUES (7, 7, 41);
INSERT INTO public.games VALUES (8, 7, 155);
INSERT INTO public.games VALUES (9, 9, 663);
INSERT INTO public.games VALUES (10, 9, 31);
INSERT INTO public.games VALUES (11, 10, 513);
INSERT INTO public.games VALUES (12, 10, 664);
INSERT INTO public.games VALUES (13, 9, 375);
INSERT INTO public.games VALUES (14, 9, 835);
INSERT INTO public.games VALUES (15, 9, 310);
INSERT INTO public.games VALUES (16, 11, 645);
INSERT INTO public.games VALUES (17, 11, 802);
INSERT INTO public.games VALUES (18, 12, 161);
INSERT INTO public.games VALUES (19, 12, 771);
INSERT INTO public.games VALUES (20, 11, 589);
INSERT INTO public.games VALUES (21, 11, 325);
INSERT INTO public.games VALUES (22, 11, 403);
INSERT INTO public.games VALUES (23, 13, 16);
INSERT INTO public.games VALUES (24, 14, 27);
INSERT INTO public.games VALUES (25, 14, 489);
INSERT INTO public.games VALUES (26, 15, 98);
INSERT INTO public.games VALUES (27, 15, 292);
INSERT INTO public.games VALUES (28, 14, 549);
INSERT INTO public.games VALUES (29, 14, 591);
INSERT INTO public.games VALUES (30, 14, 989);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (2, 'user_1725204934247', 2);
INSERT INTO public.users VALUES (1, 'user_1725204934248', 5);
INSERT INTO public.users VALUES (3, 'a', 1);
INSERT INTO public.users VALUES (5, 'user_1725204988358', 2);
INSERT INTO public.users VALUES (4, 'user_1725204988359', 5);
INSERT INTO public.users VALUES (6, 'w', 1);
INSERT INTO public.users VALUES (8, 'user_1725205071736', 2);
INSERT INTO public.users VALUES (7, 'user_1725205071737', 5);
INSERT INTO public.users VALUES (10, 'user_1725205103390', 2);
INSERT INTO public.users VALUES (9, 'user_1725205103391', 5);
INSERT INTO public.users VALUES (12, 'user_1725206220217', 2);
INSERT INTO public.users VALUES (11, 'user_1725206220218', 5);
INSERT INTO public.users VALUES (13, 'q', 1);
INSERT INTO public.users VALUES (15, 'user_1725206443661', 2);
INSERT INTO public.users VALUES (14, 'user_1725206443662', 5);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 30, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 15, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

