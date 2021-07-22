--
-- PostgreSQL database dump
--

-- Dumped from database version 13.3
-- Dumped by pg_dump version 13.3

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
-- Name: auth_group; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO ewall;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO ewall;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO ewall;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO ewall;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO ewall;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO ewall;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO ewall;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.auth_user_groups (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO ewall;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO ewall;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO ewall;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.auth_user_user_permissions (
    id bigint NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO ewall;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO ewall;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: categories_and_tag_categories; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.categories_and_tag_categories (
    id bigint NOT NULL,
    name character varying(200) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    parent_category_id bigint
);


ALTER TABLE public.categories_and_tag_categories OWNER TO ewall;

--
-- Name: categories_and_tag_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.categories_and_tag_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_and_tag_categories_id_seq OWNER TO ewall;

--
-- Name: categories_and_tag_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.categories_and_tag_categories_id_seq OWNED BY public.categories_and_tag_categories.id;


--
-- Name: categories_and_tag_tags; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.categories_and_tag_tags (
    id bigint NOT NULL,
    title character varying(200) NOT NULL
);


ALTER TABLE public.categories_and_tag_tags OWNER TO ewall;

--
-- Name: categories_and_tag_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.categories_and_tag_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.categories_and_tag_tags_id_seq OWNER TO ewall;

--
-- Name: categories_and_tag_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.categories_and_tag_tags_id_seq OWNED BY public.categories_and_tag_tags.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: ewall
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


ALTER TABLE public.django_admin_log OWNER TO ewall;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO ewall;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO ewall;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO ewall;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO ewall;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO ewall;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO ewall;

--
-- Name: images_covers; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.images_covers (
    id bigint NOT NULL,
    image character varying(100) NOT NULL
);


ALTER TABLE public.images_covers OWNER TO ewall;

--
-- Name: images_covers_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.images_covers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.images_covers_id_seq OWNER TO ewall;

--
-- Name: images_covers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.images_covers_id_seq OWNED BY public.images_covers.id;


--
-- Name: post_comments; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.post_comments (
    id bigint NOT NULL,
    body text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    verification boolean NOT NULL,
    author_id integer NOT NULL,
    post_id_id bigint NOT NULL,
    title character varying(200)
);


ALTER TABLE public.post_comments OWNER TO ewall;

--
-- Name: post_comments_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.post_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_comments_id_seq OWNER TO ewall;

--
-- Name: post_comments_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.post_comments_id_seq OWNED BY public.post_comments.id;


--
-- Name: post_post; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.post_post (
    id bigint NOT NULL,
    title character varying(200) NOT NULL,
    detail text NOT NULL,
    city integer NOT NULL,
    description character varying(200) NOT NULL,
    slug character varying(50) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    published_at timestamp with time zone,
    status boolean NOT NULL,
    author_id integer NOT NULL
);


ALTER TABLE public.post_post OWNER TO ewall;

--
-- Name: post_post_categories; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.post_post_categories (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    categories_id bigint NOT NULL
);


ALTER TABLE public.post_post_categories OWNER TO ewall;

--
-- Name: post_post_categories_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.post_post_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_post_categories_id_seq OWNER TO ewall;

--
-- Name: post_post_categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.post_post_categories_id_seq OWNED BY public.post_post_categories.id;


--
-- Name: post_post_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.post_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_post_id_seq OWNER TO ewall;

--
-- Name: post_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.post_post_id_seq OWNED BY public.post_post.id;


--
-- Name: post_post_related_post; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.post_post_related_post (
    id bigint NOT NULL,
    from_post_id bigint NOT NULL,
    to_post_id bigint NOT NULL
);


ALTER TABLE public.post_post_related_post OWNER TO ewall;

--
-- Name: post_post_related_post_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.post_post_related_post_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_post_related_post_id_seq OWNER TO ewall;

--
-- Name: post_post_related_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.post_post_related_post_id_seq OWNED BY public.post_post_related_post.id;


--
-- Name: post_post_tags; Type: TABLE; Schema: public; Owner: ewall
--

CREATE TABLE public.post_post_tags (
    id bigint NOT NULL,
    post_id bigint NOT NULL,
    tags_id bigint NOT NULL
);


ALTER TABLE public.post_post_tags OWNER TO ewall;

--
-- Name: post_post_tags_id_seq; Type: SEQUENCE; Schema: public; Owner: ewall
--

CREATE SEQUENCE public.post_post_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.post_post_tags_id_seq OWNER TO ewall;

--
-- Name: post_post_tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ewall
--

ALTER SEQUENCE public.post_post_tags_id_seq OWNED BY public.post_post_tags.id;


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: categories_and_tag_categories id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.categories_and_tag_categories ALTER COLUMN id SET DEFAULT nextval('public.categories_and_tag_categories_id_seq'::regclass);


--
-- Name: categories_and_tag_tags id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.categories_and_tag_tags ALTER COLUMN id SET DEFAULT nextval('public.categories_and_tag_tags_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: images_covers id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.images_covers ALTER COLUMN id SET DEFAULT nextval('public.images_covers_id_seq'::regclass);


--
-- Name: post_comments id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_comments ALTER COLUMN id SET DEFAULT nextval('public.post_comments_id_seq'::regclass);


--
-- Name: post_post id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post ALTER COLUMN id SET DEFAULT nextval('public.post_post_id_seq'::regclass);


--
-- Name: post_post_categories id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_categories ALTER COLUMN id SET DEFAULT nextval('public.post_post_categories_id_seq'::regclass);


--
-- Name: post_post_related_post id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_related_post ALTER COLUMN id SET DEFAULT nextval('public.post_post_related_post_id_seq'::regclass);


--
-- Name: post_post_tags id; Type: DEFAULT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_tags ALTER COLUMN id SET DEFAULT nextval('public.post_post_tags_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can view permission	1	view_permission
5	Can add group	2	add_group
6	Can change group	2	change_group
7	Can delete group	2	delete_group
8	Can view group	2	view_group
9	Can add user	3	add_user
10	Can change user	3	change_user
11	Can delete user	3	delete_user
12	Can view user	3	view_user
13	Can add content type	4	add_contenttype
14	Can change content type	4	change_contenttype
15	Can delete content type	4	delete_contenttype
16	Can view content type	4	view_contenttype
17	Can add post	5	add_post
18	Can change post	5	change_post
19	Can delete post	5	delete_post
20	Can view post	5	view_post
21	Can add comments	6	add_comments
22	Can change comments	6	change_comments
23	Can delete comments	6	delete_comments
24	Can view comments	6	view_comments
25	Can add log entry	7	add_logentry
26	Can change log entry	7	change_logentry
27	Can delete log entry	7	delete_logentry
28	Can view log entry	7	view_logentry
29	Can add session	8	add_session
30	Can change session	8	change_session
31	Can delete session	8	delete_session
32	Can view session	8	view_session
33	Can add tags	9	add_tags
34	Can change tags	9	change_tags
35	Can delete tags	9	delete_tags
36	Can view tags	9	view_tags
37	Can add categories	10	add_categories
38	Can change categories	10	change_categories
39	Can delete categories	10	delete_categories
40	Can view categories	10	view_categories
41	Can add covers	11	add_covers
42	Can change covers	11	change_covers
43	Can delete covers	11	delete_covers
44	Can view covers	11	view_covers
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$260000$vava9GtUiQt32PV5HJ3aBy$IgKnu7AEQiVjUvhBh0SskjdU7cZoxx+XtgXCBtT4Y8M=	2021-07-23 00:24:42.898155+04:30	t	ewall_admin				t	t	2021-07-23 00:24:12.681503+04:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: categories_and_tag_categories; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.categories_and_tag_categories (id, name, created_at, updated_at, parent_category_id) FROM stdin;
2	ماشین	2021-07-23 01:40:10.409294+04:30	2021-07-23 01:40:10.409335+04:30	\N
3	سایپا	2021-07-23 01:40:22.861241+04:30	2021-07-23 01:40:22.861258+04:30	2
4	ایران خودرو	2021-07-23 01:42:41.873466+04:30	2021-07-23 01:42:41.873484+04:30	2
5	پراید	2021-07-23 01:42:50.381305+04:30	2021-07-23 01:42:50.381323+04:30	3
\.


--
-- Data for Name: categories_and_tag_tags; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.categories_and_tag_tags (id, title) FROM stdin;
1	ماشین
2	پراید
3	سایپا
4	ایران خودرو
5	سمند
6	نیسان
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2021-07-23 01:39:56.678955+04:30	1	Categories object (1)	1	[{"added": {}}]	10	1
2	2021-07-23 01:40:03.441981+04:30	1	Categories object (1)	3		10	1
3	2021-07-23 01:40:10.411009+04:30	2	Categories object (2)	1	[{"added": {}}]	10	1
4	2021-07-23 01:40:22.862021+04:30	3	Categories object (3)	1	[{"added": {}}]	10	1
5	2021-07-23 01:42:41.874476+04:30	4	ایران خودرو	1	[{"added": {}}]	10	1
6	2021-07-23 01:42:50.381933+04:30	5	پراید	1	[{"added": {}}]	10	1
7	2021-07-23 01:42:58.056542+04:30	1	ماشین	1	[{"added": {}}]	9	1
8	2021-07-23 01:43:05.302047+04:30	2	پراید	1	[{"added": {}}]	9	1
9	2021-07-23 01:43:09.362911+04:30	3	سایپا	1	[{"added": {}}]	9	1
10	2021-07-23 01:43:13.700787+04:30	4	ایران خودرو	1	[{"added": {}}]	9	1
11	2021-07-23 01:43:16.376865+04:30	5	سمند	1	[{"added": {}}]	9	1
12	2021-07-23 01:43:20.68396+04:30	6	نیسان	1	[{"added": {}}]	9	1
13	2021-07-23 01:45:30.685023+04:30	1	پراید ۱۳۱	1	[{"added": {}}]	5	1
14	2021-07-23 01:45:39.186852+04:30	1	پراید ۱۳۱	2	[{"changed": {"fields": ["\\u0646\\u0645\\u0627\\u06cc\\u0634 \\u062f\\u0627\\u062f\\u0647 \\u0634\\u0648\\u062f\\u061f"]}}]	5	1
15	2021-07-23 01:46:47.361546+04:30	2	سمند تمیز	1	[{"added": {}}]	5	1
16	2021-07-23 01:49:31.96738+04:30	1	ماشین بسیار تمیز و زیبا	1	[{"added": {}}]	6	1
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	auth	permission
2	auth	group
3	auth	user
4	contenttypes	contenttype
5	post	post
6	post	comments
7	admin	logentry
8	sessions	session
9	categories_and_tag	tags
10	categories_and_tag	categories
11	images	covers
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-07-23 00:03:12.335803+04:30
2	auth	0001_initial	2021-07-23 00:03:12.452842+04:30
3	post	0001_initial	2021-07-23 00:03:12.569486+04:30
4	admin	0001_initial	2021-07-23 00:23:18.216681+04:30
5	admin	0002_logentry_remove_auto_add	2021-07-23 00:23:18.229266+04:30
6	admin	0003_logentry_add_action_flag_choices	2021-07-23 00:23:18.240623+04:30
7	contenttypes	0002_remove_content_type_name	2021-07-23 00:23:18.260835+04:30
8	auth	0002_alter_permission_name_max_length	2021-07-23 00:23:18.273592+04:30
9	auth	0003_alter_user_email_max_length	2021-07-23 00:23:18.286143+04:30
10	auth	0004_alter_user_username_opts	2021-07-23 00:23:18.298985+04:30
11	auth	0005_alter_user_last_login_null	2021-07-23 00:23:18.310768+04:30
12	auth	0006_require_contenttypes_0002	2021-07-23 00:23:18.314246+04:30
13	auth	0007_alter_validators_add_error_messages	2021-07-23 00:23:18.32548+04:30
14	auth	0008_alter_user_username_max_length	2021-07-23 00:23:18.344446+04:30
15	auth	0009_alter_user_last_name_max_length	2021-07-23 00:23:18.357664+04:30
16	auth	0010_alter_group_name_max_length	2021-07-23 00:23:18.373526+04:30
17	auth	0011_update_proxy_permissions	2021-07-23 00:23:18.385483+04:30
18	auth	0012_alter_user_first_name_max_length	2021-07-23 00:23:18.397687+04:30
19	sessions	0001_initial	2021-07-23 00:23:18.419319+04:30
20	post	0002_auto_20210722_2033	2021-07-23 01:03:16.32858+04:30
21	post	0003_comments	2021-07-23 01:05:19.053672+04:30
22	categories_and_tag	0001_initial	2021-07-23 01:19:42.861069+04:30
23	post	0004_auto_20210722_2049	2021-07-23 01:19:42.933983+04:30
24	categories_and_tag	0002_auto_20210722_2055	2021-07-23 01:25:46.2186+04:30
25	post	0005_auto_20210722_2055	2021-07-23 01:25:46.244701+04:30
26	post	0006_alter_post_related_post	2021-07-23 01:35:49.523384+04:30
27	post	0002_comments_title	2021-07-23 01:48:50.183453+04:30
28	images	0001_initial	2021-07-23 01:58:49.706388+04:30
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
5rqnwfqlfu0j9ksxyt64nolpdw4m3xfu	.eJxVjDEOwyAQBP9CHSHOYDhSpvcb0MHh4CQykrGrKH-PLblIim12ZvctAm1rCVvLS5hYXAWIy28XKT3zfAB-0HyvMtV5XaYoD0WetMmhcn7dTvfvoFAr-9p3nImJvHUuKWCjkBXZkXvAPbGz2SNY1F6n1COOYEyHgM5rcDqT-HwB4jg3JQ:1m6emI:NZ1rTMaLW8Vyt05T9H98R0MWQ5kSWnPfsFhT-oh_gIg	2021-08-06 00:24:42.901684+04:30
\.


--
-- Data for Name: images_covers; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.images_covers (id, image) FROM stdin;
\.


--
-- Data for Name: post_comments; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.post_comments (id, body, created_at, updated_at, verification, author_id, post_id_id, title) FROM stdin;
1	بسیار ماشین تمیز و زیبایی است ولی کمی رنگ شده است	2021-07-23 01:49:31.964761+04:30	2021-07-23 01:49:31.964828+04:30	t	1	1	ماشین بسیار تمیز و زیبا
\.


--
-- Data for Name: post_post; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.post_post (id, title, detail, city, description, slug, created_at, updated_at, published_at, status, author_id) FROM stdin;
1	پراید ۱۳۱	بدون رنگ \r\nسال ساخت : ۱۳۹۸	1	پراید ۱۳۱	pride-131	2021-07-23 01:45:30.676726+04:30	2021-07-23 01:45:39.182557+04:30	2021-07-23 01:44:30+04:30	t	1
2	سمند تمیز	سال ۱۳۹۴\r\nبدون رنگ \r\nفقط تماس	2	سمند بدون رنگ	samand	2021-07-23 01:46:47.353287+04:30	2021-07-23 01:46:47.353311+04:30	2021-07-23 01:46:31+04:30	f	1
\.


--
-- Data for Name: post_post_categories; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.post_post_categories (id, post_id, categories_id) FROM stdin;
1	1	2
2	1	3
3	1	5
4	2	2
5	2	4
\.


--
-- Data for Name: post_post_related_post; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.post_post_related_post (id, from_post_id, to_post_id) FROM stdin;
1	2	1
\.


--
-- Data for Name: post_post_tags; Type: TABLE DATA; Schema: public; Owner: ewall
--

COPY public.post_post_tags (id, post_id, tags_id) FROM stdin;
1	1	1
2	1	2
3	1	3
4	2	1
5	2	4
6	2	5
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 44, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 1, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);


--
-- Name: categories_and_tag_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.categories_and_tag_categories_id_seq', 5, true);


--
-- Name: categories_and_tag_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.categories_and_tag_tags_id_seq', 6, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 16, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 11, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 28, true);


--
-- Name: images_covers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.images_covers_id_seq', 1, false);


--
-- Name: post_comments_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.post_comments_id_seq', 1, true);


--
-- Name: post_post_categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.post_post_categories_id_seq', 5, true);


--
-- Name: post_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.post_post_id_seq', 2, true);


--
-- Name: post_post_related_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.post_post_related_post_id_seq', 1, true);


--
-- Name: post_post_tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ewall
--

SELECT pg_catalog.setval('public.post_post_tags_id_seq', 6, true);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: categories_and_tag_categories categories_and_tag_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.categories_and_tag_categories
    ADD CONSTRAINT categories_and_tag_categories_pkey PRIMARY KEY (id);


--
-- Name: categories_and_tag_tags categories_and_tag_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.categories_and_tag_tags
    ADD CONSTRAINT categories_and_tag_tags_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: images_covers images_covers_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.images_covers
    ADD CONSTRAINT images_covers_pkey PRIMARY KEY (id);


--
-- Name: post_comments post_comments_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_pkey PRIMARY KEY (id);


--
-- Name: post_post_categories post_post_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_categories
    ADD CONSTRAINT post_post_categories_pkey PRIMARY KEY (id);


--
-- Name: post_post_categories post_post_categories_post_id_categories_id_9a16d9e0_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_categories
    ADD CONSTRAINT post_post_categories_post_id_categories_id_9a16d9e0_uniq UNIQUE (post_id, categories_id);


--
-- Name: post_post post_post_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post
    ADD CONSTRAINT post_post_pkey PRIMARY KEY (id);


--
-- Name: post_post_related_post post_post_related_post_from_post_id_to_post_id_b72c2527_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_related_post
    ADD CONSTRAINT post_post_related_post_from_post_id_to_post_id_b72c2527_uniq UNIQUE (from_post_id, to_post_id);


--
-- Name: post_post_related_post post_post_related_post_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_related_post
    ADD CONSTRAINT post_post_related_post_pkey PRIMARY KEY (id);


--
-- Name: post_post_tags post_post_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_tags
    ADD CONSTRAINT post_post_tags_pkey PRIMARY KEY (id);


--
-- Name: post_post_tags post_post_tags_post_id_tags_id_387acdef_uniq; Type: CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_tags
    ADD CONSTRAINT post_post_tags_post_id_tags_id_387acdef_uniq UNIQUE (post_id, tags_id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: categories_and_tag_categories_parent_category_id_8b550289; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX categories_and_tag_categories_parent_category_id_8b550289 ON public.categories_and_tag_categories USING btree (parent_category_id);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: post_comments_author_id_f2e9c1ed; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_comments_author_id_f2e9c1ed ON public.post_comments USING btree (author_id);


--
-- Name: post_comments_post_id_id_6f13f31c; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_comments_post_id_id_6f13f31c ON public.post_comments USING btree (post_id_id);


--
-- Name: post_post_author_id_99d134d5; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_author_id_99d134d5 ON public.post_post USING btree (author_id);


--
-- Name: post_post_categories_categories_id_7366492f; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_categories_categories_id_7366492f ON public.post_post_categories USING btree (categories_id);


--
-- Name: post_post_categories_post_id_4e6b60a6; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_categories_post_id_4e6b60a6 ON public.post_post_categories USING btree (post_id);


--
-- Name: post_post_related_post_from_post_id_cfacfdc2; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_related_post_from_post_id_cfacfdc2 ON public.post_post_related_post USING btree (from_post_id);


--
-- Name: post_post_related_post_to_post_id_7dbf6aaa; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_related_post_to_post_id_7dbf6aaa ON public.post_post_related_post USING btree (to_post_id);


--
-- Name: post_post_slug_56a89051; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_slug_56a89051 ON public.post_post USING btree (slug);


--
-- Name: post_post_slug_56a89051_like; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_slug_56a89051_like ON public.post_post USING btree (slug varchar_pattern_ops);


--
-- Name: post_post_tags_post_id_6adf1c1b; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_tags_post_id_6adf1c1b ON public.post_post_tags USING btree (post_id);


--
-- Name: post_post_tags_tags_id_07240c11; Type: INDEX; Schema: public; Owner: ewall
--

CREATE INDEX post_post_tags_tags_id_07240c11 ON public.post_post_tags USING btree (tags_id);


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: categories_and_tag_categories categories_and_tag_c_parent_category_id_8b550289_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.categories_and_tag_categories
    ADD CONSTRAINT categories_and_tag_c_parent_category_id_8b550289_fk_categorie FOREIGN KEY (parent_category_id) REFERENCES public.categories_and_tag_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_comments post_comments_author_id_f2e9c1ed_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_author_id_f2e9c1ed_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_comments post_comments_post_id_id_6f13f31c_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_comments
    ADD CONSTRAINT post_comments_post_id_id_6f13f31c_fk_post_post_id FOREIGN KEY (post_id_id) REFERENCES public.post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post post_post_author_id_99d134d5_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post
    ADD CONSTRAINT post_post_author_id_99d134d5_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_categories post_post_categories_categories_id_7366492f_fk_categorie; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_categories
    ADD CONSTRAINT post_post_categories_categories_id_7366492f_fk_categorie FOREIGN KEY (categories_id) REFERENCES public.categories_and_tag_categories(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_categories post_post_categories_post_id_4e6b60a6_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_categories
    ADD CONSTRAINT post_post_categories_post_id_4e6b60a6_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public.post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_related_post post_post_related_post_from_post_id_cfacfdc2_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_related_post
    ADD CONSTRAINT post_post_related_post_from_post_id_cfacfdc2_fk_post_post_id FOREIGN KEY (from_post_id) REFERENCES public.post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_related_post post_post_related_post_to_post_id_7dbf6aaa_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_related_post
    ADD CONSTRAINT post_post_related_post_to_post_id_7dbf6aaa_fk_post_post_id FOREIGN KEY (to_post_id) REFERENCES public.post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_tags post_post_tags_post_id_6adf1c1b_fk_post_post_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_tags
    ADD CONSTRAINT post_post_tags_post_id_6adf1c1b_fk_post_post_id FOREIGN KEY (post_id) REFERENCES public.post_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: post_post_tags post_post_tags_tags_id_07240c11_fk_categories_and_tag_tags_id; Type: FK CONSTRAINT; Schema: public; Owner: ewall
--

ALTER TABLE ONLY public.post_post_tags
    ADD CONSTRAINT post_post_tags_tags_id_07240c11_fk_categories_and_tag_tags_id FOREIGN KEY (tags_id) REFERENCES public.categories_and_tag_tags(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

