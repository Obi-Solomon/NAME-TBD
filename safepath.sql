--
-- PostgreSQL database dump
--

\restrict qQY1Jyy3zHIONyaF2iFA9b96qefLYbuFENopsHzvGVAPqNKSNCtCz3oAbtTcWMB

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

-- Started on 2026-05-24 20:38:39

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
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
-- TOC entry 224 (class 1259 OID 16542)
-- Name: notifications; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.notifications (
    id integer NOT NULL,
    message text,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.notifications OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16541)
-- Name: notifications_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.notifications_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.notifications_id_seq OWNER TO postgres;

--
-- TOC entry 5042 (class 0 OID 0)
-- Dependencies: 223
-- Name: notifications_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.notifications_id_seq OWNED BY public.notifications.id;


--
-- TOC entry 220 (class 1259 OID 16518)
-- Name: reports; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.reports (
    id integer NOT NULL,
    username character varying(100),
    location character varying(150),
    incident_type character varying(100),
    urgency character varying(50),
    description text,
    anonymous boolean DEFAULT false,
    created_at timestamp without time zone DEFAULT CURRENT_TIMESTAMP
);


ALTER TABLE public.reports OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 16517)
-- Name: reports_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.reports_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.reports_id_seq OWNER TO postgres;

--
-- TOC entry 5043 (class 0 OID 0)
-- Dependencies: 219
-- Name: reports_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.reports_id_seq OWNED BY public.reports.id;


--
-- TOC entry 222 (class 1259 OID 16530)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id integer NOT NULL,
    username character varying(100) NOT NULL,
    password character varying(100) NOT NULL,
    anon_reports integer DEFAULT 0,
    hide_identity integer DEFAULT 0,
    safety_alerts integer DEFAULT 0,
    awareness_updates integer DEFAULT 0
);


ALTER TABLE public.users OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16529)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- TOC entry 5044 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- TOC entry 4874 (class 2604 OID 16545)
-- Name: notifications id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications ALTER COLUMN id SET DEFAULT nextval('public.notifications_id_seq'::regclass);


--
-- TOC entry 4866 (class 2604 OID 16521)
-- Name: reports id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports ALTER COLUMN id SET DEFAULT nextval('public.reports_id_seq'::regclass);


--
-- TOC entry 4869 (class 2604 OID 16533)
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- TOC entry 5036 (class 0 OID 16542)
-- Dependencies: 224
-- Data for Name: notifications; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.notifications (id, message, created_at) FROM stdin;
\.


