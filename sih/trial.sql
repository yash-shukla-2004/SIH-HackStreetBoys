--
-- PostgreSQL database dump
--

-- Dumped from database version 15.8 (Homebrew)
-- Dumped by pg_dump version 15.8 (Homebrew)

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
-- Name: gujarat_high_court_judges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.gujarat_high_court_judges (
    sl_no integer NOT NULL,
    name character varying(100),
    source character varying(50),
    date_of_appointment_as_addl_judge date,
    date_of_appointment_as_pmt_judge date,
    date_of_retirement date,
    remarks character varying(255)
);


ALTER TABLE public.gujarat_high_court_judges OWNER TO postgres;

--
-- Name: gujarat_high_court_judges_sl_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.gujarat_high_court_judges_sl_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gujarat_high_court_judges_sl_no_seq OWNER TO postgres;

--
-- Name: gujarat_high_court_judges_sl_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.gujarat_high_court_judges_sl_no_seq OWNED BY public.gujarat_high_court_judges.sl_no;


--
-- Name: supreme_court_judges; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supreme_court_judges (
    sl_no integer NOT NULL,
    name character varying(100),
    date_of_appointment date,
    date_of_retirement date,
    remarks character varying(255)
);


ALTER TABLE public.supreme_court_judges OWNER TO postgres;

--
-- Name: judges_sl_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.judges_sl_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.judges_sl_no_seq OWNER TO postgres;

--
-- Name: judges_sl_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.judges_sl_no_seq OWNED BY public.supreme_court_judges.sl_no;


--
-- Name: supreme_court; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.supreme_court (
    sl_no integer NOT NULL,
    name character varying(100),
    date_of_appointment date,
    date_of_retirement date,
    remarks character varying(255)
);


ALTER TABLE public.supreme_court OWNER TO postgres;

--
-- Name: supreme_court_sl_no_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.supreme_court_sl_no_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.supreme_court_sl_no_seq OWNER TO postgres;

--
-- Name: supreme_court_sl_no_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.supreme_court_sl_no_seq OWNED BY public.supreme_court.sl_no;


--
-- Name: gujarat_high_court_judges sl_no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gujarat_high_court_judges ALTER COLUMN sl_no SET DEFAULT nextval('public.gujarat_high_court_judges_sl_no_seq'::regclass);


--
-- Name: supreme_court sl_no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supreme_court ALTER COLUMN sl_no SET DEFAULT nextval('public.supreme_court_sl_no_seq'::regclass);


--
-- Name: supreme_court_judges sl_no; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supreme_court_judges ALTER COLUMN sl_no SET DEFAULT nextval('public.judges_sl_no_seq'::regclass);


--
-- Data for Name: gujarat_high_court_judges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.gujarat_high_court_judges (sl_no, name, source, date_of_appointment_as_addl_judge, date_of_appointment_as_pmt_judge, date_of_retirement, remarks) FROM stdin;
1	SMT. SUNITA AGARWAL	BAR	2011-11-21	2013-08-06	2028-04-29	CJ w.e.f. 23/07/2023 (PHC: Allahabad)
2	BIREN ANIRUDDH VAISHNAV	BAR	2016-04-06	2018-03-15	2025-05-21	\N
3	ALPESH YESHVANT KOGJE	BAR	2016-04-06	2018-03-15	2031-07-15	\N
4	ARVINDSINGH ISHWARSINGH SUPEHIA	BAR	2016-04-06	2018-03-15	2031-08-30	\N
5	UMESH AMRITLAL TRIVEDI	BAR	\N	2018-10-22	2025-06-10	\N
6	BHARGAV DHIRENBHAI KARIA	BAR	\N	2019-03-05	2027-12-22	\N
7	SMT. SANGEETA KAMALSINGH VISHEN	BAR	\N	2019-03-05	2031-12-29	\N
8	CHEEKATI MANAVENDRANATH ROY	SERVICE	\N	2019-06-20	2026-05-20	Joined on 02/11/2023 (PHC: AP)
9	ILESH JASHVANTRAI VORA	SERVICE	\N	2022-03-03	2027-08-17	\N
10	KUMARI GITA GOPI	SERVICE	\N	2020-03-03	2028-03-23	\N
11	MS. SUSAN VALENTINE PINTO	SERVICE	\N	2023-03-17	2029-05-13	\N
12	HASMUKHBHAI DALSUKHBHAI SUTHAR	SERVICE	\N	2023-03-17	2032-01-22	\N
13	JITENDRA CHAMPAKLAL DOSHI	SERVICE	\N	2023-03-17	2031-06-29	\N
14	MANGESH RAMESHCHANDRA MENGDEY	SERVICE	\N	2023-03-17	2034-10-04	\N
15	DIVYESHKUMAR AMRUTLAL JOSHI	SERVICE	\N	2023-03-17	2036-11-24	\N
16	DEVAN MAHENDRABHAI DESAI	BAR	\N	2023-04-05	2032-05-30	\N
17	SMT. MOXA KIRAN THAKKER	BAR	\N	2023-04-05	2039-11-05	\N
18	VIMAL KANAIYALAL VYAS	SERVICE	\N	2023-10-20	2028-12-24	\N
19	PRANAV SHAILESH TRIVEDI	BAR	\N	2024-01-24	2037-11-01	\N
20	SMT. SUNITA AGARWAL	BAR	2011-11-21	2013-08-06	2028-04-29	CJ w.e.f. 23/07/2023 (PHC: Allahabad)
21	BIREN ANIRUDDH VAISHNAV	BAR	2016-04-06	2018-03-15	2025-05-21	\N
22	ALPESH YESHVANT KOGJE	BAR	2016-04-06	2018-03-15	2031-07-15	\N
23	ARVINDSINGH ISHWARSINGH SUPEHIA	BAR	2016-04-06	2018-03-15	2031-08-30	\N
24	UMESH AMRITLAL TRIVEDI	BAR	\N	2018-10-22	2025-06-10	\N
25	BHARGAV DHIRENBHAI KARIA	BAR	\N	2019-03-05	2027-12-22	\N
26	SMT. SANGEETA KAMALSINGH VISHEN	BAR	\N	2019-03-05	2031-12-29	\N
27	CHEEKATI MANAVENDRANATH ROY	SERVICE	\N	2019-06-20	2026-05-20	Joined on 02/11/2023 (PHC: AP)
28	ILESH JASHVANTRAI VORA	SERVICE	\N	2022-03-03	2027-08-17	\N
29	KUMARI GITA GOPI	SERVICE	\N	2020-03-03	2028-03-23	\N
\.


