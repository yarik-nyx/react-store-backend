--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

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
-- Name: brand; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.brand (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.brand OWNER TO postgres;

--
-- Name: brand_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.brand_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.brand_id_seq OWNER TO postgres;

--
-- Name: brand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.brand_id_seq OWNED BY public.brand.id;


--
-- Name: chipsets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.chipsets (
    id integer NOT NULL,
    chipset character varying NOT NULL
);


ALTER TABLE public.chipsets OWNER TO postgres;

--
-- Name: chipsets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.chipsets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.chipsets_id_seq OWNER TO postgres;

--
-- Name: chipsets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.chipsets_id_seq OWNED BY public.chipsets.id;


--
-- Name: cooling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cooling (
    id integer NOT NULL,
    title character varying NOT NULL,
    brand_id smallint NOT NULL,
    type_cooling_id smallint NOT NULL,
    num_fan integer,
    "TDP" integer NOT NULL,
    fan_size_length smallint,
    fan_size_width smallint,
    fan_size_height smallint,
    imageurl character varying NOT NULL,
    price integer,
    rating numeric(10,2)
);


ALTER TABLE public.cooling OWNER TO postgres;

--
-- Name: cooling_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cooling_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cooling_id_seq OWNER TO postgres;

--
-- Name: cooling_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cooling_id_seq OWNED BY public.cooling.id;


--
-- Name: cooling_socket; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cooling_socket (
    id integer NOT NULL,
    cooling_id smallint NOT NULL,
    socket_id smallint NOT NULL
);


ALTER TABLE public.cooling_socket OWNER TO postgres;

--
-- Name: cooling_socket_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cooling_socket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cooling_socket_id_seq OWNER TO postgres;

--
-- Name: cooling_socket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cooling_socket_id_seq OWNED BY public.cooling_socket.id;


--
-- Name: form_factors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.form_factors (
    id integer NOT NULL,
    form_factor character varying NOT NULL
);


ALTER TABLE public.form_factors OWNER TO postgres;

--
-- Name: form_factors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.form_factors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.form_factors_id_seq OWNER TO postgres;

--
-- Name: form_factors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.form_factors_id_seq OWNED BY public.form_factors.id;


--
-- Name: interfaces; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.interfaces (
    id integer NOT NULL,
    interface character varying NOT NULL
);


ALTER TABLE public.interfaces OWNER TO postgres;

--
-- Name: interfaces_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.interfaces_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.interfaces_id_seq OWNER TO postgres;

--
-- Name: interfaces_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.interfaces_id_seq OWNED BY public.interfaces.id;


--
-- Name: letters; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.letters (
    id integer NOT NULL,
    letter character varying(2) NOT NULL
);


ALTER TABLE public.letters OWNER TO postgres;

--
-- Name: letters_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.letters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.letters_id_seq OWNER TO postgres;

--
-- Name: letters_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.letters_id_seq OWNED BY public.letters.id;


--
-- Name: motherboards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.motherboards (
    id integer NOT NULL,
    title character varying NOT NULL,
    brand_id smallint NOT NULL,
    chipset_id smallint NOT NULL,
    "form _factor_id" smallint NOT NULL,
    socket_id smallint NOT NULL,
    type_ram_id smallint NOT NULL,
    cpu_power_pin character varying NOT NULL,
    frequency_ram integer NOT NULL,
    max_num_ram integer NOT NULL,
    slots_ram integer NOT NULL,
    mb_power_pin character varying NOT NULL,
    imageurl character varying NOT NULL,
    price integer,
    rating numeric(10,2)
);


ALTER TABLE public.motherboards OWNER TO postgres;

--
-- Name: motherboards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.motherboards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.motherboards_id_seq OWNER TO postgres;

--
-- Name: motherboards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.motherboards_id_seq OWNED BY public.motherboards.id;


--
-- Name: power_supplies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.power_supplies (
    id integer NOT NULL,
    title character varying NOT NULL,
    brand_id smallint NOT NULL,
    power integer NOT NULL,
    min_voltage integer NOT NULL,
    max_voltage integer NOT NULL,
    imageurl character varying NOT NULL,
    certificate_id smallint,
    price integer,
    rating numeric(10,2)
);


ALTER TABLE public.power_supplies OWNER TO postgres;

--
-- Name: power_supplies_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.power_supplies_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.power_supplies_id_seq OWNER TO postgres;

--
-- Name: power_supplies_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.power_supplies_id_seq OWNED BY public.power_supplies.id;


--
-- Name: proc_let; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proc_let (
    id integer NOT NULL,
    proc_id smallint NOT NULL,
    let_id smallint NOT NULL
);


ALTER TABLE public.proc_let OWNER TO postgres;

--
-- Name: proc_let_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proc_let_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proc_let_id_seq OWNER TO postgres;

--
-- Name: proc_let_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proc_let_id_seq OWNED BY public.proc_let.id;


--
-- Name: proc_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.proc_types (
    id integer NOT NULL,
    proc_id smallint NOT NULL,
    type_id smallint NOT NULL
);


ALTER TABLE public.proc_types OWNER TO postgres;

--
-- Name: proc_types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.proc_types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.proc_types_id_seq OWNER TO postgres;

--
-- Name: proc_types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.proc_types_id_seq OWNED BY public.proc_types.id;


--
-- Name: processors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.processors (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    brand_id smallint NOT NULL,
    num_of_cores character varying NOT NULL,
    num_of_threads integer NOT NULL,
    base_frequency character varying NOT NULL,
    socket_id smallint NOT NULL,
    l2_cache numeric(10,2) NOT NULL,
    l3_cache numeric(10,2) NOT NULL,
    texproc integer NOT NULL,
    "TDP" character varying NOT NULL,
    max_temp integer NOT NULL,
    max_frequency numeric(10,2),
    imageurl character varying NOT NULL,
    price integer,
    rating numeric(10,2)
);


ALTER TABLE public.processors OWNER TO postgres;

--
-- Name: processors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.processors_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.processors_id_seq OWNER TO postgres;

--
-- Name: processors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.processors_id_seq OWNED BY public.processors.id;


--
-- Name: ps_certificates; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ps_certificates (
    id integer NOT NULL,
    certificate character varying NOT NULL
);


ALTER TABLE public.ps_certificates OWNER TO postgres;

--
-- Name: ps_certificates_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ps_certificates_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ps_certificates_id_seq OWNER TO postgres;

--
-- Name: ps_certificates_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ps_certificates_id_seq OWNED BY public.ps_certificates.id;


--
-- Name: rams; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.rams (
    id integer NOT NULL,
    title character varying NOT NULL,
    brand_id smallint NOT NULL,
    type_ram_id smallint NOT NULL,
    volume integer NOT NULL,
    frequency integer NOT NULL,
    voltage numeric(10,2) NOT NULL,
    timings character varying NOT NULL,
    cas integer NOT NULL,
    imageurl character varying NOT NULL,
    price integer,
    rating numeric(10,2)
);


ALTER TABLE public.rams OWNER TO postgres;

--
-- Name: rams_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.rams_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.rams_id_seq OWNER TO postgres;

--
-- Name: rams_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.rams_id_seq OWNED BY public.rams.id;


--
-- Name: sockets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sockets (
    id integer NOT NULL,
    socket character varying(50) NOT NULL
);


ALTER TABLE public.sockets OWNER TO postgres;

--
-- Name: scokets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.scokets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.scokets_id_seq OWNER TO postgres;

--
-- Name: scokets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.scokets_id_seq OWNED BY public.sockets.id;


--
-- Name: type_cooling; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_cooling (
    id integer NOT NULL,
    type_cooling character varying NOT NULL
);


ALTER TABLE public.type_cooling OWNER TO postgres;

--
-- Name: type_cooling_id_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_cooling_id_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_cooling_id_id_seq OWNER TO postgres;

--
-- Name: type_cooling_id_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_cooling_id_id_seq OWNED BY public.type_cooling.id;


--
-- Name: types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types (
    id integer NOT NULL,
    type character varying(3) NOT NULL
);


ALTER TABLE public.types OWNER TO postgres;

--
-- Name: types_capacity; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types_capacity (
    id integer NOT NULL,
    type_capacity character varying NOT NULL
);


ALTER TABLE public.types_capacity OWNER TO postgres;

--
-- Name: types_capacity_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_capacity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.types_capacity_id_seq OWNER TO postgres;

--
-- Name: types_capacity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_capacity_id_seq OWNED BY public.types_capacity.id;


--
-- Name: types_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.types_id_seq OWNER TO postgres;

--
-- Name: types_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_id_seq OWNED BY public.types.id;


--
-- Name: types_ram; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.types_ram (
    id integer NOT NULL,
    type_ram character varying NOT NULL
);


ALTER TABLE public.types_ram OWNER TO postgres;

--
-- Name: types_ram_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.types_ram_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.types_ram_id_seq OWNER TO postgres;

--
-- Name: types_ram_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.types_ram_id_seq OWNED BY public.types_ram.id;


--
-- Name: videocards; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videocards (
    id integer NOT NULL,
    title character varying(50) NOT NULL,
    brand_id smallint NOT NULL,
    videochipset_id smallint NOT NULL,
    base_frequency integer NOT NULL,
    "TDP" integer NOT NULL,
    video_memory_capacity integer NOT NULL,
    type_capacity_id smallint NOT NULL,
    max_power integer NOT NULL,
    max_frequency integer,
    interface_id smallint NOT NULL,
    imageurl character varying NOT NULL,
    price integer,
    rating numeric(10,2)
);


ALTER TABLE public.videocards OWNER TO postgres;

--
-- Name: videocards_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videocards_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.videocards_id_seq OWNER TO postgres;

--
-- Name: videocards_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videocards_id_seq OWNED BY public.videocards.id;


--
-- Name: videochipsets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.videochipsets (
    id integer NOT NULL,
    videochipset character varying NOT NULL
);


ALTER TABLE public.videochipsets OWNER TO postgres;

--
-- Name: videochipsets_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.videochipsets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.videochipsets_id_seq OWNER TO postgres;

--
-- Name: videochipsets_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.videochipsets_id_seq OWNED BY public.videochipsets.id;


--
-- Name: brand id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand ALTER COLUMN id SET DEFAULT nextval('public.brand_id_seq'::regclass);


--
-- Name: chipsets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chipsets ALTER COLUMN id SET DEFAULT nextval('public.chipsets_id_seq'::regclass);


--
-- Name: cooling id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling ALTER COLUMN id SET DEFAULT nextval('public.cooling_id_seq'::regclass);


--
-- Name: cooling_socket id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling_socket ALTER COLUMN id SET DEFAULT nextval('public.cooling_socket_id_seq'::regclass);


--
-- Name: form_factors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_factors ALTER COLUMN id SET DEFAULT nextval('public.form_factors_id_seq'::regclass);


--
-- Name: interfaces id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interfaces ALTER COLUMN id SET DEFAULT nextval('public.interfaces_id_seq'::regclass);


--
-- Name: letters id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.letters ALTER COLUMN id SET DEFAULT nextval('public.letters_id_seq'::regclass);


--
-- Name: motherboards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards ALTER COLUMN id SET DEFAULT nextval('public.motherboards_id_seq'::regclass);


--
-- Name: power_supplies id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.power_supplies ALTER COLUMN id SET DEFAULT nextval('public.power_supplies_id_seq'::regclass);


--
-- Name: proc_let id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_let ALTER COLUMN id SET DEFAULT nextval('public.proc_let_id_seq'::regclass);


--
-- Name: proc_types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_types ALTER COLUMN id SET DEFAULT nextval('public.proc_types_id_seq'::regclass);


--
-- Name: processors id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processors ALTER COLUMN id SET DEFAULT nextval('public.processors_id_seq'::regclass);


--
-- Name: ps_certificates id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ps_certificates ALTER COLUMN id SET DEFAULT nextval('public.ps_certificates_id_seq'::regclass);


--
-- Name: rams id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rams ALTER COLUMN id SET DEFAULT nextval('public.rams_id_seq'::regclass);


--
-- Name: sockets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sockets ALTER COLUMN id SET DEFAULT nextval('public.scokets_id_seq'::regclass);


--
-- Name: type_cooling id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_cooling ALTER COLUMN id SET DEFAULT nextval('public.type_cooling_id_id_seq'::regclass);


--
-- Name: types id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types ALTER COLUMN id SET DEFAULT nextval('public.types_id_seq'::regclass);


--
-- Name: types_capacity id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_capacity ALTER COLUMN id SET DEFAULT nextval('public.types_capacity_id_seq'::regclass);


--
-- Name: types_ram id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_ram ALTER COLUMN id SET DEFAULT nextval('public.types_ram_id_seq'::regclass);


--
-- Name: videocards id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videocards ALTER COLUMN id SET DEFAULT nextval('public.videocards_id_seq'::regclass);


--
-- Name: videochipsets id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videochipsets ALTER COLUMN id SET DEFAULT nextval('public.videochipsets_id_seq'::regclass);


--
-- Data for Name: brand; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.brand (id, name) FROM stdin;
1	Intel
2	Gigabyte
3	Asrock
4	ASUS
5	MSI
6	Patriot
7	Kingston
8	Corsair
9	Crucial
10	G.Skill
11	ADATA
12	Samsung
13	Team Group
14	Aerocool 
15	Deepcool 
16	FSP  
17	HIPER 
18	Zalman 
19	ExeGate 
20	FSP 
21	ID-Cooling
22	Arctic
23	Thermalright
24	PCCooler
\.


--
-- Data for Name: chipsets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.chipsets (id, chipset) FROM stdin;
1	Intel B560
2	Intel B660
3	Intel B760
4	Intel H310
5	Intel H310
6	Intel H470
7	Intel H510
8	Intel H61(B3)
9	Intel H610
10	Intel H670
11	Intel H770
12	Intel H81
13	Intel Q670
14	Intel X299
15	Intel Z690
16	Intel Z790 
17	Intel Z390
19	Intel Z370
\.


--
-- Data for Name: cooling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cooling (id, title, brand_id, type_cooling_id, num_fan, "TDP", fan_size_length, fan_size_width, fan_size_height, imageurl, price, rating) FROM stdin;
1	Deepcool LS720	15	2	39	79	120	2	250	https://avatars.mds.yandex.net/get-mpic/12490566/2a0000018db9db82f7f5b4c72dbe58b7f9c3/300x400	12599	4.90
2	ID-Cooling ZoomFlow 3	21	2	78	78	52	1	180	https://avatars.mds.yandex.net/get-mpic/11397617/2a0000018d37cd8fa6b052a4b9d16333a351/300x400	7099	4.70
3	Arctic Liquid Freezer II-420	22	2	400	138	38	1	420	https://avatars.mds.yandex.net/get-mpic/5232557/2a0000018be830c0457e8a8a32164d70de7d/300x400	18399	5.00
4	Zalman Reserator 5 Z36	18	2	150	140	92	2	300	https://avatars.mds.yandex.net/get-mpic/12140066/2a0000018c52d0f72b5300df9f0268a8d594/300x400	15499	4.60
6	DEEPCOOL AK620	15	1	120	120	60	1	260	https://avatars.mds.yandex.net/get-mpic/4881627/2a0000018e6a5c4820af9446d6d1711c44b1/300x400	5499	4.80
7	PCCooler Paladin EX400S	24	1	105	95	158	1	180	https://avatars.mds.yandex.net/get-mpic/11396862/2a0000018c06e7ba4a19138b85187c853905/300x300	1699	3.80
5	Thermalright Silver Soul 140	23	2	160	140	80	1	320	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgSdqDSU6CauaK7iRl6NtY3UT63lMO1m0GSJ6b5CKKFQ&s	5599	4.20
\.


--
-- Data for Name: cooling_socket; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cooling_socket (id, cooling_id, socket_id) FROM stdin;
1	2	4
2	3	5
3	4	3
4	4	4
5	5	1
6	5	2
7	5	3
8	6	1
9	6	2
10	6	3
11	7	2
12	1	2
\.


--
-- Data for Name: form_factors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.form_factors (id, form_factor) FROM stdin;
1	ATX
2	Micro-ATX
3	Mini-ITX
5	BTX
4	E-ATX
\.


--
-- Data for Name: interfaces; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.interfaces (id, interface) FROM stdin;
1	PCI Express 4.0 x16
2	PCI Express 4.0 x8
3	PCI Express 3.0 x16
\.


--
-- Data for Name: letters; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.letters (id, letter) FROM stdin;
1	K
2	F
3	KF
\.


--
-- Data for Name: motherboards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.motherboards (id, title, brand_id, chipset_id, "form _factor_id", socket_id, type_ram_id, cpu_power_pin, frequency_ram, max_num_ram, slots_ram, mb_power_pin, imageurl, price, rating) FROM stdin;
1	GIGABYTE Z690 AORUS ELITE	2	15	1	2	1	8+4-pin	5200	128	4	24	https://avatars.mds.yandex.net/get-mpic/12152435/2a0000018c8c06cfb6256c0099c5311a6890/300x400	16399	4.50
2	ASRock B660M Pro	3	2	2	2	2	8-pin	3200	64	2	24	https://avatars.mds.yandex.net/get-mpic/5286714/2a0000018dcc1580592017555aefcd1de4f2/300x400	5799	4.30
3	ASUS PRIME B660M-A D4	4	2	1	2	2	8+4-pin	5333	192	4	24	https://avatars.mds.yandex.net/get-mpic/5129282/2a0000018dcfc56cd214332bbf365d030dd0/300x400	13799	4.60
4	MPG Z690 EDGE WIFI	5	15	1	2	1	8+8-pin	7200	128	4	24	https://avatars.mds.yandex.net/get-mpic/11378054/2a0000018b25f659c9020d03f8e217c63364/300x400	18999	4.90
5	X299 DESIGNARE EX	2	14	1	3	2	8+4-pin	4400	256	8	24	https://m.media-amazon.com/images/S/aplus-media/sota/2257f124-fd1b-44e7-91a2-326fb6b218f1.__CR0,0,972,972_PT0_SX300_V1___.jpg	27999	5.00
6	X299 EXTREME4	3	14	4	3	2	8+4-pin	2666	256	8	24	https://omsk.online-dc.ru/files/catalog_image/cell_800/290/69215.jpg	17999	4.70
7	ROG Strix X299-E Gaming	4	14	1	3	2	8+4-pin	2800	128	8	24	https://dlcdnwebimgs.asus.com/gain/8F977F08-F47B-4F4D-96E4-953198999C96	32999	4.80
8	MEG X299 CREATION	5	14	4	3	2	8+4-pin	3200	128	8	24	https://s.alicdn.com/@sc04/kf/He478bea2848f47ba9435a5e0c2b24493z.png_300x300.jpg	31999	4.60
9	Z390 AORUS PRO	2	17	1	4	2	8+4-pin	2666	64	4	24	https://avatars.mds.yandex.net/get-mpic/11414233/2a0000018bf2a8bfb275bbb03603ff199fd0/300x400	17999	4.70
10	Z370 EXTREME4	3	19	4	4	2	8+4-pin	3333	64	4	24	https://m.media-amazon.com/images/I/719omU9vbyL._AC_SS300_.jpg	12999	4.80
11	PRIME Z390-A	4	17	1	4	2	8+4-pin	2666	64	4	24	https://avatars.mds.yandex.net/get-mpic/1865278/2a0000018bf2a8bf745eee0a8f9f44129c8c/300x400	14999	4.70
12	MPG Z390 GAMING EDGE AC	5	17	1	4	2	8+4-pin	4266	64	4	24	https://avatars.mds.yandex.net/get-mpic/4785755/2a0000018d8556ad0fa8018afb863c17f6ef/300x400	15999	4.60
\.


--
-- Data for Name: power_supplies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.power_supplies (id, title, brand_id, power, min_voltage, max_voltage, imageurl, certificate_id, price, rating) FROM stdin;
1	Aerocool KCAS-700W	14	700	100	240	https://avatars.mds.yandex.net/get-mpic/4465823/img_id1515232015589624652.jpeg/300x400	2	5399	1.00
2	Corsair CV650	8	650	100	240	https://c.dns-shop.kz/thumb/st4/fit/300/300/36e5eec5276ec6e96012ea40cdcb036e/a3c3f23f3b0232fb7629ee7c585491798550e21991413c1452ec1436d9b44213.jpg	2	5299	4.20
3	Deepcool DA700	15	700	100	240	https://unicom.md/image/cache/catalog/psu_deepcool_da700_aurora_700w_atx_2_31_80_plus_bron_640-300x300.jpg	2	7299	4.30
4	FSP Group ATX-450PNR	20	450	220	240	https://pimnara.ru/wp-content/uploads/2020/12/ef1e995a0f8b11e5a79100155d012c00_3d4c860b340711e886e818a90563bb72-300x300.jpg	\N	2399	3.50
5	HIPER HPB-650SM	17	650	115	230	https://c.dns-shop.kz/thumb/st4/fit/300/300/64356822137783e2c9a798e9a4ff4725/b8a16541b49e18e4a0ba10a8febd90cd1dee473351715dfdd99a5e40f9d3bcab.jpg	2	8399	4.90
6	Zalman ZM600-LXII	18	600	115	230	https://avatars.mds.yandex.net/get-mpic/11396163/2a0000018b9abe7e05af1040da9525841df8/300x400	\N	4599	4.00
7	ExeGate ATX-700NPX	19	700	110	220	https://avatars.mds.yandex.net/get-mpic/11382628/2a0000018c6759137009ccc72fe8f432ce2e/300x400	\N	3299	3.80
8	FSP ATX-600PNR	20	600	220	240	https://c.dns-shop.kz/thumb/st4/fit/300/300/f80ea4058c451d34f54710f8e7725d7d/7f5e09490e12816a6e324cdbef9d60fb43b2b19873ca376226ae1ccf06940dce.jpg	\N	5099	4.00
\.


--
-- Data for Name: proc_let; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proc_let (id, proc_id, let_id) FROM stdin;
1	1	3
2	2	1
3	2	2
4	3	1
5	3	2
6	3	3
7	4	2
8	5	2
9	6	1
10	6	2
11	6	3
12	7	1
13	7	2
14	7	3
15	8	1
16	8	2
17	8	3
18	9	1
19	9	2
20	9	3
\.


--
-- Data for Name: proc_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.proc_types (id, proc_id, type_id) FROM stdin;
1	1	1
2	2	1
3	3	1
4	3	2
5	4	1
6	5	2
7	6	2
8	7	1
9	7	2
10	8	1
11	8	2
12	9	2
\.


--
-- Data for Name: processors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.processors (id, title, brand_id, num_of_cores, num_of_threads, base_frequency, socket_id, l2_cache, l3_cache, texproc, "TDP", max_temp, max_frequency, imageurl, price, rating) FROM stdin;
1	Intel Core i9-10900	1	10	20	2.8 ГГц	3	25.00	24.00	14	65	95	5.20	https://avatars.mds.yandex.net/get-mpic/11240005/2a0000018ec96c24c7f8856ccbd001fd8765/300x400	32999	4.80
2	Intel Core i7-10700	1	8	16	2.9 ГГц	1	16.00	16.00	14	65	95	4.80	https://avatars.mds.yandex.net/get-mpic/5289362/2a0000018eb42977026db843cd032d8dc928/300x400	19599	4.70
3	Intel Core i5-10600	1	6	12	3.3 ГГц	1	12.00	12.00	14	65	95	4.80	https://c.dns-shop.ru/thumb/st4/fit/300/300/c621ffe6fedf5871c6b7c4d74a80d4fa/4fb75f6a08202ab2d862d3a4ecb871fef9e4fac141441978b00be572f79c383c.jpg	9499	4.50
4	Intel Core i3-10100	1	4	8	3.6 ГГц	1	6.00	6.00	14	65	100	\N	https://avatars.mds.yandex.net/get-mpic/1681399/img_id9176847000558902419.jpeg/300x400	5699	4.00
5	Intel Core i9-9900	1	8	16	3.1 ГГц	4	2.00	16.00	14	65	100	\N	https://avatars.mds.yandex.net/get-mpic/5316009/2a0000018e139c9b39631fd0bbad994ac460/300x400	11499	4.20
6	Intel Core i7-13700	1	16 (8P+8E)	24	2,1 ГГц	2	12.00	30.00	7	65	100	5.20	https://avatars.mds.yandex.net/get-mpic/5209485/2a0000018f1ec3667d14304dfae1ed5d99f4/300x400	38999	4.90
7	Intel Core i5-13600	1	6 (P-ядер) + 8 (E-ядра)	16	3.5 ГГц (P-ядро), 2.6 ГГц (E-ядро)	2	7.50	24.00	10	125	90	5.10	https://s.intant.ru/40/402/4020/402072/15c4272e-dd05-40c7-b386-201b649badcf_1.png	28999	4.80
8	Intel Core i5-12600	1	6 (P-ядер) + 4 (E-ядра)	16	3.7 ГГц (P-ядро), 2.8 ГГц (E-ядро)	2	7.50	20.00	10	125	90	4.90	https://c.dns-shop.ru/thumb/st4/fit/300/300/f5e5120098263bfe3c4c56843592d8e6/935311886f9749296d055cc658842c8c43f8ed7e53d3ea753a36bbccd34e067b.jpg	20899	4.60
9	Intel Core i5-14600	1	10 (6P+4E)	16	2,3 ГГц	2	12.00	30.00	7	65	100	5.00	https://avatars.mds.yandex.net/get-mpic/1808939/2a0000018deab183b441a29cad5d4fbc6838/300x400	31499	4.80
\.


--
-- Data for Name: ps_certificates; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ps_certificates (id, certificate) FROM stdin;
1	80 PLUS
2	80 PLUS Bronze
3	80 PLUS Silver
4	80 PLUS Gold
5	80 PLUS Platinum
6	80 PLUS Titanium
\.


--
-- Data for Name: rams; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.rams (id, title, brand_id, type_ram_id, volume, frequency, voltage, timings, cas, imageurl, price, rating) FROM stdin;
1	Patriot Viper Steel	6	2	16	3200	1.35	16-18-18-36	18	https://avatars.mds.yandex.net/get-mpic/3590777/2a0000018b8518bc215d8aa8ca90fd58c1b7/300x400	3999	4.70
2	Kingston Fury Beast	7	2	32	3733	1.35	19-23-23	17	https://avatars.mds.yandex.net/get-mpic/11269834/2a0000018f1f392e1b8da7fffddc7c121c6b/300x400	8799	4.80
3	Corsair Vengeance LPX	8	2	8	2666	1.20	16-18-18-36	18	https://c.dns-shop.ru/thumb/st4/fit/300/300/ca4a1f048c0e8ed5627a699fe7a21b7c/fbb90faa5cbeb6bca31428b69cd2100be603c0c26f03b4a2e7b31c0e46e07257.jpg	1299	4.00
4	Crucial Ballistix	9	1	32	4800	1.10	38-38-38	36	https://c.dns-shop.ru/thumb/st1/fit/300/300/1b43d1cf6983cf439b79356548411dcc/64bdb8a9147ae223016dae0f1c5cb2685dfb367de40f060778dbfbb16ec97b93.jpg	9499	4.70
5	G.Skill Trident Z5	10	1	64	6000	1.30	38-38-38	36	https://avatars.mds.yandex.net/get-mpic/5129282/2a0000018e31b22c32dd798860b1386fe0a6/300x400	26799	4.80
6	ADATA Premier	11	1	16	5200	1.10	38-38-38	36	https://c.dns-shop.ru/thumb/st1/fit/300/300/4bff5000cc310e492ecd772788c5789f/0652d4575f6a5c7744bda2d11dcc22024487325c4708d08535c5da39e38388b9.jpg	3499	3.70
7	Samsung DDR5	12	1	16	5600	1.10	40-40-40	39	https://avatars.mds.yandex.net/get-mpic/5346238/2a0000018e08fd4824e8738a1255c3528943/300x400	5199	4.80
8	Kingston Fury Renegade	7	1	32	6000	1.30	38-38-38	36	https://ir.ozone.ru/s3/multimedia-c/c350/6321128724.jpg	9099	4.90
9	Corsair Dominator Platinum RGB	8	1	64	6200	1.40	38-38-38	36	https://static.cdek.shopping/images/shopping/fw/300/300/103b2fe4108d4e5094dcfdbada3a3a42.jpg	19499	4.70
10	Team Group T-Force Delta RGB	13	1	32	6000	1.30	38-38-38	36	https://c.dns-shop.ru/thumb/st1/fit/300/300/4a59fa2f3209597191c77888a2c15938/a1b64338ac3177e2d7d0451bb574db55e14d7a31a6cc1fbcc54926a619d5fcb6.jpg	10999	4.80
\.


--
-- Data for Name: sockets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sockets (id, socket) FROM stdin;
1	LGA 1200
2	LGA 1700
3	LGA 2066
4	LGA 1151
5	LGA1366
\.


--
-- Data for Name: type_cooling; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type_cooling (id, type_cooling) FROM stdin;
1	активное воздушное
2	жидкостное
\.


--
-- Data for Name: types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types (id, type) FROM stdin;
1	BOX
2	OEM
\.


--
-- Data for Name: types_capacity; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types_capacity (id, type_capacity) FROM stdin;
1	GDDR5
2	GDDR6
3	HBM2
\.


--
-- Data for Name: types_ram; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.types_ram (id, type_ram) FROM stdin;
1	DDR5
3	DDR3
2	DDR4
\.


--
-- Data for Name: videocards; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videocards (id, title, brand_id, videochipset_id, base_frequency, "TDP", video_memory_capacity, type_capacity_id, max_power, max_frequency, interface_id, imageurl, price, rating) FROM stdin;
1	GIGABYTE GeForce RTX 3060 GAMING OC	2	1	1320	170	12	2	180	1837	1	https://avatars.mds.yandex.net/get-mpic/11375994/2a0000018b7183978b61c9a6ea307cb664a6/300x400	33999	4.80
2	ASRock AMD Radeon RX 6600 Challenger White	3	2	1626	132	8	2	140	2491	2	https://avatars.mds.yandex.net/get-mpic/5129282/2a0000018dcca258a79152350ae4799d246d/300x400	24999	4.90
3	GIGABYTE GeForce GTX 1660 SUPER D6	2	3	1530	125	6	2	125	1785	3	https://avatars.mds.yandex.net/get-mpic/9067823/2a0000018c86520f5bf3c8a084464586b8d5/300x400	25999	4.20
4	GIGABYTE AMD Radeon RX 580 GAMING	2	4	1257	185	8	1	185	1355	3	https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEea9HKqy9eqx8IW3qcpowIVbt8BtCikYG8wW38ZiKCQ&s	36499	4.40
5	MSI GeForce GTX 960 GAMING	5	5	1126	120	2	1	120	1279	3	https://images.pc-builds.com/images/components/9ccaebd5c398391d6f5fc5bcfb273ff2/650fd590337220017e672bda8db973e1/531c5a93878c7f1b6a08aeb1c3288387.png	14899	3.80
6	Asus AMD Radeon R9 380X STRIX OC	4	6	970	190	4	1	190	\N	3	https://s.alicdn.com/@sc04/kf/H7d91719ab6064959ac056a332716c2f5f.png_300x300.jpg	12999	3.60
7	MSI GeForce RTX 2070 GAMING GP	5	7	1410	185	8	2	185	1620	3	https://c.dns-shop.kz/thumb/st4/fit/300/300/b328486b2416bc91b5707593e1ca8b5f/df60276c5f7138768d5a52b0765fe195377ae5c790f97ab9732bf713b014f1da.jpg	72999	4.60
8	MSI AMD Radeon VII	5	8	1400	300	16	3	300	1750	3	https://c.dns-shop.kz/thumb/st1/fit/300/300/4fc10060efac6c807f54899e523ebaf1/1794936062031eecfc25d81a58048c4652eecd6e11cbdc2c62be13b4038d9eee.jpg	70999	4.90
\.


--
-- Data for Name: videochipsets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.videochipsets (id, videochipset) FROM stdin;
1	GeForce RTX 3060
2	Radeon RX 6600
3	GeForce GTX 1660 Super
4	Radeon RX 580
5	GeForce GTX 960
6	Radeon R9 380X
7	GeForce RTX 2070
8	Radeon VII
\.


--
-- Name: brand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.brand_id_seq', 24, true);


--
-- Name: chipsets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.chipsets_id_seq', 19, true);


--
-- Name: cooling_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cooling_id_seq', 7, true);


--
-- Name: cooling_socket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cooling_socket_id_seq', 12, true);


--
-- Name: form_factors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.form_factors_id_seq', 5, true);


--
-- Name: interfaces_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.interfaces_id_seq', 3, true);


--
-- Name: letters_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.letters_id_seq', 3, true);


--
-- Name: motherboards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.motherboards_id_seq', 12, true);


--
-- Name: power_supplies_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.power_supplies_id_seq', 8, true);


--
-- Name: proc_let_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proc_let_id_seq', 20, true);


--
-- Name: proc_types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.proc_types_id_seq', 12, true);


--
-- Name: processors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.processors_id_seq', 9, true);


--
-- Name: ps_certificates_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ps_certificates_id_seq', 6, true);


--
-- Name: rams_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.rams_id_seq', 10, true);


--
-- Name: scokets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.scokets_id_seq', 4, true);


--
-- Name: type_cooling_id_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_cooling_id_id_seq', 2, true);


--
-- Name: types_capacity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_capacity_id_seq', 3, true);


--
-- Name: types_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_id_seq', 2, true);


--
-- Name: types_ram_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.types_ram_id_seq', 3, true);


--
-- Name: videocards_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videocards_id_seq', 8, true);


--
-- Name: videochipsets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.videochipsets_id_seq', 8, true);


--
-- Name: brand brand_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.brand
    ADD CONSTRAINT brand_pk PRIMARY KEY (id);


--
-- Name: chipsets chipsets_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.chipsets
    ADD CONSTRAINT chipsets_pk PRIMARY KEY (id);


--
-- Name: cooling cooling_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling
    ADD CONSTRAINT cooling_pk PRIMARY KEY (id);


--
-- Name: cooling_socket cooling_socket_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling_socket
    ADD CONSTRAINT cooling_socket_pk PRIMARY KEY (id);


--
-- Name: form_factors form_factors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.form_factors
    ADD CONSTRAINT form_factors_pk PRIMARY KEY (id);


--
-- Name: interfaces interfaces_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.interfaces
    ADD CONSTRAINT interfaces_pk PRIMARY KEY (id);


--
-- Name: letters letters_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.letters
    ADD CONSTRAINT letters_pk PRIMARY KEY (id);


--
-- Name: motherboards motherboards_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards
    ADD CONSTRAINT motherboards_pk PRIMARY KEY (id);


--
-- Name: power_supplies power_supplies_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.power_supplies
    ADD CONSTRAINT power_supplies_pk PRIMARY KEY (id);


--
-- Name: proc_let proc_let_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_let
    ADD CONSTRAINT proc_let_pk PRIMARY KEY (id);


--
-- Name: proc_types proc_types_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_types
    ADD CONSTRAINT proc_types_pk PRIMARY KEY (id);


--
-- Name: processors processors_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processors
    ADD CONSTRAINT processors_pk PRIMARY KEY (id);


--
-- Name: ps_certificates ps_certificates_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ps_certificates
    ADD CONSTRAINT ps_certificates_pk PRIMARY KEY (id);


--
-- Name: rams rams_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rams
    ADD CONSTRAINT rams_pk PRIMARY KEY (id);


--
-- Name: sockets scokets_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sockets
    ADD CONSTRAINT scokets_pk PRIMARY KEY (id);


--
-- Name: type_cooling type_cooling_id_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_cooling
    ADD CONSTRAINT type_cooling_id_pk PRIMARY KEY (id);


--
-- Name: types_capacity types_capacity_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_capacity
    ADD CONSTRAINT types_capacity_pk PRIMARY KEY (id);


--
-- Name: types types_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types
    ADD CONSTRAINT types_pk PRIMARY KEY (id);


--
-- Name: types_ram types_ram_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.types_ram
    ADD CONSTRAINT types_ram_pk PRIMARY KEY (id);


--
-- Name: videocards videocards_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videocards
    ADD CONSTRAINT videocards_pk PRIMARY KEY (id);


--
-- Name: videochipsets videochipsets_pk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videochipsets
    ADD CONSTRAINT videochipsets_pk PRIMARY KEY (id);


--
-- Name: cooling cooling_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling
    ADD CONSTRAINT cooling_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);