--
-- TOC entry 5032 (class 0 OID 16518)
-- Dependencies: 220
-- Data for Name: reports; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.reports (id, username, location, incident_type, urgency, description, anonymous, created_at) FROM stdin;
1	test_user	Lagos	Theft	High	Test report from Jupyter	f	2026-05-19 11:55:10.615906
2	test_user	Lagos	Theft	High	Test report from Jupyter	f	2026-05-19 12:45:01.187589
3	Kemi Akinola	Jos	Human Trafficking	High	I was contacted for a coporate work, on reaching there it was a prostitution company. Me and many other young ladies are in trouble, i only managed to escape.\n	f	2026-05-19 16:13:22.868051
4	Olafunmi Jubril	Kogi	Unpaid Labour	Moderate	My organiztion has been witholding our wages for the past 3 years now, and they are threatning us of never gettng a job ever if we decide to quit. More than 50 of us are in this mess, and we don't have what it takes to hold them.\n	f	2026-05-19 16:22:23.938952
5	anonymous_12	Lagos	Forced Labour	High	Employer confiscated travel documents and restricted movement.	t	2026-05-20 16:44:20.763158
6	user008	Kano	Wage Withholding	Medium	Workers reported unpaid wages for over three months.	f	2026-05-20 16:44:20.763158
7	anonymous_44	Abuja	Human Trafficking Suspicion	High	Victim allegedly transported between states under coercion.	t	2026-05-20 16:44:20.763158
8	caseworker34	Port Harcourt	Child Exploitation	High	Minor reportedly engaged in hazardous labor conditions.	f	2026-05-20 16:44:20.763158
9	observer21	Ibadan	Unsafe Working Conditions	Medium	Factory workers exposed to unsafe machinery without protection.	f	2026-05-20 16:44:20.763158
10	anonymous_56	Benin City	Forced Domestic Labour	High	Individual prevented from leaving employer residence.	t	2026-05-20 16:44:20.763158
11	field_agent9	Enugu	Sexual Exploitation Suspicion	High	Reports of coercion and restricted communication.	f	2026-05-20 16:44:20.763158
12	anonymous_88	Jos	Human Trafficking Suspicion	High	Suspicious recruitment promises targeting young adults.	t	2026-05-20 16:44:20.763158
13	user102	Abeokuta	Wage Withholding	Low	Delayed payments reported by temporary workers.	f	2026-05-20 16:44:20.763158
14	anonymous_17	Kaduna	Forced Labour	High	Workers threatened after requesting payment.	t	2026-05-20 16:44:20.763158
15	case_monitor7	Ilorin	Child Labour	Medium	Children observed working extended hours in market area.	f	2026-05-20 16:44:20.763158
16	anonymous_72	Owerri	Movement Restriction	High	Victim allegedly denied access to personal identification.	t	2026-05-20 16:44:20.763158
17	helper22	Uyo	Unsafe Recruitment Practices	Medium	Recruiters demanding excessive transportation fees.	f	2026-05-20 16:44:20.763158
18	anonymous_91	Maiduguri	Forced Labour	High	Workers reportedly housed in overcrowded restricted facilities.	t	2026-05-20 16:44:20.763158
19	user403	Calabar	Exploitation Suspicion	Medium	Individuals reported intimidation and document seizure.	f	2026-05-20 16:44:20.763158
20	anonymous_65	Akure	Domestic Exploitation	Medium	Worker denied rest periods and communication access.	t	2026-05-20 16:44:20.763158
21	support_agent5	Lokoja	Labour Abuse	Low	Workers complained about excessive unpaid overtime.	f	2026-05-20 16:44:20.763158
22	anonymous_39	Warri	Human Trafficking Suspicion	High	Victim allegedly transported under false employment promises.	t	2026-05-20 16:44:20.763158
23	user510	Osogbo	Unsafe Working Conditions	Medium	Reports of unsafe industrial environment and injuries.	f	2026-05-20 16:44:20.763158
24	anonymous_73	Onitsha	Forced Labour	High	Employer allegedly used threats to prevent workers from leaving.	t	2026-05-20 16:44:20.763158
25	unna_nna	Owerri	Unpaid Labour	Moderate	 have been working for 7 months now withought pay, and my boss is acting non-chalant.\n	f	2026-05-21 17:21:44.786737
26	Anonymous	Mali	Human Trafficking	High (Immediate Action Required)	they dey sell person ohhhhhhhh	t	2026-05-23 19:12:01.838245
27	Anonymous	Ojota, Lagos	Domestic Abuse	High	My neighbours who are couples are always fighting eachother with the husband alsways beaten his wife to pump. Alot of people has tried putting an end to it but no one has been able to. Please come save the poor lady.	t	2026-05-23 23:32:45.219651
28	kemi	epe	Harassment	Critical	at this hour mentioned 18:00hrs a lady was been raped and was dumped by the road side	f	2026-05-24 09:31:43.520359
\.


--
-- TOC entry 5034 (class 0 OID 16530)
-- Dependencies: 222
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, username, password, anon_reports, hide_identity, safety_alerts, awareness_updates) FROM stdin;
1	yomi_09	safepath	0	0	0	0
2	yy	uu	0	0	0	0
3	kemi	kkk	0	0	0	0
\.


--
-- TOC entry 5045 (class 0 OID 0)
-- Dependencies: 223
-- Name: notifications_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.notifications_id_seq', 1, false);


--
-- TOC entry 5046 (class 0 OID 0)
-- Dependencies: 219
-- Name: reports_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reports_id_seq', 28, true);


--
-- TOC entry 5047 (class 0 OID 0)
-- Dependencies: 221
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 3, true);


--
-- TOC entry 4883 (class 2606 OID 16551)
-- Name: notifications notifications_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.notifications
    ADD CONSTRAINT notifications_pkey PRIMARY KEY (id);


--
-- TOC entry 4877 (class 2606 OID 16528)
-- Name: reports reports_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.reports
    ADD CONSTRAINT reports_pkey PRIMARY KEY (id);


--
-- TOC entry 4879 (class 2606 OID 16538)
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 4881 (class 2606 OID 16540)
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


-- Completed on 2026-05-24 20:38:40

--
-- PostgreSQL database dump complete
--

\unrestrict qQY1Jyy3zHIONyaF2iFA9b96qefLYbuFENopsHzvGVAPqNKSNCtCz3oAbtTcWMB