--
-- Data for Name: supreme_court; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supreme_court (sl_no, name, date_of_appointment, date_of_retirement, remarks) FROM stdin;
\.


--
-- Data for Name: supreme_court_judges; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.supreme_court_judges (sl_no, name, date_of_appointment, date_of_retirement, remarks) FROM stdin;
1	DR. DHANANJAYA Y. CHANDRACHUD	2016-05-13	2024-11-10	CJI w.e.f. 09.11.2022 (BOMBAY)
2	SANJIV KHANNA	2019-01-18	2025-05-13	DELHI
3	BHUSHAN RAMKRISHNA GAVAI	2019-05-24	2025-11-23	BOMBAY
4	SURYA KANT	2019-05-24	2027-02-09	PUNJAB & HARYANA
5	HRISHIKESH ROY	2019-09-23	2025-01-31	GAUHATI
6	ABHAY SHREENIWAS OKA	2021-08-31	2025-05-24	BOMBAY
7	VIKRAM NATH	2021-08-31	2027-09-23	ALLAHABAD
8	JITENDRA KUMAR MAHESHWARI	2021-08-31	2026-06-28	MADHYA PRADESH
9	KUMARI HIMA KOHLI	2021-08-31	2024-09-01	DELHI
10	SMT. B.V. NAGARATHNA	2021-08-31	2027-10-29	KARNATAKA
11	C.T. RAVI KUMAR	2021-08-31	2025-01-05	KERALA
12	M.M. SUNDRESH	2021-08-31	2027-07-20	MADRAS
13	MS. BELA M. TRIVEDI	2021-08-31	2025-06-09	GUJARAT
14	P.S. NARASIMHA	2021-08-31	2028-05-02	BAR
15	SUDHANSHU DHULIA	2022-05-09	2025-09-08	UTTARAKHAND
16	JAMSHED BURJOR PARDIWALA	2022-05-09	2030-08-11	GUJARAT
17	DIPANKAR DATTA	2022-12-12	2030-02-08	CALCUTTA
18	PANKAJ MITHAL	2023-02-06	2026-06-16	ALLAHABAD
19	SANJAY KAROL	2023-02-06	2026-08-22	HIMACHAL PRADESH
20	P.V. SANJAY KUMAR	2023-02-06	2028-08-13	TELANGANA
21	AHSANUDDIN AMANULLAH	2023-02-06	2028-05-10	PATNA
22	MANOJ MISRA	2023-02-06	2030-06-01	ALLAHABAD
23	RAJESH BINDAL	2023-02-13	2026-04-15	PUNJAB & HARYANA
24	ARAVIND KUMAR	2023-02-13	2027-07-13	KARNATAKA
25	PRASHANT KUMAR MISHRA	2023-05-19	2029-08-28	CHHATTISGARH
26	K.V. VISWANATHAN	2023-05-19	2031-05-25	BAR
27	UJJAL BHUYAN	2023-07-14	2029-08-01	GAUHATI
28	SARASA VENKATANARYANA BHATTI	2023-07-14	2027-05-05	ANDHRA PRADESH
29	SATISH CHANDRA SHARMA	2023-11-09	2026-11-29	MADHYA PRADESH
30	AUGUSTINE GEORGE MASIH	2023-11-09	2028-01-11	PUNJAB & HARYANA
31	SANDEEP MEHTA	2023-11-09	2028-01-10	RAJASTHAN
32	PRASANNA BHALACHANDRA VARALE	2024-01-25	2027-06-22	BOMBAY
33	NONGMEIKAPAM KOTISWAR SINGH	2024-07-18	2028-02-28	MANIPUR
34	R. MAHADEVAN	2024-07-18	2028-06-06	MADRAS
\.


--
-- Name: gujarat_high_court_judges_sl_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.gujarat_high_court_judges_sl_no_seq', 29, true);


--
-- Name: judges_sl_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.judges_sl_no_seq', 34, true);


--
-- Name: supreme_court_sl_no_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.supreme_court_sl_no_seq', 1, false);


--
-- Name: gujarat_high_court_judges gujarat_high_court_judges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.gujarat_high_court_judges
    ADD CONSTRAINT gujarat_high_court_judges_pkey PRIMARY KEY (sl_no);


--
-- Name: supreme_court_judges judges_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supreme_court_judges
    ADD CONSTRAINT judges_pkey PRIMARY KEY (sl_no);


--
-- Name: supreme_court supreme_court_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.supreme_court
    ADD CONSTRAINT supreme_court_pkey PRIMARY KEY (sl_no);


--
-- PostgreSQL database dump complete
--