--
-- Name: cooling_socket cooling_socket_cooling_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling_socket
    ADD CONSTRAINT cooling_socket_cooling_fk FOREIGN KEY (cooling_id) REFERENCES public.cooling(id);


--
-- Name: cooling_socket cooling_socket_sockets_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling_socket
    ADD CONSTRAINT cooling_socket_sockets_fk FOREIGN KEY (socket_id) REFERENCES public.sockets(id);


--
-- Name: cooling cooling_type_cooling_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cooling
    ADD CONSTRAINT cooling_type_cooling_fk FOREIGN KEY (type_cooling_id) REFERENCES public.type_cooling(id);


--
-- Name: motherboards motherboards_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards
    ADD CONSTRAINT motherboards_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);


--
-- Name: motherboards motherboards_chipsets_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards
    ADD CONSTRAINT motherboards_chipsets_fk FOREIGN KEY (chipset_id) REFERENCES public.chipsets(id);


--
-- Name: motherboards motherboards_form_factors_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards
    ADD CONSTRAINT motherboards_form_factors_fk FOREIGN KEY ("form _factor_id") REFERENCES public.form_factors(id);


--
-- Name: motherboards motherboards_sockets_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards
    ADD CONSTRAINT motherboards_sockets_fk FOREIGN KEY (socket_id) REFERENCES public.sockets(id);


