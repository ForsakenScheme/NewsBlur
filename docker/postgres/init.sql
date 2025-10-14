--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.4
-- Dumped by pg_dump version 9.5.4

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
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


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: analyzer_category; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE analyzer_category (
    id integer NOT NULL,
    user_id integer NOT NULL,
    feed_id integer NOT NULL,
    category character varying(255) NOT NULL,
    count integer NOT NULL
);


ALTER TABLE analyzer_category OWNER TO newsblur;

--
-- Name: analyzer_category_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE analyzer_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE analyzer_category_id_seq OWNER TO newsblur;

--
-- Name: analyzer_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE analyzer_category_id_seq OWNED BY analyzer_category.id;


--
-- Name: analyzer_featurecategory; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE analyzer_featurecategory (
    id integer NOT NULL,
    user_id integer NOT NULL,
    feed_id integer NOT NULL,
    feature character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    count integer NOT NULL
);


ALTER TABLE analyzer_featurecategory OWNER TO newsblur;

--
-- Name: analyzer_featurecategory_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE analyzer_featurecategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE analyzer_featurecategory_id_seq OWNER TO newsblur;

--
-- Name: analyzer_featurecategory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE analyzer_featurecategory_id_seq OWNED BY analyzer_featurecategory.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE auth_group OWNER TO newsblur;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_id_seq OWNER TO newsblur;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_group_permissions OWNER TO newsblur;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_group_permissions_id_seq OWNER TO newsblur;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE auth_permission OWNER TO newsblur;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_permission_id_seq OWNER TO newsblur;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE auth_user OWNER TO newsblur;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE auth_user_groups OWNER TO newsblur;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_groups_id_seq OWNER TO newsblur;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_id_seq OWNER TO newsblur;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE auth_user_user_permissions OWNER TO newsblur;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE auth_user_user_permissions_id_seq OWNER TO newsblur;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: celery_taskmeta; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE celery_taskmeta (
    id integer NOT NULL,
    task_id character varying(255) NOT NULL,
    status character varying(50) NOT NULL,
    result text,
    date_done timestamp with time zone NOT NULL,
    traceback text,
    hidden boolean NOT NULL,
    meta text
);


ALTER TABLE celery_taskmeta OWNER TO newsblur;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE celery_taskmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE celery_taskmeta_id_seq OWNER TO newsblur;

--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE celery_taskmeta_id_seq OWNED BY celery_taskmeta.id;


--
-- Name: celery_tasksetmeta; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE celery_tasksetmeta (
    id integer NOT NULL,
    taskset_id character varying(255) NOT NULL,
    result text NOT NULL,
    date_done timestamp with time zone NOT NULL,
    hidden boolean NOT NULL
);


ALTER TABLE celery_tasksetmeta OWNER TO newsblur;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE celery_tasksetmeta_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE celery_tasksetmeta_id_seq OWNER TO newsblur;

--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE celery_tasksetmeta_id_seq OWNED BY celery_tasksetmeta.id;


--
-- Name: corsheaders_corsmodel; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE corsheaders_corsmodel (
    id integer NOT NULL,
    cors character varying(255) NOT NULL
);


ALTER TABLE corsheaders_corsmodel OWNER TO newsblur;

--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE corsheaders_corsmodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE corsheaders_corsmodel_id_seq OWNER TO newsblur;

--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE corsheaders_corsmodel_id_seq OWNED BY corsheaders_corsmodel.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE django_admin_log OWNER TO newsblur;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_admin_log_id_seq OWNER TO newsblur;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE django_content_type OWNER TO newsblur;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_content_type_id_seq OWNER TO newsblur;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE django_session OWNER TO newsblur;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE django_site OWNER TO newsblur;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE django_site_id_seq OWNER TO newsblur;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;


--
-- Name: djcelery_crontabschedule; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE djcelery_crontabschedule (
    id integer NOT NULL,
    minute character varying(64) NOT NULL,
    hour character varying(64) NOT NULL,
    day_of_week character varying(64) NOT NULL,
    day_of_month character varying(64) NOT NULL,
    month_of_year character varying(64) NOT NULL
);


ALTER TABLE djcelery_crontabschedule OWNER TO newsblur;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE djcelery_crontabschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_crontabschedule_id_seq OWNER TO newsblur;

--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE djcelery_crontabschedule_id_seq OWNED BY djcelery_crontabschedule.id;


--
-- Name: djcelery_intervalschedule; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE djcelery_intervalschedule (
    id integer NOT NULL,
    every integer NOT NULL,
    period character varying(24) NOT NULL
);


ALTER TABLE djcelery_intervalschedule OWNER TO newsblur;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE djcelery_intervalschedule_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_intervalschedule_id_seq OWNER TO newsblur;

--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE djcelery_intervalschedule_id_seq OWNED BY djcelery_intervalschedule.id;


--
-- Name: djcelery_periodictask; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE djcelery_periodictask (
    id integer NOT NULL,
    name character varying(200) NOT NULL,
    task character varying(200) NOT NULL,
    interval_id integer,
    crontab_id integer,
    args text NOT NULL,
    kwargs text NOT NULL,
    queue character varying(200),
    exchange character varying(200),
    routing_key character varying(200),
    expires timestamp with time zone,
    enabled boolean NOT NULL,
    last_run_at timestamp with time zone,
    total_run_count integer NOT NULL,
    date_changed timestamp with time zone NOT NULL,
    description text NOT NULL,
    CONSTRAINT djcelery_periodictask_total_run_count_check CHECK ((total_run_count >= 0))
);


ALTER TABLE djcelery_periodictask OWNER TO newsblur;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE djcelery_periodictask_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_periodictask_id_seq OWNER TO newsblur;

--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE djcelery_periodictask_id_seq OWNED BY djcelery_periodictask.id;


--
-- Name: djcelery_periodictasks; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE djcelery_periodictasks (
    ident smallint NOT NULL,
    last_update timestamp with time zone NOT NULL
);


ALTER TABLE djcelery_periodictasks OWNER TO newsblur;

--
-- Name: djcelery_taskstate; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE djcelery_taskstate (
    id integer NOT NULL,
    state character varying(64) NOT NULL,
    task_id character varying(36) NOT NULL,
    name character varying(200),
    tstamp timestamp with time zone NOT NULL,
    args text,
    kwargs text,
    eta timestamp with time zone,
    expires timestamp with time zone,
    result text,
    traceback text,
    runtime double precision,
    retries integer NOT NULL,
    worker_id integer,
    hidden boolean NOT NULL
);


ALTER TABLE djcelery_taskstate OWNER TO newsblur;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE djcelery_taskstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_taskstate_id_seq OWNER TO newsblur;

--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE djcelery_taskstate_id_seq OWNED BY djcelery_taskstate.id;


--
-- Name: djcelery_workerstate; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE djcelery_workerstate (
    id integer NOT NULL,
    hostname character varying(255) NOT NULL,
    last_heartbeat timestamp with time zone
);


ALTER TABLE djcelery_workerstate OWNER TO newsblur;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE djcelery_workerstate_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE djcelery_workerstate_id_seq OWNER TO newsblur;

--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE djcelery_workerstate_id_seq OWNED BY djcelery_workerstate.id;


--
-- Name: feed_import_oauthtoken; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE feed_import_oauthtoken (
    id integer NOT NULL,
    user_id integer,
    session_id character varying(50),
    uuid character varying(50),
    remote_ip character varying(50),
    request_token character varying(50) NOT NULL,
    request_token_secret character varying(50) NOT NULL,
    access_token character varying(50) NOT NULL,
    access_token_secret character varying(50) NOT NULL,
    credential text,
    created_date timestamp with time zone NOT NULL
);


ALTER TABLE feed_import_oauthtoken OWNER TO newsblur;

--
-- Name: feed_import_oauthtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE feed_import_oauthtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE feed_import_oauthtoken_id_seq OWNER TO newsblur;

--
-- Name: feed_import_oauthtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE feed_import_oauthtoken_id_seq OWNED BY feed_import_oauthtoken.id;


