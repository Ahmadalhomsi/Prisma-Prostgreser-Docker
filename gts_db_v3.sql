
--
-- TOC entry 217 (class 1259 OID 16814)
-- Name: backup_logs; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".backup_logs (
    id integer NOT NULL,
    date timestamp without time zone,
    tracker_id character varying(20),
    operation character varying(50),
    prm_name character varying(10),
    result character varying(20),
    err_code smallint,
    err_msg character varying(200),
    data character varying(50),
    tracker_group integer
);


ALTER TABLE "gts$dev".backup_logs OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 16817)
-- Name: backup_logs_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

CREATE SEQUENCE "gts$dev".backup_logs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "gts$dev".backup_logs_id_seq OWNER TO postgres;

--
-- TOC entry 3686 (class 0 OID 0)
-- Dependencies: 218
-- Name: backup_logs_id_seq; Type: SEQUENCE OWNED BY; Schema: gts$dev; Owner: postgres
--

ALTER SEQUENCE "gts$dev".backup_logs_id_seq OWNED BY "gts$dev".backup_logs.id;


--
-- TOC entry 219 (class 1259 OID 16818)
-- Name: bt_groups; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".bt_groups (
    id smallint NOT NULL,
    name character varying(20),
    description character varying(100)
);


ALTER TABLE "gts$dev".bt_groups OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 16821)
-- Name: bt_parameters; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".bt_parameters (
    "order" smallint NOT NULL,
    cx numeric(6,2),
    cz numeric(6,2),
    l numeric(6,2),
    group_id smallint NOT NULL,
    id integer NOT NULL
);


ALTER TABLE "gts$dev".bt_parameters OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16824)
-- Name: bt_parameters_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

CREATE SEQUENCE "gts$dev".bt_parameters_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "gts$dev".bt_parameters_id_seq OWNER TO postgres;

--
-- TOC entry 3687 (class 0 OID 0)
-- Dependencies: 221
-- Name: bt_parameters_id_seq; Type: SEQUENCE OWNED BY; Schema: gts$dev; Owner: postgres
--

ALTER SEQUENCE "gts$dev".bt_parameters_id_seq OWNED BY "gts$dev".bt_parameters.id;


--
-- TOC entry 222 (class 1259 OID 16825)
-- Name: clean_positions; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".clean_positions (
    tracker_id character varying(20) NOT NULL,
    active smallint,
    "position" numeric(18,4)
);


ALTER TABLE "gts$dev".clean_positions OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 33265)
-- Name: device_logs; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".device_logs (
    log_id integer NOT NULL,
    device_id character varying(20) NOT NULL
);


ALTER TABLE "gts$dev".device_logs OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16828)
-- Name: harvests; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".harvests (
    id integer NOT NULL,
    name character varying(20),
    ip character varying(20),
    lat numeric(6,2),
    long numeric(6,2),
    is_deleted boolean
);


ALTER TABLE "gts$dev".harvests OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16834)
-- Name: log_codes; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".log_codes (
    log_code integer NOT NULL,
    short_desc character varying(5),
    long_desc character varying(255)
);


ALTER TABLE "gts$dev".log_codes OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 16831)
-- Name: log_index; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".log_index (
    tracker_id character varying(20) NOT NULL,
    index integer
);


ALTER TABLE "gts$dev".log_index OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 33196)
-- Name: log_types; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".log_types (
    log_type smallint NOT NULL,
    description character varying
);


ALTER TABLE "gts$dev".log_types OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 16837)
-- Name: logs; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".logs (
    id integer NOT NULL,
    log_type smallint,
    log_date timestamp without time zone,
    device_id character varying(20),
    user_id integer,
    log_code integer,
    log_value character varying(3000)
);


ALTER TABLE "gts$dev".logs OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 33243)
-- Name: logs2; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".logs2 (
    id integer NOT NULL,
    log_date timestamp without time zone,
    log_code integer,
    harvest_id integer,
    data character varying(3000),
    is_deleted boolean
);