--
-- Name: motherboards motherboards_types_ram_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.motherboards
    ADD CONSTRAINT motherboards_types_ram_fk FOREIGN KEY (type_ram_id) REFERENCES public.types_ram(id);


--
-- Name: power_supplies power_supplies_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.power_supplies
    ADD CONSTRAINT power_supplies_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);


--
-- Name: power_supplies power_supplies_ps_certificates_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.power_supplies
    ADD CONSTRAINT power_supplies_ps_certificates_fk FOREIGN KEY (certificate_id) REFERENCES public.ps_certificates(id);


--
-- Name: proc_let proc_let_letters_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_let
    ADD CONSTRAINT proc_let_letters_fk FOREIGN KEY (let_id) REFERENCES public.letters(id);


--
-- Name: proc_let proc_let_processors_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_let
    ADD CONSTRAINT proc_let_processors_fk FOREIGN KEY (proc_id) REFERENCES public.processors(id);


--
-- Name: proc_types proc_types_processors_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_types
    ADD CONSTRAINT proc_types_processors_fk FOREIGN KEY (proc_id) REFERENCES public.processors(id);


--
-- Name: proc_types proc_types_types_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.proc_types
    ADD CONSTRAINT proc_types_types_fk FOREIGN KEY (type_id) REFERENCES public.types(id);


