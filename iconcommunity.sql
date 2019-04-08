--
-- PostgreSQL database dump
--

-- Dumped from database version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.6 (Ubuntu 10.6-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
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


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO iconcommunityuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO iconcommunityuser;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO iconcommunityuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO iconcommunityuser;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO iconcommunityuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO iconcommunityuser;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO iconcommunityuser;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO iconcommunityuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO iconcommunityuser;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO iconcommunityuser;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO iconcommunityuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO iconcommunityuser;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: developers_blogtutorial; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.developers_blogtutorial (
    id integer NOT NULL,
    blog_tutorial_logo character varying(100) NOT NULL,
    blog_tutorial_title character varying(2000) NOT NULL,
    blog_tutorial_link character varying(500) NOT NULL,
    blog_tutorial_date date NOT NULL,
    blog_tutorial_display boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.developers_blogtutorial OWNER TO iconcommunityuser;

--
-- Name: developers_blogtutorial_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.developers_blogtutorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.developers_blogtutorial_id_seq OWNER TO iconcommunityuser;

--
-- Name: developers_blogtutorial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.developers_blogtutorial_id_seq OWNED BY public.developers_blogtutorial.id;


--
-- Name: developers_videotutorial; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.developers_videotutorial (
    id integer NOT NULL,
    video_tutorial_title character varying(2000) NOT NULL,
    video_tutorial_link character varying(500) NOT NULL,
    video_tutorial_date date NOT NULL,
    video_tutorial_display boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.developers_videotutorial OWNER TO iconcommunityuser;

--
-- Name: developers_videotutorial_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.developers_videotutorial_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.developers_videotutorial_id_seq OWNER TO iconcommunityuser;

--
-- Name: developers_videotutorial_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.developers_videotutorial_id_seq OWNED BY public.developers_videotutorial.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO iconcommunityuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO iconcommunityuser;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO iconcommunityuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO iconcommunityuser;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO iconcommunityuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO iconcommunityuser;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO iconcommunityuser;

--
-- Name: resources_news; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.resources_news (
    id integer NOT NULL,
    news_logo character varying(100) NOT NULL,
    news_site character varying(200) NOT NULL,
    news_title character varying(2000) NOT NULL,
    news_link character varying(500) NOT NULL,
    news_date date NOT NULL,
    news_display boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.resources_news OWNER TO iconcommunityuser;

--
-- Name: resources_news_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.resources_news_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_news_id_seq OWNER TO iconcommunityuser;

--
-- Name: resources_news_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.resources_news_id_seq OWNED BY public.resources_news.id;


--
-- Name: resources_press; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.resources_press (
    id integer NOT NULL,
    press_title character varying(2000) NOT NULL,
    press_link character varying(500) NOT NULL,
    press_date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.resources_press OWNER TO iconcommunityuser;

--
-- Name: resources_press_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.resources_press_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_press_id_seq OWNER TO iconcommunityuser;

--
-- Name: resources_press_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.resources_press_id_seq OWNED BY public.resources_press.id;


--
-- Name: resources_videoevents; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.resources_videoevents (
    id integer NOT NULL,
    video_events_title character varying(2000) NOT NULL,
    video_events_link character varying(2000) NOT NULL,
    video_events_date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.resources_videoevents OWNER TO iconcommunityuser;

--
-- Name: resources_videoevents_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.resources_videoevents_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_videoevents_id_seq OWNER TO iconcommunityuser;

--
-- Name: resources_videoevents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.resources_videoevents_id_seq OWNED BY public.resources_videoevents.id;


--
-- Name: resources_videoiconsensus; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.resources_videoiconsensus (
    id integer NOT NULL,
    video_iconsensus_title character varying(2000) NOT NULL,
    video_iconsensus_link character varying(2000) NOT NULL,
    video_iconsensus_date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.resources_videoiconsensus OWNER TO iconcommunityuser;

--
-- Name: resources_videoiconsensus_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.resources_videoiconsensus_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_videoiconsensus_id_seq OWNER TO iconcommunityuser;

--
-- Name: resources_videoiconsensus_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.resources_videoiconsensus_id_seq OWNED BY public.resources_videoiconsensus.id;


--
-- Name: resources_videointerviews; Type: TABLE; Schema: public; Owner: iconcommunityuser
--

CREATE TABLE public.resources_videointerviews (
    id integer NOT NULL,
    video_interviews_title character varying(2000) NOT NULL,
    video_interviews_link character varying(2000) NOT NULL,
    video_interviews_date date NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE public.resources_videointerviews OWNER TO iconcommunityuser;

--
-- Name: resources_videointerviews_id_seq; Type: SEQUENCE; Schema: public; Owner: iconcommunityuser
--

CREATE SEQUENCE public.resources_videointerviews_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.resources_videointerviews_id_seq OWNER TO iconcommunityuser;

--
-- Name: resources_videointerviews_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: iconcommunityuser
--

ALTER SEQUENCE public.resources_videointerviews_id_seq OWNED BY public.resources_videointerviews.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: developers_blogtutorial id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.developers_blogtutorial ALTER COLUMN id SET DEFAULT nextval('public.developers_blogtutorial_id_seq'::regclass);


--
-- Name: developers_videotutorial id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.developers_videotutorial ALTER COLUMN id SET DEFAULT nextval('public.developers_videotutorial_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: resources_news id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_news ALTER COLUMN id SET DEFAULT nextval('public.resources_news_id_seq'::regclass);


--
-- Name: resources_press id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_press ALTER COLUMN id SET DEFAULT nextval('public.resources_press_id_seq'::regclass);


--
-- Name: resources_videoevents id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_videoevents ALTER COLUMN id SET DEFAULT nextval('public.resources_videoevents_id_seq'::regclass);


--
-- Name: resources_videoiconsensus id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_videoiconsensus ALTER COLUMN id SET DEFAULT nextval('public.resources_videoiconsensus_id_seq'::regclass);


--
-- Name: resources_videointerviews id; Type: DEFAULT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_videointerviews ALTER COLUMN id SET DEFAULT nextval('public.resources_videointerviews_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add content type	5	add_contenttype
18	Can change content type	5	change_contenttype
19	Can delete content type	5	delete_contenttype
20	Can view content type	5	view_contenttype
21	Can add session	6	add_session
22	Can change session	6	change_session
23	Can delete session	6	delete_session
24	Can view session	6	view_session
25	Can add news	7	add_news
26	Can change news	7	change_news
27	Can delete news	7	delete_news
28	Can view news	7	view_news
29	Can add press	8	add_press
30	Can change press	8	change_press
31	Can delete press	8	delete_press
32	Can view press	8	view_press
33	Can add video events	9	add_videoevents
34	Can change video events	9	change_videoevents
35	Can delete video events	9	delete_videoevents
36	Can view video events	9	view_videoevents
37	Can add video interviews	10	add_videointerviews
38	Can change video interviews	10	change_videointerviews
39	Can delete video interviews	10	delete_videointerviews
40	Can view video interviews	10	view_videointerviews
41	Can add video iconsensus	11	add_videoiconsensus
42	Can change video iconsensus	11	change_videoiconsensus
43	Can delete video iconsensus	11	delete_videoiconsensus
44	Can view video iconsensus	11	view_videoiconsensus
45	Can add blog tutorial	12	add_blogtutorial
46	Can change blog tutorial	12	change_blogtutorial
47	Can delete blog tutorial	12	delete_blogtutorial
48	Can view blog tutorial	12	view_blogtutorial
49	Can add video tutorial	13	add_videotutorial
50	Can change video tutorial	13	change_videotutorial
51	Can delete video tutorial	13	delete_videotutorial
52	Can view video tutorial	13	view_videotutorial
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$120000$sBi4tjxvetZm$vdWSm7P+sUc0OcV+i4GSRkG8WDxr4pJ1QUsGIJcp3xQ=	2019-04-03 06:48:23.914053+00	t	icon			support@icon.community	t	t	2019-03-18 22:48:41.166761+00
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: developers_blogtutorial; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.developers_blogtutorial (id, blog_tutorial_logo, blog_tutorial_title, blog_tutorial_link, blog_tutorial_date, blog_tutorial_display, created_at, updated_at) FROM stdin;
1	blogtutorial/1_JOFGbAq9TuHVJlehxEXCiQ_4VnDYsh.jpeg	ICON DAPP From A-Z Part 1: Tools & Environment	https://medium.com/@2infiniti/creating-icon-dapp-from-a-z-part-1-tools-environment-dd56f8dfc905	2018-10-23	t	2019-04-03 07:41:30.907251+00	2019-04-03 07:41:30.90728+00
2	blogtutorial/1_GsMgqi4FjOa_ZRl7pnRCkg_XEkPNUQ.jpeg	ICON DAPP From A-Z Part 2: SCORE	https://medium.com/@2infiniti/icon-dapp-from-a-z-part-2-score-af5f627e97e8	2018-10-30	t	2019-04-03 07:42:18.641186+00	2019-04-03 07:42:18.641207+00
3	blogtutorial/1_mwjZKB1aoYhK1Z8Rg9czSg.png	ICON DAPP From A-Z Part 3: ICON Dice Roll DAPP	https://medium.com/@2infiniti/icon-dapp-from-a-z-part-3-icon-dice-roll-dapp-7f0ca72057f5	2018-11-02	t	2019-04-03 07:43:15.448177+00	2019-04-03 07:43:15.448198+00
4	blogtutorial/1_PHzZ3XBF-Jk_Px2Lc8_oCg.png	ICON Workshop — Voting DAPP	https://medium.com/@2infiniti/icon-workshop-voting-dapp-c9581b1238d4	2018-11-05	t	2019-04-03 07:44:07.818464+00	2019-04-03 07:44:07.818484+00
5	blogtutorial/1_11w68USqdE2KkOXEJr9Alw.png	ICON Workshop — ICONex Web Connect	https://medium.com/@2infiniti/icon-workshop-iconex-web-connect-164ff3cd6792	2018-11-07	t	2019-04-03 07:44:59.29698+00	2019-04-03 07:44:59.297001+00
\.


--
-- Data for Name: developers_videotutorial; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.developers_videotutorial (id, video_tutorial_title, video_tutorial_link, video_tutorial_date, video_tutorial_display, created_at, updated_at) FROM stdin;
1	How To Setup A ICON Wallet	https://www.youtube.com/watch?v=nCVNUwY-OQM	2018-08-25	t	2019-04-03 08:26:23.83084+00	2019-04-03 08:26:23.830865+00
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2019-03-25 00:14:45.006747+00	1	2018 SIDiF - ICONLOOP Showcases Blockchain Services	1	[{"added": {}}]	9	1
2	2019-03-25 00:15:17.902984+00	2	Consensus2018	1	[{"added": {}}]	9	1
3	2019-03-25 00:15:40.842941+00	3	Asia Crypto Night (ACN)	1	[{"added": {}}]	9	1
4	2019-03-25 00:16:05.511871+00	4	BIA : Bridges Block Party	1	[{"added": {}}]	9	1
5	2019-03-25 00:16:33.394817+00	5	ICON annual summit 2018 the genesis	1	[{"added": {}}]	9	1
6	2019-03-25 00:16:56.250336+00	6	ICON: Passion to Hyperconnect	1	[{"added": {}}]	9	1
7	2019-03-25 00:19:01.4007+00	1	Key Announcements : Open source	1	[{"added": {}}]	10	1
8	2019-03-25 00:20:23.652318+00	2	Key Announcements : Repurchase	1	[{"added": {}}]	10	1
9	2019-03-25 00:20:51.250126+00	3	Key Announcements : Rebranding	1	[{"added": {}}]	10	1
10	2019-03-25 00:21:44.413379+00	4	Key Announcements from ICON	1	[{"added": {}}]	10	1
11	2019-03-25 00:22:23.129932+00	5	Interview with Min Kim at Consensus2018	1	[{"added": {}}]	10	1
12	2019-03-25 00:23:00.177467+00	6	Interview with JH KIM at Consensus2018	1	[{"added": {}}]	10	1
13	2019-03-25 00:23:40.413941+00	7	Interview with Michael Baeg (CEO of STAYGE ONE)	1	[{"added": {}}]	10	1
14	2019-03-25 00:24:10.491654+00	8	Interview with MK Kim (VP of MECA Casino)	1	[{"added": {}}]	10	1
15	2019-03-25 00:24:34.214202+00	9	Interview with Will Lee (CEO of BlueWhale)	1	[{"added": {}}]	10	1
16	2019-03-25 00:25:03.911311+00	10	Interview with Joon Hong (CEO of weBloc)	1	[{"added": {}}]	10	1
17	2019-03-25 00:25:30.800318+00	11	Interview with Hyun OH (CEO of Deblock)	1	[{"added": {}}]	10	1
18	2019-03-25 00:26:19.059944+00	12	Hello to ICON Network	1	[{"added": {}}]	10	1
19	2019-03-27 05:28:50.77848+00	1	Seoul Metropolitan Government appoints members of its ‘Blockchain Governance Team’ Using ICON’s Public Blockchain	1	[{"added": {}}]	8	1
20	2019-03-27 05:29:06.666737+00	2	ICON Accelerates its Expansion of its Public Blockchain Ecosystem	1	[{"added": {}}]	8	1
21	2019-03-27 05:29:30.563588+00	3	“ICONSENSUS, the Journey Toward Mass Adoption”	1	[{"added": {}}]	8	1
22	2019-03-27 05:30:02.190555+00	4	ICON 4Q Achievements	1	[{"added": {}}]	8	1
23	2019-03-27 05:30:30.102316+00	5	ICON to partner with Tribe Accelerator in Singapore	1	[{"added": {}}]	8	1
24	2019-03-27 05:30:53.361895+00	6	ICON & POSTECH Graduate School of Information Technology Opens ‘Blockchain Platforms and Applications’ Online Course	1	[{"added": {}}]	8	1
25	2019-03-27 05:31:46.208771+00	5	ICON to partner with Tribe Accelerator in Singapore	3		8	1
26	2019-03-27 05:32:13.229702+00	7	ICX, To be listed on BITBOX	1	[{"added": {}}]	8	1
27	2019-03-27 05:32:38.293935+00	8	How ICON will connect & scale Private ICONLOOP Networks	1	[{"added": {}}]	8	1
28	2019-03-27 05:33:04.344054+00	9	ICON Foundation: Addressing the Community	1	[{"added": {}}]	8	1
29	2019-03-27 05:33:29.512628+00	10	ICON 3Q Achievements	1	[{"added": {}}]	8	1
30	2019-03-27 05:33:54.421537+00	11	ICON Selected as aSSIST Masters Course on Blockchain	1	[{"added": {}}]	8	1
31	2019-03-27 05:34:15.650799+00	12	ICON Yellow Paper Officially Released	1	[{"added": {}}]	8	1
32	2019-03-27 05:40:14.81203+00	13	Key Announcement : Rebranding Updates	1	[{"added": {}}]	8	1
33	2019-03-27 05:40:36.065265+00	14	ICONLOOP selected to participate in ‘Cultivating Innovative Youth Talents 2018’	1	[{"added": {}}]	8	1
34	2019-03-27 05:40:58.95558+00	15	Key Announcements Interview	1	[{"added": {}}]	8	1
35	2019-03-27 05:41:24.256099+00	16	ICONLOOP-NEC Selected for the Project: ‘Building the Next Generation Election System’	1	[{"added": {}}]	8	1
36	2019-03-27 05:41:54.289448+00	17	Key Announcements from ICON	1	[{"added": {}}]	8	1
37	2019-03-27 05:42:16.986603+00	18	ICON 2Q achievements	1	[{"added": {}}]	8	1
38	2019-03-27 05:42:37.508101+00	19	Official statement regarding ERC20 ICX transfer error	1	[{"added": {}}]	8	1
39	2019-03-27 05:43:00.200024+00	20	loopchain technology to be applied to Import Customs Clearance Procedure for the Korea Customs Service	1	[{"added": {}}]	8	1
40	2019-03-27 05:43:24.589958+00	21	Token Swap status update	1	[{"added": {}}]	8	1
41	2019-03-27 05:43:45.05314+00	22	ICON 1Q achievements	1	[{"added": {}}]	8	1
42	2019-03-27 05:44:03.480935+00	23	ICX Listed on Upbit	1	[{"added": {}}]	8	1
43	2019-03-27 05:44:19.456461+00	24	ICX Listed on Bithumb	1	[{"added": {}}]	8	1
44	2019-03-27 05:44:43.55078+00	25	Clarification about our partners	1	[{"added": {}}]	8	1
45	2019-03-27 05:45:08.476493+00	26	ICON Annual Summit: The Genesis — A Quick Summary	1	[{"added": {}}]	8	1
46	2019-03-27 05:45:34.197517+00	27	Online Channels Integration and Migration / Community Ambassador Recruiting Notice	1	[{"added": {}}]	8	1
47	2019-03-27 05:45:51.185046+00	28	A Demographic Breakdown of ICON Contributors and Communities	1	[{"added": {}}]	8	1
48	2019-03-27 05:46:19.363646+00	29	ICON 2017 Business Achievements	1	[{"added": {}}]	8	1
49	2019-03-27 05:46:40.970464+00	30	ICON (ICX) to be tradable on Huobi	1	[{"added": {}}]	8	1
50	2019-03-27 05:46:58.522118+00	31	ICON Annual Summit + Mainnet Launch + Release Candidate	1	[{"added": {}}]	8	1
51	2019-03-27 05:47:25.591649+00	32	ICON (ICX) tops ICX/ETH Pairs Trading on Binance	1	[{"added": {}}]	8	1
52	2019-03-27 05:47:46.898274+00	33	ICX Listed on OKEx	1	[{"added": {}}]	8	1
53	2019-03-27 05:48:11.856878+00	34	Token Unlock and Exchange Listing Schedule	1	[{"added": {}}]	8	1
54	2019-03-27 05:48:40.787248+00	35	ICONnect Meetup #2 (Interchain)	1	[{"added": {}}]	8	1
55	2019-03-27 05:49:16.374233+00	36	ICON Pre-Sale Starts!!	1	[{"added": {}}]	8	1
56	2019-03-27 05:49:56.084621+00	37	ICON — Korea’s Online Banking Security Gets First Upgrade in Almost 20 Years	1	[{"added": {}}]	8	1
57	2019-03-27 05:50:36.949257+00	38	[SEOUL ECONOMIC TV] Identification Service for Securities Firms Becomes More Safe and Convenient	1	[{"added": {}}]	8	1
58	2019-03-27 05:58:21.271017+00	1	Could This Blockchain In Korea Be The First To Connect An Entire Country?	1	[{"added": {}}]	7	1
59	2019-03-27 06:04:40.559375+00	2	What Is ICON (ICX)? A Guide to the Global Decentralized Network	1	[{"added": {}}]	7	1
60	2019-03-27 06:05:34.087211+00	2	What Is ICON (ICX)? A Guide to the Global Decentralized Network	2	[{"changed": {"fields": ["news_site"]}}]	7	1
61	2019-03-27 06:07:11.103924+00	3	How ICON (ICX) is Leading Blockchain Development in South Korea	1	[{"added": {}}]	7	1
62	2019-03-27 06:15:02.912656+00	4	Don Tapscott Joins ICON Foundation Board of Advisors	1	[{"added": {}}]	7	1
63	2019-03-27 06:15:44.997929+00	5	Subsidiary of Korean Search Giant Naver Launches Blockchain Venture For Decentralized Apps	1	[{"added": {}}]	7	1
64	2019-03-27 06:17:03.118651+00	6	ICON to EOS: 3 Cryptos Are Leading the Market Recovery	1	[{"added": {}}]	7	1
65	2019-03-27 06:18:11.416314+00	7	ICON Token Swap Underway With ‘No Issues,’ Foundation Says	1	[{"added": {}}]	7	1
66	2019-03-27 06:18:48.282706+00	8	$800 Million: ICON’s Token Swap to Take Place Within 24 Hours	1	[{"added": {}}]	7	1
67	2019-03-27 06:21:13.61496+00	9	ICON Records 23% Gain Again While Crypto Market Sees Gloomy Forecast	1	[{"added": {}}]	7	1
68	2019-03-27 06:22:02.70339+00	10	Crypto Market Rises to $210 Billion, Tokens Like ICON See Large Gains	1	[{"added": {}}]	7	1
69	2019-03-27 06:22:41.605315+00	10	Crypto Market Rises to $210 Billion, Tokens Like ICON See Large Gains	2	[{"changed": {"fields": ["news_logo"]}}]	7	1
70	2019-03-27 06:22:48.88044+00	9	ICON Records 23% Gain Again While Crypto Market Sees Gloomy Forecast	2	[{"changed": {"fields": ["news_logo"]}}]	7	1
71	2019-03-27 06:30:00.934403+00	11	Why I think ICON (ICX) will Reach the Top 10	1	[{"added": {}}]	7	1
72	2019-03-27 06:31:37.636482+00	12	ICON Announces That it Is Accelerating Expansion of Its Public Blockchain Ecosystem	1	[{"added": {}}]	7	1
73	2019-03-27 06:33:06.414471+00	13	Interconnecting Blockchain Project ICON Makes a Push Towards Decentralizing Its Nodes	1	[{"added": {}}]	7	1
74	2019-03-27 06:38:25.177763+00	14	ICON RELEASES NEW SECURITY TOKEN STANDARD	1	[{"added": {}}]	7	1
75	2019-03-27 06:39:25.716117+00	15	[VIDEO TOUR] ICON’S NEW OFFICE LEAVES PLENTY OF ROOM TO EXPAND	1	[{"added": {}}]	7	1
76	2019-03-27 06:39:58.463011+00	16	CLIMBING AWS’S PARTNERSHIP LADDER	1	[{"added": {}}]	7	1
77	2019-03-27 06:40:44.341269+00	17	FIRST DEVELOPERS’ WORKSHOP OF 2019 TEACHES THE BASICS OF ICON DAPP DEVELOPMENT	1	[{"added": {}}]	7	1
78	2019-03-27 06:41:21.321775+00	18	ICON DOMINATES THE KOREAN BLOCKCHAIN SPACE	1	[{"added": {}}]	7	1
79	2019-03-27 06:41:53.508178+00	19	SEOUL GOVERNMENT ISSUES APPOINTMENT LETTERS USING ICON PUBLIC CHAIN	1	[{"added": {}}]	7	1
80	2019-03-27 06:42:21.339027+00	20	THE SELECTION OF P-REPS MARKS THE BEGINNING OF ICONSENSUS	1	[{"added": {}}]	7	1
81	2019-03-27 06:42:52.406669+00	21	ENTERPRISE BLOCKCHAIN ALLIANCES, DEX, DID AND MORE	1	[{"added": {}}]	7	1
82	2019-03-27 06:43:25.056477+00	22	2019: A YEAR OF DEVELOPMENT AND DIFFERENTIATION	1	[{"added": {}}]	7	1
83	2019-03-27 06:43:51.043505+00	23	ICON: A REPUBLIC OF PARTNERSHIPS?	1	[{"added": {}}]	7	1
84	2019-03-27 06:44:32.725045+00	24	AFTER A STRONG 2018, LINK LOOKS TO THE FUTURE	1	[{"added": {}}]	7	1
85	2019-03-27 06:44:59.23376+00	25	ICONLOOP OR ICON?	1	[{"added": {}}]	7	1
86	2019-03-27 08:39:02.177678+00	1	ICONSENSUS: P-Rep Election Q&A	1	[{"added": {}}]	11	1
87	2019-03-27 08:40:22.987219+00	25	ICONLOOP or ICON?	2	[{"changed": {"fields": ["news_title"]}}]	7	1
88	2019-03-27 08:40:57.856077+00	24	After a Strong 2018, LINK Looks to the Future	2	[{"changed": {"fields": ["news_title"]}}]	7	1
89	2019-03-27 08:41:17.685847+00	23	ICON: A Republic of Partnerships?	2	[{"changed": {"fields": ["news_title"]}}]	7	1
90	2019-03-27 08:41:49.337242+00	22	2019: A Year of Development and Differentiation	2	[{"changed": {"fields": ["news_title"]}}]	7	1
91	2019-03-27 08:42:19.812355+00	21	Enterprise Blockchain Alliances, DEX, DID and More	2	[{"changed": {"fields": ["news_title"]}}]	7	1
92	2019-03-27 08:42:57.895437+00	20	The Selection of P-REPS Marks the Beginning of ICONSENSUS	2	[{"changed": {"fields": ["news_title"]}}]	7	1
93	2019-03-27 08:43:48.495461+00	19	Seoul Government Issues Appointment Letters Using ICON Public Chain	2	[{"changed": {"fields": ["news_title"]}}]	7	1
94	2019-03-27 08:44:16.738928+00	18	ICON Dominates the Korean Blockchain Space	2	[{"changed": {"fields": ["news_title"]}}]	7	1
95	2019-03-27 08:45:11.319675+00	17	First Developers' Workshop of 2019 Teaches the Basics of ICON DAPP Development	2	[{"changed": {"fields": ["news_title"]}}]	7	1
96	2019-03-27 08:45:31.610094+00	16	Climbing AWS’s Partnership Ladder	2	[{"changed": {"fields": ["news_title"]}}]	7	1
97	2019-03-27 08:46:14.733737+00	15	[Video Tour] ICON’S New Office Leaves Plenty of Room to Expand	2	[{"changed": {"fields": ["news_title"]}}]	7	1
98	2019-03-27 08:46:39.968846+00	14	ICON Releases New Security Token Standard	2	[{"changed": {"fields": ["news_title"]}}]	7	1
99	2019-04-03 07:41:30.908877+00	1	ICON DAPP From A-Z Part 1: Tools & Environment	1	[{"added": {}}]	12	1
100	2019-04-03 07:42:18.642161+00	2	ICON DAPP From A-Z Part 2: SCORE	1	[{"added": {}}]	12	1
101	2019-04-03 07:43:15.449117+00	3	ICON DAPP From A-Z Part 3: ICON Dice Roll DAPP	1	[{"added": {}}]	12	1
102	2019-04-03 07:44:07.819371+00	4	ICON Workshop — Voting DAPP	1	[{"added": {}}]	12	1
103	2019-04-03 07:44:59.298034+00	5	ICON Workshop — ICONex Web Connect	1	[{"added": {}}]	12	1
104	2019-04-03 08:26:23.832014+00	1	How To Setup A ICON Wallet	1	[{"added": {}}]	13	1
105	2019-04-03 08:52:28.169762+00	2	erew	1	[{"added": {}}]	13	1
106	2019-04-03 08:52:35.292751+00	3	2ff2	1	[{"added": {}}]	13	1
107	2019-04-03 08:52:40.397407+00	4	wef	1	[{"added": {}}]	13	1
108	2019-04-03 08:53:00.126637+00	4	wef	3		13	1
109	2019-04-03 08:53:00.129557+00	3	2ff2	3		13	1
110	2019-04-03 08:53:00.131159+00	2	erew	3		13	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	contenttypes	contenttype
6	sessions	session
7	resources	news
8	resources	press
9	resources	videoevents
10	resources	videointerviews
11	resources	videoiconsensus
12	developers	blogtutorial
13	developers	videotutorial
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2019-03-18 12:15:59.067367+00
2	auth	0001_initial	2019-03-18 12:15:59.137067+00
3	admin	0001_initial	2019-03-18 12:15:59.156605+00
4	admin	0002_logentry_remove_auto_add	2019-03-18 12:15:59.165889+00
5	admin	0003_logentry_add_action_flag_choices	2019-03-18 12:15:59.17495+00
6	contenttypes	0002_remove_content_type_name	2019-03-18 12:15:59.194427+00
7	auth	0002_alter_permission_name_max_length	2019-03-18 12:15:59.200359+00
8	auth	0003_alter_user_email_max_length	2019-03-18 12:15:59.211345+00
9	auth	0004_alter_user_username_opts	2019-03-18 12:15:59.220049+00
10	auth	0005_alter_user_last_login_null	2019-03-18 12:15:59.229667+00
11	auth	0006_require_contenttypes_0002	2019-03-18 12:15:59.231467+00
12	auth	0007_alter_validators_add_error_messages	2019-03-18 12:15:59.240067+00
13	auth	0008_alter_user_username_max_length	2019-03-18 12:15:59.252272+00
14	auth	0009_alter_user_last_name_max_length	2019-03-18 12:15:59.262734+00
15	resources	0001_initial	2019-03-18 12:15:59.274943+00
16	sessions	0001_initial	2019-03-18 12:15:59.283453+00
17	resources	0002_videoevents_videointerviews	2019-03-19 12:04:22.6368+00
18	resources	0003_videoiconsensus	2019-03-27 08:37:47.942217+00
19	developers	0001_initial	2019-04-03 07:40:31.639198+00
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
65l4jh0t901if8uqvilm8rxo6ja0v83n	MmNhY2U1MTdiYzk1OWViMzU4NmNkN2NkZWUyNDc5NGE1Yjk5YjQzNjp7Im5pZ2h0bW9kZSI6ZmFsc2V9	2019-04-01 22:59:46.849693+00
qabyk3dqpf8sljwfjya5xmf4imlyzgv4	MmNhY2U1MTdiYzk1OWViMzU4NmNkN2NkZWUyNDc5NGE1Yjk5YjQzNjp7Im5pZ2h0bW9kZSI6ZmFsc2V9	2019-04-01 23:08:17.887587+00
ptiqbi23dz9ah7olmm3u9hel7kunu9w5	MmNhY2U1MTdiYzk1OWViMzU4NmNkN2NkZWUyNDc5NGE1Yjk5YjQzNjp7Im5pZ2h0bW9kZSI6ZmFsc2V9	2019-04-02 02:40:02.410183+00
1parb7im61xtsblxfq9c91r6u11m2ku5	ZGU5YTY5NWNjMjJhN2I1NmU2YTA4YTBmZTQ4ZjNjMWQ0Njk1ODQyYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI3ZTk2OGM2ODcxZGJiM2NlNGQ0MGZkYjQyNTAwMjA0OGJlYmM4ZTEwIiwibmlnaHRtb2RlIjpmYWxzZSwiX2xhbmd1YWdlIjoiZW4iLCJuYXZiYXIiOnRydWV9	2019-04-10 07:42:48.492322+00
cq3dk80iwpn8sgh8o1pm3sehac7e3zkw	NmRiMWE4ZDhlZWMyNDRjMTRlZGU5ZTJkNjEwYzY4YmIyMThjYjBiMzp7Im5pZ2h0bW9kZSI6ZmFsc2UsIm5hdmJhciI6dHJ1ZX0=	2019-04-12 07:11:19.968415+00
iddeypj8jy55yazrrjtxnhh1ctnqtqg7	ODYyMjM4NWNiMDYxMTJkZWU0YzM1YjkzZjMxNDUxYjcwOWM3ZjA3NTp7Im5pZ2h0bW9kZSI6dHJ1ZSwibmF2YmFyIjp0cnVlfQ==	2019-04-13 08:47:18.510472+00
lzuqubap3otwm4wys2xchomvjt1q2jt1	NmRiMWE4ZDhlZWMyNDRjMTRlZGU5ZTJkNjEwYzY4YmIyMThjYjBiMzp7Im5pZ2h0bW9kZSI6ZmFsc2UsIm5hdmJhciI6dHJ1ZX0=	2019-04-15 06:04:13.66578+00
h8g75010ut4ank8dxye36nx9hdaov8ij	MTQ4ZDhiOTFiNzg3ZWU0NWMxOWFlZWQ0ZDgzOTA0ZTUxMzUxMmQ0Yzp7Im5pZ2h0bW9kZSI6ZmFsc2UsIm5hdmJhciI6dHJ1ZSwiX2F1dGhfdXNlcl9pZCI6IjEiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaGFzaCI6IjdlOTY4YzY4NzFkYmIzY2U0ZDQwZmRiNDI1MDAyMDQ4YmViYzhlMTAifQ==	2019-04-17 07:46:16.810537+00
i2bmeycfbgjkhideios58utgptu7jbtj	ODYyMjM4NWNiMDYxMTJkZWU0YzM1YjkzZjMxNDUxYjcwOWM3ZjA3NTp7Im5pZ2h0bW9kZSI6dHJ1ZSwibmF2YmFyIjp0cnVlfQ==	2019-04-17 10:39:50.788178+00
xkrlalra1q84e89eghioq70jz1i7kzrh	NmRiMWE4ZDhlZWMyNDRjMTRlZGU5ZTJkNjEwYzY4YmIyMThjYjBiMzp7Im5pZ2h0bW9kZSI6ZmFsc2UsIm5hdmJhciI6dHJ1ZX0=	2019-04-18 03:14:56.417536+00
\.


--
-- Data for Name: resources_news; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.resources_news (id, news_logo, news_site, news_title, news_link, news_date, news_display, created_at, updated_at) FROM stdin;
1	news/billboard_XylwJXJ.jpg	Forbes	Could This Blockchain In Korea Be The First To Connect An Entire Country?	https://www.forbes.com/sites/elaineramirez/2017/08/09/dayli-icon-blockchain-south-korea/#3cb752cb25a7	2017-08-09	t	2019-03-27 05:58:21.269469+00	2019-03-27 05:58:21.269495+00
2	news/coincentral.jpg	Coin Central	What Is ICON (ICX)? A Guide to the Global Decentralized Network	https://coincentral.com/what-is-icon-icx/	2018-11-19	t	2019-03-27 06:04:40.55797+00	2019-03-27 06:05:34.085642+00
3	news/dapplife.png	Dapp Life	How ICON (ICX) is Leading Blockchain Development in South Korea	https://dapplife.com/how-icon-icx-is-leading-blockchain-development-in-south-korea/	2019-02-05	t	2019-03-27 06:07:11.102856+00	2019-03-27 06:07:11.102877+00
4	news/cointelegraph.jpg	Coin Telegraph	Don Tapscott Joins ICON Foundation Board of Advisors	https://cointelegraph.com/press-releases/don-tapscott-joins-icon-foundation-board-of-advisors	2017-09-13	t	2019-03-27 06:15:02.911422+00	2019-03-27 06:15:02.911445+00
5	news/cointelegraph_Z7r84wH.jpg	Coin Telegraph	Subsidiary of Korean Search Giant Naver Launches Blockchain Venture For Decentralized Apps	https://cointelegraph.com/news/subsidiary-of-korean-search-giant-naver-launches-blockchain-venture-for-decentralized-apps	2018-03-16	t	2019-03-27 06:15:44.99677+00	2019-03-27 06:15:44.996793+00
6	news/coindesk_0xAhuBa.jpg	Coin Desk	ICON to EOS: 3 Cryptos Are Leading the Market Recovery	https://www.coindesk.com/from-icon-to-eos-these-coins-are-leading-the-crypto-market-rebound	2018-03-23	t	2019-03-27 06:17:03.117472+00	2019-03-27 06:17:03.117494+00
7	news/coindesk_Ti7Ux1t.jpg	Coin Desk	ICON Token Swap Underway With ‘No Issues,’ Foundation Says	https://www.coindesk.com/icon-token-swap-underway-no-issues-foundation-says	2018-06-22	t	2019-03-27 06:18:11.415294+00	2019-03-27 06:18:11.415316+00
8	news/coindesk_EEEqonZ.jpg	Coin Desk	$800 Million: ICON’s Token Swap to Take Place Within 24 Hours	https://www.coindesk.com/800-million-icons-token-swap-launching-within-24-hours	2018-06-20	t	2019-03-27 06:18:48.281465+00	2019-03-27 06:18:48.281499+00
10	news/ccn_meH2Rfa.png	CCN	Crypto Market Rises to $210 Billion, Tokens Like ICON See Large Gains	https://www.ccn.com/crypto-market-rises-to-210-billion-tokens-like-icon-see-large-gains	2018-08-24	t	2019-03-27 06:22:02.701728+00	2019-03-27 06:22:41.602387+00
9	news/ccn_Vwdov2a.png	CCN	ICON Records 23% Gain Again While Crypto Market Sees Gloomy Forecast	https://www.ccn.com/icon-records-23-gain-again-while-crypto-market-sees-gloomy-forecast	2018-08-27	t	2019-03-27 06:21:13.613846+00	2019-03-27 06:22:48.878952+00
11	news/zycrypto.jpg	ZyCrypto	Why I think ICON (ICX) will Reach the Top 10	https://zycrypto.com/why-i-think-icon-icx-will-reach-the-top-10/	2019-02-09	t	2019-03-27 06:30:00.933076+00	2019-03-27 06:30:00.933101+00
12	news/blokt.jpg	Blokt	ICON Announces That it Is Accelerating Expansion of Its Public Blockchain Ecosystem	https://blokt.com/news/icon-announces-that-it-is-accelerating-expansion-of-its-public-blockchain-ecosystem	2019-01-18	t	2019-03-27 06:31:37.635316+00	2019-03-27 06:31:37.635338+00
13	news/cryptoslate.jpg	Crypto Slate	Interconnecting Blockchain Project ICON Makes a Push Towards Decentralizing Its Nodes	https://cryptoslate.com/icon-greater-decentralization/	2019-01-19	t	2019-03-27 06:33:06.413274+00	2019-03-27 06:33:06.413297+00
25	news/theiconist_Mg1EHV0.png	The Iconist	ICONLOOP or ICON?	https://theicon.ist/2019/01/10/iconloop-or-icon/	2019-01-10	t	2019-03-27 06:44:59.23216+00	2019-03-27 08:40:22.985052+00
24	news/theiconist_LlzFuAC.png	The Iconist	After a Strong 2018, LINK Looks to the Future	https://theicon.ist/2019/01/11/after-a-strong-2018-link-looks-to-the-future/	2019-01-11	t	2019-03-27 06:44:32.723921+00	2019-03-27 08:40:57.854615+00
23	news/theiconist_eykCkMX.png	The Iconist	ICON: A Republic of Partnerships?	https://theicon.ist/2019/01/14/icon-a-republic-of-partnerships/	2019-01-14	t	2019-03-27 06:43:51.042337+00	2019-03-27 08:41:17.68363+00
22	news/theiconist_440DX1I.png	The Iconist	2019: A Year of Development and Differentiation	https://theicon.ist/2019/01/17/2019-a-year-of-development-and-differentiation/	2019-01-17	t	2019-03-27 06:43:25.054899+00	2019-03-27 08:41:49.335639+00
21	news/theiconist_itRYstb.png	The Iconist	Enterprise Blockchain Alliances, DEX, DID and More	https://theicon.ist/2019/01/28/enterprise-blockchain-alliances-dex-did-and-more/	2019-01-28	t	2019-03-27 06:42:52.405543+00	2019-03-27 08:42:19.811077+00
20	news/theiconist_bS94YoD.png	The Iconist	The Selection of P-REPS Marks the Beginning of ICONSENSUS	https://theicon.ist/2019/02/07/the-selection-of-p-reps-marks-the-beginning-of-iconsensus/	2019-02-07	t	2019-03-27 06:42:21.337468+00	2019-03-27 08:42:57.894212+00
19	news/theiconist_J2pK6y3.png	The Iconist	Seoul Government Issues Appointment Letters Using ICON Public Chain	https://theicon.ist/2019/02/08/seoul-government-issues-appointment-letters-using-icon-public-chain/	2019-02-08	t	2019-03-27 06:41:53.507118+00	2019-03-27 08:43:48.494149+00
18	news/theiconist_73GdNw2.png	The Iconist	ICON Dominates the Korean Blockchain Space	https://theicon.ist/2019/02/11/icon-dominates-the-korean-blockchain-space/	2019-02-11	t	2019-03-27 06:41:21.320691+00	2019-03-27 08:44:16.735724+00
17	news/theiconist_XPZ3WnC.png	The Iconist	First Developers' Workshop of 2019 Teaches the Basics of ICON DAPP Development	https://theicon.ist/2019/02/18/first-developers-workshop-of-2019-teaches-the-basics-of-icon-dapp-development/	2019-02-18	t	2019-03-27 06:40:44.340303+00	2019-03-27 08:45:11.318153+00
16	news/theiconist_x1awCVX.png	The Iconist	Climbing AWS’s Partnership Ladder	https://theicon.ist/2019/02/25/climbing-awss-partnership-ladder/	2019-02-25	t	2019-03-27 06:39:58.461426+00	2019-03-27 08:45:31.608655+00
15	news/theiconist_O9Aetyf.png	The Iconist	[Video Tour] ICON’S New Office Leaves Plenty of Room to Expand	https://theicon.ist/2019/02/26/icons-new-office-leaves-plenty-of-room-to-expand/	2019-02-26	t	2019-03-27 06:39:25.715044+00	2019-03-27 08:46:14.73195+00
14	news/theiconist.png	The Iconist	ICON Releases New Security Token Standard	https://theicon.ist/2019/03/17/icon-releases-new-security-token-standard/	2019-03-17	t	2019-03-27 06:38:25.176617+00	2019-03-27 08:46:39.967266+00
\.


--
-- Data for Name: resources_press; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.resources_press (id, press_title, press_link, press_date, created_at, updated_at) FROM stdin;
1	Seoul Metropolitan Government appoints members of its ‘Blockchain Governance Team’ Using ICON’s Public Blockchain	https://medium.com/helloiconworld/seoul-metropolitan-government-appoints-members-of-its-blockchain-governance-team-using-icon-s-8b84cf78117e	2019-02-08	2019-03-27 05:28:50.77675+00	2019-03-27 05:28:50.776774+00
2	ICON Accelerates its Expansion of its Public Blockchain Ecosystem	https://medium.com/helloiconworld/icon-accelerates-its-expansion-of-its-public-blockchain-ecosystem-40dfa2958d6c	2019-01-18	2019-03-27 05:29:06.665826+00	2019-03-27 05:29:06.665849+00
3	“ICONSENSUS, the Journey Toward Mass Adoption”	https://medium.com/helloiconworld/iconsensus-the-journey-toward-mass-adoption-3fbc7dd44541	2019-01-17	2019-03-27 05:29:30.562694+00	2019-03-27 05:29:30.562715+00
4	ICON 4Q Achievements	https://medium.com/helloiconworld/icon-4q-achievements-836df5cad4aa	2018-12-31	2019-03-27 05:30:02.188982+00	2019-03-27 05:30:02.189015+00
6	ICON & POSTECH Graduate School of Information Technology Opens ‘Blockchain Platforms and Applications’ Online Course	https://medium.com/helloiconworld/icon-postech-graduate-school-of-information-technology-opens-blockchain-platforms-and-57c391c15030	2018-12-03	2019-03-27 05:30:53.360891+00	2019-03-27 05:30:53.360912+00
7	ICX, To be listed on BITBOX	https://medium.com/helloiconworld/icx-to-be-listed-on-bitbox-adf332189779	2018-11-27	2019-03-27 05:32:13.228321+00	2019-03-27 05:32:13.228356+00
8	How ICON will connect & scale Private ICONLOOP Networks	https://medium.com/helloiconworld/how-icon-will-connect-scale-private-iconloop-networks-76fe64ecce21	2018-11-21	2019-03-27 05:32:38.293027+00	2019-03-27 05:32:38.293049+00
9	ICON Foundation: Addressing the Community	https://medium.com/helloiconworld/icon-foundation-addressing-the-community-7cec5e852d42	2018-11-15	2019-03-27 05:33:04.342922+00	2019-03-27 05:33:04.342945+00
10	ICON 3Q Achievements	https://medium.com/helloiconworld/icon-3q-achievements-8c42ea798a0b	2018-10-04	2019-03-27 05:33:29.511627+00	2019-03-27 05:33:29.511648+00
11	ICON Selected as aSSIST Masters Course on Blockchain	https://medium.com/helloiconworld/icon-selected-as-assist-masters-course-on-blockchain-53db0e2eecae	2018-09-28	2019-03-27 05:33:54.420559+00	2019-03-27 05:33:54.420582+00
12	ICON Yellow Paper Officially Released	https://medium.com/helloiconworld/icon-yellow-paper-officially-released-e311a3db91d	2018-09-13	2019-03-27 05:34:15.649496+00	2019-03-27 05:34:15.649532+00
13	Key Announcement : Rebranding Updates	https://medium.com/helloiconworld/key-announcement-rebranding-updates-18a8b9c2943b	2018-09-03	2019-03-27 05:40:14.811089+00	2019-03-27 05:40:14.81111+00
14	ICONLOOP selected to participate in ‘Cultivating Innovative Youth Talents 2018’	https://medium.com/helloiconworld/iconloop-selected-to-participate-in-cultivating-innovative-youth-talents-2018-c3f3dfea750	2018-08-27	2019-03-27 05:40:36.064285+00	2019-03-27 05:40:36.064306+00
15	Key Announcements Interview	https://medium.com/helloiconworld/key-announcements-interview-442b9e1c3a2	2018-08-21	2019-03-27 05:40:58.954481+00	2019-03-27 05:40:58.954504+00
16	ICONLOOP-NEC Selected for the Project: ‘Building the Next Generation Election System’	https://medium.com/helloiconworld/iconloop-nec-selected-for-the-project-building-the-next-generation-election-system-c701bcfbed7f	2018-08-21	2019-03-27 05:41:24.255178+00	2019-03-27 05:41:24.255211+00
17	Key Announcements from ICON	https://medium.com/helloiconworld/key-announcements-from-icon-8ea0f5a18d6f	2018-08-07	2019-03-27 05:41:54.288551+00	2019-03-27 05:41:54.288572+00
18	ICON 2Q achievements	https://medium.com/helloiconworld/icon-2q-achievements-f11f3bdd77e0	2018-07-03	2019-03-27 05:42:16.985616+00	2019-03-27 05:42:16.985639+00
19	Official statement regarding ERC20 ICX transfer error	https://medium.com/helloiconworld/official-statement-regarding-erc20-icx-transfer-error-94a9fc9d69c3	2018-07-16	2019-03-27 05:42:37.506599+00	2019-03-27 05:42:37.506635+00
20	loopchain technology to be applied to Import Customs Clearance Procedure for the Korea Customs Service	https://medium.com/helloiconworld/loopchain-technology-to-be-applied-to-import-customs-clearance-procedure-for-the-korea-customs-9a7572b3c484	2018-06-05	2019-03-27 05:43:00.199054+00	2019-03-27 05:43:00.199085+00
21	Token Swap status update	https://medium.com/helloiconworld/token-swap-status-update-9a41c8448006	2018-04-04	2019-03-27 05:43:24.588969+00	2019-03-27 05:43:24.588991+00
22	ICON 1Q achievements	https://medium.com/helloiconworld/icon-1q-achievements-31a87bd51ea7	2018-03-30	2019-03-27 05:43:45.052131+00	2019-03-27 05:43:45.052153+00
23	ICX Listed on Upbit	https://medium.com/helloiconworld/icx-listed-on-upbit-9af19391b17f	2018-03-22	2019-03-27 05:44:03.479729+00	2019-03-27 05:44:03.479752+00
24	ICX Listed on Bithumb	https://medium.com/helloiconworld/icx-listed-on-bithumb-c721a143b073	2018-03-21	2019-03-27 05:44:19.455506+00	2019-03-27 05:44:19.455527+00
25	Clarification about our partners	https://medium.com/helloiconworld/clarification-about-our-partners-8f1a1788c122	2018-02-01	2019-03-27 05:44:43.549819+00	2019-03-27 05:44:43.549842+00
26	ICON Annual Summit: The Genesis — A Quick Summary	https://medium.com/helloiconworld/icon-annual-summit-the-genesis-a-quick-summary-448d3e5d7016	2018-01-31	2019-03-27 05:45:08.475367+00	2019-03-27 05:45:08.47539+00
27	Online Channels Integration and Migration / Community Ambassador Recruiting Notice	https://medium.com/helloiconworld/online-channels-integration-and-migration-community-ambassador-recruiting-notice-4a1fa131a064	2018-01-12	2019-03-27 05:45:34.196526+00	2019-03-27 05:45:34.196549+00
28	A Demographic Breakdown of ICON Contributors and Communities	https://medium.com/helloiconworld/a-demographic-breakdown-of-icon-contributors-and-communities-fc20c42c5457	2018-01-09	2019-03-27 05:45:51.183973+00	2019-03-27 05:45:51.183996+00
29	ICON 2017 Business Achievements	https://medium.com/helloiconworld/icon-2017-business-achievements-b2e3b2b8fd83	2017-12-29	2019-03-27 05:46:19.362712+00	2019-03-27 05:46:19.362734+00
30	ICON (ICX) to be tradable on Huobi	https://medium.com/helloiconworld/icon-icx-to-be-tradable-on-huobi-4a13570a74bb	2017-12-28	2019-03-27 05:46:40.969298+00	2019-03-27 05:46:40.969321+00
31	ICON Annual Summit + Mainnet Launch + Release Candidate	https://medium.com/helloiconworld/icon-annual-summit-mainnet-launch-release-candidate-6a6c5b5d86da	2017-12-27	2019-03-27 05:46:58.521171+00	2019-03-27 05:46:58.521195+00
32	ICON (ICX) tops ICX/ETH Pairs Trading on Binance	https://medium.com/helloiconworld/icon-icx-tops-icx-eth-pairs-trading-on-binance-d4d383814859	2017-12-19	2019-03-27 05:47:25.590783+00	2019-03-27 05:47:25.590804+00
33	ICX Listed on OKEx	https://medium.com/helloiconworld/icx-listed-on-okex-a90abb6783b4	2017-12-18	2019-03-27 05:47:46.8971+00	2019-03-27 05:47:46.897124+00
34	Token Unlock and Exchange Listing Schedule	https://medium.com/helloiconworld/token-unlock-and-exchange-listing-schedule-cc02068569d	2017-12-16	2019-03-27 05:48:11.855625+00	2019-03-27 05:48:11.855656+00
35	ICONnect Meetup #2 (Interchain)	https://medium.com/helloiconworld/iconnect-meetup-2-interchain-e8c673657d77	2017-12-06	2019-03-27 05:48:40.786093+00	2019-03-27 05:48:40.786116+00
36	ICON Pre-Sale Starts!!	https://medium.com/helloiconworld/icon-pre-sale-starts-1f44cd63e085	2017-09-20	2019-03-27 05:49:16.373264+00	2019-03-27 05:49:16.373285+00
37	ICON — Korea’s Online Banking Security Gets First Upgrade in Almost 20 Years	https://medium.com/helloiconworld/icon-koreas-online-banking-security-gets-first-upgrade-in-almost-20-years-4d36f5ac31f1	2017-11-02	2019-03-27 05:49:56.083179+00	2019-03-27 05:49:56.083214+00
38	[SEOUL ECONOMIC TV] Identification Service for Securities Firms Becomes More Safe and Convenient	https://medium.com/helloiconworld/seoul-economic-tv-identification-service-for-securities-firms-becomes-more-safe-and-convenient-7b7de7b8e95f	2017-10-26	2019-03-27 05:50:36.948071+00	2019-03-27 05:50:36.948095+00
\.


--
-- Data for Name: resources_videoevents; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.resources_videoevents (id, video_events_title, video_events_link, video_events_date, created_at, updated_at) FROM stdin;
1	2018 SIDiF - ICONLOOP Showcases Blockchain Services	https://www.youtube.com/watch?v=IrdEJQb7X_4	2018-11-05	2019-03-25 00:14:45.003828+00	2019-03-25 00:14:45.003862+00
2	Consensus2018	https://www.youtube.com/watch?v=B0tmKDdMMW0	2018-06-27	2019-03-25 00:15:17.902115+00	2019-03-25 00:15:17.902137+00
3	Asia Crypto Night (ACN)	https://www.youtube.com/watch?v=hO_9FrJYaW0	2018-06-27	2019-03-25 00:15:40.84199+00	2019-03-25 00:15:40.842016+00
4	BIA : Bridges Block Party	https://www.youtube.com/watch?v=I6zHSExEiUY	2018-06-24	2019-03-25 00:16:05.510869+00	2019-03-25 00:16:05.510892+00
5	ICON annual summit 2018 the genesis	https://www.youtube.com/watch?v=gOF0QljFyHQ	2018-01-31	2019-03-25 00:16:33.393837+00	2019-03-25 00:16:33.39386+00
6	ICON: Passion to Hyperconnect	https://www.youtube.com/watch?v=ZgaAovoV_Dk	2018-01-11	2019-03-25 00:16:56.249325+00	2019-03-25 00:16:56.249433+00
\.


--
-- Data for Name: resources_videoiconsensus; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.resources_videoiconsensus (id, video_iconsensus_title, video_iconsensus_link, video_iconsensus_date, created_at, updated_at) FROM stdin;
1	ICONSENSUS: P-Rep Election Q&A	https://www.youtube.com/watch?v=MWElxwfql0Y	2019-03-22	2019-03-27 08:39:02.175962+00	2019-03-27 08:39:02.175987+00
\.


--
-- Data for Name: resources_videointerviews; Type: TABLE DATA; Schema: public; Owner: iconcommunityuser
--

COPY public.resources_videointerviews (id, video_interviews_title, video_interviews_link, video_interviews_date, created_at, updated_at) FROM stdin;
1	Key Announcements : Open source	https://www.youtube.com/watch?v=J9C8AJHgfEI	2018-08-31	2019-03-25 00:19:01.399551+00	2019-03-25 00:19:01.399574+00
2	Key Announcements : Repurchase	https://www.youtube.com/watch?v=keDitkWssv8	2018-08-28	2019-03-25 00:20:23.651192+00	2019-03-25 00:20:23.651215+00
3	Key Announcements : Rebranding	https://www.youtube.com/watch?v=EKGEuP6FHAE	2018-08-24	2019-03-25 00:20:51.249111+00	2019-03-25 00:20:51.249134+00
4	Key Announcements from ICON	https://www.youtube.com/watch?v=7D3l2HaXRAY	2018-08-20	2019-03-25 00:21:44.412221+00	2019-03-25 00:21:44.412245+00
5	Interview with Min Kim at Consensus2018	https://www.youtube.com/watch?v=OmzOPkH-ckc	2018-07-03	2019-03-25 00:22:23.128775+00	2019-03-25 00:22:23.128807+00
6	Interview with JH KIM at Consensus2018	https://www.youtube.com/watch?v=QgKny3uwZ-U	2018-06-24	2019-03-25 00:23:00.17619+00	2019-03-25 00:23:00.176214+00
7	Interview with Michael Baeg (CEO of STAYGE ONE)	https://www.youtube.com/watch?v=sQgGGv243D0	2018-07-23	2019-03-25 00:23:40.412802+00	2019-03-25 00:23:40.412826+00
8	Interview with MK Kim (VP of MECA Casino)	https://www.youtube.com/watch?v=kBXNzpyCQNI	2018-07-18	2019-03-25 00:24:10.490486+00	2019-03-25 00:24:10.49051+00
9	Interview with Will Lee (CEO of BlueWhale)	https://www.youtube.com/watch?v=skh1MNEA9PI	2018-07-18	2019-03-25 00:24:34.213262+00	2019-03-25 00:24:34.213285+00
10	Interview with Joon Hong (CEO of weBloc)	https://www.youtube.com/watch?v=N5RBKd_KdXA	2018-07-05	2019-03-25 00:25:03.910311+00	2019-03-25 00:25:03.910334+00
11	Interview with Hyun OH (CEO of Deblock)	https://www.youtube.com/watch?v=N7xladkHYtI	2018-07-05	2019-03-25 00:25:30.799272+00	2019-03-25 00:25:30.799294+00
12	Hello to ICON Network	https://www.youtube.com/watch?v=QlAcZbaCebE	2017-08-01	2019-03-25 00:26:19.05897+00	2019-03-25 00:26:19.058992+00
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 52, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: developers_blogtutorial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.developers_blogtutorial_id_seq', 5, true);


--
-- Name: developers_videotutorial_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.developers_videotutorial_id_seq', 4, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 110, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 13, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 19, true);


--
-- Name: resources_news_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.resources_news_id_seq', 25, true);


--
-- Name: resources_press_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.resources_press_id_seq', 38, true);


--
-- Name: resources_videoevents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.resources_videoevents_id_seq', 6, true);


--
-- Name: resources_videoiconsensus_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.resources_videoiconsensus_id_seq', 1, true);


--
-- Name: resources_videointerviews_id_seq; Type: SEQUENCE SET; Schema: public; Owner: iconcommunityuser
--

SELECT pg_catalog.setval('public.resources_videointerviews_id_seq', 12, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: developers_blogtutorial developers_blogtutorial_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.developers_blogtutorial
    ADD CONSTRAINT developers_blogtutorial_pkey PRIMARY KEY (id);


--
-- Name: developers_videotutorial developers_videotutorial_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.developers_videotutorial
    ADD CONSTRAINT developers_videotutorial_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: resources_news resources_news_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_news
    ADD CONSTRAINT resources_news_pkey PRIMARY KEY (id);


--
-- Name: resources_press resources_press_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_press
    ADD CONSTRAINT resources_press_pkey PRIMARY KEY (id);


--
-- Name: resources_videoevents resources_videoevents_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_videoevents
    ADD CONSTRAINT resources_videoevents_pkey PRIMARY KEY (id);


--
-- Name: resources_videoiconsensus resources_videoiconsensus_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_videoiconsensus
    ADD CONSTRAINT resources_videoiconsensus_pkey PRIMARY KEY (id);


--
-- Name: resources_videointerviews resources_videointerviews_pkey; Type: CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.resources_videointerviews
    ADD CONSTRAINT resources_videointerviews_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: iconcommunityuser
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: iconcommunityuser
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

