--
-- PostgreSQL database dump
--

-- Dumped from database version 12.10 (Ubuntu 12.10-1.pgdg20.04+1)
-- Dumped by pg_dump version 12.10 (Ubuntu 12.10-1.pgdg20.04+1)

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
-- Name: agreement_statuses; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.agreement_statuses (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.agreement_statuses OWNER TO kyrsa4;

--
-- Name: agreement_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.agreement_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agreement_statuses_id_seq OWNER TO kyrsa4;

--
-- Name: agreement_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.agreement_statuses_id_seq OWNED BY public.agreement_statuses.id;


--
-- Name: agreements; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.agreements (
    id integer NOT NULL,
    application_id integer NOT NULL,
    realtor_id integer NOT NULL,
    housing_id integer NOT NULL,
    agreement_status_id integer NOT NULL,
    create_at timestamp without time zone NOT NULL
);


ALTER TABLE public.agreements OWNER TO kyrsa4;

--
-- Name: agreements_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.agreements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.agreements_id_seq OWNER TO kyrsa4;

--
-- Name: agreements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.agreements_id_seq OWNED BY public.agreements.id;


--
-- Name: application_statuses; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.application_statuses (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.application_statuses OWNER TO kyrsa4;

--
-- Name: application_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.application_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.application_statuses_id_seq OWNER TO kyrsa4;

--
-- Name: application_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.application_statuses_id_seq OWNED BY public.application_statuses.id;


--
-- Name: applications; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.applications (
    id integer NOT NULL,
    create_at timestamp without time zone NOT NULL,
    fio character varying(100),
    phone_number character varying(15) NOT NULL,
    email character varying(120),
    application_status_id integer NOT NULL
);


ALTER TABLE public.applications OWNER TO kyrsa4;

--
-- Name: applications_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.applications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.applications_id_seq OWNER TO kyrsa4;

--
-- Name: applications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.applications_id_seq OWNED BY public.applications.id;


--
-- Name: building_statuses; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.building_statuses (
    id integer NOT NULL,
    status character varying(20) NOT NULL
);


ALTER TABLE public.building_statuses OWNER TO kyrsa4;

--
-- Name: building_statuses_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.building_statuses_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.building_statuses_id_seq OWNER TO kyrsa4;

--
-- Name: building_statuses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.building_statuses_id_seq OWNED BY public.building_statuses.id;


--
-- Name: complexes; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.complexes (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    district_id integer NOT NULL,
    photo_id integer,
    expire_date character varying(15)
);


ALTER TABLE public.complexes OWNER TO kyrsa4;

--
-- Name: complexes_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.complexes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.complexes_id_seq OWNER TO kyrsa4;

--
-- Name: complexes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.complexes_id_seq OWNED BY public.complexes.id;


--
-- Name: districts; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.districts (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.districts OWNER TO kyrsa4;

--
-- Name: districts_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.districts_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.districts_id_seq OWNER TO kyrsa4;

--
-- Name: districts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.districts_id_seq OWNED BY public.districts.id;


--
-- Name: housing_communications; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.housing_communications (
    housing_id integer NOT NULL,
    central_water boolean,
    garbage_chute boolean,
    gas boolean,
    central_heating boolean
);


ALTER TABLE public.housing_communications OWNER TO kyrsa4;

--
-- Name: housing_options; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.housing_options (
    housing_id integer NOT NULL,
    mortgage boolean,
    mat_capital boolean,
    installment_plan boolean,
    dkp boolean
);


ALTER TABLE public.housing_options OWNER TO kyrsa4;

--
-- Name: housing_types; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.housing_types (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);


ALTER TABLE public.housing_types OWNER TO kyrsa4;

--
-- Name: housing_types_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.housing_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.housing_types_id_seq OWNER TO kyrsa4;

--
-- Name: housing_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.housing_types_id_seq OWNED BY public.housing_types.id;


--
-- Name: housings; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.housings (
    id integer NOT NULL,
    address character varying(240) NOT NULL,
    price bigint NOT NULL,
    square bigint NOT NULL,
    complex_id integer NOT NULL,
    housing_type_id integer NOT NULL,
    building_status_id integer NOT NULL,
    photo_id integer
);


ALTER TABLE public.housings OWNER TO kyrsa4;

--
-- Name: housings_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.housings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.housings_id_seq OWNER TO kyrsa4;

--
-- Name: housings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.housings_id_seq OWNED BY public.housings.id;


--
-- Name: photos; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.photos (
    id integer NOT NULL,
    url character varying(100) NOT NULL
);


ALTER TABLE public.photos OWNER TO kyrsa4;

--
-- Name: photos_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.photos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.photos_id_seq OWNER TO kyrsa4;

--
-- Name: photos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.photos_id_seq OWNED BY public.photos.id;


--
-- Name: realtors; Type: TABLE; Schema: public; Owner: kyrsa4
--

CREATE TABLE public.realtors (
    id integer NOT NULL,
    fio character varying(100) NOT NULL,
    login character varying(20) NOT NULL,
    pass character varying(20) NOT NULL
);


ALTER TABLE public.realtors OWNER TO kyrsa4;

--
-- Name: realtors_id_seq; Type: SEQUENCE; Schema: public; Owner: kyrsa4
--

CREATE SEQUENCE public.realtors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.realtors_id_seq OWNER TO kyrsa4;

--
-- Name: realtors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: kyrsa4
--

ALTER SEQUENCE public.realtors_id_seq OWNED BY public.realtors.id;


--
-- Name: agreement_statuses id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.agreement_statuses ALTER COLUMN id SET DEFAULT nextval('public.agreement_statuses_id_seq'::regclass);


--
-- Name: agreements id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.agreements ALTER COLUMN id SET DEFAULT nextval('public.agreements_id_seq'::regclass);


--
-- Name: application_statuses id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.application_statuses ALTER COLUMN id SET DEFAULT nextval('public.application_statuses_id_seq'::regclass);


--
-- Name: applications id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.applications ALTER COLUMN id SET DEFAULT nextval('public.applications_id_seq'::regclass);


--
-- Name: building_statuses id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.building_statuses ALTER COLUMN id SET DEFAULT nextval('public.building_statuses_id_seq'::regclass);


--
-- Name: complexes id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.complexes ALTER COLUMN id SET DEFAULT nextval('public.complexes_id_seq'::regclass);


--
-- Name: districts id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.districts ALTER COLUMN id SET DEFAULT nextval('public.districts_id_seq'::regclass);


--
-- Name: housing_types id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housing_types ALTER COLUMN id SET DEFAULT nextval('public.housing_types_id_seq'::regclass);


--
-- Name: housings id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housings ALTER COLUMN id SET DEFAULT nextval('public.housings_id_seq'::regclass);


--
-- Name: photos id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.photos ALTER COLUMN id SET DEFAULT nextval('public.photos_id_seq'::regclass);


--
-- Name: realtors id; Type: DEFAULT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.realtors ALTER COLUMN id SET DEFAULT nextval('public.realtors_id_seq'::regclass);


--
-- Data for Name: agreement_statuses; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.agreement_statuses (id, name) FROM stdin;
1	magnda
2	nteger
3	placerat
4	aliquam
\.


--
-- Data for Name: agreements; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.agreements (id, application_id, realtor_id, housing_id, agreement_status_id, create_at) FROM stdin;
1	30	51	72	3	2021-10-09 00:00:00
2	33	63	85	3	2022-12-22 00:00:00
3	6	7	3	2	2021-09-17 00:00:00
4	2	72	14	2	2022-10-07 00:00:00
5	48	24	94	3	2022-10-21 00:00:00
6	58	47	93	2	2022-08-10 00:00:00
7	54	82	23	3	2022-11-26 00:00:00
8	10	83	32	4	2022-07-20 00:00:00
9	79	93	76	4	2022-03-15 00:00:00
10	81	22	66	1	2021-08-08 00:00:00
11	50	34	43	2	2021-11-03 00:00:00
12	55	32	81	2	2023-02-25 00:00:00
13	38	35	16	1	2022-10-14 00:00:00
14	83	11	42	2	2021-05-31 00:00:00
15	71	80	90	3	2022-09-22 00:00:00
16	58	9	83	4	2022-07-20 00:00:00
17	18	53	21	2	2021-05-02 00:00:00
18	37	97	68	1	2021-11-28 00:00:00
19	29	50	9	1	2023-03-12 00:00:00
20	16	85	36	4	2022-05-08 00:00:00
21	84	57	9	3	2022-03-21 00:00:00
22	18	37	98	4	2021-08-30 00:00:00
23	63	97	77	4	2022-11-18 00:00:00
24	34	98	16	3	2021-10-30 00:00:00
25	80	9	21	2	2022-03-12 00:00:00
26	74	89	21	2	2021-12-15 00:00:00
27	34	80	87	2	2022-05-12 00:00:00
28	19	70	37	2	2023-02-14 00:00:00
29	92	8	70	3	2022-08-30 00:00:00
30	6	79	67	2	2022-01-04 00:00:00
31	67	65	4	2	2023-02-26 00:00:00
32	68	47	11	3	2022-02-21 00:00:00
33	37	71	98	3	2022-02-21 00:00:00
34	21	17	77	4	2022-09-13 00:00:00
35	62	81	8	3	2022-04-06 00:00:00
36	32	96	78	4	2023-03-13 00:00:00
37	47	93	43	3	2021-04-18 00:00:00
38	33	57	10	2	2021-09-03 00:00:00
39	91	71	70	2	2021-11-14 00:00:00
40	69	68	4	1	2022-11-25 00:00:00
41	4	59	92	3	2022-04-01 00:00:00
42	54	48	49	2	2021-12-27 00:00:00
43	3	46	68	3	2022-02-20 00:00:00
44	72	34	69	2	2021-07-11 00:00:00
45	66	26	52	2	2022-10-23 00:00:00
46	100	62	32	2	2022-11-26 00:00:00
47	27	41	76	3	2023-01-28 00:00:00
48	62	5	73	2	2022-10-12 00:00:00
49	78	11	9	2	2021-08-28 00:00:00
50	73	84	78	2	2021-12-25 00:00:00
51	65	24	47	3	2021-07-13 00:00:00
52	61	13	56	1	2022-12-02 00:00:00
53	34	27	51	2	2021-09-11 00:00:00
54	4	61	12	2	2022-07-09 00:00:00
55	67	77	55	3	2022-04-14 00:00:00
56	22	33	32	2	2021-08-30 00:00:00
57	74	52	88	2	2021-11-16 00:00:00
58	53	95	83	4	2021-09-14 00:00:00
59	5	23	65	2	2021-07-11 00:00:00
60	60	8	96	2	2022-10-15 00:00:00
61	13	99	51	2	2022-11-15 00:00:00
62	42	81	39	4	2022-07-30 00:00:00
63	72	75	48	3	2022-07-06 00:00:00
64	91	32	20	3	2023-01-12 00:00:00
65	19	57	35	3	2022-08-05 00:00:00
66	28	39	35	3	2021-05-26 00:00:00
67	65	50	10	2	2022-11-02 00:00:00
68	94	35	82	2	2022-12-17 00:00:00
69	29	81	44	3	2023-01-08 00:00:00
70	84	60	50	2	2021-09-10 00:00:00
71	88	36	84	1	2021-12-30 00:00:00
72	38	85	38	3	2022-05-23 00:00:00
73	8	15	74	3	2021-12-13 00:00:00
74	83	35	33	2	2021-07-10 00:00:00
75	41	75	49	1	2021-12-08 00:00:00
76	32	3	60	3	2021-05-15 00:00:00
77	50	50	40	1	2022-05-18 00:00:00
78	35	19	9	2	2022-05-03 00:00:00
79	44	5	39	2	2022-01-18 00:00:00
80	62	69	63	4	2022-05-02 00:00:00
81	16	55	41	3	2021-10-12 00:00:00
82	70	61	31	3	2021-12-16 00:00:00
83	99	96	100	2	2022-04-18 00:00:00
84	32	99	48	1	2022-07-17 00:00:00
85	31	23	18	1	2021-12-24 00:00:00
86	67	52	37	2	2022-12-10 00:00:00
87	62	50	93	1	2023-01-18 00:00:00
88	26	75	34	2	2022-01-09 00:00:00
89	41	2	45	3	2022-08-25 00:00:00
90	54	26	58	2	2022-04-26 00:00:00
91	66	36	13	1	2021-11-18 00:00:00
92	55	20	20	4	2022-01-07 00:00:00
93	82	95	8	4	2021-10-31 00:00:00
94	84	8	89	4	2021-10-02 00:00:00
95	94	91	48	3	2023-01-02 00:00:00
96	75	92	46	2	2023-04-11 00:00:00
97	43	98	9	1	2021-11-28 00:00:00
98	43	57	21	1	2021-10-11 00:00:00
99	62	25	55	4	2021-11-02 00:00:00
100	57	8	91	1	2022-03-10 00:00:00
\.


--
-- Data for Name: application_statuses; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.application_statuses (id, name) FROM stdin;
1	consequat auctor,
2	aliquam
3	blandit
4	est. Nunc
\.


--
-- Data for Name: applications; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.applications (id, create_at, fio, phone_number, email, application_status_id) FROM stdin;
1	2022-04-09 00:00:00	Sylvia Henson	(578) 958-4234	arcu.vestibulum.ante@icloud.couk	1
2	2021-06-07 00:00:00	Petra Lopez	(415) 993-6488	ut.dolor@icloud.com	2
3	2022-08-30 00:00:00	Kieran Alexander	(361) 428-2286	cursus.nunc.mauris@google.ca	2
4	2022-02-12 00:00:00	Fay Potter	(683) 735-5155	dolor.fusce.feugiat@protonmail.org	3
5	2022-09-28 00:00:00	Dawn Padilla	(655) 574-4457	malesuada.id.erat@outlook.couk	3
6	2021-11-29 00:00:00	Marny Sullivan	(862) 872-4463	nunc.ullamcorper@protonmail.ca	2
7	2022-07-16 00:00:00	Halla Ellison	(765) 563-7297	convallis.ligula@icloud.edu	1
8	2021-05-30 00:00:00	Ronan Acosta	(397) 587-7091	duis.cursus@outlook.couk	3
9	2021-11-04 00:00:00	Athena Rollins	(286) 339-9536	scelerisque.scelerisque@aol.couk	2
10	2021-08-13 00:00:00	Avram Montgomery	(196) 883-6249	semper.rutrum@aol.couk	4
11	2022-03-02 00:00:00	Dale Cannon	(732) 547-3144	accumsan.laoreet@icloud.ca	2
12	2022-09-04 00:00:00	Denton Macdonald	(346) 941-6746	leo.in@hotmail.ca	3
13	2022-07-22 00:00:00	Ivan Golden	(661) 942-5411	amet.metus@google.edu	4
14	2022-07-28 00:00:00	Charity Collier	(315) 554-6291	diam.dictum@protonmail.edu	4
15	2022-07-08 00:00:00	Emerald Wooten	(981) 743-5568	quis.massa.mauris@protonmail.couk	3
16	2021-07-16 00:00:00	Galvin Bond	(577) 966-6887	nullam.suscipit.est@icloud.edu	3
17	2022-12-12 00:00:00	Gemma Wood	(172) 188-7610	cras.sed@google.com	2
18	2021-09-10 00:00:00	Marsden Potter	(736) 572-4025	arcu@outlook.com	3
19	2021-12-28 00:00:00	Forrest Hardy	(142) 441-4410	a.auctor.non@yahoo.couk	4
20	2022-08-11 00:00:00	Gabriel Hines	(612) 984-6994	ut.semper.pretium@protonmail.ca	4
21	2022-08-30 00:00:00	Brielle Curry	(600) 952-1120	in.felis@google.com	3
22	2022-02-28 00:00:00	Illana Lamb	(379) 370-3131	vestibulum@hotmail.com	2
23	2022-01-16 00:00:00	Lucius Tanner	(935) 333-8313	nisi@outlook.com	1
24	2023-02-11 00:00:00	Kameko Clay	(765) 383-4830	malesuada.augue.ut@hotmail.net	2
25	2021-11-23 00:00:00	Shea Robinson	(954) 932-0315	euismod.urna.nullam@hotmail.ca	1
26	2023-03-09 00:00:00	Nero Byers	(820) 237-4755	arcu.sed@hotmail.org	2
27	2021-07-03 00:00:00	Zahir Aguirre	(342) 921-2663	fringilla.euismod@hotmail.net	4
28	2021-10-07 00:00:00	Holmes Webb	(267) 614-3196	ligula.aenean.euismod@yahoo.org	3
29	2022-04-13 00:00:00	Clio Moreno	(724) 308-4488	lectus@icloud.couk	3
30	2022-12-26 00:00:00	Wynter Joyce	(656) 774-6623	auctor.non@protonmail.couk	4
31	2022-07-01 00:00:00	Rajah Hancock	(238) 539-6862	rutrum.justo@hotmail.couk	2
32	2023-02-15 00:00:00	Kellie Hoover	(715) 834-6535	risus.donec@protonmail.net	3
33	2022-03-24 00:00:00	Ann Reese	(782) 471-8127	purus@icloud.org	4
34	2021-09-10 00:00:00	Zelenia Patterson	(655) 710-8357	nullam.ut.nisi@yahoo.com	2
35	2021-05-17 00:00:00	Ivor Castaneda	(711) 803-9115	facilisis.lorem.tristique@outlook.edu	1
36	2022-08-17 00:00:00	Dominic Lowe	(199) 663-4162	nunc.quisque@outlook.org	3
37	2022-01-18 00:00:00	Luke Keller	(733) 378-8547	odio@aol.ca	1
38	2022-06-19 00:00:00	Iris Jenkins	(431) 523-5182	non.justo@yahoo.ca	4
39	2021-05-10 00:00:00	Hedda Hoover	(154) 567-6386	sem.egestas.blandit@aol.com	1
40	2023-03-19 00:00:00	Dominique Warner	(993) 952-8345	libero.nec.ligula@outlook.net	3
41	2022-01-10 00:00:00	Cora Davidson	(517) 748-8966	tempor@hotmail.com	1
42	2022-07-12 00:00:00	Brenna Shelton	(193) 538-7473	urna@icloud.net	1
43	2021-04-14 00:00:00	Madeline Pearson	(868) 868-5444	sagittis.nullam@outlook.edu	2
44	2022-08-04 00:00:00	Charles Vega	(334) 508-1664	ac.libero.nec@protonmail.com	3
45	2022-05-27 00:00:00	Ulla Mendoza	(361) 930-7319	dictum@hotmail.edu	2
46	2022-08-22 00:00:00	Charde Silva	(532) 977-7442	elit@icloud.ca	3
47	2023-03-13 00:00:00	Mia Clark	(942) 611-9232	urna.ut@icloud.couk	3
48	2021-05-22 00:00:00	Kareem Perry	(353) 906-7976	lectus.pede.et@google.org	1
49	2022-01-17 00:00:00	Aristotle Wolf	(492) 344-7518	sagittis@google.org	2
50	2021-12-03 00:00:00	Heidi Erickson	(544) 458-5753	neque.sed@protonmail.org	4
51	2021-09-18 00:00:00	Madeson Howe	(972) 312-2198	sed.dolor@aol.com	2
52	2022-02-10 00:00:00	Kelly Kelly	(445) 245-5826	integer.aliquam@google.com	4
53	2023-01-13 00:00:00	Neil Barber	(516) 597-4912	magna.et@yahoo.ca	2
54	2021-12-23 00:00:00	Germaine Page	(365) 746-7981	adipiscing@yahoo.edu	3
55	2022-07-17 00:00:00	Deanna Espinoza	(370) 681-0028	sem@aol.org	1
56	2021-06-05 00:00:00	Dexter Cohen	(655) 261-1345	quam@hotmail.com	4
57	2021-04-15 00:00:00	Lenore David	(363) 475-8946	aliquet@yahoo.net	2
58	2023-04-05 00:00:00	Cherokee Pickett	(569) 508-4176	aliquet.sem.ut@google.com	3
59	2022-09-01 00:00:00	Lewis Maynard	(374) 278-2946	massa.rutrum@protonmail.ca	3
60	2023-03-05 00:00:00	Kenneth Moses	(119) 409-0424	amet.diam@outlook.edu	1
61	2021-07-23 00:00:00	Lev Cervantes	(523) 727-4644	ac.risus@aol.com	2
62	2022-12-21 00:00:00	Kelly Kline	(633) 551-6577	non.egestas@aol.couk	1
63	2022-02-18 00:00:00	Hayden Hudson	(103) 487-3392	luctus.et.ultrices@hotmail.net	2
64	2022-10-02 00:00:00	Carl Guerra	(367) 178-6415	suspendisse@yahoo.couk	3
65	2022-09-21 00:00:00	Haviva Meadows	(652) 602-0625	lorem.fringilla.ornare@outlook.net	4
66	2022-07-09 00:00:00	Willow Sandoval	(517) 463-8277	mauris@hotmail.org	3
67	2022-03-15 00:00:00	Calista Spencer	(749) 935-3776	ac.facilisis.facilisis@aol.couk	4
68	2021-12-11 00:00:00	Hasad Armstrong	(696) 783-7799	ipsum.dolor@icloud.com	3
69	2022-10-11 00:00:00	Stephen Cameron	(651) 816-2625	diam.proin.dolor@yahoo.org	1
70	2022-07-14 00:00:00	Ella Acosta	(757) 140-2026	semper.cursus.integer@protonmail.net	3
71	2021-05-06 00:00:00	Timothy Harvey	(292) 634-8238	odio.vel.est@yahoo.net	3
72	2022-08-21 00:00:00	Francis Patterson	(436) 445-7536	bibendum@protonmail.ca	3
73	2022-05-10 00:00:00	Shelly Sutton	(316) 367-2152	quis.pede@hotmail.org	4
74	2022-03-16 00:00:00	Alan Browning	(676) 422-1031	bibendum.donec.felis@hotmail.com	3
75	2022-01-20 00:00:00	Brenna Cunningham	(360) 675-8872	tortor.nunc@icloud.edu	1
76	2022-02-10 00:00:00	Nola Russell	(672) 847-8352	conubia.nostra@outlook.org	1
77	2021-07-30 00:00:00	Imogene Stephenson	(843) 668-3946	nam.consequat@hotmail.org	1
78	2021-08-26 00:00:00	Alisa Pruitt	(153) 831-2633	commodo.at@aol.net	2
79	2021-07-06 00:00:00	Jamal Roman	(805) 416-2444	aenean.eget@google.com	1
80	2022-09-17 00:00:00	Dacey Cooper	(533) 276-2632	velit.egestas@hotmail.edu	1
81	2021-11-11 00:00:00	Kirsten Cotton	(731) 276-3229	dictum.ultricies@protonmail.com	4
82	2022-04-30 00:00:00	Lunea Frost	(779) 182-1231	dui.nec@aol.com	2
83	2022-08-24 00:00:00	Deacon Hobbs	(515) 722-4159	nunc.lectus.pede@hotmail.com	2
84	2021-08-20 00:00:00	Jonas Horton	(507) 638-4809	nulla.interdum@aol.net	4
85	2022-11-18 00:00:00	Ursa Holmes	(425) 527-3864	gravida.aliquam@yahoo.net	4
86	2021-06-18 00:00:00	Keaton Ray	(853) 853-2202	eu.nibh@icloud.couk	3
87	2023-01-13 00:00:00	Stuart Walter	(747) 646-7708	sapien.imperdiet@outlook.ca	3
88	2021-08-20 00:00:00	Fletcher Baxter	(677) 970-3032	commodo@icloud.net	2
89	2021-12-17 00:00:00	Garrison Huber	(728) 586-3389	aliquam.erat@icloud.com	2
90	2023-01-31 00:00:00	Regan Duke	(527) 427-1141	placerat@icloud.org	3
91	2022-10-19 00:00:00	Ava Spence	(763) 193-2814	justo@protonmail.com	2
92	2022-03-10 00:00:00	Hadassah Mcneil	(212) 746-2737	vestibulum.lorem@hotmail.org	2
93	2023-01-07 00:00:00	Jordan Morton	(313) 873-6745	elit.pharetra.ut@hotmail.net	2
94	2023-03-18 00:00:00	Tallulah Roberts	(210) 617-3293	arcu@hotmail.com	1
95	2021-07-22 00:00:00	Kameko Bauer	(484) 874-1995	aliquam.gravida@icloud.edu	3
96	2022-08-13 00:00:00	Tara Mcknight	(383) 736-8606	orci.donec@hotmail.net	2
97	2021-08-20 00:00:00	Ebony Jones	(734) 875-1137	donec.nibh.enim@aol.net	3
98	2021-05-31 00:00:00	Beck Franklin	(618) 862-5004	eu.tempor@outlook.couk	4
99	2022-09-05 00:00:00	Regina Espinoza	(335) 276-8431	nam.consequat@outlook.couk	1
100	2023-02-28 00:00:00	Madeson James	(609) 737-5838	elit.dictum@google.org	4
\.


--
-- Data for Name: building_statuses; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.building_statuses (id, status) FROM stdin;
1	non lorem
2	sem, consequat nec,
3	ultricies
4	aliquam iaculis,
\.


--
-- Data for Name: complexes; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.complexes (id, name, district_id, photo_id, expire_date) FROM stdin;
1	Vivamus	2	52	Aug , 2022
2	aliquam adipiscing	8	29	May , 2022
3	Cum sociis natoque	9	60	May , 2021
4	a,	6	20	Jan , 2023
5	ipsum.	7	27	Jun , 2022
6	mollis dui, in	2	34	Jul , 2021
7	aliquet magna a	5	96	Jun , 2022
8	auctor ullamcorper,	3	24	Jan , 2023
9	mi	5	51	Sep , 2022
10	Vestibulum ante	9	40	Jun , 2022
11	molestie in, tempus	3	7	Nov , 2021
12	ipsum. Suspendisse	3	57	May , 2022
13	Nulla	9	63	May , 2021
14	ante. Vivamus non	8	7	Sep , 2021
15	pretium et,	2	86	Jun , 2021
16	mattis velit	7	47	May , 2021
17	vitae dolor.	2	62	May , 2021
18	sem	1	33	Jul , 2021
19	Duis volutpat	9	79	Feb , 2023
20	cursus	6	74	Jan , 2023
21	orci.	10	18	Sep , 2022
22	Suspendisse	8	29	May , 2022
23	at lacus. Quisque	2	72	Aug , 2021
24	non,	8	58	Sep , 2022
25	tellus eu	1	53	Mar , 2022
26	mi	2	27	Jun , 2022
27	magnis dis	9	62	Jul , 2021
28	ipsum primis	5	40	Oct , 2022
29	purus	7	73	Jun , 2021
30	interdum. Nunc sollicitudin	3	2	Dec , 2021
31	urna justo faucibus	10	99	Nov , 2021
32	et, euismod et,	1	63	Apr , 2021
33	velit eget laoreet	10	91	Jun , 2021
34	diam	5	54	Jun , 2021
35	sit	4	18	May , 2022
36	nulla. Integer	3	62	Jun , 2021
37	augue id ante	10	82	Jan , 2022
38	Nunc	8	48	Sep , 2022
39	Aenean egestas hendrerit	10	52	May , 2021
40	sapien imperdiet	7	89	Jul , 2022
41	metus. In	3	91	Oct , 2021
42	nunc interdum	4	98	Feb , 2023
43	enim diam	8	21	Jul , 2021
44	nec	6	34	May , 2022
45	iaculis enim,	4	41	Feb , 2022
46	convallis est,	3	42	Mar , 2022
47	lorem. Donec	8	5	Apr , 2023
48	eu tempor erat	2	93	Oct , 2022
49	eu tellus. Phasellus	7	3	Sep , 2022
50	Suspendisse aliquet	8	1	Mar , 2022
51	semper	7	10	Dec , 2021
52	aliquet nec,	8	29	Oct , 2022
53	est tempor bibendum.	2	8	Dec , 2022
54	rhoncus. Nullam	5	10	Jan , 2023
55	ridiculus mus.	7	85	Apr , 2022
56	dictum placerat,	10	60	Dec , 2022
57	urna justo	6	9	Jun , 2022
58	est ac	3	79	May , 2022
59	eget	3	2	Dec , 2022
60	vitae, orci.	6	94	Jun , 2021
61	congue	7	58	Dec , 2021
62	mauris erat	7	71	Feb , 2022
63	odio	4	26	Apr , 2021
64	mauris sapien,	4	78	Jan , 2023
65	augue. Sed	7	45	Apr , 2021
66	Suspendisse eleifend. Cras	6	8	Nov , 2022
67	sem eget	7	66	Sep , 2021
68	quis accumsan	5	63	Jan , 2023
69	enim. Sed	4	90	Jul , 2021
70	imperdiet non, vestibulum	6	4	Jun , 2021
71	penatibus	10	72	Sep , 2021
72	erat volutpat.	5	17	Jan , 2022
73	consectetuer	5	32	Mar , 2022
74	malesuada	7	59	Apr , 2022
75	odio semper cursus.	9	4	Aug , 2021
76	ac, eleifend	6	45	Aug , 2021
77	luctus lobortis. Class	2	29	Aug , 2021
78	urna, nec	5	19	Jan , 2022
79	felis purus ac	8	62	Jul , 2022
80	Phasellus elit pede,	9	99	Sep , 2022
81	adipiscing	8	4	Feb , 2022
82	vel est	5	24	Apr , 2022
83	tortor, dictum	3	49	Dec , 2022
84	fermentum convallis	3	3	Jul , 2022
85	porttitor eros nec	2	29	May , 2022
86	Suspendisse dui.	2	33	May , 2022
87	risus. Nulla	8	8	Oct , 2021
88	sit	9	19	Jun , 2021
89	semper et,	3	72	Aug , 2021
90	netus	10	91	Dec , 2022
91	vel	5	93	Oct , 2022
92	diam.	6	13	Aug , 2022
93	arcu.	3	56	Jun , 2021
94	posuere at,	10	38	Oct , 2022
95	dolor. Fusce	8	54	Nov , 2022
96	dui. Fusce aliquam,	6	45	Jun , 2021
97	luctus sit amet,	7	67	Aug , 2022
98	Phasellus	7	64	Jul , 2021
99	convallis	8	52	Oct , 2021
100	mus. Proin	5	79	Aug , 2021
\.


--
-- Data for Name: districts; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.districts (id, name) FROM stdin;
1	dui nec urna
2	feugiat. Sed
3	risus.
4	non enim
5	Quisque
6	ac
7	Donec consectetuer
8	vitae sodales nisi
9	bibendum.
10	Aliquam auctor,
\.


--
-- Data for Name: housing_communications; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.housing_communications (housing_id, central_water, garbage_chute, gas, central_heating) FROM stdin;
1	f	f	t	t
2	f	f	f	t
3	t	f	f	t
4	t	t	t	f
5	f	f	t	f
6	f	t	f	t
7	f	f	f	f
8	t	f	f	t
9	f	t	t	t
10	t	t	f	t
11	f	t	t	t
12	t	t	f	f
13	t	f	t	t
14	f	t	t	t
15	t	f	t	f
16	f	f	t	f
17	f	t	f	f
18	f	f	f	f
19	t	t	t	t
20	t	f	f	t
21	f	f	f	t
22	t	f	f	f
23	t	t	t	f
24	f	t	f	t
25	f	t	t	t
26	t	t	f	f
27	f	f	f	f
28	f	f	f	t
29	t	f	f	f
30	t	f	t	t
31	f	t	f	f
32	f	t	f	f
33	f	f	t	t
34	t	t	t	f
35	t	t	t	t
36	f	t	f	f
37	f	f	t	f
38	f	f	t	t
39	t	t	f	f
40	f	f	t	f
41	t	f	t	t
42	t	f	t	f
43	t	t	t	f
44	t	t	f	t
45	t	f	f	f
46	t	f	f	t
47	t	f	f	t
48	f	t	f	t
49	t	t	t	t
50	t	f	f	f
51	t	f	t	t
52	t	f	t	f
53	f	f	t	f
54	f	f	f	f
55	t	t	f	f
56	f	f	t	f
57	f	t	f	t
58	t	t	t	f
59	t	t	t	t
60	f	f	t	t
61	f	t	f	t
62	f	f	t	f
63	f	t	t	f
64	f	t	t	f
65	f	t	t	f
66	f	f	t	t
67	f	t	f	f
68	t	f	t	t
69	f	t	f	f
70	t	t	t	t
71	t	f	f	t
72	t	f	t	t
73	t	f	f	f
74	f	f	f	t
75	t	f	f	f
76	t	f	f	t
77	f	f	t	t
78	t	t	t	f
79	t	t	t	f
80	t	t	t	f
81	f	f	t	t
82	f	f	f	t
83	t	t	t	f
84	t	f	f	f
85	t	t	f	t
86	f	f	t	f
87	f	f	f	t
88	f	t	t	t
89	t	t	t	t
90	t	t	f	t
91	f	t	f	f
92	f	t	f	f
93	f	t	f	f
94	t	t	t	t
95	t	f	f	f
96	t	t	t	t
97	f	f	f	f
98	t	f	f	t
99	t	f	f	f
100	t	f	t	f
\.


--
-- Data for Name: housing_options; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.housing_options (housing_id, mortgage, mat_capital, installment_plan, dkp) FROM stdin;
1	t	f	f	t
2	f	t	t	t
3	f	t	f	f
4	t	t	f	f
5	t	t	t	t
6	f	f	t	f
7	f	f	f	f
8	f	f	f	t
9	f	t	f	f
10	t	t	f	f
11	t	f	f	f
12	f	f	t	f
13	t	f	f	t
14	t	f	t	f
15	t	f	f	f
16	f	f	t	f
17	t	t	f	t
18	f	f	f	f
19	f	t	f	t
20	t	f	t	t
21	f	t	f	t
22	t	f	t	t
23	f	t	f	t
24	f	f	f	f
25	f	f	t	f
26	f	t	t	f
27	t	t	f	f
28	t	t	f	f
29	t	t	f	t
30	t	t	t	t
31	f	t	f	t
32	t	t	t	t
33	f	t	t	f
34	t	f	t	f
35	f	t	t	f
36	f	t	t	f
37	f	f	t	t
38	f	f	t	t
39	t	f	f	t
40	t	t	t	f
41	f	f	t	t
42	t	f	t	t
43	f	f	t	t
44	t	t	f	t
45	t	f	f	f
46	t	f	t	t
47	f	t	f	f
48	t	t	t	t
49	t	t	f	t
50	f	t	t	t
51	t	t	t	f
52	t	t	f	t
53	f	f	t	f
54	t	t	f	f
55	f	t	f	f
56	f	f	t	f
57	t	f	t	t
58	f	t	f	t
59	f	t	f	f
60	t	f	t	t
61	f	f	f	f
62	f	t	t	t
63	f	t	t	t
64	t	t	t	t
65	f	t	t	f
66	f	f	f	t
67	t	f	f	f
68	t	t	f	t
69	t	f	f	f
70	t	t	f	t
71	f	f	f	f
72	f	t	t	t
73	t	f	t	f
74	f	t	t	f
75	t	f	f	f
76	t	t	t	f
77	f	f	t	f
78	f	t	t	t
79	f	t	f	t
80	f	f	t	t
81	f	t	t	f
82	t	f	f	t
83	t	f	f	f
84	f	f	f	t
85	t	f	f	f
86	f	t	t	f
87	t	t	f	f
88	t	f	f	t
89	t	f	t	t
90	f	f	f	t
91	t	t	f	t
92	f	t	f	f
93	t	f	f	f
94	f	t	t	f
95	f	f	f	t
96	t	t	t	f
97	f	f	t	t
98	f	t	f	t
99	f	t	f	f
100	t	f	t	t
\.


--
-- Data for Name: housing_types; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.housing_types (id, name) FROM stdin;
1	vitae
2	vitae mauris
3	non
4	metus. Aenean
\.


--
-- Data for Name: housings; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.housings (id, address, price, square, complex_id, housing_type_id, building_status_id, photo_id) FROM stdin;
1	876 Purus Road	78477451	197	8	3	2	11
2	244-1773 Eleifend. Road	28547846	161	10	3	3	58
3	Ap #685-2834 Risus. St.	85318694	15	44	3	2	22
4	6209 Integer Street	9283219	125	31	2	3	4
5	P.O. Box 750, 9345 Libero. Av.	39071814	169	13	1	2	84
6	P.O. Box 917, 7689 Nulla. Avenue	11651580	46	22	2	4	96
7	Ap #963-394 Phasellus Ave	63749174	33	69	2	4	87
8	3932 Orci. Road	27058602	176	62	2	2	15
9	Ap #931-1256 Amet St.	10139126	61	45	3	1	83
10	Ap #939-1325 Orci St.	59196915	132	45	3	2	96
11	494-2478 Gravida. St.	89330991	64	35	2	2	81
12	Ap #878-9258 Lorem. Avenue	50013426	176	97	1	3	72
13	547-6355 Purus. Ave	1963013	61	79	1	4	53
14	Ap #335-9383 Vel Rd.	14508240	118	70	3	3	66
15	Ap #828-1286 Et, St.	29306051	33	65	4	3	48
16	9612 Feugiat Av.	19045723	189	64	2	2	15
17	466-4196 Iaculis Av.	39282542	23	50	3	3	39
18	270-5110 Phasellus Av.	55329752	33	65	2	3	66
19	Ap #184-5990 Vivamus St.	59976706	93	60	1	2	17
20	594-6429 Primis Ave	19625159	81	24	4	3	31
21	Ap #289-4409 Augue St.	7806913	20	5	3	3	56
22	268-2357 Per St.	32455223	96	42	3	1	62
23	7401 Euismod Rd.	2526217	59	74	2	1	66
24	6955 Parturient Av.	62579794	178	91	1	3	98
25	230-9945 Etiam Ave	31375645	110	89	3	2	78
26	Ap #787-4320 Eu, Street	70284053	29	41	2	2	41
27	Ap #298-493 Et Street	18958939	72	57	2	2	55
28	3274 Ornare Road	65709916	142	9	3	2	46
29	Ap #827-676 Morbi Rd.	45717855	140	15	2	2	85
30	Ap #117-3700 Et Avenue	2775480	18	22	3	3	48
31	5363 Sem, Rd.	70363362	12	13	4	1	92
32	Ap #760-7107 At, Rd.	32885079	151	15	3	3	65
33	689-4975 Porttitor Ave	35723163	121	76	3	1	87
34	P.O. Box 994, 8384 Congue. Rd.	80932932	128	22	3	2	93
35	Ap #970-4319 Sodales St.	37860459	94	90	2	4	92
36	4500 Metus. Rd.	49678405	73	47	2	2	67
37	Ap #512-4522 In Road	56525903	174	60	1	1	61
38	Ap #234-7275 Etiam Road	38306593	200	54	2	2	96
39	913-8047 Odio Rd.	78025104	18	2	1	3	57
40	Ap #177-527 Ut Avenue	49024410	164	64	1	4	18
41	Ap #400-4305 Ridiculus Ave	10696940	108	42	3	2	49
42	613-2714 Vel St.	81768773	177	65	3	1	11
43	P.O. Box 862, 873 Accumsan St.	62338582	61	31	4	1	92
44	Ap #672-3757 Semper, St.	22444562	52	35	2	1	1
45	976-2065 Molestie St.	10371428	113	85	3	4	63
46	Ap #725-7811 Interdum. Rd.	50557510	127	48	1	3	36
47	1965 Cum Ave	32401164	79	69	2	2	74
48	P.O. Box 800, 1914 Nonummy Road	57832201	146	24	3	3	69
49	125 Enim Ave	36954002	156	67	2	3	95
50	2016 Imperdiet Rd.	82638225	188	21	1	1	80
51	520-2887 Hendrerit Street	27703911	172	26	4	3	68
52	P.O. Box 346, 8284 Nec, Rd.	61522449	51	72	3	4	12
53	1907 Tellus St.	30345362	144	39	4	3	16
54	105-1292 Lacus. Avenue	69131342	161	30	4	3	36
55	2564 Sollicitudin St.	28131429	16	37	3	3	87
56	301-9077 Vulputate Rd.	29664221	73	54	1	2	22
57	P.O. Box 877, 2886 Aliquam St.	16528788	84	76	4	1	11
58	3520 Egestas. St.	56443673	98	61	4	4	29
59	2997 Nulla Road	53309661	77	87	3	2	90
60	Ap #527-5873 Nec Rd.	46184048	86	95	2	2	18
61	Ap #563-7047 Aenean St.	37051577	51	83	3	3	44
62	305-5766 Mattis Avenue	8518507	131	12	4	2	97
63	2299 Nulla St.	10075129	114	77	3	2	98
64	Ap #995-2282 Aliquet Rd.	26824840	83	13	3	2	91
65	609-1160 Sodales Road	99509070	133	41	3	2	49
66	P.O. Box 496, 1710 Ornare St.	99782055	164	94	2	2	98
67	369-2887 Eu, Avenue	89091696	133	38	3	2	68
68	Ap #422-3323 Ac Road	11237814	170	68	3	2	52
69	898-8679 Mauris Street	85395093	160	65	3	4	92
70	939-7663 A, Rd.	75979025	158	51	3	3	76
71	327-8254 Vel Rd.	56353722	149	100	3	3	92
72	Ap #661-1993 Suspendisse Avenue	68024171	135	82	2	3	40
73	908-7847 Libero Rd.	45679916	55	51	2	2	87
74	451-3056 Montes, Rd.	78342478	48	1	2	1	7
75	246-8957 Quisque Rd.	20302376	171	74	3	3	67
76	Ap #897-5928 Nulla Rd.	93479923	13	19	3	2	51
77	742-3382 Malesuada Rd.	24620936	28	95	2	2	78
78	521-6638 Phasellus Rd.	21406042	39	64	3	2	11
79	578-2216 Sem Av.	66315869	21	83	1	1	12
80	626-8632 Pellentesque Av.	26986801	164	6	2	1	66
81	9485 Ac Rd.	58253932	186	29	4	2	7
82	Ap #393-5709 Vulputate Rd.	15448542	15	85	2	4	87
83	Ap #831-4034 Tortor. Av.	52470930	127	34	2	4	18
84	P.O. Box 525, 8583 Eget Ave	23402968	60	83	1	3	26
85	Ap #448-9896 Pellentesque, Rd.	57118738	95	58	3	1	66
86	417-5088 Sem Rd.	30027084	88	58	4	3	35
87	Ap #345-8059 Vel, Avenue	87595969	102	34	3	3	55
88	1750 Tempor, St.	39963252	75	37	4	3	12
89	5887 Felis. St.	76944990	43	32	1	4	5
90	149-8040 Et Avenue	12402726	70	45	2	3	3
91	310-6090 Convallis Rd.	18148591	91	41	2	4	90
92	257-4727 Lorem, Ave	52596183	19	9	3	2	57
93	P.O. Box 218, 6248 Ut Avenue	85738795	53	82	3	1	8
94	581-8643 Nulla. Road	88409401	158	79	2	2	72
95	172-5336 Lobortis Street	9675019	61	55	2	3	85
96	Ap #934-4331 A Rd.	62938455	94	83	2	3	89
97	Ap #597-9855 Nunc Rd.	76330517	73	37	3	2	13
98	Ap #493-8680 Eget St.	95043750	119	3	4	2	45
99	Ap #375-9973 Luctus Avenue	36656111	48	54	2	2	14
100	816-3982 Mi St.	78028429	60	72	4	2	19
\.


--
-- Data for Name: photos; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.photos (id, url) FROM stdin;
1	?q=4
2	?q=11
3	?client=g
4	?ab=441&aad=2
5	?ab=441&aad=2
6	?page=1&offset=1
7	?ad=115
8	?q=0
9	?search=1
10	?ab=441&aad=2
11	?gi=100
12	?search=1
13	?q=test
14	?q=0
15	?k=0
16	?search=1&q=de
17	?str=se
18	?p=8
19	?q=11
20	?g=1
21	?ab=441&aad=2
22	?search=1&q=de
23	?q=0
24	?client=g
25	?q=test
26	?g=1
27	?search=1&q=de
28	?ad=115
29	?q=0
30	?p=8
31	?g=1
32	?k=0
33	?page=1&offset=1
34	?ab=441&aad=2
35	?k=0
36	?q=4
37	?client=g
38	?q=0
39	?p=8
40	?str=se
41	?g=1
42	?p=8
43	?gi=100
44	?ab=441&aad=2
45	?client=g
46	?g=1
47	?p=8
48	?p=8
49	?q=0
50	?gi=100
51	?ad=115
52	?search=1
53	?p=8
54	?q=4
55	?q=0
56	?q=4
57	?q=test
58	?ab=441&aad=2
59	?g=1
60	?search=1
61	?ab=441&aad=2
62	?q=test
63	?k=0
64	?ab=441&aad=2
65	?ad=115
66	?str=se
67	?client=g
68	?k=0
69	?search=1
70	?search=1
71	?ab=441&aad=2
72	?client=g
73	?page=1&offset=1
74	?str=se
75	?q=0
76	?ad=115
77	?q=0
78	?g=1
79	?ad=115
80	?k=0
81	?q=11
82	?q=4
83	?p=8
84	?g=1
85	?g=1
86	?q=4
87	?q=0
88	?p=8
89	?k=0
90	?p=8
91	?ab=441&aad=2
92	?str=se
93	?page=1&offset=1
94	?gi=100
95	?gi=100
96	?q=4
97	?q=0
98	?ab=441&aad=2
99	?g=1
100	?ab=441&aad=2
\.


--
-- Data for Name: realtors; Type: TABLE DATA; Schema: public; Owner: kyrsa4
--

COPY public.realtors (id, fio, login, pass) FROM stdin;
1	Kelly Fitzgerald	Nam	7736
2	Bradley Herrera	pede.	9540
3	Cyrus Roberson	Donec	7426
4	Alden Madden	at	8722
5	Hiram Burks	ligula.	3225
6	Chastity Hunt	Quivvsque	4027
7	Callie Gardner	Vivamus	5359
8	Georgia Owens	porttitor	4979
9	Bo Jenkins	Aliquam	7234
10	Ann Vinson	eget	7130
11	Oliver Riley	mollis	7402
12	Hayden Tate	quis,	6957
13	Dora Rodriquez	sggdgdit	6953
14	Ulysses Bauer	amet	2595
15	Grady Weber	cuefrsus	2350
16	Wyatt Espinoza	vel	4320
17	Idola Allen	dui	7834
18	Galvin Turner	curs4tus	6646
19	Zephania Christensen	tellus,	6723
20	Kaye Fleming	enim	1237
21	Aristotle Pope	vitae,	8509
22	Wynne Walters	afsdf	6573
23	Stacey Mcbride	sollicitudin	2600
24	Bertha Underwood	Quisque	7998
25	Aurora Burton	nec	3908
26	Ariel Stout	posuere	5066
27	Axel Gould	nunc	8383
28	Xyla Cook	losdfrem	8031
29	Francis Weeks	Curae	5154
30	Tasha Simon	adipiscing	4342
31	Yuli Barker	tristique	9927
32	Thor Hodges	et,	6810
33	Breanna Hill	neqfffue	2730
34	Naomi Bartlett	feugiat.	5550
35	Oprah Ware	adipiscing,	7633
36	Amena Horton	tincidunt.	3641
37	Wesley Francis	orci,	9589
38	Clark Carney	varius	8508
39	Daniel English	gravida	2607
40	Omar Griffith	neque	1033
41	Ferdinand Cobb	auctor	4415
42	Michael Bender	aliquet.	6612
43	Shad Roman	vevvvl	3505
44	Chastity Vazquez	cursus	6046
45	Rhonda Morrison	posuvvere	7819
46	Nehru Hardin	dictum	9798
47	Barbara Woodward	Nullam	5341
48	Aimee Hamilton	ac	4390
49	Leila Maldonado	eu	5301
50	Jonah Sharp	turpis.	5965
51	Illana Shepherd	Sed	8459
52	Cade Pennington	inceptos	9818
53	Alice Gordon	nibh.	3488
54	Jana Haynes	aptent	5963
55	Dana Bean	interdum	5960
56	Buckminster Harrell	magna.	8214
57	Malcolm Finley	Proin	7868
58	Chandler Peterson	velit	3849
59	Hayfa Lawson	svvvit	8883
60	Evan Abbott	nulla	5153
61	Alden Rush	a	7545
62	Yvonne Guerrero	scelerisque	6488
63	Price Harper	aliquet	5530
64	Deirdre Lyons	urna	2294
65	Addison Lopez	Aliqdfuam	3725
66	Tanner Jacobson	habitant	1583
67	Willa Ward	Cum	2121
68	Kennedy Meyers	sdfsdfsf	9663
69	Sigourney Sherman	nec,	2396
70	Yolanda Hammond	vel,	5230
71	Xander Hart	sifffft	2117
72	Hadassah Mcguire	tortor,	5588
73	Debra Knox	mattis	9795
74	Blythe Heath	mauris	6430
75	Venus Manning	netus	2911
76	Hamilton Washington	lorsdfsdem,	2609
77	Erica Ruiz	ut	3602
78	Kylee Cochran	tellus	3678
79	Martina Warren	egestas	7208
80	Glenna Hall	mus.	6144
81	Lydia Matthews	Sesdgsd	1343
82	Nomlanga Barr	ullamcorper	8421
83	Octavius Banks	dolor	8339
84	Cadman Barlow	lorsdfsdem	3252
85	Kerry Little	vehicula	4863
86	Samuel Stokes	vitaxcvcxe,	8792
87	September Koch	Quissdfque	4447
88	Jakeem Shepard	sdfsdfa	6950
89	Zahir Singleton	et	7594
90	Robert Hubbard	currrsus.	1793
91	Omar Gibbs	magnsdfsa.	9991
92	Raymond Copeland	Integer	2419
93	Eliana Gaines	placerat.	5258
94	Destiny Holden	alisdfquam	7660
95	Yoshio Herring	curgsus	1886
96	Stella Benson	magnis	1451
97	Daphne Holloway	aladsdiquet	7381
98	Lamar Peck	ante	4363
99	Wylie Collier	asdfc	1455
100	Ebony Bauer	lorsesdfsdfm,	8344
\.


--
-- Name: agreement_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.agreement_statuses_id_seq', 4, true);


--
-- Name: agreements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.agreements_id_seq', 100, true);


--
-- Name: application_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.application_statuses_id_seq', 4, true);


--
-- Name: applications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.applications_id_seq', 100, true);


--
-- Name: building_statuses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.building_statuses_id_seq', 4, true);


--
-- Name: complexes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.complexes_id_seq', 101, true);


--
-- Name: districts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.districts_id_seq', 110, true);


--
-- Name: housing_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.housing_types_id_seq', 4, true);


--
-- Name: housings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.housings_id_seq', 100, true);


--
-- Name: photos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.photos_id_seq', 100, true);


--
-- Name: realtors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: kyrsa4
--

SELECT pg_catalog.setval('public.realtors_id_seq', 100, true);


--
-- Name: agreement_statuses agreement_statuses_name_key; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.agreement_statuses
    ADD CONSTRAINT agreement_statuses_name_key UNIQUE (name);


--
-- Name: agreement_statuses agreement_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.agreement_statuses
    ADD CONSTRAINT agreement_statuses_pkey PRIMARY KEY (id);


--
-- Name: agreements agreements_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.agreements
    ADD CONSTRAINT agreements_pkey PRIMARY KEY (id);


--
-- Name: application_statuses application_statuses_name_key; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.application_statuses
    ADD CONSTRAINT application_statuses_name_key UNIQUE (name);


--
-- Name: application_statuses application_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.application_statuses
    ADD CONSTRAINT application_statuses_pkey PRIMARY KEY (id);


--
-- Name: applications applications_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.applications
    ADD CONSTRAINT applications_pkey PRIMARY KEY (id);


--
-- Name: building_statuses building_statuses_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.building_statuses
    ADD CONSTRAINT building_statuses_pkey PRIMARY KEY (id);


--
-- Name: building_statuses building_statuses_status_key; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.building_statuses
    ADD CONSTRAINT building_statuses_status_key UNIQUE (status);


--
-- Name: complexes complexes_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.complexes
    ADD CONSTRAINT complexes_pkey PRIMARY KEY (id);


--
-- Name: districts districts_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.districts
    ADD CONSTRAINT districts_pkey PRIMARY KEY (id);


--
-- Name: housing_communications housing_communications_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housing_communications
    ADD CONSTRAINT housing_communications_pkey PRIMARY KEY (housing_id);


--
-- Name: housing_options housing_options_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housing_options
    ADD CONSTRAINT housing_options_pkey PRIMARY KEY (housing_id);


--
-- Name: housing_types housing_types_name_key; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housing_types
    ADD CONSTRAINT housing_types_name_key UNIQUE (name);


--
-- Name: housing_types housing_types_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housing_types
    ADD CONSTRAINT housing_types_pkey PRIMARY KEY (id);


--
-- Name: housings housings_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.housings
    ADD CONSTRAINT housings_pkey PRIMARY KEY (id);


--
-- Name: photos photos_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.photos
    ADD CONSTRAINT photos_pkey PRIMARY KEY (id);


--
-- Name: realtors realtors_login_key; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.realtors
    ADD CONSTRAINT realtors_login_key UNIQUE (login);


--
-- Name: realtors realtors_pkey; Type: CONSTRAINT; Schema: public; Owner: kyrsa4
--

ALTER TABLE ONLY public.realtors
    ADD CONSTRAINT realtors_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