--
-- Name: processors processors_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processors
    ADD CONSTRAINT processors_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);


--
-- Name: processors processors_sockets_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.processors
    ADD CONSTRAINT processors_sockets_fk FOREIGN KEY (socket_id) REFERENCES public.sockets(id);


--
-- Name: rams rams_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rams
    ADD CONSTRAINT rams_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);


--
-- Name: rams rams_types_ram_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.rams
    ADD CONSTRAINT rams_types_ram_fk FOREIGN KEY (type_ram_id) REFERENCES public.types_ram(id);


--
-- Name: videocards videocards_brand_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videocards
    ADD CONSTRAINT videocards_brand_fk FOREIGN KEY (brand_id) REFERENCES public.brand(id);


--
-- Name: videocards videocards_interfaces_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videocards
    ADD CONSTRAINT videocards_interfaces_fk FOREIGN KEY (interface_id) REFERENCES public.interfaces(id);


--
-- Name: videocards videocards_types_capacity_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videocards
    ADD CONSTRAINT videocards_types_capacity_fk FOREIGN KEY (type_capacity_id) REFERENCES public.types_capacity(id);


--
-- Name: videocards videocards_videochipsets_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.videocards
    ADD CONSTRAINT videocards_videochipsets_fk FOREIGN KEY (videochipset_id) REFERENCES public.videochipsets(id);


--
-- PostgreSQL database dump complete
--