--
-- Name: feeds; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE feeds (
    id integer NOT NULL,
    feed_address character varying(764) NOT NULL,
    feed_address_locked boolean,
    feed_link character varying(1000),
    feed_link_locked boolean NOT NULL,
    hash_address_and_link character varying(64) NOT NULL,
    feed_title character varying(255),
    is_push boolean,
    active boolean NOT NULL,
    num_subscribers integer NOT NULL,
    active_subscribers integer NOT NULL,
    premium_subscribers integer NOT NULL,
    active_premium_subscribers integer NOT NULL,
    branch_from_feed_id integer,
    last_update timestamp with time zone NOT NULL,
    next_scheduled_update timestamp with time zone NOT NULL,
    last_story_date timestamp with time zone,
    fetched_once boolean NOT NULL,
    known_good boolean NOT NULL,
    has_feed_exception boolean NOT NULL,
    has_page_exception boolean NOT NULL,
    has_page boolean NOT NULL,
    exception_code integer NOT NULL,
    errors_since_good integer NOT NULL,
    min_to_decay integer NOT NULL,
    days_to_trim integer NOT NULL,
    creation date NOT NULL,
    etag character varying(255),
    last_modified timestamp with time zone,
    stories_last_month integer NOT NULL,
    average_stories_per_month integer NOT NULL,
    last_load_time integer NOT NULL,
    favicon_color character varying(6),
    favicon_not_found boolean NOT NULL,
    s3_page boolean,
    s3_icon boolean,
    search_indexed boolean
);


ALTER TABLE feeds OWNER TO newsblur;

--
-- Name: feeds_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE feeds_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE feeds_id_seq OWNER TO newsblur;

--
-- Name: feeds_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE feeds_id_seq OWNED BY feeds.id;


--
-- Name: oauth2_provider_accesstoken; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE oauth2_provider_accesstoken (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token character varying(255) NOT NULL,
    application_id integer NOT NULL,
    expires timestamp with time zone NOT NULL,
    scope text NOT NULL
);


ALTER TABLE oauth2_provider_accesstoken OWNER TO newsblur;

--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE oauth2_provider_accesstoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_accesstoken_id_seq OWNER TO newsblur;

--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE oauth2_provider_accesstoken_id_seq OWNED BY oauth2_provider_accesstoken.id;


--
-- Name: oauth2_provider_application; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE oauth2_provider_application (
    id integer NOT NULL,
    client_id character varying(100) NOT NULL,
    user_id integer NOT NULL,
    redirect_uris text NOT NULL,
    client_type character varying(32) NOT NULL,
    authorization_grant_type character varying(32) NOT NULL,
    client_secret character varying(255) NOT NULL,
    name character varying(255) NOT NULL
);


ALTER TABLE oauth2_provider_application OWNER TO newsblur;

--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE oauth2_provider_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_application_id_seq OWNER TO newsblur;

--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE oauth2_provider_application_id_seq OWNED BY oauth2_provider_application.id;


--
-- Name: oauth2_provider_grant; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE oauth2_provider_grant (
    id integer NOT NULL,
    user_id integer NOT NULL,
    code character varying(255) NOT NULL,
    application_id integer NOT NULL,
    expires timestamp with time zone NOT NULL,
    redirect_uri character varying(255) NOT NULL,
    scope text NOT NULL
);


ALTER TABLE oauth2_provider_grant OWNER TO newsblur;

--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE oauth2_provider_grant_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_grant_id_seq OWNER TO newsblur;

--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE oauth2_provider_grant_id_seq OWNED BY oauth2_provider_grant.id;


--
-- Name: oauth2_provider_refreshtoken; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE oauth2_provider_refreshtoken (
    id integer NOT NULL,
    user_id integer NOT NULL,
    token character varying(255) NOT NULL,
    application_id integer NOT NULL,
    access_token_id integer NOT NULL
);


ALTER TABLE oauth2_provider_refreshtoken OWNER TO newsblur;

--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE oauth2_provider_refreshtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE oauth2_provider_refreshtoken_id_seq OWNER TO newsblur;

--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE oauth2_provider_refreshtoken_id_seq OWNED BY oauth2_provider_refreshtoken.id;


--
-- Name: paypal_ipn; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE paypal_ipn (
    id integer NOT NULL,
    business character varying(127) NOT NULL,
    charset character varying(32) NOT NULL,
    custom character varying(255) NOT NULL,
    notify_version numeric(64,2),
    parent_txn_id character varying(19) NOT NULL,
    receiver_email character varying(127) NOT NULL,
    receiver_id character varying(127) NOT NULL,
    residence_country character varying(2) NOT NULL,
    test_ipn boolean NOT NULL,
    txn_id character varying(19) NOT NULL,
    txn_type character varying(128) NOT NULL,
    verify_sign character varying(255) NOT NULL,
    address_country character varying(64) NOT NULL,
    address_city character varying(40) NOT NULL,
    address_country_code character varying(64) NOT NULL,
    address_name character varying(128) NOT NULL,
    address_state character varying(40) NOT NULL,
    address_status character varying(11) NOT NULL,
    address_street character varying(200) NOT NULL,
    address_zip character varying(20) NOT NULL,
    contact_phone character varying(20) NOT NULL,
    first_name character varying(64) NOT NULL,
    last_name character varying(64) NOT NULL,
    payer_business_name character varying(127) NOT NULL,
    payer_email character varying(127) NOT NULL,
    payer_id character varying(13) NOT NULL,
    auth_amount numeric(64,2),
    auth_exp character varying(28) NOT NULL,
    auth_id character varying(19) NOT NULL,
    auth_status character varying(9) NOT NULL,
    exchange_rate numeric(64,16),
    invoice character varying(127) NOT NULL,
    item_name character varying(127) NOT NULL,
    item_number character varying(127) NOT NULL,
    mc_currency character varying(32) NOT NULL,
    mc_fee numeric(64,2),
    mc_gross numeric(64,2),
    mc_handling numeric(64,2),
    mc_shipping numeric(64,2),
    memo character varying(255) NOT NULL,
    num_cart_items integer,
    option_name1 character varying(64) NOT NULL,
    option_name2 character varying(64) NOT NULL,
    payer_status character varying(10) NOT NULL,
    payment_date timestamp with time zone,
    payment_gross numeric(64,2),
    payment_status character varying(17) NOT NULL,
    payment_type character varying(7) NOT NULL,
    pending_reason character varying(14) NOT NULL,
    protection_eligibility character varying(32) NOT NULL,
    quantity integer,
    reason_code character varying(15) NOT NULL,
    remaining_settle numeric(64,2),
    settle_amount numeric(64,2),
    settle_currency character varying(32) NOT NULL,
    shipping numeric(64,2),
    shipping_method character varying(255) NOT NULL,
    tax numeric(64,2),
    transaction_entity character varying(7) NOT NULL,
    auction_buyer_id character varying(64) NOT NULL,
    auction_closing_date timestamp with time zone,
    auction_multi_item integer,
    for_auction numeric(64,2),
    amount numeric(64,2),
    amount_per_cycle numeric(64,2),
    initial_payment_amount numeric(64,2),
    next_payment_date timestamp with time zone,
    outstanding_balance numeric(64,2),
    payment_cycle character varying(32) NOT NULL,
    period_type character varying(32) NOT NULL,
    product_name character varying(128) NOT NULL,
    product_type character varying(128) NOT NULL,
    profile_status character varying(32) NOT NULL,
    recurring_payment_id character varying(128) NOT NULL,
    rp_invoice_id character varying(127) NOT NULL,
    time_created timestamp with time zone,
    amount1 numeric(64,2),
    amount2 numeric(64,2),
    amount3 numeric(64,2),
    mc_amount1 numeric(64,2),
    mc_amount2 numeric(64,2),
    mc_amount3 numeric(64,2),
    password character varying(24) NOT NULL,
    period1 character varying(32) NOT NULL,
    period2 character varying(32) NOT NULL,
    period3 character varying(32) NOT NULL,
    reattempt character varying(1) NOT NULL,
    recur_times integer,
    recurring character varying(1) NOT NULL,
    retry_at timestamp with time zone,
    subscr_date timestamp with time zone,
    subscr_effective timestamp with time zone,
    subscr_id character varying(19) NOT NULL,
    username character varying(64) NOT NULL,
    case_creation_date timestamp with time zone,
    case_id character varying(14) NOT NULL,
    case_type character varying(24) NOT NULL,
    receipt_id character varying(64) NOT NULL,
    currency_code character varying(32) NOT NULL,
    handling_amount numeric(64,2),
    transaction_subject character varying(255) NOT NULL,
    ipaddress inet NOT NULL,
    flag boolean NOT NULL,
    flag_code character varying(16) NOT NULL,
    flag_info text NOT NULL,
    query text NOT NULL,
    response text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);