ALTER TABLE "gts$dev".logs2 OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16842)
-- Name: logs_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

ALTER TABLE "gts$dev".logs ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "gts$dev".logs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 228 (class 1259 OID 16843)
-- Name: mail_address; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".mail_address (
    id integer NOT NULL,
    email character varying(50),
    active smallint
);


ALTER TABLE "gts$dev".mail_address OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16846)
-- Name: mail_address_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

CREATE SEQUENCE "gts$dev".mail_address_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "gts$dev".mail_address_id_seq OWNER TO postgres;

--
-- TOC entry 3688 (class 0 OID 0)
-- Dependencies: 229
-- Name: mail_address_id_seq; Type: SEQUENCE OWNED BY; Schema: gts$dev; Owner: postgres
--

ALTER SEQUENCE "gts$dev".mail_address_id_seq OWNED BY "gts$dev".mail_address.id;


--
-- TOC entry 230 (class 1259 OID 16847)
-- Name: prm_names; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".prm_names (
    id smallint NOT NULL,
    prm_name character varying(4),
    min_value numeric(16,2),
    max_value numeric(16,2),
    type smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp without time zone
);
ALTER TABLE ONLY "gts$dev".prm_names ALTER COLUMN id SET STATISTICS 0;


ALTER TABLE "gts$dev".prm_names OWNER TO postgres;

--
-- TOC entry 302 (class 1259 OID 99480)
-- Name: prm_names_1; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".prm_names_1 (
    prm_id smallint NOT NULL,
    prm_name character varying(4),
    min_value numeric(16,2),
    max_value numeric(16,2),
    unid character varying(20),
    created_at timestamp(0) without time zone,
    updated_at timestamp without time zone,
    prmnames_id bigint NOT NULL,
    device_id character varying,
    device_type smallint
);


ALTER TABLE "gts$dev".prm_names_1 OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 99479)
-- Name: prm_names_1_prmnames_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

ALTER TABLE "gts$dev".prm_names_1 ALTER COLUMN prmnames_id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "gts$dev".prm_names_1_prmnames_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 295 (class 1259 OID 99151)
-- Name: sectors; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".sectors (
    id integer NOT NULL,
    name character varying(20) NOT NULL,
    connection_address character varying(20) NOT NULL,
    actuator_type integer NOT NULL,
    online integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    harvest_id integer NOT NULL
);


ALTER TABLE "gts$dev".sectors OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 99462)
-- Name: sensor_parameters; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".sensor_parameters (
    sensor_id character varying(20) NOT NULL,
    prm_id smallint,
    prm_name character varying(10),
    prm_values character varying(20),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE "gts$dev".sensor_parameters OWNER TO postgres;

--
-- TOC entry 300 (class 1259 OID 99473)
-- Name: sensor_prm_names; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".sensor_prm_names (
    id smallint NOT NULL,
    prm_name character varying(4),
    min_value numeric(16,2),
    max_value numeric(16,2),
    created_at timestamp(0) without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE "gts$dev".sensor_prm_names OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 99179)
-- Name: sensor_values; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".sensor_values (
    id bigint NOT NULL,
    sensor_id character varying(20) NOT NULL,
    read_time timestamp without time zone,
    wind_speed numeric(7,2),
    wind_strength numeric(7,2),
    wind_direction numeric(7,2),
    wind_direction_degree numeric(7,2),
    humidity numeric(7,2),
    temperature numeric(7,2),
    noise numeric(7,2),
    pm25 numeric(7,2),
    pm10 numeric(7,2),
    atmp numeric(7,2),
    ilmh numeric(7,2),
    ilml numeric(7,2),
    ilmx numeric(7,2),
    snow_height numeric(7,2),
    sensor_unid character varying(20),
    snwe boolean
);