ALTER TABLE paypal_ipn OWNER TO newsblur;

--
-- Name: paypal_ipn_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE paypal_ipn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE paypal_ipn_id_seq OWNER TO newsblur;

--
-- Name: paypal_ipn_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE paypal_ipn_id_seq OWNED BY paypal_ipn.id;


--
-- Name: profile_paymenthistory; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE profile_paymenthistory (
    id integer NOT NULL,
    user_id integer NOT NULL,
    payment_date timestamp with time zone NOT NULL,
    payment_amount integer NOT NULL,
    payment_provider character varying(20) NOT NULL,
    payment_identifier character varying(100)
);


ALTER TABLE profile_paymenthistory OWNER TO newsblur;

--
-- Name: profile_paymenthistory_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE profile_paymenthistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_paymenthistory_id_seq OWNER TO newsblur;

--
-- Name: profile_paymenthistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE profile_paymenthistory_id_seq OWNED BY profile_paymenthistory.id;


--
-- Name: profile_profile; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE profile_profile (
    id integer NOT NULL,
    user_id integer NOT NULL,
    is_premium boolean NOT NULL,
    premium_expire timestamp with time zone,
    send_emails boolean NOT NULL,
    preferences text NOT NULL,
    view_settings text NOT NULL,
    collapsed_folders text NOT NULL,
    feed_pane_size integer NOT NULL,
    tutorial_finished boolean NOT NULL,
    hide_getting_started boolean,
    has_setup_feeds boolean,
    has_found_friends boolean,
    has_trained_intelligence boolean,
    last_seen_on timestamp with time zone NOT NULL,
    last_seen_ip character varying(50),
    dashboard_date timestamp with time zone NOT NULL,
    timezone character varying(100) NOT NULL,
    secret_token character varying(12),
    stripe_4_digits character varying(4),
    stripe_id character varying(24)
);


ALTER TABLE profile_profile OWNER TO newsblur;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE profile_profile_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE profile_profile_id_seq OWNER TO newsblur;

--
-- Name: profile_profile_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE profile_profile_id_seq OWNED BY profile_profile.id;


--
-- Name: push_pushsubscription; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE push_pushsubscription (
    id integer NOT NULL,
    feed_id integer NOT NULL,
    hub character varying(200) NOT NULL,
    topic character varying(200) NOT NULL,
    verified boolean NOT NULL,
    verify_token character varying(60) NOT NULL,
    lease_expires timestamp with time zone NOT NULL
);


ALTER TABLE push_pushsubscription OWNER TO newsblur;

--
-- Name: push_pushsubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE push_pushsubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE push_pushsubscription_id_seq OWNER TO newsblur;

--
-- Name: push_pushsubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE push_pushsubscription_id_seq OWNED BY push_pushsubscription.id;


--
-- Name: reader_feature; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE reader_feature (
    id integer NOT NULL,
    description text NOT NULL,
    date timestamp with time zone NOT NULL
);


ALTER TABLE reader_feature OWNER TO newsblur;

--
-- Name: reader_feature_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE reader_feature_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reader_feature_id_seq OWNER TO newsblur;

--
-- Name: reader_feature_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE reader_feature_id_seq OWNED BY reader_feature.id;


--
-- Name: reader_usersubscription; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE reader_usersubscription (
    id integer NOT NULL,
    user_id integer NOT NULL,
    feed_id integer NOT NULL,
    user_title character varying(255),
    active boolean NOT NULL,
    last_read_date timestamp with time zone NOT NULL,
    mark_read_date timestamp with time zone NOT NULL,
    unread_count_neutral integer NOT NULL,
    unread_count_positive integer NOT NULL,
    unread_count_negative integer NOT NULL,
    unread_count_updated timestamp with time zone NOT NULL,
    oldest_unread_story_date timestamp with time zone NOT NULL,
    needs_unread_recalc boolean NOT NULL,
    feed_opens integer NOT NULL,
    is_trained boolean NOT NULL
);


ALTER TABLE reader_usersubscription OWNER TO newsblur;

--
-- Name: reader_usersubscription_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE reader_usersubscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reader_usersubscription_id_seq OWNER TO newsblur;

--
-- Name: reader_usersubscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE reader_usersubscription_id_seq OWNED BY reader_usersubscription.id;


--
-- Name: reader_usersubscriptionfolders; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE reader_usersubscriptionfolders (
    id integer NOT NULL,
    user_id integer NOT NULL,
    folders text NOT NULL
);


ALTER TABLE reader_usersubscriptionfolders OWNER TO newsblur;

--
-- Name: reader_usersubscriptionfolders_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE reader_usersubscriptionfolders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE reader_usersubscriptionfolders_id_seq OWNER TO newsblur;

--
-- Name: reader_usersubscriptionfolders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE reader_usersubscriptionfolders_id_seq OWNED BY reader_usersubscriptionfolders.id;


--
-- Name: recommendations_recommendedfeed; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE recommendations_recommendedfeed (
    id integer NOT NULL,
    feed_id integer NOT NULL,
    user_id integer NOT NULL,
    description text,
    is_public boolean NOT NULL,
    created_date date NOT NULL,
    approved_date date,
    declined_date date,
    twitter character varying(50)
);


ALTER TABLE recommendations_recommendedfeed OWNER TO newsblur;

--
-- Name: recommendations_recommendedfeed_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE recommendations_recommendedfeed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recommendations_recommendedfeed_id_seq OWNER TO newsblur;

--
-- Name: recommendations_recommendedfeed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE recommendations_recommendedfeed_id_seq OWNED BY recommendations_recommendedfeed.id;


--
-- Name: recommendations_recommendedfeeduserfeedback; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE recommendations_recommendedfeeduserfeedback (
    id integer NOT NULL,
    recommendation_id integer NOT NULL,
    user_id integer NOT NULL,
    score integer NOT NULL,
    created_date date NOT NULL
);


ALTER TABLE recommendations_recommendedfeeduserfeedback OWNER TO newsblur;

--
-- Name: recommendations_recommendedfeeduserfeedback_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE recommendations_recommendedfeeduserfeedback_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recommendations_recommendedfeeduserfeedback_id_seq OWNER TO newsblur;

--
-- Name: recommendations_recommendedfeeduserfeedback_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE recommendations_recommendedfeeduserfeedback_id_seq OWNED BY recommendations_recommendedfeeduserfeedback.id;


--
-- Name: rss_feeds_duplicatefeed; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE rss_feeds_duplicatefeed (
    id integer NOT NULL,
    duplicate_address character varying(764) NOT NULL,
    duplicate_link character varying(764),
    duplicate_feed_id character varying(255),
    feed_id integer NOT NULL
);


ALTER TABLE rss_feeds_duplicatefeed OWNER TO newsblur;

--
-- Name: rss_feeds_duplicatefeed_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE rss_feeds_duplicatefeed_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rss_feeds_duplicatefeed_id_seq OWNER TO newsblur;

--
-- Name: rss_feeds_duplicatefeed_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE rss_feeds_duplicatefeed_id_seq OWNED BY rss_feeds_duplicatefeed.id;


--
-- Name: rss_feeds_feeddata; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE rss_feeds_feeddata (
    id integer NOT NULL,
    feed_id integer NOT NULL,
    feed_tagline character varying(1024),
    story_count_history text,
    feed_classifier_counts text,
    popular_tags character varying(1024),
    popular_authors character varying(2048)
);


ALTER TABLE rss_feeds_feeddata OWNER TO newsblur;

--
-- Name: rss_feeds_feeddata_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE rss_feeds_feeddata_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE rss_feeds_feeddata_id_seq OWNER TO newsblur;

--
-- Name: rss_feeds_feeddata_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE rss_feeds_feeddata_id_seq OWNED BY rss_feeds_feeddata.id;