ALTER TABLE "gts$dev".sensor_values OWNER TO postgres;

--
-- TOC entry 3689 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.wind_speed; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.wind_speed IS 'wind speed';


--
-- TOC entry 3690 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.wind_strength; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.wind_strength IS 'wind strength';


--
-- TOC entry 3691 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.wind_direction; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.wind_direction IS 'Wind direction';


--
-- TOC entry 3692 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.wind_direction_degree; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.wind_direction_degree IS 'wind direction degree';


--
-- TOC entry 3693 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.humidity; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.humidity IS 'humidity';


--
-- TOC entry 3694 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.temperature; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.temperature IS 'Temperature ';


--
-- TOC entry 3695 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.noise; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.noise IS 'Noise';


--
-- TOC entry 3696 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.pm25; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.pm25 IS 'PM25';


--
-- TOC entry 3697 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.pm10; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.pm10 IS 'PM10';


--
-- TOC entry 3698 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.atmp; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.atmp IS 'Atmospheric pressure';


--
-- TOC entry 3699 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.ilmh; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.ilmh IS 'Illuminance High bit';


--
-- TOC entry 3700 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.ilml; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.ilml IS 'Illuminance Low bit';


--
-- TOC entry 3701 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.ilmx; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.ilmx IS 'Illuminance ';


--
-- TOC entry 3702 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.snow_height; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.snow_height IS 'Snow Height';


--
-- TOC entry 3703 (class 0 OID 0)
-- Dependencies: 297
-- Name: COLUMN sensor_values.sensor_unid; Type: COMMENT; Schema: gts$dev; Owner: postgres
--

COMMENT ON COLUMN "gts$dev".sensor_values.sensor_unid IS 'sensor UNID';


--
-- TOC entry 296 (class 1259 OID 99178)
-- Name: sensor_values_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

ALTER TABLE "gts$dev".sensor_values ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "gts$dev".sensor_values_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 298 (class 1259 OID 99452)
-- Name: sensors; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".sensors (
    sensor_unid character varying(20) NOT NULL,
    sensor_id integer NOT NULL,
    sensor_name character varying(20),
    harvest_id integer NOT NULL,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    online smallint,
    last_access timestamp(0) without time zone
);


ALTER TABLE "gts$dev".sensors OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 107707)
-- Name: status_live_preview; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".status_live_preview (
    tracker_id character varying(10) NOT NULL,
    mode character varying(20),
    ready smallint,
    rhme smallint,
    otmp smallint,
    ovcr numeric(16,11),
    idle smallint,
    um character varying(20),
    usr_login smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    id bigint NOT NULL,
    axa numeric(16,2),
    tracker_date timestamp(0) without time zone
);


ALTER TABLE "gts$dev".status_live_preview OWNER TO postgres;

--
-- TOC entry 304 (class 1259 OID 107712)
-- Name: status_live_preview_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

ALTER TABLE "gts$dev".status_live_preview ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME "gts$dev".status_live_preview_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 231 (class 1259 OID 16850)
-- Name: system_parameters; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".system_parameters (
    id smallint NOT NULL,
    prm_name character varying(20),
    prm_value character varying(20),
    description character varying(50),
    group_id smallint
);


ALTER TABLE "gts$dev".system_parameters OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 16853)
-- Name: tracker_diagnosis; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".tracker_diagnosis (
    tracker_id character varying(10) NOT NULL,
    prm_id smallint NOT NULL,
    prm_name character varying(10),
    prm_value numeric(12,2),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE "gts$dev".tracker_diagnosis OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 16856)
-- Name: tracker_parameters; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".tracker_parameters (
    tracker_id character varying(20) NOT NULL,
    prm_id smallint NOT NULL,
    prm_name character varying(10),
    prm_value character varying(30),
    created_at timestamp without time zone,
    updated_at timestamp without time zone
);


ALTER TABLE "gts$dev".tracker_parameters OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 16859)
-- Name: tracker_positions; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".tracker_positions (
    id integer NOT NULL,
    name character varying(50),
    "position" numeric(8,4)
);


ALTER TABLE "gts$dev".tracker_positions OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 16862)
-- Name: tracker_positions_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

ALTER TABLE "gts$dev".tracker_positions ALTER COLUMN id ADD GENERATED BY DEFAULT AS IDENTITY (
    SEQUENCE NAME "gts$dev".tracker_positions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- TOC entry 236 (class 1259 OID 16863)
-- Name: tracker_status; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".tracker_status (
    tracker_id character varying(10) NOT NULL,
    mode character varying(20),
    ready smallint,
    rhme smallint,
    otmp smallint,
    ovcr smallint,
    idle smallint,
    um character varying(20),
    usr_login smallint,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE "gts$dev".tracker_status OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 16866)
-- Name: trackers; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".trackers (
    id character varying(20) NOT NULL,
    tracker_id integer,
    tracker_name character varying(20),
    harvest_id integer,
    created_at timestamp without time zone,
    updated_at timestamp without time zone,
    "group" integer,
    online smallint,
    last_access timestamp(0) without time zone,
    type smallint
);


ALTER TABLE "gts$dev".trackers OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 33250)
-- Name: user_logs; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".user_logs (
    log_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE "gts$dev".user_logs OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 16869)
-- Name: users; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".users (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    email character varying(50) NOT NULL,
    password character varying(200) NOT NULL,
    "userType" smallint DEFAULT 5,
    "loginName" character varying(20) NOT NULL
);


ALTER TABLE "gts$dev".users OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 16873)
-- Name: users_id_seq; Type: SEQUENCE; Schema: gts$dev; Owner: postgres
--

CREATE SEQUENCE "gts$dev".users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "gts$dev".users_id_seq OWNER TO postgres;

--
-- TOC entry 3704 (class 0 OID 0)
-- Dependencies: 239
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: gts$dev; Owner: postgres
--

ALTER SEQUENCE "gts$dev".users_id_seq OWNED BY "gts$dev".users.id;


--
-- TOC entry 240 (class 1259 OID 16874)
-- Name: wind_positions; Type: TABLE; Schema: gts$dev; Owner: postgres
--

CREATE TABLE "gts$dev".wind_positions (
    tracker_id character varying(20) NOT NULL,
    east smallint,
    west smallint,
    east_val numeric(18,4),
    west_val numeric(18,4)
);


ALTER TABLE "gts$dev".wind_positions OWNER TO postgres;

--
-- TOC entry 3422 (class 2604 OID 16884)
-- Name: backup_logs id; Type: DEFAULT; Schema: gts$dev; Owner: postgres
--

ALTER TABLE ONLY "gts$dev".backup_logs ALTER COLUMN id SET DEFAULT nextval('"gts$dev".backup_logs_id_seq'::regclass);


--
-- TOC entry 3423 (class 2604 OID 16885)
-- Name: bt_parameters id; Type: DEFAULT; Schema: gts$dev; Owner: postgres
--

ALTER TABLE ONLY "gts$dev".bt_parameters ALTER COLUMN id SET DEFAULT nextval('"gts$dev".bt_parameters_id_seq'::regclass);


--
-- TOC entry 3424 (class 2604 OID 16886)
-- Name: mail_address id; Type: DEFAULT; Schema: gts$dev; Owner: postgres
--

ALTER TABLE ONLY "gts$dev".mail_address ALTER COLUMN id SET DEFAULT nextval('"gts$dev".mail_address_id_seq'::regclass);


--
-- TOC entry 3425 (class 2604 OID 16887)
-- Name: users id; Type: DEFAULT; Schema: gts$dev; Owner: postgres
--

ALTER TABLE ONLY "gts$dev".users ALTER COLUMN id SET DEFAULT nextval('"gts$dev".users_id_seq'::regclass);