--
-- Name: south_migrationhistory; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE south_migrationhistory (
    id integer NOT NULL,
    app_name character varying(255) NOT NULL,
    migration character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE south_migrationhistory OWNER TO newsblur;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE south_migrationhistory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE south_migrationhistory_id_seq OWNER TO newsblur;

--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE south_migrationhistory_id_seq OWNED BY south_migrationhistory.id;


--
-- Name: zebra_customer; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE zebra_customer (
    id integer NOT NULL,
    stripe_customer_id character varying(50),
    date_created timestamp with time zone NOT NULL,
    date_modified timestamp with time zone NOT NULL
);


ALTER TABLE zebra_customer OWNER TO newsblur;

--
-- Name: zebra_customer_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE zebra_customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zebra_customer_id_seq OWNER TO newsblur;

--
-- Name: zebra_customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE zebra_customer_id_seq OWNED BY zebra_customer.id;


--
-- Name: zebra_plan; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE zebra_plan (
    id integer NOT NULL,
    stripe_plan_id character varying(50),
    date_created timestamp with time zone NOT NULL,
    date_modified timestamp with time zone NOT NULL
);


ALTER TABLE zebra_plan OWNER TO newsblur;

--
-- Name: zebra_plan_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE zebra_plan_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zebra_plan_id_seq OWNER TO newsblur;

--
-- Name: zebra_plan_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE zebra_plan_id_seq OWNED BY zebra_plan.id;


--
-- Name: zebra_subscription; Type: TABLE; Schema: public; Owner: newsblur
--

CREATE TABLE zebra_subscription (
    id integer NOT NULL,
    date_created timestamp with time zone NOT NULL,
    date_modified timestamp with time zone NOT NULL,
    customer_id integer NOT NULL,
    plan_id integer NOT NULL
);


ALTER TABLE zebra_subscription OWNER TO newsblur;

--
-- Name: zebra_subscription_id_seq; Type: SEQUENCE; Schema: public; Owner: newsblur
--

CREATE SEQUENCE zebra_subscription_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE zebra_subscription_id_seq OWNER TO newsblur;

--
-- Name: zebra_subscription_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: newsblur
--

ALTER SEQUENCE zebra_subscription_id_seq OWNED BY zebra_subscription.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_category ALTER COLUMN id SET DEFAULT nextval('analyzer_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_featurecategory ALTER COLUMN id SET DEFAULT nextval('analyzer_featurecategory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY celery_taskmeta ALTER COLUMN id SET DEFAULT nextval('celery_taskmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY celery_tasksetmeta ALTER COLUMN id SET DEFAULT nextval('celery_tasksetmeta_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY corsheaders_corsmodel ALTER COLUMN id SET DEFAULT nextval('corsheaders_corsmodel_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_crontabschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_crontabschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_intervalschedule ALTER COLUMN id SET DEFAULT nextval('djcelery_intervalschedule_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_periodictask ALTER COLUMN id SET DEFAULT nextval('djcelery_periodictask_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_taskstate ALTER COLUMN id SET DEFAULT nextval('djcelery_taskstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_workerstate ALTER COLUMN id SET DEFAULT nextval('djcelery_workerstate_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feed_import_oauthtoken ALTER COLUMN id SET DEFAULT nextval('feed_import_oauthtoken_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feeds ALTER COLUMN id SET DEFAULT nextval('feeds_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_accesstoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_accesstoken_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_application ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_application_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_grant ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_grant_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_refreshtoken ALTER COLUMN id SET DEFAULT nextval('oauth2_provider_refreshtoken_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY paypal_ipn ALTER COLUMN id SET DEFAULT nextval('paypal_ipn_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_paymenthistory ALTER COLUMN id SET DEFAULT nextval('profile_paymenthistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_profile ALTER COLUMN id SET DEFAULT nextval('profile_profile_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY push_pushsubscription ALTER COLUMN id SET DEFAULT nextval('push_pushsubscription_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_feature ALTER COLUMN id SET DEFAULT nextval('reader_feature_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscription ALTER COLUMN id SET DEFAULT nextval('reader_usersubscription_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscriptionfolders ALTER COLUMN id SET DEFAULT nextval('reader_usersubscriptionfolders_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeed ALTER COLUMN id SET DEFAULT nextval('recommendations_recommendedfeed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeeduserfeedback ALTER COLUMN id SET DEFAULT nextval('recommendations_recommendedfeeduserfeedback_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_duplicatefeed ALTER COLUMN id SET DEFAULT nextval('rss_feeds_duplicatefeed_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_feeddata ALTER COLUMN id SET DEFAULT nextval('rss_feeds_feeddata_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY south_migrationhistory ALTER COLUMN id SET DEFAULT nextval('south_migrationhistory_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_customer ALTER COLUMN id SET DEFAULT nextval('zebra_customer_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_plan ALTER COLUMN id SET DEFAULT nextval('zebra_plan_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_subscription ALTER COLUMN id SET DEFAULT nextval('zebra_subscription_id_seq'::regclass);


--
-- Data for Name: analyzer_category; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY analyzer_category (id, user_id, feed_id, category, count) FROM stdin;
\.


--
-- Name: analyzer_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('analyzer_category_id_seq', 1, false);


--
-- Data for Name: analyzer_featurecategory; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY analyzer_featurecategory (id, user_id, feed_id, feature, category, count) FROM stdin;
\.


--
-- Name: analyzer_featurecategory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('analyzer_featurecategory_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add permission	1	add_permission
2	Can change permission	1	change_permission
3	Can delete permission	1	delete_permission
4	Can add group	2	add_group
5	Can change group	2	change_group
6	Can delete group	2	delete_group
7	Can add user	3	add_user
8	Can change user	3	change_user
9	Can delete user	3	delete_user
10	Can add content type	4	add_contenttype
11	Can change content type	4	change_contenttype
12	Can delete content type	4	delete_contenttype
13	Can add session	5	add_session
14	Can change session	5	change_session
15	Can delete session	5	delete_session
16	Can add site	6	add_site
17	Can change site	6	change_site
18	Can delete site	6	delete_site
19	Can add log entry	7	add_logentry
20	Can change log entry	7	change_logentry
21	Can delete log entry	7	delete_logentry
22	Can add task state	8	add_taskmeta
23	Can change task state	8	change_taskmeta
24	Can delete task state	8	delete_taskmeta
25	Can add saved group result	9	add_tasksetmeta
26	Can change saved group result	9	change_tasksetmeta
27	Can delete saved group result	9	delete_tasksetmeta
28	Can add interval	10	add_intervalschedule
29	Can change interval	10	change_intervalschedule
30	Can delete interval	10	delete_intervalschedule
31	Can add crontab	11	add_crontabschedule
32	Can change crontab	11	change_crontabschedule
33	Can delete crontab	11	delete_crontabschedule
34	Can add periodic tasks	12	add_periodictasks
35	Can change periodic tasks	12	change_periodictasks
36	Can delete periodic tasks	12	delete_periodictasks
37	Can add periodic task	13	add_periodictask
38	Can change periodic task	13	change_periodictask
39	Can delete periodic task	13	delete_periodictask
40	Can add worker	14	add_workerstate
41	Can change worker	14	change_workerstate
42	Can delete worker	14	delete_workerstate
43	Can add task	15	add_taskstate
44	Can change task	15	change_taskstate
45	Can delete task	15	delete_taskstate
46	Can add PayPal IPN	16	add_paypalipn
47	Can change PayPal IPN	16	change_paypalipn
48	Can delete PayPal IPN	16	delete_paypalipn
49	Can add feed	17	add_feed
50	Can change feed	17	change_feed
51	Can delete feed	17	delete_feed
52	Can add feed data	18	add_feeddata
53	Can change feed data	18	change_feeddata
54	Can delete feed data	18	delete_feeddata
55	Can add duplicate feed	19	add_duplicatefeed
56	Can change duplicate feed	19	change_duplicatefeed
57	Can delete duplicate feed	19	delete_duplicatefeed
58	Can add user subscription	20	add_usersubscription
59	Can change user subscription	20	change_usersubscription
60	Can delete user subscription	20	delete_usersubscription
61	Can add folder	21	add_usersubscriptionfolders
62	Can change folder	21	change_usersubscriptionfolders
63	Can delete folder	21	delete_usersubscriptionfolders
64	Can add feature	22	add_feature
65	Can change feature	22	change_feature
66	Can delete feature	22	delete_feature
67	Can add feature category	23	add_featurecategory
68	Can change feature category	23	change_featurecategory
69	Can delete feature category	23	delete_featurecategory
70	Can add category	24	add_category
71	Can change category	24	change_category
72	Can delete category	24	delete_category
73	Can add o auth token	25	add_oauthtoken
74	Can change o auth token	25	change_oauthtoken
75	Can delete o auth token	25	delete_oauthtoken
76	Can add profile	26	add_profile
77	Can change profile	26	change_profile
78	Can delete profile	26	delete_profile
79	Can add payment history	27	add_paymenthistory
80	Can change payment history	27	change_paymenthistory
81	Can delete payment history	27	delete_paymenthistory
82	Can add recommended feed	28	add_recommendedfeed
83	Can change recommended feed	28	change_recommendedfeed
84	Can delete recommended feed	28	delete_recommendedfeed
85	Can add recommended feed user feedback	29	add_recommendedfeeduserfeedback
86	Can change recommended feed user feedback	29	change_recommendedfeeduserfeedback
87	Can delete recommended feed user feedback	29	delete_recommendedfeeduserfeedback
88	Can add push subscription	30	add_pushsubscription
89	Can change push subscription	30	change_pushsubscription
90	Can delete push subscription	30	delete_pushsubscription
91	Can add migration history	31	add_migrationhistory
92	Can change migration history	31	change_migrationhistory
93	Can delete migration history	31	delete_migrationhistory
94	Can add customer	32	add_customer
95	Can change customer	32	change_customer
96	Can delete customer	32	delete_customer
97	Can add plan	33	add_plan
98	Can change plan	33	change_plan
99	Can delete plan	33	delete_plan
100	Can add subscription	34	add_subscription
101	Can change subscription	34	change_subscription
102	Can delete subscription	34	delete_subscription
103	Can add application	35	add_application
104	Can change application	35	change_application
105	Can delete application	35	delete_application
106	Can add grant	36	add_grant
107	Can change grant	36	change_grant
108	Can delete grant	36	delete_grant
109	Can add access token	37	add_accesstoken
110	Can change access token	37	change_accesstoken
111	Can delete access token	37	delete_accesstoken
112	Can add refresh token	38	add_refreshtoken
113	Can change refresh token	38	change_refreshtoken
114	Can delete refresh token	38	delete_refreshtoken
115	Can add cors model	39	add_corsmodel
116	Can change cors model	39	change_corsmodel
117	Can delete cors model	39	delete_corsmodel
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('auth_permission_id_seq', 117, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, false);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: celery_taskmeta; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY celery_taskmeta (id, task_id, status, result, date_done, traceback, hidden, meta) FROM stdin;
\.


--
-- Name: celery_taskmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('celery_taskmeta_id_seq', 1, false);


--
-- Data for Name: celery_tasksetmeta; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY celery_tasksetmeta (id, taskset_id, result, date_done, hidden) FROM stdin;
\.


--
-- Name: celery_tasksetmeta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('celery_tasksetmeta_id_seq', 1, false);


--
-- Data for Name: corsheaders_corsmodel; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY corsheaders_corsmodel (id, cors) FROM stdin;
\.


--
-- Name: corsheaders_corsmodel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('corsheaders_corsmodel_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	permission	auth	permission
2	group	auth	group
3	user	auth	user
4	content type	contenttypes	contenttype
5	session	sessions	session
6	site	sites	site
7	log entry	admin	logentry
8	task state	djcelery	taskmeta
9	saved group result	djcelery	tasksetmeta
10	interval	djcelery	intervalschedule
11	crontab	djcelery	crontabschedule
12	periodic tasks	djcelery	periodictasks
13	periodic task	djcelery	periodictask
14	worker	djcelery	workerstate
15	task	djcelery	taskstate
16	PayPal IPN	ipn	paypalipn
17	feed	rss_feeds	feed
18	feed data	rss_feeds	feeddata
19	duplicate feed	rss_feeds	duplicatefeed
20	user subscription	reader	usersubscription
21	folder	reader	usersubscriptionfolders
22	feature	reader	feature
23	feature category	analyzer	featurecategory
24	category	analyzer	category
25	o auth token	feed_import	oauthtoken
26	profile	profile	profile
27	payment history	profile	paymenthistory
28	recommended feed	recommendations	recommendedfeed
29	recommended feed user feedback	recommendations	recommendedfeeduserfeedback
30	push subscription	push	pushsubscription
31	migration history	south	migrationhistory
32	customer	zebra	customer
33	plan	zebra	plan
34	subscription	zebra	subscription
35	application	oauth2_provider	application
36	grant	oauth2_provider	grant
37	access token	oauth2_provider	accesstoken
38	refresh token	oauth2_provider	refreshtoken
39	cors model	corsheaders	corsmodel
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('django_content_type_id_seq', 39, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY django_site (id, domain, name) FROM stdin;
1	localhost	DockerNewsBlur
\.


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('django_site_id_seq', 1, true);


--
-- Data for Name: djcelery_crontabschedule; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY djcelery_crontabschedule (id, minute, hour, day_of_week, day_of_month, month_of_year) FROM stdin;
\.


--
-- Name: djcelery_crontabschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('djcelery_crontabschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_intervalschedule; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY djcelery_intervalschedule (id, every, period) FROM stdin;
\.


--
-- Name: djcelery_intervalschedule_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('djcelery_intervalschedule_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictask; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY djcelery_periodictask (id, name, task, interval_id, crontab_id, args, kwargs, queue, exchange, routing_key, expires, enabled, last_run_at, total_run_count, date_changed, description) FROM stdin;
\.


--
-- Name: djcelery_periodictask_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('djcelery_periodictask_id_seq', 1, false);


--
-- Data for Name: djcelery_periodictasks; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY djcelery_periodictasks (ident, last_update) FROM stdin;
\.


--
-- Data for Name: djcelery_taskstate; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY djcelery_taskstate (id, state, task_id, name, tstamp, args, kwargs, eta, expires, result, traceback, runtime, retries, worker_id, hidden) FROM stdin;
\.


--
-- Name: djcelery_taskstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('djcelery_taskstate_id_seq', 1, false);


--
-- Data for Name: djcelery_workerstate; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY djcelery_workerstate (id, hostname, last_heartbeat) FROM stdin;
\.


--
-- Name: djcelery_workerstate_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('djcelery_workerstate_id_seq', 1, false);


--
-- Data for Name: feed_import_oauthtoken; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY feed_import_oauthtoken (id, user_id, session_id, uuid, remote_ip, request_token, request_token_secret, access_token, access_token_secret, credential, created_date) FROM stdin;
\.


--
-- Name: feed_import_oauthtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('feed_import_oauthtoken_id_seq', 1, false);


--
-- Data for Name: feeds; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY feeds (id, feed_address, feed_address_locked, feed_link, feed_link_locked, hash_address_and_link, feed_title, is_push, active, num_subscribers, active_subscribers, premium_subscribers, active_premium_subscribers, branch_from_feed_id, last_update, next_scheduled_update, last_story_date, fetched_once, known_good, has_feed_exception, has_page_exception, has_page, exception_code, errors_since_good, min_to_decay, days_to_trim, creation, etag, last_modified, stories_last_month, average_stories_per_month, last_load_time, favicon_color, favicon_not_found, s3_page, s3_icon, search_indexed) FROM stdin;
\.


--
-- Name: feeds_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('feeds_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_accesstoken; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY oauth2_provider_accesstoken (id, user_id, token, application_id, expires, scope) FROM stdin;
\.


--
-- Name: oauth2_provider_accesstoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('oauth2_provider_accesstoken_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_application; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY oauth2_provider_application (id, client_id, user_id, redirect_uris, client_type, authorization_grant_type, client_secret, name) FROM stdin;
\.


--
-- Name: oauth2_provider_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('oauth2_provider_application_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_grant; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY oauth2_provider_grant (id, user_id, code, application_id, expires, redirect_uri, scope) FROM stdin;
\.


--
-- Name: oauth2_provider_grant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('oauth2_provider_grant_id_seq', 1, false);


--
-- Data for Name: oauth2_provider_refreshtoken; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY oauth2_provider_refreshtoken (id, user_id, token, application_id, access_token_id) FROM stdin;
\.


--
-- Name: oauth2_provider_refreshtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('oauth2_provider_refreshtoken_id_seq', 1, false);


--
-- Data for Name: paypal_ipn; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY paypal_ipn (id, business, charset, custom, notify_version, parent_txn_id, receiver_email, receiver_id, residence_country, test_ipn, txn_id, txn_type, verify_sign, address_country, address_city, address_country_code, address_name, address_state, address_status, address_street, address_zip, contact_phone, first_name, last_name, payer_business_name, payer_email, payer_id, auth_amount, auth_exp, auth_id, auth_status, exchange_rate, invoice, item_name, item_number, mc_currency, mc_fee, mc_gross, mc_handling, mc_shipping, memo, num_cart_items, option_name1, option_name2, payer_status, payment_date, payment_gross, payment_status, payment_type, pending_reason, protection_eligibility, quantity, reason_code, remaining_settle, settle_amount, settle_currency, shipping, shipping_method, tax, transaction_entity, auction_buyer_id, auction_closing_date, auction_multi_item, for_auction, amount, amount_per_cycle, initial_payment_amount, next_payment_date, outstanding_balance, payment_cycle, period_type, product_name, product_type, profile_status, recurring_payment_id, rp_invoice_id, time_created, amount1, amount2, amount3, mc_amount1, mc_amount2, mc_amount3, password, period1, period2, period3, reattempt, recur_times, recurring, retry_at, subscr_date, subscr_effective, subscr_id, username, case_creation_date, case_id, case_type, receipt_id, currency_code, handling_amount, transaction_subject, ipaddress, flag, flag_code, flag_info, query, response, created_at, updated_at) FROM stdin;
\.


--
-- Name: paypal_ipn_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('paypal_ipn_id_seq', 1, false);


--
-- Data for Name: profile_paymenthistory; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY profile_paymenthistory (id, user_id, payment_date, payment_amount, payment_provider) FROM stdin;
\.


--
-- Name: profile_paymenthistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('profile_paymenthistory_id_seq', 1, false);


--
-- Data for Name: profile_profile; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY profile_profile (id, user_id, is_premium, premium_expire, send_emails, preferences, view_settings, collapsed_folders, feed_pane_size, tutorial_finished, hide_getting_started, has_setup_feeds, has_found_friends, has_trained_intelligence, last_seen_on, last_seen_ip, dashboard_date, timezone, secret_token, stripe_4_digits, stripe_id) FROM stdin;
\.


--
-- Name: profile_profile_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('profile_profile_id_seq', 1, false);


--
-- Data for Name: push_pushsubscription; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY push_pushsubscription (id, feed_id, hub, topic, verified, verify_token, lease_expires) FROM stdin;
\.


--
-- Name: push_pushsubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('push_pushsubscription_id_seq', 1, false);


--
-- Data for Name: reader_feature; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY reader_feature (id, description, date) FROM stdin;
\.


--
-- Name: reader_feature_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('reader_feature_id_seq', 1, false);


--
-- Data for Name: reader_usersubscription; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY reader_usersubscription (id, user_id, feed_id, user_title, active, last_read_date, mark_read_date, unread_count_neutral, unread_count_positive, unread_count_negative, unread_count_updated, oldest_unread_story_date, needs_unread_recalc, feed_opens, is_trained) FROM stdin;
\.


--
-- Name: reader_usersubscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('reader_usersubscription_id_seq', 1, false);


--
-- Data for Name: reader_usersubscriptionfolders; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY reader_usersubscriptionfolders (id, user_id, folders) FROM stdin;
\.


--
-- Name: reader_usersubscriptionfolders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('reader_usersubscriptionfolders_id_seq', 1, false);


--
-- Data for Name: recommendations_recommendedfeed; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY recommendations_recommendedfeed (id, feed_id, user_id, description, is_public, created_date, approved_date, declined_date, twitter) FROM stdin;
\.


--
-- Name: recommendations_recommendedfeed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('recommendations_recommendedfeed_id_seq', 1, false);


--
-- Data for Name: recommendations_recommendedfeeduserfeedback; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY recommendations_recommendedfeeduserfeedback (id, recommendation_id, user_id, score, created_date) FROM stdin;
\.


--
-- Name: recommendations_recommendedfeeduserfeedback_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('recommendations_recommendedfeeduserfeedback_id_seq', 1, false);


--
-- Data for Name: rss_feeds_duplicatefeed; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY rss_feeds_duplicatefeed (id, duplicate_address, duplicate_link, duplicate_feed_id, feed_id) FROM stdin;
\.


--
-- Name: rss_feeds_duplicatefeed_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('rss_feeds_duplicatefeed_id_seq', 1, false);


--
-- Data for Name: rss_feeds_feeddata; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY rss_feeds_feeddata (id, feed_id, feed_tagline, story_count_history, feed_classifier_counts, popular_tags, popular_authors) FROM stdin;
\.


--
-- Name: rss_feeds_feeddata_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('rss_feeds_feeddata_id_seq', 1, false);


--
-- Data for Name: south_migrationhistory; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY south_migrationhistory (id, app_name, migration, applied) FROM stdin;
\.


--
-- Name: south_migrationhistory_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('south_migrationhistory_id_seq', 1, false);


--
-- Data for Name: zebra_customer; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY zebra_customer (id, stripe_customer_id, date_created, date_modified) FROM stdin;
\.


--
-- Name: zebra_customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('zebra_customer_id_seq', 1, false);


--
-- Data for Name: zebra_plan; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY zebra_plan (id, stripe_plan_id, date_created, date_modified) FROM stdin;
\.


--
-- Name: zebra_plan_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('zebra_plan_id_seq', 1, false);


--
-- Data for Name: zebra_subscription; Type: TABLE DATA; Schema: public; Owner: newsblur
--

COPY zebra_subscription (id, date_created, date_modified, customer_id, plan_id) FROM stdin;
\.


--
-- Name: zebra_subscription_id_seq; Type: SEQUENCE SET; Schema: public; Owner: newsblur
--

SELECT pg_catalog.setval('zebra_subscription_id_seq', 1, false);


--
-- Name: analyzer_category_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_category
    ADD CONSTRAINT analyzer_category_pkey PRIMARY KEY (id);


--
-- Name: analyzer_featurecategory_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_featurecategory
    ADD CONSTRAINT analyzer_featurecategory_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: celery_taskmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_taskmeta_task_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY celery_taskmeta
    ADD CONSTRAINT celery_taskmeta_task_id_key UNIQUE (task_id);


--
-- Name: celery_tasksetmeta_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_pkey PRIMARY KEY (id);


--
-- Name: celery_tasksetmeta_taskset_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY celery_tasksetmeta
    ADD CONSTRAINT celery_tasksetmeta_taskset_id_key UNIQUE (taskset_id);


--
-- Name: corsheaders_corsmodel_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY corsheaders_corsmodel
    ADD CONSTRAINT corsheaders_corsmodel_pkey PRIMARY KEY (id);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: djcelery_crontabschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_crontabschedule
    ADD CONSTRAINT djcelery_crontabschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_intervalschedule_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_intervalschedule
    ADD CONSTRAINT djcelery_intervalschedule_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictask_name_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_name_key UNIQUE (name);


--
-- Name: djcelery_periodictask_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_pkey PRIMARY KEY (id);


--
-- Name: djcelery_periodictasks_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_periodictasks
    ADD CONSTRAINT djcelery_periodictasks_pkey PRIMARY KEY (ident);


--
-- Name: djcelery_taskstate_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_pkey PRIMARY KEY (id);


--
-- Name: djcelery_taskstate_task_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_task_id_key UNIQUE (task_id);


--
-- Name: djcelery_workerstate_hostname_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_hostname_key UNIQUE (hostname);


--
-- Name: djcelery_workerstate_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_workerstate
    ADD CONSTRAINT djcelery_workerstate_pkey PRIMARY KEY (id);


--
-- Name: feed_import_oauthtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feed_import_oauthtoken
    ADD CONSTRAINT feed_import_oauthtoken_pkey PRIMARY KEY (id);


--
-- Name: feed_import_oauthtoken_user_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feed_import_oauthtoken
    ADD CONSTRAINT feed_import_oauthtoken_user_id_key UNIQUE (user_id);


--
-- Name: feeds_hash_address_and_link_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feeds
    ADD CONSTRAINT feeds_hash_address_and_link_key UNIQUE (hash_address_and_link);


--
-- Name: feeds_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feeds
    ADD CONSTRAINT feeds_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_accesstoken_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_application_client_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_client_id_key UNIQUE (client_id);


--
-- Name: oauth2_provider_application_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_grant_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_pkey PRIMARY KEY (id);


--
-- Name: oauth2_provider_refreshtoken_access_token_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_key UNIQUE (access_token_id);


--
-- Name: oauth2_provider_refreshtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_pkey PRIMARY KEY (id);


--
-- Name: paypal_ipn_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY paypal_ipn
    ADD CONSTRAINT paypal_ipn_pkey PRIMARY KEY (id);


--
-- Name: profile_paymenthistory_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_paymenthistory
    ADD CONSTRAINT profile_paymenthistory_pkey PRIMARY KEY (id);


--
-- Name: profile_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_profile
    ADD CONSTRAINT profile_profile_pkey PRIMARY KEY (id);


--
-- Name: profile_profile_user_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_profile
    ADD CONSTRAINT profile_profile_user_id_key UNIQUE (user_id);


--
-- Name: push_pushsubscription_feed_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY push_pushsubscription
    ADD CONSTRAINT push_pushsubscription_feed_id_key UNIQUE (feed_id);


--
-- Name: push_pushsubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY push_pushsubscription
    ADD CONSTRAINT push_pushsubscription_pkey PRIMARY KEY (id);


--
-- Name: reader_feature_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_feature
    ADD CONSTRAINT reader_feature_pkey PRIMARY KEY (id);


--
-- Name: reader_usersubscription_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscription
    ADD CONSTRAINT reader_usersubscription_pkey PRIMARY KEY (id);


--
-- Name: reader_usersubscription_user_id_feed_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscription
    ADD CONSTRAINT reader_usersubscription_user_id_feed_id_key UNIQUE (user_id, feed_id);


--
-- Name: reader_usersubscriptionfolders_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscriptionfolders
    ADD CONSTRAINT reader_usersubscriptionfolders_pkey PRIMARY KEY (id);


--
-- Name: reader_usersubscriptionfolders_user_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscriptionfolders
    ADD CONSTRAINT reader_usersubscriptionfolders_user_id_key UNIQUE (user_id);


--
-- Name: recommendations_recommendedfeed_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeed
    ADD CONSTRAINT recommendations_recommendedfeed_pkey PRIMARY KEY (id);


--
-- Name: recommendations_recommendedfeeduserfeedback_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeeduserfeedback
    ADD CONSTRAINT recommendations_recommendedfeeduserfeedback_pkey PRIMARY KEY (id);


--
-- Name: rss_feeds_duplicatefeed_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_duplicatefeed
    ADD CONSTRAINT rss_feeds_duplicatefeed_pkey PRIMARY KEY (id);


--
-- Name: rss_feeds_feeddata_feed_id_key; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_feeddata
    ADD CONSTRAINT rss_feeds_feeddata_feed_id_key UNIQUE (feed_id);


--
-- Name: rss_feeds_feeddata_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_feeddata
    ADD CONSTRAINT rss_feeds_feeddata_pkey PRIMARY KEY (id);


--
-- Name: south_migrationhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY south_migrationhistory
    ADD CONSTRAINT south_migrationhistory_pkey PRIMARY KEY (id);


--
-- Name: zebra_customer_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_customer
    ADD CONSTRAINT zebra_customer_pkey PRIMARY KEY (id);


--
-- Name: zebra_plan_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_plan
    ADD CONSTRAINT zebra_plan_pkey PRIMARY KEY (id);


--
-- Name: zebra_subscription_pkey; Type: CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_subscription
    ADD CONSTRAINT zebra_subscription_pkey PRIMARY KEY (id);


--
-- Name: analyzer_category_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX analyzer_category_feed_id ON analyzer_category USING btree (feed_id);


--
-- Name: analyzer_category_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX analyzer_category_user_id ON analyzer_category USING btree (user_id);


--
-- Name: analyzer_featurecategory_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX analyzer_featurecategory_feed_id ON analyzer_featurecategory USING btree (feed_id);


--
-- Name: analyzer_featurecategory_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX analyzer_featurecategory_user_id ON analyzer_featurecategory USING btree (user_id);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: celery_taskmeta_hidden; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX celery_taskmeta_hidden ON celery_taskmeta USING btree (hidden);


--
-- Name: celery_taskmeta_task_id_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX celery_taskmeta_task_id_like ON celery_taskmeta USING btree (task_id varchar_pattern_ops);


--
-- Name: celery_tasksetmeta_hidden; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX celery_tasksetmeta_hidden ON celery_tasksetmeta USING btree (hidden);


--
-- Name: celery_tasksetmeta_taskset_id_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX celery_tasksetmeta_taskset_id_like ON celery_tasksetmeta USING btree (taskset_id varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: djcelery_periodictask_crontab_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_periodictask_crontab_id ON djcelery_periodictask USING btree (crontab_id);


--
-- Name: djcelery_periodictask_interval_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_periodictask_interval_id ON djcelery_periodictask USING btree (interval_id);


--
-- Name: djcelery_periodictask_name_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_periodictask_name_like ON djcelery_periodictask USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_hidden; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_hidden ON djcelery_taskstate USING btree (hidden);


--
-- Name: djcelery_taskstate_name; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_name ON djcelery_taskstate USING btree (name);


--
-- Name: djcelery_taskstate_name_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_name_like ON djcelery_taskstate USING btree (name varchar_pattern_ops);


--
-- Name: djcelery_taskstate_state; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_state ON djcelery_taskstate USING btree (state);


--
-- Name: djcelery_taskstate_state_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_state_like ON djcelery_taskstate USING btree (state varchar_pattern_ops);


--
-- Name: djcelery_taskstate_task_id_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_task_id_like ON djcelery_taskstate USING btree (task_id varchar_pattern_ops);


--
-- Name: djcelery_taskstate_tstamp; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_tstamp ON djcelery_taskstate USING btree (tstamp);


--
-- Name: djcelery_taskstate_worker_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_taskstate_worker_id ON djcelery_taskstate USING btree (worker_id);


--
-- Name: djcelery_workerstate_hostname_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_workerstate_hostname_like ON djcelery_workerstate USING btree (hostname varchar_pattern_ops);


--
-- Name: djcelery_workerstate_last_heartbeat; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX djcelery_workerstate_last_heartbeat ON djcelery_workerstate USING btree (last_heartbeat);


--
-- Name: feeds_active; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_active ON feeds USING btree (active);


--
-- Name: feeds_active_subscribers; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_active_subscribers ON feeds USING btree (active_subscribers);


--
-- Name: feeds_branch_from_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_branch_from_feed_id ON feeds USING btree (branch_from_feed_id);


--
-- Name: feeds_feed_address; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_feed_address ON feeds USING btree (feed_address);


--
-- Name: feeds_feed_address_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_feed_address_like ON feeds USING btree (feed_address varchar_pattern_ops);


--
-- Name: feeds_has_feed_exception; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_has_feed_exception ON feeds USING btree (has_feed_exception);


--
-- Name: feeds_has_page_exception; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_has_page_exception ON feeds USING btree (has_page_exception);


--
-- Name: feeds_hash_address_and_link_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_hash_address_and_link_like ON feeds USING btree (hash_address_and_link varchar_pattern_ops);


--
-- Name: feeds_last_update; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX feeds_last_update ON feeds USING btree (last_update);


--
-- Name: oauth2_provider_accesstoken_application_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_accesstoken_application_id ON oauth2_provider_accesstoken USING btree (application_id);


--
-- Name: oauth2_provider_accesstoken_token; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_accesstoken_token ON oauth2_provider_accesstoken USING btree (token);


--
-- Name: oauth2_provider_accesstoken_token_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_accesstoken_token_like ON oauth2_provider_accesstoken USING btree (token varchar_pattern_ops);


--
-- Name: oauth2_provider_accesstoken_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_accesstoken_user_id ON oauth2_provider_accesstoken USING btree (user_id);


--
-- Name: oauth2_provider_application_client_id_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_application_client_id_like ON oauth2_provider_application USING btree (client_id varchar_pattern_ops);


--
-- Name: oauth2_provider_application_client_secret; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_application_client_secret ON oauth2_provider_application USING btree (client_secret);


--
-- Name: oauth2_provider_application_client_secret_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_application_client_secret_like ON oauth2_provider_application USING btree (client_secret varchar_pattern_ops);


--
-- Name: oauth2_provider_application_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_application_user_id ON oauth2_provider_application USING btree (user_id);


--
-- Name: oauth2_provider_grant_application_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_grant_application_id ON oauth2_provider_grant USING btree (application_id);


--
-- Name: oauth2_provider_grant_code; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_grant_code ON oauth2_provider_grant USING btree (code);


--
-- Name: oauth2_provider_grant_code_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_grant_code_like ON oauth2_provider_grant USING btree (code varchar_pattern_ops);


--
-- Name: oauth2_provider_grant_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_grant_user_id ON oauth2_provider_grant USING btree (user_id);


--
-- Name: oauth2_provider_refreshtoken_application_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_refreshtoken_application_id ON oauth2_provider_refreshtoken USING btree (application_id);


--
-- Name: oauth2_provider_refreshtoken_token; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_refreshtoken_token ON oauth2_provider_refreshtoken USING btree (token);


--
-- Name: oauth2_provider_refreshtoken_token_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_refreshtoken_token_like ON oauth2_provider_refreshtoken USING btree (token varchar_pattern_ops);


--
-- Name: oauth2_provider_refreshtoken_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX oauth2_provider_refreshtoken_user_id ON oauth2_provider_refreshtoken USING btree (user_id);


--
-- Name: paypal_ipn_txn_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX paypal_ipn_txn_id ON paypal_ipn USING btree (txn_id);


--
-- Name: paypal_ipn_txn_id_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX paypal_ipn_txn_id_like ON paypal_ipn USING btree (txn_id varchar_pattern_ops);


--
-- Name: profile_paymenthistory_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX profile_paymenthistory_user_id ON profile_paymenthistory USING btree (user_id);


--
-- Name: push_pushsubscription_hub; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX push_pushsubscription_hub ON push_pushsubscription USING btree (hub);


--
-- Name: push_pushsubscription_hub_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX push_pushsubscription_hub_like ON push_pushsubscription USING btree (hub varchar_pattern_ops);


--
-- Name: push_pushsubscription_topic; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX push_pushsubscription_topic ON push_pushsubscription USING btree (topic);


--
-- Name: push_pushsubscription_topic_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX push_pushsubscription_topic_like ON push_pushsubscription USING btree (topic varchar_pattern_ops);


--
-- Name: reader_usersubscription_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX reader_usersubscription_feed_id ON reader_usersubscription USING btree (feed_id);


--
-- Name: reader_usersubscription_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX reader_usersubscription_user_id ON reader_usersubscription USING btree (user_id);


--
-- Name: recommendations_recommendedfeed_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX recommendations_recommendedfeed_feed_id ON recommendations_recommendedfeed USING btree (feed_id);


--
-- Name: recommendations_recommendedfeed_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX recommendations_recommendedfeed_user_id ON recommendations_recommendedfeed USING btree (user_id);


--
-- Name: recommendations_recommendedfeeduserfeedback_recommendation_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX recommendations_recommendedfeeduserfeedback_recommendation_id ON recommendations_recommendedfeeduserfeedback USING btree (recommendation_id);


--
-- Name: recommendations_recommendedfeeduserfeedback_user_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX recommendations_recommendedfeeduserfeedback_user_id ON recommendations_recommendedfeeduserfeedback USING btree (user_id);


--
-- Name: rss_feeds_duplicatefeed_duplicate_address; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_duplicate_address ON rss_feeds_duplicatefeed USING btree (duplicate_address);


--
-- Name: rss_feeds_duplicatefeed_duplicate_address_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_duplicate_address_like ON rss_feeds_duplicatefeed USING btree (duplicate_address varchar_pattern_ops);


--
-- Name: rss_feeds_duplicatefeed_duplicate_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_duplicate_feed_id ON rss_feeds_duplicatefeed USING btree (duplicate_feed_id);


--
-- Name: rss_feeds_duplicatefeed_duplicate_feed_id_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_duplicate_feed_id_like ON rss_feeds_duplicatefeed USING btree (duplicate_feed_id varchar_pattern_ops);


--
-- Name: rss_feeds_duplicatefeed_duplicate_link; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_duplicate_link ON rss_feeds_duplicatefeed USING btree (duplicate_link);


--
-- Name: rss_feeds_duplicatefeed_duplicate_link_like; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_duplicate_link_like ON rss_feeds_duplicatefeed USING btree (duplicate_link varchar_pattern_ops);


--
-- Name: rss_feeds_duplicatefeed_feed_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX rss_feeds_duplicatefeed_feed_id ON rss_feeds_duplicatefeed USING btree (feed_id);


--
-- Name: zebra_subscription_customer_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX zebra_subscription_customer_id ON zebra_subscription USING btree (customer_id);


--
-- Name: zebra_subscription_plan_id; Type: INDEX; Schema: public; Owner: newsblur
--

CREATE INDEX zebra_subscription_plan_id ON zebra_subscription USING btree (plan_id);


--
-- Name: analyzer_category_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_category
    ADD CONSTRAINT analyzer_category_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: analyzer_category_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_category
    ADD CONSTRAINT analyzer_category_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: analyzer_featurecategory_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_featurecategory
    ADD CONSTRAINT analyzer_featurecategory_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: analyzer_featurecategory_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY analyzer_featurecategory
    ADD CONSTRAINT analyzer_featurecategory_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: branch_from_feed_id_refs_id_a38772c2; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feeds
    ADD CONSTRAINT branch_from_feed_id_refs_id_a38772c2 FOREIGN KEY (branch_from_feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_content_type_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_fkey FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictask_crontab_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_crontab_id_fkey FOREIGN KEY (crontab_id) REFERENCES djcelery_crontabschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_periodictask_interval_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_periodictask
    ADD CONSTRAINT djcelery_periodictask_interval_id_fkey FOREIGN KEY (interval_id) REFERENCES djcelery_intervalschedule(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: djcelery_taskstate_worker_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY djcelery_taskstate
    ADD CONSTRAINT djcelery_taskstate_worker_id_fkey FOREIGN KEY (worker_id) REFERENCES djcelery_workerstate(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: feed_import_oauthtoken_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY feed_import_oauthtoken
    ADD CONSTRAINT feed_import_oauthtoken_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_application_id_fkey FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_accesstoken_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_accesstoken
    ADD CONSTRAINT oauth2_provider_accesstoken_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_application_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_application
    ADD CONSTRAINT oauth2_provider_application_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_application_id_fkey FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_grant_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_grant
    ADD CONSTRAINT oauth2_provider_grant_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken_access_token_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_access_token_id_fkey FOREIGN KEY (access_token_id) REFERENCES oauth2_provider_accesstoken(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken_application_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_application_id_fkey FOREIGN KEY (application_id) REFERENCES oauth2_provider_application(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: oauth2_provider_refreshtoken_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY oauth2_provider_refreshtoken
    ADD CONSTRAINT oauth2_provider_refreshtoken_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_paymenthistory_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_paymenthistory
    ADD CONSTRAINT profile_paymenthistory_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: profile_profile_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY profile_profile
    ADD CONSTRAINT profile_profile_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: push_pushsubscription_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY push_pushsubscription
    ADD CONSTRAINT push_pushsubscription_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reader_usersubscription_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscription
    ADD CONSTRAINT reader_usersubscription_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reader_usersubscription_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscription
    ADD CONSTRAINT reader_usersubscription_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: reader_usersubscriptionfolders_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY reader_usersubscriptionfolders
    ADD CONSTRAINT reader_usersubscriptionfolders_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recommendations_recommendedfeed_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeed
    ADD CONSTRAINT recommendations_recommendedfeed_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recommendations_recommendedfeed_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeed
    ADD CONSTRAINT recommendations_recommendedfeed_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recommendations_recommendedfeeduserfeedb_recommendation_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeeduserfeedback
    ADD CONSTRAINT recommendations_recommendedfeeduserfeedb_recommendation_id_fkey FOREIGN KEY (recommendation_id) REFERENCES recommendations_recommendedfeed(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: recommendations_recommendedfeeduserfeedback_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY recommendations_recommendedfeeduserfeedback
    ADD CONSTRAINT recommendations_recommendedfeeduserfeedback_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rss_feeds_duplicatefeed_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_duplicatefeed
    ADD CONSTRAINT rss_feeds_duplicatefeed_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: rss_feeds_feeddata_feed_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY rss_feeds_feeddata
    ADD CONSTRAINT rss_feeds_feeddata_feed_id_fkey FOREIGN KEY (feed_id) REFERENCES feeds(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zebra_subscription_customer_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_subscription
    ADD CONSTRAINT zebra_subscription_customer_id_fkey FOREIGN KEY (customer_id) REFERENCES zebra_customer(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: zebra_subscription_plan_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: newsblur
--

ALTER TABLE ONLY zebra_subscription
    ADD CONSTRAINT zebra_subscription_plan_id_fkey FOREIGN KEY (plan_id) REFERENCES zebra_plan(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM newsblur;
GRANT ALL ON SCHEMA public TO newsblur;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

