--
-- PostgreSQL database dump
--

SET client_encoding = 'SQL_ASCII';
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'Standard public schema';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: RTELEMENT; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE "RTELEMENT" (
    "INSTANCEID" character varying(100) NOT NULL,
    "REVISION" integer NOT NULL,
    "PARID" character varying(254),
    "PARTYPE" character varying(50),
    "SOLNID" character varying(254),
    "READONLY" boolean
);


ALTER TABLE public."RTELEMENT" OWNER TO hibuser;

--
-- Name: bdparams; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE bdparams (
    itemid character varying(100) NOT NULL,
    paramvalue character varying(50),
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.bdparams OWNER TO hibuser;

--
-- Name: contentitem; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE contentitem (
    contitemid character varying(100) NOT NULL,
    revision integer NOT NULL,
    name character varying(200) NOT NULL,
    parent_id character varying(100),
    path character varying(254) NOT NULL,
    title character varying(200) NOT NULL,
    mimetype character varying(100) NOT NULL,
    url character varying(254),
    latestvernum integer NOT NULL,
    extension character varying(10) NOT NULL,
    writemode integer NOT NULL
);


ALTER TABLE public.contentitem OWNER TO hibuser;

--
-- Name: contentlocation; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE contentlocation (
    contentid character varying(100) NOT NULL,
    revision integer NOT NULL,
    name character varying(200) NOT NULL,
    solnid character varying(100) NOT NULL,
    description character varying(200) NOT NULL,
    dirpath character varying(254) NOT NULL
);


ALTER TABLE public.contentlocation OWNER TO hibuser;

--
-- Name: contitemfile; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE contitemfile (
    contifileid character varying(100) NOT NULL,
    revision integer NOT NULL,
    osfilename character varying(200) NOT NULL,
    ospath character varying(254) NOT NULL,
    actname character varying(100) NOT NULL,
    parent_id character varying(100),
    versnum integer,
    filesize bigint,
    filedatetime timestamp without time zone NOT NULL,
    isinitialized integer,
    latestverid integer
);


ALTER TABLE public.contitemfile OWNER TO hibuser;

--
-- Name: cplxparams; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE cplxparams (
    itemid character varying(100) NOT NULL,
    paramvalue bytea,
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.cplxparams OWNER TO hibuser;

--
-- Name: dtparams; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE dtparams (
    itemid character varying(100) NOT NULL,
    paramvalue timestamp without time zone,
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.dtparams OWNER TO hibuser;

--
-- Name: lngparams; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE lngparams (
    itemid character varying(100) NOT NULL,
    paramvalue bigint,
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.lngparams OWNER TO hibuser;

--
-- Name: lsparams; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE lsparams (
    itemid character varying(100) NOT NULL,
    paramvalue text,
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.lsparams OWNER TO hibuser;

--
-- Name: paramtypesmap; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE paramtypesmap (
    itemid character varying(100) NOT NULL,
    paramvalue character varying(50),
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.paramtypesmap OWNER TO hibuser;

--
-- Name: rtelement; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE rtelement (
    instanceid character varying(100) NOT NULL,
    revision integer NOT NULL,
    parid character varying(254),
    partype character varying(50),
    solnid character varying(254),
    readonly boolean,
    created timestamp without time zone
);


ALTER TABLE public.rtelement OWNER TO hibuser;

--
-- Name: ssparams; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE ssparams (
    itemid character varying(100) NOT NULL,
    paramvalue character varying(254),
    paramkey character varying(50) NOT NULL
);


ALTER TABLE public.ssparams OWNER TO hibuser;

--
-- Name: versionmap; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE versionmap (
    itemid character varying(50) NOT NULL,
    versionvalue bigint,
    versionkey character varying(50) NOT NULL
);


ALTER TABLE public.versionmap OWNER TO hibuser;

--
-- Name: versmgr; Type: TABLE; Schema: public; Owner: hibuser; Tablespace: 
--

CREATE TABLE versmgr (
    versionkey character varying(50) NOT NULL,
    revision integer NOT NULL
);


ALTER TABLE public.versmgr OWNER TO hibuser;

--
-- Data for Name: RTELEMENT; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY "RTELEMENT" ("INSTANCEID", "REVISION", "PARID", "PARTYPE", "SOLNID", "READONLY") FROM stdin;
\.


--
-- Data for Name: bdparams; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY bdparams (itemid, paramvalue, paramkey) FROM stdin;
\.


--
-- Data for Name: contentitem; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY contentitem (contitemid, revision, name, parent_id, path, title, mimetype, url, latestvernum, extension, writemode) FROM stdin;
8782a72c-4c51-11db-9549-e18ab7296d34	0	86907efa-4c51-11db-9549-e18ab7296d34	87749d6b-4c51-11db-9549-e18ab7296d34	samples/svg/europemap/svg//86907efa-4c51-11db-9549-e18ab7296d34	svg	image/svg+xml	\N	1	.	0
9a3a85ef-4c51-11db-9549-e18ab7296d34	0	9a2e77fe-4c51-11db-9549-e18ab7296d34	87749d6b-4c51-11db-9549-e18ab7296d34	samples/svg/europemap/svg//9a2e77fe-4c51-11db-9549-e18ab7296d34	svg	image/svg+xml	\N	1	.	0
5db3ccc0-4cfe-11db-bb10-1f06ccd53845	0	5cd309ae-4cfe-11db-bb10-1f06ccd53845	5daf38df-4cfe-11db-bb10-1f06ccd53845	samples/bursting/report/report-output/pdf/5cd309ae-4cfe-11db-bb10-1f06ccd53845	report-output	application/pdf	\N	1	.pdf	0
f4378db1-4d77-11db-afac-afc8a21c113a	0	f38ca7b0-4d77-11db-afac-afc8a21c113a	5daf38df-4cfe-11db-bb10-1f06ccd53845	samples/bursting/report/report-output/pdf/f38ca7b0-4d77-11db-afac-afc8a21c113a	report-output	application/pdf	\N	1	.pdf	0
63857db6-4e29-11db-8fff-3d79c617eb0d	0	62b1da05-4e29-11db-8fff-3d79c617eb0d	5daf38df-4cfe-11db-bb10-1f06ccd53845	samples/bursting/report/report-output/pdf/62b1da05-4e29-11db-8fff-3d79c617eb0d	report-output	application/pdf	\N	1	.pdf	0
a6d30b2a-54c9-11db-bae1-5b9a4c1c77e4	0	a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	87749d6b-4c51-11db-9549-e18ab7296d34	samples/svg/europemap/svg//a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	svg	image/svg+xml	\N	1	.	0
c9abeb9f-56dd-11db-bae1-5b9a4c1c77e4	3	c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	c99f687e-56dd-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/xls/c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	report-output	application/vnd.ms-excel	\N	4	.xls	0
642cba06-56df-11db-bae1-5b9a4c1c77e4	1	63eb4435-56df-11db-bae1-5b9a4c1c77e4	c99f687e-56dd-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/xls/63eb4435-56df-11db-bae1-5b9a4c1c77e4	report-output	application/vnd.ms-excel	\N	2	.xls	0
4a17ce8b-56f2-11db-bae1-5b9a4c1c77e4	1	49cb8349-56f2-11db-bae1-5b9a4c1c77e4	4a10f0ba-56f2-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/pdf/49cb8349-56f2-11db-bae1-5b9a4c1c77e4	report-output	application/pdf	\N	2	.pdf	0
17ff44fb-57d4-11db-bae1-5b9a4c1c77e4	1	17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	4a10f0ba-56f2-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/pdf/17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	report-output	application/pdf	\N	2	.pdf	0
74938f65-58d4-11db-a678-ef87c824f2e5	0	73f18303-58d4-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/73f18303-58d4-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
c6fad608-58d4-11db-a678-ef87c824f2e5	0	c687a1d7-58d4-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c687a1d7-58d4-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
03fec59b-58d8-11db-a678-ef87c824f2e5	0	03cd2e4a-58d8-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/03cd2e4a-58d8-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
1228dede-58d8-11db-a678-ef87c824f2e5	0	11fec19d-58d8-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/11fec19d-58d8-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
d6a35521-58d8-11db-a678-ef87c824f2e5	0	d674a400-58d8-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/d674a400-58d8-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
c9aee044-58d9-11db-a678-ef87c824f2e5	0	c9764413-58d9-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c9764413-58d9-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
1ff0e6e7-5918-11db-a678-ef87c824f2e5	0	1fa92f86-5918-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/1fa92f86-5918-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
bbc75bca-597d-11db-a678-ef87c824f2e5	0	bb7ee119-597d-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/bb7ee119-597d-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
c5c7053d-597d-11db-a678-ef87c824f2e5	0	c59f58fc-597d-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c59f58fc-597d-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
4e90f4b0-5980-11db-a678-ef87c824f2e5	0	4e6354ff-5980-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4e6354ff-5980-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
56472353-5980-11db-a678-ef87c824f2e5	0	56208882-5980-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/56208882-5980-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
1153da76-5982-11db-a678-ef87c824f2e5	0	1123a2b5-5982-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/1123a2b5-5982-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
4f11ab89-5982-11db-a678-ef87c824f2e5	0	4eea4d68-5982-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4eea4d68-5982-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
5cec76dc-5983-11db-a678-ef87c824f2e5	0	5cbfe89b-5983-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/5cbfe89b-5983-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
794d056f-5983-11db-a678-ef87c824f2e5	0	7925ce5e-5983-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/7925ce5e-5983-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
9ed55402-5983-11db-a678-ef87c824f2e5	0	9eab84e1-5983-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/9eab84e1-5983-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
e0fbaf55-5983-11db-a678-ef87c824f2e5	0	e0d2f1a4-5983-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/e0d2f1a4-5983-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
689425d9-5995-11db-a678-ef87c824f2e5	0	68523ad8-5995-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/68523ad8-5995-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
3d08d57f-5a1a-11db-a678-ef87c824f2e5	0	3c806b9e-5a1a-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/3c806b9e-5a1a-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
d35da1e2-5a1a-11db-a678-ef87c824f2e5	0	d339ed41-5a1a-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/d339ed41-5a1a-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
83945356-5a49-11db-a678-ef87c824f2e5	0	83138a95-5a49-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/83138a95-5a49-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
a2313d59-5a49-11db-a678-ef87c824f2e5	0	a20b8ce8-5a49-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/a20b8ce8-5a49-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
ba923cac-5a49-11db-a678-ef87c824f2e5	0	ba6e880b-5a49-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/ba6e880b-5a49-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
4757fbbf-5a55-11db-a678-ef87c824f2e5	0	4676755e-5a55-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4676755e-5a55-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
00c3a282-5a56-11db-a678-ef87c824f2e5	0	009c4461-5a56-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/009c4461-5a56-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
4e4faa77-5a57-11db-a678-ef87c824f2e5	0	4e234346-5a57-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4e234346-5a57-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
7a18508a-5a57-11db-a678-ef87c824f2e5	0	79f44dc9-5a57-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/79f44dc9-5a57-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
aa9cf80d-5a57-11db-a678-ef87c824f2e5	0	aa68c8ac-5a57-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/aa68c8ac-5a57-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
c70a09c0-5a57-11db-a678-ef87c824f2e5	0	c6d2f42f-5a57-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c6d2f42f-5a57-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
cdcbc643-5a57-11db-a678-ef87c824f2e5	0	cda7ea92-5a57-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/cda7ea92-5a57-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
4e02bed7-5a5e-11db-a678-ef87c824f2e5	0	4dbf2626-5a5e-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4dbf2626-5a5e-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
489dddca-5a5f-11db-a678-ef87c824f2e5	0	4872d629-5a5f-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4872d629-5a5f-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
e1432ae0-5a5f-11db-a678-ef87c824f2e5	0	e11934af-5a5f-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/e11934af-5a5f-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
f4a860a3-5a5f-11db-a678-ef87c824f2e5	0	f484fa22-5a5f-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/f484fa22-5a5f-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
6610d156-5a60-11db-a678-ef87c824f2e5	0	65ed1cb5-5a60-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/65ed1cb5-5a60-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
8845d639-5a60-11db-a678-ef87c824f2e5	0	882248a8-5a60-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/882248a8-5a60-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
b11d9dec-5a60-11db-a678-ef87c824f2e5	0	b0fa858b-5a60-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/b0fa858b-5a60-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
02bb04e0-5a61-11db-a678-ef87c824f2e5	0	0299731f-5a61-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/0299731f-5a61-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
cc10a7e6-5a62-11db-a678-ef87c824f2e5	0	cbe5a045-5a62-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/cbe5a045-5a62-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
68d12d1b-5a64-11db-a678-ef87c824f2e5	0	6852d55a-5a64-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/6852d55a-5a64-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
76aeacfe-5a64-11db-a678-ef87c824f2e5	0	768c7efd-5a64-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/768c7efd-5a64-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
e3205d31-5a64-11db-a678-ef87c824f2e5	0	e2fd6be0-5a64-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/e2fd6be0-5a64-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
159f9c34-5a65-11db-a678-ef87c824f2e5	0	157afd33-5a65-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/157afd33-5a65-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
725c9b87-5a65-11db-a678-ef87c824f2e5	0	722ed4c6-5a65-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/722ed4c6-5a65-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
aedff0ca-5a65-11db-a678-ef87c824f2e5	0	aebbc6f9-5a65-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/aebbc6f9-5a65-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
067fe2ed-5a66-11db-a678-ef87c824f2e5	0	065bb91c-5a66-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/065bb91c-5a66-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
1fe88e40-5a66-11db-a678-ef87c824f2e5	0	1fc527bf-5a66-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/1fc527bf-5a66-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
917ea934-5a67-11db-a678-ef87c824f2e5	0	915416c3-5a67-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/915416c3-5a67-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
05145a27-5a68-11db-a678-ef87c824f2e5	0	04f33d96-5a68-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/04f33d96-5a68-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
924d9fba-5a6c-11db-a678-ef87c824f2e5	0	92229819-5a6c-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/92229819-5a6c-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
a29f7afd-5a6c-11db-a678-ef87c824f2e5	0	a27c629c-5a6c-11db-a678-ef87c824f2e5	747c84f4-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/a27c629c-5a6c-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
42cb9dc3-5a77-11db-a678-ef87c824f2e5	0	42965cf1-5a77-11db-a678-ef87c824f2e5	42c33952-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/xls/42965cf1-5a77-11db-a678-ef87c824f2e5	report-output	application/vnd.ms-excel	\N	1	.xls	0
719e7697-5a77-11db-a678-ef87c824f2e5	0	7112b155-5a77-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/7112b155-5a77-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
63c742da-5a78-11db-a678-ef87c824f2e5	0	63a3b549-5a78-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/63a3b549-5a78-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
e0debaad-5a78-11db-a678-ef87c824f2e5	0	e0b1420c-5a78-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/e0b1420c-5a78-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
cf7ab6b0-5a79-11db-a678-ef87c824f2e5	0	cf50725f-5a79-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/cf50725f-5a79-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
337fb983-5a7a-11db-a678-ef87c824f2e5	0	335cc832-5a7a-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/335cc832-5a7a-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
8926c1d6-5a7a-11db-a678-ef87c824f2e5	0	88899775-5a7a-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/88899775-5a7a-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
c8780429-5a7a-11db-a678-ef87c824f2e5	0	c8536528-5a7a-11db-a678-ef87c824f2e5	719c7ac6-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/c8536528-5a7a-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
5fd4d63c-5a7c-11db-a678-ef87c824f2e5	1	5f39a7ab-5a7c-11db-a678-ef87c824f2e5	4a10f0ba-56f2-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/pdf/5f39a7ab-5a7c-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
75358de1-5a7c-11db-a678-ef87c824f2e5	0	750cd02f-5a7c-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/750cd02f-5a7c-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
d7fdb564-5af4-11db-a678-ef87c824f2e5	0	d7bc3f93-5af4-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/d7bc3f93-5af4-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
f88f4e38-5b1a-11db-a678-ef87c824f2e5	0	f85d41b7-5b1a-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/f85d41b7-5b1a-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
98f62f0e-5b30-11db-a678-ef87c824f2e5	0	98b15ddd-5b30-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/98b15ddd-5b30-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
bc1daa41-5b30-11db-a678-ef87c824f2e5	0	bbee0ec0-5b30-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/bbee0ec0-5b30-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
cb3afd24-5b30-11db-a678-ef87c824f2e5	0	cb168533-5b30-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/cb168533-5b30-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
e215f8b7-5b30-11db-a678-ef87c824f2e5	0	e1ef0fc6-5b30-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/e1ef0fc6-5b30-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
f5c9005a-5b30-11db-a678-ef87c824f2e5	0	f5a524a9-5b30-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/f5a524a9-5b30-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
09ff68cd-5b31-11db-a678-ef87c824f2e5	0	09dc9e8c-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/09dc9e8c-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
36cbc340-5b31-11db-a678-ef87c824f2e5	0	36a9471f-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/36a9471f-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
4d5d0ba3-5b31-11db-a678-ef87c824f2e5	0	4d373422-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/4d373422-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
7bd0ad76-5b31-11db-a678-ef87c824f2e5	0	7bacaab5-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/7bacaab5-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
94b0a0c9-5b31-11db-a678-ef87c824f2e5	0	948cec28-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/948cec28-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
a6cadffc-5b31-11db-a678-ef87c824f2e5	0	a6a5f2db-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/a6a5f2db-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
cd17de1f-5b31-11db-a678-ef87c824f2e5	1	ccf4ecce-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/ccf4ecce-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
fbab3cf3-5b31-11db-a678-ef87c824f2e5	1	fb0204a2-5b31-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/fb0204a2-5b31-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
4e9b1487-5b32-11db-a678-ef87c824f2e5	1	4e767586-5b32-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/4e767586-5b32-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
a5423cdb-5b34-11db-a678-ef87c824f2e5	1	a50f1eea-5b34-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/a50f1eea-5b34-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
cf40d14f-5b34-11db-a678-ef87c824f2e5	1	cf18139e-5b34-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/cf18139e-5b34-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
675cf133-5b35-11db-a678-ef87c824f2e5	1	673a26f2-5b35-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/673a26f2-5b35-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
c8d13707-5b35-11db-a678-ef87c824f2e5	0	c8ae6cc6-5b35-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/c8ae6cc6-5b35-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	1	.pdf	0
ee0daf8a-5b35-11db-a678-ef87c824f2e5	1	ede84d39-5b35-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/ede84d39-5b35-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
6d7c1a3e-5b37-11db-a678-ef87c824f2e5	1	6d53357d-5b37-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/6d53357d-5b37-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
be8641e2-5b37-11db-a678-ef87c824f2e5	1	be632981-5b37-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/be632981-5b37-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
d9affe26-5b37-11db-a678-ef87c824f2e5	1	d98bfb65-5b37-11db-a678-ef87c824f2e5	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/d98bfb65-5b37-11db-a678-ef87c824f2e5	report-output	application/pdf	\N	2	.pdf	0
ce00fac4-5d27-11db-a0c5-bfdd3c37f4d2	1	cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	7532a7b0-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	report-output	application/pdf	\N	2	.pdf	0
ac841139-5f6a-11db-a0c5-bfdd3c37f4d2	0	abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	87749d6b-4c51-11db-9549-e18ab7296d34	samples/svg/europemap/svg//abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	svg	image/svg+xml	\N	1	.	0
\.


--
-- Data for Name: contentlocation; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY contentlocation (contentid, revision, name, solnid, description, dirpath) FROM stdin;
5daf38df-4cfe-11db-bb10-1f06ccd53845	3	report-output	samples	report-output	samples/bursting/report/report-output/pdf
c99f687e-56dd-11db-bae1-5b9a4c1c77e4	2	report-output	samples	report-output	samples/bursting/BurstActionSequence/report-output/xls
747c84f4-58d4-11db-a678-ef87c824f2e5	51	report-output	test	report-output	test/rules/anfaAction3/report-output/pdf
42c33952-5a77-11db-a678-ef87c824f2e5	1	report-output	test	report-output	test/rules/anfaAction4/report-output/xls
719c7ac6-5a77-11db-a678-ef87c824f2e5	7	report-output	test	report-output	test/rules/anfaAction4/report-output/pdf
4a10f0ba-56f2-11db-bae1-5b9a4c1c77e4	3	report-output	samples	report-output	samples/bursting/BurstActionSequence/report-output/pdf
7532a7b0-5a7c-11db-a678-ef87c824f2e5	26	report-output	samples	report-output	samples/invoice/invoice/report-output/pdf
87749d6b-4c51-11db-9549-e18ab7296d34	4	svg	samples	svg	samples/svg/europemap/svg/
\.


--
-- Data for Name: contitemfile; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY contitemfile (contifileid, revision, osfilename, ospath, actname, parent_id, versnum, filesize, filedatetime, isinitialized, latestverid) FROM stdin;
8782a72d-4c51-11db-9549-e18ab7296d34	0	8782a72d-4c51-11db-9549-e18ab7296d34.	samples/svg/europemap/svg/	europemap.xaction	8782a72c-4c51-11db-9549-e18ab7296d34	1	100337	2006-09-25 06:51:38	-1	0
9a3b7050-4c51-11db-9549-e18ab7296d34	0	9a3b7050-4c51-11db-9549-e18ab7296d34.	samples/svg/europemap/svg/	europemap.xaction	9a3a85ef-4c51-11db-9549-e18ab7296d34	1	100337	2006-09-25 06:52:10	-1	0
5db3ccc1-4cfe-11db-bb10-1f06ccd53845	0	5db3ccc1-4cfe-11db-bb10-1f06ccd53845.pdf	samples/bursting/report/report-output/pdf	report.xaction	5db3ccc0-4cfe-11db-bb10-1f06ccd53845	1	3170	2006-09-26 03:28:54	-1	0
f4398982-4d77-11db-afac-afc8a21c113a	0	f4398982-4d77-11db-afac-afc8a21c113a.pdf	samples/bursting/report/report-output/pdf	report.xaction	f4378db1-4d77-11db-afac-afc8a21c113a	1	3170	2006-09-26 17:59:16	-1	0
6387c7a7-4e29-11db-8fff-3d79c617eb0d	0	6387c7a7-4e29-11db-8fff-3d79c617eb0d.pdf	samples/bursting/report/report-output/pdf	report.xaction	63857db6-4e29-11db-8fff-3d79c617eb0d	1	3171	2006-09-27 15:09:23	-1	0
a6d52e0b-54c9-11db-bae1-5b9a4c1c77e4	0	a6d52e0b-54c9-11db-bae1-5b9a4c1c77e4.	samples/svg/europemap/svg/	europemap.xaction	a6d30b2a-54c9-11db-bae1-5b9a4c1c77e4	1	100337	2006-10-06 01:31:40	-1	0
c9ac12b0-56dd-11db-bae1-5b9a4c1c77e4	0	c9ac12b0-56dd-11db-bae1-5b9a4c1c77e4.xls	samples/bursting/BurstActionSequence/report-output/xls	BurstActionSequence.xaction	c9abeb9f-56dd-11db-bae1-5b9a4c1c77e4	1	15872	2006-10-08 17:00:53	-1	0
cdfd4461-56dd-11db-bae1-5b9a4c1c77e4	0	cdfd4461-56dd-11db-bae1-5b9a4c1c77e4.xls	samples/bursting/BurstActionSequence/report-output/xls	BurstActionSequence.xaction	c9abeb9f-56dd-11db-bae1-5b9a4c1c77e4	2	15872	2006-10-08 17:00:58	-1	1
cfca1522-56dd-11db-bae1-5b9a4c1c77e4	0	cfca1522-56dd-11db-bae1-5b9a4c1c77e4.xls	samples/bursting/BurstActionSequence/report-output/xls	BurstActionSequence.xaction	c9abeb9f-56dd-11db-bae1-5b9a4c1c77e4	3	15872	2006-10-08 17:01:01	-1	2
d1517873-56dd-11db-bae1-5b9a4c1c77e4	0	d1517873-56dd-11db-bae1-5b9a4c1c77e4.xls	samples/bursting/BurstActionSequence/report-output/xls	BurstActionSequence.xaction	c9abeb9f-56dd-11db-bae1-5b9a4c1c77e4	4	15872	2006-10-08 17:01:04	-1	3
642d2f37-56df-11db-bae1-5b9a4c1c77e4	0	642d2f37-56df-11db-bae1-5b9a4c1c77e4.xls	samples/bursting/BurstActionSequence/report-output/xls	BurstActionSequence.xaction	642cba06-56df-11db-bae1-5b9a4c1c77e4	1	15872	2006-10-08 17:12:19	-1	0
65ceaa38-56df-11db-bae1-5b9a4c1c77e4	0	65ceaa38-56df-11db-bae1-5b9a4c1c77e4.xls	samples/bursting/BurstActionSequence/report-output/xls	BurstActionSequence.xaction	642cba06-56df-11db-bae1-5b9a4c1c77e4	2	15872	2006-10-08 17:12:22	-1	1
4a17ce8c-56f2-11db-bae1-5b9a4c1c77e4	0	4a17ce8c-56f2-11db-bae1-5b9a4c1c77e4.pdf	samples/bursting/BurstActionSequence/report-output/pdf	BurstActionSequence.xaction	4a17ce8b-56f2-11db-bae1-5b9a4c1c77e4	1	3170	2006-10-08 19:27:37	-1	0
4ba2db5d-56f2-11db-bae1-5b9a4c1c77e4	0	4ba2db5d-56f2-11db-bae1-5b9a4c1c77e4.pdf	samples/bursting/BurstActionSequence/report-output/pdf	BurstActionSequence.xaction	4a17ce8b-56f2-11db-bae1-5b9a4c1c77e4	2	3173	2006-10-08 19:27:39	-1	1
17ffba2c-57d4-11db-bae1-5b9a4c1c77e4	0	17ffba2c-57d4-11db-bae1-5b9a4c1c77e4.pdf	samples/bursting/BurstActionSequence/report-output/pdf	BurstActionSequence.xaction	17ff44fb-57d4-11db-bae1-5b9a4c1c77e4	1	3170	2006-10-09 22:23:58	-1	0
1984103d-57d4-11db-bae1-5b9a4c1c77e4	0	1984103d-57d4-11db-bae1-5b9a4c1c77e4.pdf	samples/bursting/BurstActionSequence/report-output/pdf	BurstActionSequence.xaction	17ff44fb-57d4-11db-bae1-5b9a4c1c77e4	2	3173	2006-10-09 22:24:01	-1	1
7493b676-58d4-11db-a678-ef87c824f2e5	0	7493b676-58d4-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	74938f65-58d4-11db-a678-ef87c824f2e5	1	13961	2006-10-11 04:59:05	-1	0
c70424d9-58d4-11db-a678-ef87c824f2e5	0	c70424d9-58d4-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	c6fad608-58d4-11db-a678-ef87c824f2e5	1	13961	2006-10-11 05:01:23	-1	0
03ff3acc-58d8-11db-a678-ef87c824f2e5	0	03ff3acc-58d8-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	03fec59b-58d8-11db-a678-ef87c824f2e5	1	13961	2006-10-11 05:24:34	-1	0
1229c93f-58d8-11db-a678-ef87c824f2e5	0	1229c93f-58d8-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	1228dede-58d8-11db-a678-ef87c824f2e5	1	13961	2006-10-11 05:24:58	-1	0
d6a550f2-58d8-11db-a678-ef87c824f2e5	0	d6a550f2-58d8-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	d6a35521-58d8-11db-a678-ef87c824f2e5	1	13859	2006-10-11 05:30:27	-1	0
c9afa395-58d9-11db-a678-ef87c824f2e5	0	c9afa395-58d9-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	c9aee044-58d9-11db-a678-ef87c824f2e5	1	13961	2006-10-11 05:37:15	-1	0
1ff26d88-5918-11db-a678-ef87c824f2e5	0	1ff26d88-5918-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	1ff0e6e7-5918-11db-a678-ef87c824f2e5	1	13961	2006-10-11 13:03:28	-1	0
bbc8462b-597d-11db-a678-ef87c824f2e5	0	bbc8462b-597d-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	bbc75bca-597d-11db-a678-ef87c824f2e5	1	13961	2006-10-12 01:10:49	-1	0
c5c7ef9e-597d-11db-a678-ef87c824f2e5	0	c5c7ef9e-597d-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	c5c7053d-597d-11db-a678-ef87c824f2e5	1	13961	2006-10-12 01:11:06	-1	0
4e91df11-5980-11db-a678-ef87c824f2e5	0	4e91df11-5980-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	4e90f4b0-5980-11db-a678-ef87c824f2e5	1	13961	2006-10-12 01:29:15	-1	0
564834c4-5980-11db-a678-ef87c824f2e5	0	564834c4-5980-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	56472353-5980-11db-a678-ef87c824f2e5	1	13961	2006-10-12 01:29:27	-1	0
11553a07-5982-11db-a678-ef87c824f2e5	0	11553a07-5982-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	1153da76-5982-11db-a678-ef87c824f2e5	1	13961	2006-10-12 01:41:51	-1	0
4f13ce6a-5982-11db-a678-ef87c824f2e5	0	4f13ce6a-5982-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	4f11ab89-5982-11db-a678-ef87c824f2e5	1	13961	2006-10-12 01:43:34	-1	0
5cedaf5d-5983-11db-a678-ef87c824f2e5	0	5cedaf5d-5983-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	5cec76dc-5983-11db-a678-ef87c824f2e5	1	13859	2006-10-12 01:51:07	-1	0
7950fd10-5983-11db-a678-ef87c824f2e5	0	7950fd10-5983-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	794d056f-5983-11db-a678-ef87c824f2e5	1	13859	2006-10-12 01:51:55	-1	0
9ed6b393-5983-11db-a678-ef87c824f2e5	0	9ed6b393-5983-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	9ed55402-5983-11db-a678-ef87c824f2e5	1	13859	2006-10-12 01:52:57	-1	0
e0ffce06-5983-11db-a678-ef87c824f2e5	0	e0ffce06-5983-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	e0fbaf55-5983-11db-a678-ef87c824f2e5	1	13859	2006-10-12 01:54:48	-1	0
6895856a-5995-11db-a678-ef87c824f2e5	0	6895856a-5995-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	689425d9-5995-11db-a678-ef87c824f2e5	1	13961	2006-10-12 04:00:17	-1	0
3d0a3410-5a1a-11db-a678-ef87c824f2e5	0	3d0a3410-5a1a-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	3d08d57f-5a1a-11db-a678-ef87c824f2e5	1	13961	2006-10-12 19:51:07	-1	0
d35f2883-5a1a-11db-a678-ef87c824f2e5	0	d35f2883-5a1a-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	d35da1e2-5a1a-11db-a678-ef87c824f2e5	1	13961	2006-10-12 19:55:20	-1	0
8395d9f7-5a49-11db-a678-ef87c824f2e5	0	8395d9f7-5a49-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	83945356-5a49-11db-a678-ef87c824f2e5	1	3179	2006-10-13 01:29:32	-1	0
a2329cea-5a49-11db-a678-ef87c824f2e5	0	a2329cea-5a49-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	a2313d59-5a49-11db-a678-ef87c824f2e5	1	13961	2006-10-13 01:30:23	-1	0
ba939c3d-5a49-11db-a678-ef87c824f2e5	0	ba939c3d-5a49-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	ba923cac-5a49-11db-a678-ef87c824f2e5	1	3179	2006-10-13 01:31:04	-1	0
47598260-5a55-11db-a678-ef87c824f2e5	0	47598260-5a55-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	4757fbbf-5a55-11db-a678-ef87c824f2e5	1	3179	2006-10-13 02:53:45	-1	0
00c55033-5a56-11db-a678-ef87c824f2e5	0	00c55033-5a56-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	00c3a282-5a56-11db-a678-ef87c824f2e5	1	3179	2006-10-13 02:58:56	-1	0
4e515828-5a57-11db-a678-ef87c824f2e5	0	4e515828-5a57-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	4e4faa77-5a57-11db-a678-ef87c824f2e5	1	3179	2006-10-13 03:08:16	-1	0
7a1a254b-5a57-11db-a678-ef87c824f2e5	0	7a1a254b-5a57-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	7a18508a-5a57-11db-a678-ef87c824f2e5	1	3179	2006-10-13 03:09:29	-1	0
aaa07a7e-5a57-11db-a678-ef87c824f2e5	0	aaa07a7e-5a57-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	aa9cf80d-5a57-11db-a678-ef87c824f2e5	1	3179	2006-10-13 03:10:50	-1	0
c70eebc1-5a57-11db-a678-ef87c824f2e5	0	c70eebc1-5a57-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	c70a09c0-5a57-11db-a678-ef87c824f2e5	1	3179	2006-10-13 03:11:38	-1	0
cdce8564-5a57-11db-a678-ef87c824f2e5	0	cdce8564-5a57-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	cdcbc643-5a57-11db-a678-ef87c824f2e5	1	3179	2006-10-13 03:11:50	-1	0
4e049398-5a5e-11db-a678-ef87c824f2e5	0	4e049398-5a5e-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	4e02bed7-5a5e-11db-a678-ef87c824f2e5	1	3179	2006-10-13 03:58:22	-1	0
489f8b7b-5a5f-11db-a678-ef87c824f2e5	0	489f8b7b-5a5f-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	489dddca-5a5f-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:05:22	-1	0
e1465f31-5a5f-11db-a678-ef87c824f2e5	0	e1465f31-5a5f-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	e1432ae0-5a5f-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:09:38	-1	0
f4aa3564-5a5f-11db-a678-ef87c824f2e5	0	f4aa3564-5a5f-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	f4a860a3-5a5f-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:10:11	-1	0
6612cd27-5a60-11db-a678-ef87c824f2e5	0	6612cd27-5a60-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	6610d156-5a60-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:13:21	-1	0
88490a8a-5a60-11db-a678-ef87c824f2e5	0	88490a8a-5a60-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	8845d639-5a60-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:14:19	-1	0
b11fe7dd-5a60-11db-a678-ef87c824f2e5	0	b11fe7dd-5a60-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	b11d9dec-5a60-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:15:27	-1	0
02bd00b1-5a61-11db-a678-ef87c824f2e5	0	02bd00b1-5a61-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	02bb04e0-5a61-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:17:44	-1	0
cc140347-5a62-11db-a678-ef87c824f2e5	0	cc140347-5a62-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	cc10a7e6-5a62-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:30:31	-1	0
68d39e1c-5a64-11db-a678-ef87c824f2e5	0	68d39e1c-5a64-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	68d12d1b-5a64-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:42:04	-1	0
76b1e14f-5a64-11db-a678-ef87c824f2e5	0	76b1e14f-5a64-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	76aeacfe-5a64-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:42:27	-1	0
e3228012-5a64-11db-a678-ef87c824f2e5	0	e3228012-5a64-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	e3205d31-5a64-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:45:29	-1	0
15a1e625-5a65-11db-a678-ef87c824f2e5	0	15a1e625-5a65-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	159f9c34-5a65-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:46:53	-1	0
72601df8-5a65-11db-a678-ef87c824f2e5	0	72601df8-5a65-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	725c9b87-5a65-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:49:29	-1	0
aee2afeb-5a65-11db-a678-ef87c824f2e5	0	aee2afeb-5a65-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	aedff0ca-5a65-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:51:11	-1	0
06833e4e-5a66-11db-a678-ef87c824f2e5	0	06833e4e-5a66-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	067fe2ed-5a66-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:53:38	-1	0
1feb2651-5a66-11db-a678-ef87c824f2e5	0	1feb2651-5a66-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	1fe88e40-5a66-11db-a678-ef87c824f2e5	1	3179	2006-10-13 04:54:20	-1	0
9180cc15-5a67-11db-a678-ef87c824f2e5	0	9180cc15-5a67-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	917ea934-5a67-11db-a678-ef87c824f2e5	1	3179	2006-10-13 05:04:41	-1	0
0516cb28-5a68-11db-a678-ef87c824f2e5	0	0516cb28-5a68-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	05145a27-5a68-11db-a678-ef87c824f2e5	1	3179	2006-10-13 05:07:54	-1	0
9251704b-5a6c-11db-a678-ef87c824f2e5	0	9251704b-5a6c-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	924d9fba-5a6c-11db-a678-ef87c824f2e5	1	3179	2006-10-13 05:40:29	-1	0
a2a2d65e-5a6c-11db-a678-ef87c824f2e5	0	a2a2d65e-5a6c-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction3/report-output/pdf	anfaAction3.xaction	a29f7afd-5a6c-11db-a678-ef87c824f2e5	1	3179	2006-10-13 05:40:57	-1	0
42cb9dc4-5a77-11db-a678-ef87c824f2e5	0	42cb9dc4-5a77-11db-a678-ef87c824f2e5.xls	test/rules/anfaAction4/report-output/xls	anfaAction4.xaction	42cb9dc3-5a77-11db-a678-ef87c824f2e5	1	16896	2006-10-13 06:57:02	-1	0
719e7698-5a77-11db-a678-ef87c824f2e5	0	719e7698-5a77-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	719e7697-5a77-11db-a678-ef87c824f2e5	1	3179	2006-10-13 06:58:19	-1	0
63c7b80b-5a78-11db-a678-ef87c824f2e5	0	63c7b80b-5a78-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	63c742da-5a78-11db-a678-ef87c824f2e5	1	3179	2006-10-13 07:05:05	-1	0
e0df2fde-5a78-11db-a678-ef87c824f2e5	0	e0df2fde-5a78-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	e0debaad-5a78-11db-a678-ef87c824f2e5	1	3179	2006-10-13 07:08:35	-1	0
cf7b52f1-5a79-11db-a678-ef87c824f2e5	0	cf7b52f1-5a79-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	cf7ab6b0-5a79-11db-a678-ef87c824f2e5	1	3179	2006-10-13 07:15:15	-1	0
338055c4-5a7a-11db-a678-ef87c824f2e5	0	338055c4-5a7a-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	337fb983-5a7a-11db-a678-ef87c824f2e5	1	3179	2006-10-13 07:18:03	-1	0
89278527-5a7a-11db-a678-ef87c824f2e5	0	89278527-5a7a-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	8926c1d6-5a7a-11db-a678-ef87c824f2e5	1	3179	2006-10-13 07:20:27	-1	0
c878a06a-5a7a-11db-a678-ef87c824f2e5	0	c878a06a-5a7a-11db-a678-ef87c824f2e5.pdf	test/rules/anfaAction4/report-output/pdf	anfaAction4.xaction	c8780429-5a7a-11db-a678-ef87c824f2e5	1	13961	2006-10-13 07:22:13	-1	0
5fd5727d-5a7c-11db-a678-ef87c824f2e5	0	5fd5727d-5a7c-11db-a678-ef87c824f2e5.pdf	samples/bursting/BurstActionSequence/report-output/pdf	BurstActionSequence.xaction	5fd4d63c-5a7c-11db-a678-ef87c824f2e5	1	3170	2006-10-13 07:33:38	-1	0
61c5a9be-5a7c-11db-a678-ef87c824f2e5	0	61c5a9be-5a7c-11db-a678-ef87c824f2e5.pdf	samples/bursting/BurstActionSequence/report-output/pdf	BurstActionSequence.xaction	5fd4d63c-5a7c-11db-a678-ef87c824f2e5	2	3173	2006-10-13 07:33:40	-1	1
75358de2-5a7c-11db-a678-ef87c824f2e5	0	75358de2-5a7c-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	75358de1-5a7c-11db-a678-ef87c824f2e5	1	13961	2006-10-13 07:34:12	-1	0
d7fe51a5-5af4-11db-a678-ef87c824f2e5	0	d7fe51a5-5af4-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	d7fdb564-5af4-11db-a678-ef87c824f2e5	1	13961	2006-10-13 21:55:58	-1	0
f88fc369-5b1a-11db-a678-ef87c824f2e5	0	f88fc369-5b1a-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	f88f4e38-5b1a-11db-a678-ef87c824f2e5	1	13960	2006-10-14 02:28:53	-1	0
98f851ef-5b30-11db-a678-ef87c824f2e5	0	98f851ef-5b30-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	98f62f0e-5b30-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:03:42	-1	0
bc1e1f72-5b30-11db-a678-ef87c824f2e5	0	bc1e1f72-5b30-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	bc1daa41-5b30-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:04:41	-1	0
cb3b9965-5b30-11db-a678-ef87c824f2e5	0	cb3b9965-5b30-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	cb3afd24-5b30-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:05:06	-1	0
e21694f8-5b30-11db-a678-ef87c824f2e5	0	e21694f8-5b30-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	e215f8b7-5b30-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:05:44	-1	0
f5c9c3ab-5b30-11db-a678-ef87c824f2e5	0	f5c9c3ab-5b30-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	f5c9005a-5b30-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:06:17	-1	0
0a002c1e-5b31-11db-a678-ef87c824f2e5	0	0a002c1e-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	09ff68cd-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:06:51	-1	0
36ccd4b1-5b31-11db-a678-ef87c824f2e5	0	36ccd4b1-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	36cbc340-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:08:06	-1	0
4d5dcef4-5b31-11db-a678-ef87c824f2e5	0	4d5dcef4-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	4d5d0ba3-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:08:44	-1	0
7bd1bee7-5b31-11db-a678-ef87c824f2e5	0	7bd1bee7-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	7bd0ad76-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:10:02	-1	0
94b18b2a-5b31-11db-a678-ef87c824f2e5	0	94b18b2a-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	94b0a0c9-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:10:44	-1	0
a6cbf16d-5b31-11db-a678-ef87c824f2e5	0	a6cbf16d-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	a6cadffc-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:11:14	-1	0
cd1916a0-5b31-11db-a678-ef87c824f2e5	0	cd1916a0-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	cd17de1f-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:12:19	-1	0
ce58c291-5b31-11db-a678-ef87c824f2e5	0	ce58c291-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	cd17de1f-5b31-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:12:21	-1	1
fbac2754-5b31-11db-a678-ef87c824f2e5	0	fbac2754-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	fbab3cf3-5b31-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:13:37	-1	0
fce606e5-5b31-11db-a678-ef87c824f2e5	0	fce606e5-5b31-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	fbab3cf3-5b31-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:13:39	-1	1
4e9bfee8-5b32-11db-a678-ef87c824f2e5	0	4e9bfee8-5b32-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	4e9b1487-5b32-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:15:56	-1	0
4ff77039-5b32-11db-a678-ef87c824f2e5	0	4ff77039-5b32-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	4e9b1487-5b32-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:15:58	-1	1
a5434e4c-5b34-11db-a678-ef87c824f2e5	0	a5434e4c-5b34-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	a5423cdb-5b34-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:32:40	-1	0
a6819aad-5b34-11db-a678-ef87c824f2e5	0	a6819aad-5b34-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	a5423cdb-5b34-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:32:42	-1	1
cf42cd20-5b34-11db-a678-ef87c824f2e5	0	cf42cd20-5b34-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	cf40d14f-5b34-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:33:51	-1	0
d0792a41-5b34-11db-a678-ef87c824f2e5	0	d0792a41-5b34-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	cf40d14f-5b34-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:33:54	-1	1
675e29b4-5b35-11db-a678-ef87c824f2e5	0	675e29b4-5b35-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	675cf133-5b35-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:38:06	-1	0
68a13105-5b35-11db-a678-ef87c824f2e5	0	68a13105-5b35-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	675cf133-5b35-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:38:08	-1	1
c8d26f88-5b35-11db-a678-ef87c824f2e5	0	c8d26f88-5b35-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	c8d13707-5b35-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:40:49	-1	0
ee0ee80b-5b35-11db-a678-ef87c824f2e5	0	ee0ee80b-5b35-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	ee0daf8a-5b35-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:41:52	-1	0
ef6d8dac-5b35-11db-a678-ef87c824f2e5	0	ef6d8dac-5b35-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	ee0daf8a-5b35-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:41:54	-1	1
6d7d79cf-5b37-11db-a678-ef87c824f2e5	0	6d7d79cf-5b37-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	6d7c1a3e-5b37-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:52:35	-1	0
6ec27cf0-5b37-11db-a678-ef87c824f2e5	0	6ec27cf0-5b37-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	6d7c1a3e-5b37-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:52:37	-1	1
be87a173-5b37-11db-a678-ef87c824f2e5	0	be87a173-5b37-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	be8641e2-5b37-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:54:52	-1	0
c092dac4-5b37-11db-a678-ef87c824f2e5	0	c092dac4-5b37-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	be8641e2-5b37-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:54:55	-1	1
d9b15db7-5b37-11db-a678-ef87c824f2e5	0	d9b15db7-5b37-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	d9affe26-5b37-11db-a678-ef87c824f2e5	1	13961	2006-10-14 05:55:37	-1	0
dae570e8-5b37-11db-a678-ef87c824f2e5	0	dae570e8-5b37-11db-a678-ef87c824f2e5.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	d9affe26-5b37-11db-a678-ef87c824f2e5	2	13961	2006-10-14 05:55:39	-1	1
ce067905-5d27-11db-a0c5-bfdd3c37f4d2	0	ce067905-5d27-11db-a0c5-bfdd3c37f4d2.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	ce00fac4-5d27-11db-a0c5-bfdd3c37f4d2	1	13961	2006-10-16 17:05:50	-1	0
d1bddbb6-5d27-11db-a0c5-bfdd3c37f4d2	0	d1bddbb6-5d27-11db-a0c5-bfdd3c37f4d2.pdf	samples/invoice/invoice/report-output/pdf	invoice.xaction	ce00fac4-5d27-11db-a0c5-bfdd3c37f4d2	2	13961	2006-10-16 17:05:54	-1	1
ac84d48a-5f6a-11db-a0c5-bfdd3c37f4d2	0	ac84d48a-5f6a-11db-a0c5-bfdd3c37f4d2.	samples/svg/europemap/svg/	europemap.xaction	ac841139-5f6a-11db-a0c5-bfdd3c37f4d2	1	100337	2006-10-19 14:09:30	-1	0
\.


--
-- Data for Name: cplxparams; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY cplxparams (itemid, paramvalue, paramkey) FROM stdin;
\.


--
-- Data for Name: dtparams; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY dtparams (itemid, paramvalue, paramkey) FROM stdin;
\.


--
-- Data for Name: lngparams; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY lngparams (itemid, paramvalue, paramkey) FROM stdin;
\.


--
-- Data for Name: lsparams; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY lsparams (itemid, paramvalue, paramkey) FROM stdin;
c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Ajsa Elassad,<p>Attached is the Quadrant Budget Report for the Western region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
\.


--
-- Data for Name: paramtypesmap; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY paramtypesmap (itemid, paramvalue, paramkey) FROM stdin;
dcbc536a-4c47-11db-aa6c-ddb528e81c59	java.lang.String	report-description
dcbc536a-4c47-11db-aa6c-ddb528e81c59	java.lang.String	report-name
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	index5
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	color1
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	index1
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	title
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	color6
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	index4
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	index2
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	color3
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	index3
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	color2
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	index6
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	color4
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	color5
86907efa-4c51-11db-9549-e18ab7296d34	java.lang.String	svg
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	index5
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	color1
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	index1
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	title
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	color6
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	index4
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	index2
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	color3
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	index3
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	color2
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	index6
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	color4
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	svg
9a2e77fe-4c51-11db-9549-e18ab7296d34	java.lang.String	color5
86b9bad7-4cb2-11db-9549-e18ab7296d34	java.lang.String	chart_url
86b9bad7-4cb2-11db-9549-e18ab7296d34	java.lang.String	chart-filename
86b9bad7-4cb2-11db-9549-e18ab7296d34	java.lang.String	base-url
1fe2e77b-4cbf-11db-9549-e18ab7296d34	java.lang.String	positionSelects
1fe2e77b-4cbf-11db-9549-e18ab7296d34	java.lang.String	regionSelects
1fe2e77b-4cbf-11db-9549-e18ab7296d34	java.lang.String	url
1fe2e77b-4cbf-11db-9549-e18ab7296d34	java.lang.String	departmentSelects
85d0413d-4cde-11db-9549-e18ab7296d34	java.lang.String	positionSelects
85d0413d-4cde-11db-9549-e18ab7296d34	java.lang.String	regionSelects
85d0413d-4cde-11db-9549-e18ab7296d34	java.lang.String	url
85d0413d-4cde-11db-9549-e18ab7296d34	java.lang.String	departmentSelects
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	territory_qry_string
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	productline_qry_string
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	employee_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	territory_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	product_qry_string
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	productline_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	product_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	output-message
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	employee_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	territory_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	productline_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	employee_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	territory_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	product_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	productline_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	product_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	output-message
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	java.lang.String	employee_qry_string
fc6ec07f-4ce5-11db-ac3a-ad59b6c7cec4	java.lang.String	report-description
fc6ec07f-4ce5-11db-ac3a-ad59b6c7cec4	java.lang.String	report-name
57952e0d-4cfe-11db-bb10-1f06ccd53845	java.lang.String	report-description
57952e0d-4cfe-11db-bb10-1f06ccd53845	java.lang.String	report-name
5cd309ae-4cfe-11db-bb10-1f06ccd53845	java.lang.String	report-description
5cd309ae-4cfe-11db-bb10-1f06ccd53845	java.lang.String	report-name
5cd309ae-4cfe-11db-bb10-1f06ccd53845	java.lang.String	report-output
6e07aa3c-4d06-11db-bb10-1f06ccd53845	java.lang.String	chart_url
6e07aa3c-4d06-11db-bb10-1f06ccd53845	java.lang.String	chart-filename
6e07aa3c-4d06-11db-bb10-1f06ccd53845	java.lang.String	base-url
97befc4c-4d75-11db-afac-afc8a21c113a	java.lang.String	url
ef6767ff-4d77-11db-afac-afc8a21c113a	java.lang.String	report-description
ef6767ff-4d77-11db-afac-afc8a21c113a	java.lang.String	report-name
f38ca7b0-4d77-11db-afac-afc8a21c113a	java.lang.String	report-description
f38ca7b0-4d77-11db-afac-afc8a21c113a	java.lang.String	report-name
f38ca7b0-4d77-11db-afac-afc8a21c113a	java.lang.String	report-output
5d43c6a4-4e29-11db-8fff-3d79c617eb0d	java.lang.String	report-description
5d43c6a4-4e29-11db-8fff-3d79c617eb0d	java.lang.String	report-name
62b1da05-4e29-11db-8fff-3d79c617eb0d	java.lang.String	report-description
62b1da05-4e29-11db-8fff-3d79c617eb0d	java.lang.String	report-name
62b1da05-4e29-11db-8fff-3d79c617eb0d	java.lang.String	report-output
5cb8de42-4e93-11db-bae1-5b9a4c1c77e4	java.lang.String	rule-result
c3ef06dc-4ee9-11db-bae1-5b9a4c1c77e4	java.lang.String	report-description
c3ef06dc-4ee9-11db-bae1-5b9a4c1c77e4	java.lang.String	report-name
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	index5
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	color1
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	index1
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	title
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	color6
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	index4
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	index2
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	color3
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	index3
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	color2
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	index6
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	color4
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	svg
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	java.lang.String	color5
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	java.lang.String	chart_url
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	java.lang.String	chart-filename
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	java.lang.String	base-url
c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	java.lang.String	formatted_msg
c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	java.lang.String	report-output
63eb4435-56df-11db-bae1-5b9a4c1c77e4	java.lang.String	formatted_msg
63eb4435-56df-11db-bae1-5b9a4c1c77e4	java.lang.String	report-output
49cb8349-56f2-11db-bae1-5b9a4c1c77e4	java.lang.String	formatted_msg
49cb8349-56f2-11db-bae1-5b9a4c1c77e4	java.lang.String	report-output
17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	java.lang.String	formatted_msg
17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	java.lang.String	report-output
73f18303-58d4-11db-a678-ef87c824f2e5	java.lang.String	report-output
c687a1d7-58d4-11db-a678-ef87c824f2e5	java.lang.String	report-output
03cd2e4a-58d8-11db-a678-ef87c824f2e5	java.lang.String	report-output
11fec19d-58d8-11db-a678-ef87c824f2e5	java.lang.String	report-output
d674a400-58d8-11db-a678-ef87c824f2e5	java.lang.String	report-output
c9764413-58d9-11db-a678-ef87c824f2e5	java.lang.String	report-output
1fa92f86-5918-11db-a678-ef87c824f2e5	java.lang.String	report-output
bb7ee119-597d-11db-a678-ef87c824f2e5	java.lang.String	report-output
c59f58fc-597d-11db-a678-ef87c824f2e5	java.lang.String	report-output
4e6354ff-5980-11db-a678-ef87c824f2e5	java.lang.String	report-output
56208882-5980-11db-a678-ef87c824f2e5	java.lang.String	report-output
1123a2b5-5982-11db-a678-ef87c824f2e5	java.lang.String	report-output
4eea4d68-5982-11db-a678-ef87c824f2e5	java.lang.String	report-output
5cbfe89b-5983-11db-a678-ef87c824f2e5	java.lang.String	report-output
7925ce5e-5983-11db-a678-ef87c824f2e5	java.lang.String	report-output
9eab84e1-5983-11db-a678-ef87c824f2e5	java.lang.String	report-output
e0d2f1a4-5983-11db-a678-ef87c824f2e5	java.lang.String	report-output
68523ad8-5995-11db-a678-ef87c824f2e5	java.lang.String	report-output
3c806b9e-5a1a-11db-a678-ef87c824f2e5	java.lang.String	report-output
d339ed41-5a1a-11db-a678-ef87c824f2e5	java.lang.String	report-output
83138a95-5a49-11db-a678-ef87c824f2e5	java.lang.String	report-output
a20b8ce8-5a49-11db-a678-ef87c824f2e5	java.lang.String	report-output
ba6e880b-5a49-11db-a678-ef87c824f2e5	java.lang.String	report-output
4676755e-5a55-11db-a678-ef87c824f2e5	java.lang.String	report-output
009c4461-5a56-11db-a678-ef87c824f2e5	java.lang.String	report-output
4e234346-5a57-11db-a678-ef87c824f2e5	java.lang.String	report-output
79f44dc9-5a57-11db-a678-ef87c824f2e5	java.lang.String	report-output
aa68c8ac-5a57-11db-a678-ef87c824f2e5	java.lang.String	report-output
c6d2f42f-5a57-11db-a678-ef87c824f2e5	java.lang.String	report-output
cda7ea92-5a57-11db-a678-ef87c824f2e5	java.lang.String	report-output
4dbf2626-5a5e-11db-a678-ef87c824f2e5	java.lang.String	report-output
4872d629-5a5f-11db-a678-ef87c824f2e5	java.lang.String	report-output
e11934af-5a5f-11db-a678-ef87c824f2e5	java.lang.String	report-output
f484fa22-5a5f-11db-a678-ef87c824f2e5	java.lang.String	report-output
65ed1cb5-5a60-11db-a678-ef87c824f2e5	java.lang.String	report-output
882248a8-5a60-11db-a678-ef87c824f2e5	java.lang.String	report-output
b0fa858b-5a60-11db-a678-ef87c824f2e5	java.lang.String	report-output
0299731f-5a61-11db-a678-ef87c824f2e5	java.lang.String	report-output
cbe5a045-5a62-11db-a678-ef87c824f2e5	java.lang.String	report-output
6852d55a-5a64-11db-a678-ef87c824f2e5	java.lang.String	report-output
768c7efd-5a64-11db-a678-ef87c824f2e5	java.lang.String	report-output
e2fd6be0-5a64-11db-a678-ef87c824f2e5	java.lang.String	report-output
157afd33-5a65-11db-a678-ef87c824f2e5	java.lang.String	report-output
722ed4c6-5a65-11db-a678-ef87c824f2e5	java.lang.String	report-output
aebbc6f9-5a65-11db-a678-ef87c824f2e5	java.lang.String	report-output
065bb91c-5a66-11db-a678-ef87c824f2e5	java.lang.String	report-output
1fc527bf-5a66-11db-a678-ef87c824f2e5	java.lang.String	report-output
915416c3-5a67-11db-a678-ef87c824f2e5	java.lang.String	report-output
04f33d96-5a68-11db-a678-ef87c824f2e5	java.lang.String	report-output
92229819-5a6c-11db-a678-ef87c824f2e5	java.lang.String	report-output
a27c629c-5a6c-11db-a678-ef87c824f2e5	java.lang.String	report-output
42965cf1-5a77-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
42965cf1-5a77-11db-a678-ef87c824f2e5	java.lang.String	report-output
7112b155-5a77-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
7112b155-5a77-11db-a678-ef87c824f2e5	java.lang.String	report-output
63a3b549-5a78-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
63a3b549-5a78-11db-a678-ef87c824f2e5	java.lang.String	report-output
e0b1420c-5a78-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
e0b1420c-5a78-11db-a678-ef87c824f2e5	java.lang.String	report-output
cf50725f-5a79-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
cf50725f-5a79-11db-a678-ef87c824f2e5	java.lang.String	report-output
335cc832-5a7a-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
335cc832-5a7a-11db-a678-ef87c824f2e5	java.lang.String	report-output
88899775-5a7a-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
88899775-5a7a-11db-a678-ef87c824f2e5	java.lang.String	report-output
c8536528-5a7a-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
c8536528-5a7a-11db-a678-ef87c824f2e5	java.lang.String	report-output
5f39a7ab-5a7c-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
5f39a7ab-5a7c-11db-a678-ef87c824f2e5	java.lang.String	report-output
750cd02f-5a7c-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
750cd02f-5a7c-11db-a678-ef87c824f2e5	java.lang.String	report-output
d7bc3f93-5af4-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
d7bc3f93-5af4-11db-a678-ef87c824f2e5	java.lang.String	report-output
f85d41b7-5b1a-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
f85d41b7-5b1a-11db-a678-ef87c824f2e5	java.lang.String	report-output
98b15ddd-5b30-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
98b15ddd-5b30-11db-a678-ef87c824f2e5	java.lang.String	report-output
bbee0ec0-5b30-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
bbee0ec0-5b30-11db-a678-ef87c824f2e5	java.lang.String	report-output
cb168533-5b30-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
cb168533-5b30-11db-a678-ef87c824f2e5	java.lang.String	report-output
e1ef0fc6-5b30-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
e1ef0fc6-5b30-11db-a678-ef87c824f2e5	java.lang.String	report-output
f5a524a9-5b30-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
f5a524a9-5b30-11db-a678-ef87c824f2e5	java.lang.String	report-output
09dc9e8c-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
09dc9e8c-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
36a9471f-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
36a9471f-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
4d373422-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
4d373422-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
7bacaab5-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
7bacaab5-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
948cec28-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
948cec28-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
a6a5f2db-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
a6a5f2db-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
ccf4ecce-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
ccf4ecce-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
fb0204a2-5b31-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
fb0204a2-5b31-11db-a678-ef87c824f2e5	java.lang.String	report-output
4e767586-5b32-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
4e767586-5b32-11db-a678-ef87c824f2e5	java.lang.String	report-output
a50f1eea-5b34-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
a50f1eea-5b34-11db-a678-ef87c824f2e5	java.lang.String	report-output
cf18139e-5b34-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
cf18139e-5b34-11db-a678-ef87c824f2e5	java.lang.String	report-output
673a26f2-5b35-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
673a26f2-5b35-11db-a678-ef87c824f2e5	java.lang.String	report-output
c8ae6cc6-5b35-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
c8ae6cc6-5b35-11db-a678-ef87c824f2e5	java.lang.String	report-output
ede84d39-5b35-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
ede84d39-5b35-11db-a678-ef87c824f2e5	java.lang.String	report-output
6d53357d-5b37-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
6d53357d-5b37-11db-a678-ef87c824f2e5	java.lang.String	report-output
be632981-5b37-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
be632981-5b37-11db-a678-ef87c824f2e5	java.lang.String	report-output
d98bfb65-5b37-11db-a678-ef87c824f2e5	java.lang.String	formatted_msg
d98bfb65-5b37-11db-a678-ef87c824f2e5	java.lang.String	report-output
cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	java.lang.String	formatted_msg
cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	java.lang.String	report-output
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	index5
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	color1
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	index1
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	title
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	color6
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	index4
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	index2
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	color3
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	index3
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	color2
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	index6
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	color4
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	svg
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	java.lang.String	color5
\.


--
-- Data for Name: rtelement; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY rtelement (instanceid, revision, parid, partype, solnid, readonly, created) FROM stdin;
47dc99d6-4c47-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 05:38:16.96
9ba7dd48-4c47-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 05:40:37.542
ca3ee599-4c47-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 05:41:55.707
dcbc536a-4c47-11db-aa6c-ddb528e81c59	1	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 05:42:26.728
e717c68b-4c49-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 05:57:03.098
ef990d5c-4c49-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 05:57:17.367
510ba57d-4c4a-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 06:00:00.857
63e982ce-4c4a-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 06:00:32.51
6e8e93ff-4c4a-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 06:00:50.369
c3c5c380-4c4a-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 06:03:13.337
c7cb6d41-4c4a-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 06:03:20.086
3d3d62d2-4c4c-11db-aa6c-ddb528e81c59	0	3318D8E81518841710459635F6B16378	session	\N	f	2006-09-25 06:13:46.622
a6f0a3f1-4c4e-11db-b7fd-57c74a60f831	0	FD61B7F8272C4361026497241E815F4F	session	\N	f	2006-09-25 06:31:02.952
755e8ed9-4c4f-11db-9549-e18ab7296d34	0	2E5D6308B9DFBF78AB7D7444D1A95443	session	\N	f	2006-09-25 06:36:49.282
86907efa-4c51-11db-9549-e18ab7296d34	2	2E5D6308B9DFBF78AB7D7444D1A95443	session	\N	f	2006-09-25 06:51:37.124
9a2e77fe-4c51-11db-9549-e18ab7296d34	1	B0F81A96BC36D8108067BB2B1FFC38EB	session	\N	f	2006-09-25 06:52:10.036
c4e11dc2-4c9f-11db-9549-e18ab7296d34	0	51E81496027402A94DA7923DB0E4BC38	session	\N	f	2006-09-25 16:11:42.416
e3239ca3-4ca8-11db-9549-e18ab7296d34	0	CCB1566D4622CBB0E93F070458056B3C	session	\N	f	2006-09-25 17:16:58.654
f70be514-4ca8-11db-9549-e18ab7296d34	0	CCB1566D4622CBB0E93F070458056B3C	session	\N	f	2006-09-25 17:17:32.053
9b8d6a25-4cb1-11db-9549-e18ab7296d34	0	C01375B64CF87536E7028CE4EFEEE681	session	\N	f	2006-09-25 18:19:24.022
1061b596-4cb2-11db-9549-e18ab7296d34	0	5AAEBD41815FF60393D60E4202B60C4F	session	\N	f	2006-09-25 18:22:40.029
86b9bad7-4cb2-11db-9549-e18ab7296d34	1	5AAEBD41815FF60393D60E4202B60C4F	session	\N	f	2006-09-25 18:25:58.577
7d7bb6e8-4cb6-11db-9549-e18ab7296d34	0	9E78918ED4A56C3D801F5456A8E0E962	session	\N	f	2006-09-25 18:54:21.058
937ca629-4cb6-11db-9549-e18ab7296d34	0	9E78918ED4A56C3D801F5456A8E0E962	session	\N	f	2006-09-25 18:54:57.974
997baeea-4cb6-11db-9549-e18ab7296d34	0	9E78918ED4A56C3D801F5456A8E0E962	session	\N	f	2006-09-25 18:55:08.034
1fe2e77b-4cbf-11db-9549-e18ab7296d34	1	7DB7C5FBC75E43FE18E57AC3E8C93DD7	session	\N	f	2006-09-25 19:56:09.499
85d0413d-4cde-11db-9549-e18ab7296d34	1	9859B63AD87D70F0344D1189BEDC8408	session	\N	f	2006-09-25 23:40:54.903
9a27efbd-4ce2-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:10:07.019
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	1	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:11:46.233
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	1	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:11:52.594
e1228f70-4ce2-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:12:06.103
3bb147a1-4ce4-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:21:47.529
5b6cc105-4ce4-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:22:40.767
78ca4d36-4ce4-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:23:30.034
8855cb37-4ce4-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:23:56.114
ef129b08-4ce4-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:26:48.479
f1e717c9-4ce4-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:26:53.227
8d576bbd-4ce5-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:31:14.01
f605d25e-4ce5-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:34:09.637
fc6ec07f-4ce5-11db-ac3a-ad59b6c7cec4	1	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:34:20.39
3aea3c40-4ce6-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:36:05.218
40af2231-4ce6-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:36:14.897
448f1b82-4ce6-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:36:21.398
bc96a583-4ce6-11db-ac3a-ad59b6c7cec4	0	5E521E9B09170EA1B9D1176A3D2DB96E	session	\N	f	2006-09-26 00:39:42.774
e8808f34-4ce6-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:40:56.449
2166e795-4ce7-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:42:31.911
228b9176-4ce7-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:42:33.829
237d9297-4ce7-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:42:35.415
248dca18-4ce7-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:42:37.199
2dea0799-4ce7-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:42:52.903
a6aaf68a-4ce7-11db-ac3a-ad59b6c7cec4	0	5637D75E7465CDB0049D13DC0D161BD9	session	\N	f	2006-09-26 00:46:15.494
b0bc1ab1-4ce9-11db-a0ce-118c6d34aae9	0	F26F4FC858E5104284CFB304378D5BB5	session	\N	f	2006-09-26 01:00:51.378
a4ebe567-4ceb-11db-8910-850ee5eac07c	0	B3C6B0C01CC8223B36212CD2F1490EF3	session	\N	f	2006-09-26 01:14:50.551
f7554ee8-4ceb-11db-8910-850ee5eac07c	0	B3C6B0C01CC8223B36212CD2F1490EF3	session	\N	f	2006-09-26 01:17:08.815
f7777cea-4ceb-11db-8910-850ee5eac07c	0	scheduler-f7729ae9-4ceb-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:17:09.039
35c9c5cc-4cec-11db-8910-850ee5eac07c	0	scheduler-35c99ebb-4cec-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:18:53.604
3ee7e8de-4cec-11db-8910-850ee5eac07c	0	scheduler-3ee7c1cd-4cec-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:19:08.894
8670e4e0-4cec-11db-8910-850ee5eac07c	0	scheduler-866f382f-4cec-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:21:08.91
b39c7652-4cec-11db-8910-850ee5eac07c	0	scheduler-b39c4f41-4cec-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:22:24.693
cdf5c334-4cec-11db-8910-850ee5eac07c	0	scheduler-cdf59c23-4cec-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:23:08.899
0954e3c5-4ced-11db-8910-850ee5eac07c	0	B3C6B0C01CC8223B36212CD2F1490EF3	session	\N	f	2006-09-26 01:24:48.508
0960caa7-4ced-11db-8910-850ee5eac07c	0	scheduler-0960a396-4ced-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:24:48.586
14faea39-4ced-11db-8910-850ee5eac07c	0	scheduler-14fac328-4ced-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:25:08.051
50e337fb-4ced-11db-8910-850ee5eac07c	0	scheduler-50e310ea-4ced-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:26:48.56
98683d5d-4ced-11db-8910-850ee5eac07c	0	scheduler-9868164c-4ced-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:28:48.549
dff0c52f-4ced-11db-8910-850ee5eac07c	0	scheduler-dff09e1e-4ced-11db-8910-850ee5eac07c	session	\N	f	2006-09-26 01:30:48.562
bc5b5369-4cfd-11db-bb10-1f06ccd53845	0	B9D432E3BC6E1B3A17B95D41FB12CCD5	session	\N	f	2006-09-26 03:24:20.81
3f70746a-4cfe-11db-bb10-1f06ccd53845	0	B9D432E3BC6E1B3A17B95D41FB12CCD5	session	\N	f	2006-09-26 03:28:00.73
3f9bca2c-4cfe-11db-bb10-1f06ccd53845	0	scheduler-3f9895db-4cfe-11db-bb10-1f06ccd53845	session	\N	f	2006-09-26 03:28:01.014
57952e0d-4cfe-11db-bb10-1f06ccd53845	1	B9D432E3BC6E1B3A17B95D41FB12CCD5	session	\N	f	2006-09-26 03:28:41.236
5cd309ae-4cfe-11db-bb10-1f06ccd53845	2	B9D432E3BC6E1B3A17B95D41FB12CCD5	session	\N	f	2006-09-26 03:28:50.031
8711b463-4cfe-11db-bb10-1f06ccd53845	0	scheduler-87118d52-4cfe-11db-bb10-1f06ccd53845	session	\N	f	2006-09-26 03:30:00.905
ce9951d5-4cfe-11db-bb10-1f06ccd53845	0	scheduler-ce992ac4-4cfe-11db-bb10-1f06ccd53845	session	\N	f	2006-09-26 03:32:00.912
161f1a87-4cff-11db-bb10-1f06ccd53845	0	scheduler-161ef376-4cff-11db-bb10-1f06ccd53845	session	\N	f	2006-09-26 03:34:00.907
02201198-4d06-11db-bb10-1f06ccd53845	0	9C6ABA5F0B6438393CADC8BE7E3F5C74	session	\N	f	2006-09-26 04:23:33.836
5672384b-4d06-11db-bb10-1f06ccd53845	0	9C6ABA5F0B6438393CADC8BE7E3F5C74	session	\N	f	2006-09-26 04:25:55.303
6e07aa3c-4d06-11db-bb10-1f06ccd53845	1	9C6ABA5F0B6438393CADC8BE7E3F5C74	session	\N	f	2006-09-26 04:26:34.87
4151086d-4d0b-11db-bb10-1f06ccd53845	0	E69DE602E16F8AFE73CD3C7533014CBD	session	\N	f	2006-09-26 05:01:07.337
b69ec99e-4d0b-11db-bb10-1f06ccd53845	0	E69DE602E16F8AFE73CD3C7533014CBD	session	\N	f	2006-09-26 05:04:24.14
97befc4c-4d75-11db-afac-afc8a21c113a	1	FF4F82C49B8993B1A273C2B20333886C	session	\N	f	2006-09-26 17:42:18.995
eb09da3e-4d77-11db-afac-afc8a21c113a	0	FF4F82C49B8993B1A273C2B20333886C	session	\N	f	2006-09-26 17:58:57.73
ef6767ff-4d77-11db-afac-afc8a21c113a	1	FF4F82C49B8993B1A273C2B20333886C	session	\N	f	2006-09-26 17:59:05.054
f38ca7b0-4d77-11db-afac-afc8a21c113a	1	FF4F82C49B8993B1A273C2B20333886C	session	\N	f	2006-09-26 17:59:12.009
060f45a3-4d78-11db-afac-afc8a21c113a	0	FF4F82C49B8993B1A273C2B20333886C	session	\N	f	2006-09-26 17:59:43.064
4d436384-4d86-11db-afac-afc8a21c113a	0	BBFDC746CDFED4ABF11B660BDB0FB38B	session	\N	f	2006-09-26 19:41:55.478
52f1b435-4d86-11db-afac-afc8a21c113a	0	BBFDC746CDFED4ABF11B660BDB0FB38B	session	\N	f	2006-09-26 19:42:05.009
ebcc61d1-4e28-11db-8fff-3d79c617eb0d	0	BF8296B1AFBF213E7C013D9DE6962DD4	session	\N	f	2006-09-27 15:05:59.927
5d43c6a4-4e29-11db-8fff-3d79c617eb0d	1	BF8296B1AFBF213E7C013D9DE6962DD4	session	\N	f	2006-09-27 15:09:10.291
62b1da05-4e29-11db-8fff-3d79c617eb0d	1	BF8296B1AFBF213E7C013D9DE6962DD4	session	\N	f	2006-09-27 15:09:19.401
5adec2de-4e2b-11db-bae1-5b9a4c1c77e4	0	4F11A18DDC20D2971543C897D3E6085B	session	\N	f	2006-09-27 15:23:25.267
4f5692c4-4e2d-11db-bae1-5b9a4c1c77e4	0	166B61ECF445F6CC39E34A90576D8465	session	\N	f	2006-09-27 15:37:24.913
4b163f1a-4e2f-11db-bae1-5b9a4c1c77e4	0	BB36C572F8E4876801A740BC324E2F37	session	\N	f	2006-09-27 15:51:36.779
107e84e0-4e3d-11db-bae1-5b9a4c1c77e4	0	0138DC229DAA5178754D7E9685AC033C	session	\N	f	2006-09-27 17:30:11.426
1094f312-4e3d-11db-bae1-5b9a4c1c77e4	0	scheduler-1094cc01-4e3d-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-27 17:30:11.573
13d35533-4e3d-11db-bae1-5b9a4c1c77e4	0	0138DC229DAA5178754D7E9685AC033C	session	\N	f	2006-09-27 17:30:17.015
13e49345-4e3d-11db-bae1-5b9a4c1c77e4	0	scheduler-13e46c34-4e3d-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-27 17:30:17.128
5b6293c7-4e3d-11db-bae1-5b9a4c1c77e4	0	scheduler-5b626cb6-4e3d-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-27 17:32:17.072
a2e9e319-4e3d-11db-bae1-5b9a4c1c77e4	0	scheduler-a2e9bc08-4e3d-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-27 17:34:17.077
ea71597b-4e3d-11db-bae1-5b9a4c1c77e4	0	scheduler-ea71326a-4e3d-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-27 17:36:17.083
510d5ff1-4e2c-11db-bae1-5b9a4c1c77e4	0	5CA869508D8F35B197C73A6830A03011	session	\N	f	2006-09-27 15:30:18.293
4cac64e7-4e2e-11db-bae1-5b9a4c1c77e4	0	67E2EB5C4BB4A68CBC4AD88EF57E895A	session	\N	f	2006-09-27 15:44:29.939
4cea6d6d-4e30-11db-bae1-5b9a4c1c77e4	0	E74FAC07760FAC71C0598DB47671D579	session	\N	f	2006-09-27 15:58:49.339
6b4a03be-4e59-11db-bae1-5b9a4c1c77e4	0	C2F2C41D48A707A2F75BD051C8D3A7A7	session	\N	f	2006-09-27 20:53:09.663
ccb86b44-4e5b-11db-bae1-5b9a4c1c77e4	0	B67F5112D07EFD56C09352BA394415E9	session	\N	f	2006-09-27 21:10:12.119
94307f3a-4e5e-11db-bae1-5b9a4c1c77e4	0	893F00C00DD356102611DFBBAC9F5028	session	\N	f	2006-09-27 21:30:05.766
62004340-4e61-11db-bae1-5b9a4c1c77e4	0	6985E2958C7162E8416726F77FAF4CC5	session	\N	f	2006-09-27 21:50:10.054
d0a75393-4e6d-11db-bae1-5b9a4c1c77e4	0	827CC9EEA9837E7BE3875B6BE49D3002	session	\N	f	2006-09-27 23:19:09.659
f344cc59-4e6f-11db-bae1-5b9a4c1c77e4	0	EB9AE221420FE9B0793161EA7277190B	session	\N	f	2006-09-27 23:34:26.727
8186ba3f-4e72-11db-bae1-5b9a4c1c77e4	0	FAE219BF6B977DD61B4BCDA042E89F9C	session	\N	f	2006-09-27 23:52:44.389
18961322-4e75-11db-bae1-5b9a4c1c77e4	0	572BDCAAC9BE2A2032E5327CA3DF6381	session	\N	f	2006-09-28 00:11:16.819
ab26fed6-4e6e-11db-bae1-5b9a4c1c77e4	0	ECE350804B8BD56FFEF72C0EE6655E4E	session	\N	f	2006-09-27 23:25:16.239
3985003c-4e71-11db-bae1-5b9a4c1c77e4	0	8FE5C55DB35A0FF61F9C16CA93C281CE	session	\N	f	2006-09-27 23:43:34.085
7cbe8705-4e76-11db-bae1-5b9a4c1c77e4	0	0CDB1AB86C3D6692F76C267871B600B8	session	\N	f	2006-09-28 00:21:14.353
d8f0fcc6-4e7a-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 00:52:27.022
e581d867-4e7a-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 00:52:48.103
dab12070-4e90-11db-bae1-5b9a4c1c77e4	0	368F6C1EC39328A8E8C0DA1DB60EA757	session	\N	f	2006-09-28 03:29:58.886
bb9992c6-4e91-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:36:16.219
cd6d1fcf-4ecb-11db-bae1-5b9a4c1c77e4	0	FC908AD32D1B58D503D95E31D0AACD63	session	\N	f	2006-09-28 10:31:56.937
17de1a35-4ecf-11db-bae1-5b9a4c1c77e4	0	E5CAA0B971C121C9B80E8DF3066A7211	session	\N	f	2006-09-28 10:55:30.319
f9e7934b-4ed7-11db-bae1-5b9a4c1c77e4	0	EFA19B5E3B37F7DDB1E7367A8335CFE9	session	\N	f	2006-09-28 11:59:05.52
db54f5c5-4fd8-11db-bae1-5b9a4c1c77e4	0	scheduler-db54ceb4-4fd8-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-29 18:37:54.887
269ddff8-54c6-11db-bae1-5b9a4c1c77e4	0	9C6E6ACB41FAF3D55A546AE599D6677E	session	\N	f	2006-10-06 01:06:36.57
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	1	E4274A8AE4968C4F0088B6C956929867	session	\N	f	2006-10-06 01:31:39.222
6c62756c-552e-11db-bae1-5b9a4c1c77e4	0	4C651A4B5739C0CEBE08BE2AF3963E33	session	\N	f	2006-10-06 13:33:01.281
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	1	152E492D39F31F08766E90C642AF51CD	session	\N	f	2006-10-07 01:31:02.083
527feb50-5593-11db-bae1-5b9a4c1c77e4	0	152E492D39F31F08766E90C642AF51CD	session	\N	f	2006-10-07 01:35:17.023
52076e41-5607-11db-bae1-5b9a4c1c77e4	0	9EF1CA0842AEBE6F33EE97E41BD1DE5F	session	\N	f	2006-10-07 15:25:37.854
734d3122-5607-11db-bae1-5b9a4c1c77e4	0	9EF1CA0842AEBE6F33EE97E41BD1DE5F	session	\N	f	2006-10-07 15:26:33.676
858d20c3-5607-11db-bae1-5b9a4c1c77e4	0	9EF1CA0842AEBE6F33EE97E41BD1DE5F	session	\N	f	2006-10-07 15:27:04.294
8ab6fb64-5658-11db-bae1-5b9a4c1c77e4	0	951A1D2A97AC79089723AA3B63241D25	session	\N	f	2006-10-08 01:07:02.192
74516c05-565a-11db-bae1-5b9a4c1c77e4	0	951A1D2A97AC79089723AA3B63241D25	session	\N	f	2006-10-08 01:20:43.61
cbe17fa6-565a-11db-bae1-5b9a4c1c77e4	0	951A1D2A97AC79089723AA3B63241D25	session	\N	f	2006-10-08 01:23:10.516
b4c6c257-5662-11db-bae1-5b9a4c1c77e4	0	F62285388C27B26026130AC88FAC8924	session	\N	f	2006-10-08 02:19:47.727
244dcf68-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:45:02.192
8fc73ce9-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:48:02.504
9334ec6a-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:48:08.256
96449d6b-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:48:13.392
9ed6fb3c-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:48:27.773
aa54921d-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:48:47.051
cdea386f-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:49:46.752
d97cb6e0-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:50:06.167
586f304d-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:53:39.149
5d50e230-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:53:47.339
6005a1f3-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:53:51.879
86695c64-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:54:56.286
b38049be-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:49:02.437
b2cedeb5-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:56:10.771
60e78461-4e5a-11db-bae1-5b9a4c1c77e4	0	AEC5D8092D5347C06EBDC269E8941B2C	session	\N	f	2006-09-27 21:00:01.737
3435af77-4e5d-11db-bae1-5b9a4c1c77e4	0	819E4DCD9EB1C7809FEFE05216DBBEBC	session	\N	f	2006-09-27 21:20:15.242
fb13311d-4e5f-11db-bae1-5b9a4c1c77e4	0	3B1D9CA4864AE5B0E5AD1DE166E70242	session	\N	f	2006-09-27 21:40:07.876
08997518-4e7b-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 00:53:46.978
c07a67b9-4e7c-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:06:04.972
4fc3c56a-4e7d-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:10:05.367
9de25e7b-4e80-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:33:44.92
5ec1e8cc-4e83-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:53:27.501
76fb3bdd-4e83-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:54:08.142
85cedb8e-4e83-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:54:33.017
a5f4d68f-4e83-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 01:55:26.953
8afee8a0-4e85-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 02:09:00.714
cfcbd2e1-4e85-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 02:10:56.143
e82ef512-4e85-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 02:11:37.057
f7501883-4e85-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 02:12:02.44
212a5c14-4e86-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 02:13:12.657
f7978c55-4e86-11db-bae1-5b9a4c1c77e4	0	F7A99B9B9481CADF3139D0DBFB123222	session	\N	f	2006-09-28 02:19:12.405
e3cca836-4e8c-11db-bae1-5b9a4c1c77e4	0	E54A7DBF4BCE361078BF702785891E69	session	\N	f	2006-09-28 03:01:36.179
ebc70bc7-4e8c-11db-bae1-5b9a4c1c77e4	0	E54A7DBF4BCE361078BF702785891E69	session	\N	f	2006-09-28 03:01:49.564
038eb148-4e8d-11db-bae1-5b9a4c1c77e4	0	E54A7DBF4BCE361078BF702785891E69	session	\N	f	2006-09-28 03:02:29.46
4f0e8af9-4e8d-11db-bae1-5b9a4c1c77e4	0	E8C1DFFFF0221F9958119D34EE0A92C6	session	\N	f	2006-09-28 03:04:36.129
58fccf4a-4e8d-11db-bae1-5b9a4c1c77e4	0	E8C1DFFFF0221F9958119D34EE0A92C6	session	\N	f	2006-09-28 03:04:52.791
6481b92b-4e8d-11db-bae1-5b9a4c1c77e4	0	E8C1DFFFF0221F9958119D34EE0A92C6	session	\N	f	2006-09-28 03:05:12.114
79de521c-4e8d-11db-bae1-5b9a4c1c77e4	0	E8C1DFFFF0221F9958119D34EE0A92C6	session	\N	f	2006-09-28 03:05:47.953
8814a05d-4e8d-11db-bae1-5b9a4c1c77e4	0	E8C1DFFFF0221F9958119D34EE0A92C6	session	\N	f	2006-09-28 03:06:11.797
fbe1d4b1-4e90-11db-bae1-5b9a4c1c77e4	0	E8C1DFFFF0221F9958119D34EE0A92C6	session	\N	f	2006-09-28 03:30:54.57
6717a982-4e91-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:33:54.439
79a60745-4e91-11db-bae1-5b9a4c1c77e4	0	F22EA8456DE9588A4E381C2099FBA876	session	\N	f	2006-09-28 03:34:25.571
eb0b91c7-4e91-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:37:35.819
2abf1858-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:39:22.692
601481c9-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:40:52.171
65a893ba-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:41:01.53
68a9298b-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:41:06.567
7ad7b40c-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:41:37.071
8f7c6ead-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:42:11.706
c00cfd0e-4e92-11db-bae1-5b9a4c1c77e4	0	F70699976EF34F6C97DBBF0DAF235989	session	\N	f	2006-09-28 03:43:33.183
dbef33df-4e92-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:44:19.964
4dd7d110-4e93-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:47:31.071
54971c91-4e93-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:47:42.391
5cb8de42-4e93-11db-bae1-5b9a4c1c77e4	1	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:47:56.034
60cbce73-4e93-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:48:02.869
639aa5e4-4e93-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:48:07.58
6a5bed35-4e93-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:48:18.913
6e71eaa6-4e93-11db-bae1-5b9a4c1c77e4	0	C3AABD270A8C93BBF812594118F1B000	session	\N	f	2006-09-28 03:48:25.768
11f07847-4e94-11db-bae1-5b9a4c1c77e4	0	2CE1EFC1CCAB7E1C0D993E725CFCEEFD	session	\N	f	2006-09-28 03:53:00.066
04942468-4e96-11db-bae1-5b9a4c1c77e4	0	A8EB41CE2ACDECBD40F0FD6D8DCE4E50	session	\N	f	2006-09-28 04:06:56.644
4b7e08f9-4e9b-11db-bae1-5b9a4c1c77e4	0	1E393AD3C926205FEB05FB3204105F3F	session	\N	f	2006-09-28 04:44:43.101
566a836a-4e9b-11db-bae1-5b9a4c1c77e4	0	1E393AD3C926205FEB05FB3204105F3F	session	\N	f	2006-09-28 04:45:01.428
6158d29b-4e9b-11db-bae1-5b9a4c1c77e4	0	1E393AD3C926205FEB05FB3204105F3F	session	\N	f	2006-09-28 04:45:19.767
65df6c2c-4e9b-11db-bae1-5b9a4c1c77e4	0	1E393AD3C926205FEB05FB3204105F3F	session	\N	f	2006-09-28 04:45:27.36
84c8c87d-4e9b-11db-bae1-5b9a4c1c77e4	0	1E393AD3C926205FEB05FB3204105F3F	session	\N	f	2006-09-28 04:46:19.221
9d5e5d9e-4ea1-11db-bae1-5b9a4c1c77e4	0	0AA3D52FDC1CB397F0D589781A621AF5	session	\N	f	2006-09-28 05:29:57.447
9d6b7d00-4ea1-11db-bae1-5b9a4c1c77e4	0	scheduler-9d6b55ef-4ea1-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-28 05:29:57.533
e4ed4e12-4ea1-11db-bae1-5b9a4c1c77e4	0	scheduler-e4ed2701-4ea1-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-28 05:31:57.502
2c7587c4-4ea2-11db-bae1-5b9a4c1c77e4	0	scheduler-2c73da13-4ea2-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-28 05:33:57.513
73fb5076-4ea2-11db-bae1-5b9a4c1c77e4	0	scheduler-73fb2965-4ea2-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-28 05:35:57.508
632d6039-4eca-11db-bae1-5b9a4c1c77e4	0	C4A18BE05C9AE6A0EBE42FD44C955796	session	\N	f	2006-09-28 10:21:49.184
64e0194c-4eca-11db-bae1-5b9a4c1c77e4	0	4C30022F53076B3C084FA8340C896C55	session	\N	f	2006-09-28 10:21:52.033
656c7372-4ecd-11db-bae1-5b9a4c1c77e4	0	3DA7ADA20CDCFBAE73A7515A25964134	session	\N	f	2006-09-28 10:43:21.444
c37a7c78-4ed0-11db-bae1-5b9a4c1c77e4	0	C16A38904C615FE7A70E6896879A1EDA	session	\N	f	2006-09-28 11:07:27.731
c3ef06dc-4ee9-11db-bae1-5b9a4c1c77e4	1	744639F8D503F37EC4DF5B834F063C16	session	\N	f	2006-09-28 14:06:25.913
0455708d-4fd8-11db-bae1-5b9a4c1c77e4	0	21555DF0341A222E020B032A68C323BD	session	\N	f	2006-09-29 18:31:54.18
04cc001f-4fd8-11db-bae1-5b9a4c1c77e4	0	scheduler-04cbd90e-4fd8-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-29 18:31:54.957
4c46f361-4fd8-11db-bae1-5b9a4c1c77e4	0	scheduler-4c46cc50-4fd8-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-29 18:33:54.881
93cf2d13-4fd8-11db-bae1-5b9a4c1c77e4	0	scheduler-93cf0602-4fd8-11db-bae1-5b9a4c1c77e4	session	\N	f	2006-09-29 18:35:54.892
172f70be-5593-11db-bae1-5b9a4c1c77e4	0	152E492D39F31F08766E90C642AF51CD	session	\N	f	2006-10-07 01:33:37.51
2cae37af-5593-11db-bae1-5b9a4c1c77e4	0	152E492D39F31F08766E90C642AF51CD	session	\N	f	2006-10-07 01:34:13.573
1462d6e2-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:51:44.983
1f183bc3-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:52:02.949
33c581e5-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:52:37.639
41dc3a36-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:53:01.276
4603eae7-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:53:08.247
240cd964-5691-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:52:11.263
e5f68811-5690-11db-bae1-5b9a4c1c77e4	0	49D64E161B82809F67E337B687FB3213	session	\N	f	2006-10-08 07:50:27.098
b85d7d56-56dc-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 16:53:12.349
e6660147-56dc-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 16:54:29.58
1308b3a8-56dd-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 16:55:44.466
20e1edc9-56dd-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 16:56:07.70
5afaabaa-56dd-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 16:57:45.17
a3641d9b-56dd-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 16:59:46.658
ad4123dc-56dd-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 17:00:03.205
c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	5	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 17:00:50.399
4c1b6154-56df-11db-bae1-5b9a4c1c77e4	0	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 17:11:39.213
63eb4435-56df-11db-bae1-5b9a4c1c77e4	2	21F14DCD02229DA7F10C7F8A0272E912	session	\N	f	2006-10-08 17:12:19.163
49cb8349-56f2-11db-bae1-5b9a4c1c77e4	3	64147C212C21D85196987DB722406A6C	session	\N	f	2006-10-08 19:27:35.771
b8f6725e-573a-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:06:06.044
aaef06df-573b-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:12:52.004
c3228d90-573b-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:13:32.607
d099d191-573b-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:13:55.199
e51bcc82-573c-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:21:39.102
2bc2cdf3-573d-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:23:37.637
45db4144-573d-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:24:21.418
a3406775-573d-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:26:58.109
dfa956e6-573d-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:28:39.461
f06f9ed7-573d-11db-bae1-5b9a4c1c77e4	0	70530A8B42A5D962726E2D13497D8F5C	session	\N	f	2006-10-09 04:29:07.603
0a9147a8-5743-11db-bae1-5b9a4c1c77e4	0	69EAD001BB110547AB70C98F612A425A	session	\N	f	2006-10-09 05:05:38.928
23fcb219-5743-11db-bae1-5b9a4c1c77e4	0	69EAD001BB110547AB70C98F612A425A	session	\N	f	2006-10-09 05:06:21.575
17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	2	5CDED35E41CD90846CF9D231B375F535	session	\N	f	2006-10-09 22:23:57.87
c5651b9e-57e0-11db-bae1-5b9a4c1c77e4	0	8F7537CE0B8DF4E0520A266C15E716D1	session	\N	f	2006-10-09 23:54:43.359
dd26587f-57e0-11db-bae1-5b9a4c1c77e4	0	8F7537CE0B8DF4E0520A266C15E716D1	session	\N	f	2006-10-09 23:55:23.213
5ccd9990-57fa-11db-bae1-5b9a4c1c77e4	0	949A87736C5F1679731C48CC65B83F2E	session	\N	f	2006-10-10 02:57:54.798
fa2d3a61-57fa-11db-bae1-5b9a4c1c77e4	0	949A87736C5F1679731C48CC65B83F2E	session	\N	f	2006-10-10 03:02:18.827
d4319b22-57fb-11db-bae1-5b9a4c1c77e4	0	949A87736C5F1679731C48CC65B83F2E	session	\N	f	2006-10-10 03:08:24.599
5f40b482-57fd-11db-92f7-05e84725758b	0	37CBDBF0250A2C7658CFA051D5E41C9D	session	\N	f	2006-10-10 03:19:27.398
ae984a23-57fd-11db-92f7-05e84725758b	0	37CBDBF0250A2C7658CFA051D5E41C9D	session	\N	f	2006-10-10 03:21:40.513
f1bd02a4-57fd-11db-92f7-05e84725758b	0	37CBDBF0250A2C7658CFA051D5E41C9D	session	\N	f	2006-10-10 03:23:33.16
af344e46-58bf-11db-a60e-93ad7746dfa9	0	C6C4F24026CCEC0E969B314832679E5D	session	\N	f	2006-10-11 02:30:23.901
c1ec7b27-58bf-11db-a60e-93ad7746dfa9	0	C6C4F24026CCEC0E969B314832679E5D	session	\N	f	2006-10-11 02:30:55.306
3b509d23-58c2-11db-9374-4d579cc5844c	0	7E6FA1549A2F4B0E1D8DA0AE4322C369	session	\N	f	2006-10-11 02:48:37.961
52f04844-58c2-11db-9374-4d579cc5844c	0	7E6FA1549A2F4B0E1D8DA0AE4322C369	session	\N	f	2006-10-11 02:49:17.595
247fac55-58c5-11db-9374-4d579cc5844c	0	7E6FA1549A2F4B0E1D8DA0AE4322C369	session	\N	f	2006-10-11 03:09:28.171
70d2db96-58c5-11db-9374-4d579cc5844c	0	7E6FA1549A2F4B0E1D8DA0AE4322C369	session	\N	f	2006-10-11 03:11:36.223
a5bba087-58c5-11db-9374-4d579cc5844c	0	7E6FA1549A2F4B0E1D8DA0AE4322C369	session	\N	f	2006-10-11 03:13:04.99
17ba36cb-58c6-11db-a678-ef87c824f2e5	0	F5B4A546E99859C8A4CCE45F764A7946	session	\N	f	2006-10-11 03:16:16.241
a84f003c-58c6-11db-a678-ef87c824f2e5	0	F5B4A546E99859C8A4CCE45F764A7946	session	\N	f	2006-10-11 03:20:18.808
c210a0fd-58c6-11db-a678-ef87c824f2e5	0	F5B4A546E99859C8A4CCE45F764A7946	session	\N	f	2006-10-11 03:21:02.02
4ffa6eae-58c7-11db-a678-ef87c824f2e5	0	F5B4A546E99859C8A4CCE45F764A7946	session	\N	f	2006-10-11 03:25:00.111
88d335af-58cb-11db-a678-ef87c824f2e5	0	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 03:55:13.471
b21756f0-58cf-11db-a678-ef87c824f2e5	0	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 04:25:00.691
849fc101-58d2-11db-a678-ef87c824f2e5	0	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 04:45:12.90
abc32c82-58d3-11db-a678-ef87c824f2e5	0	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 04:53:28.06
73f18303-58d4-11db-a678-ef87c824f2e5	1	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 04:59:03.908
c687a1d7-58d4-11db-a678-ef87c824f2e5	1	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 05:01:22.465
03cd2e4a-58d8-11db-a678-ef87c824f2e5	1	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 05:24:33.752
11fec19d-58d8-11db-a678-ef87c824f2e5	1	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 05:24:57.565
d674a400-58d8-11db-a678-ef87c824f2e5	1	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 05:30:27.171
c9764413-58d9-11db-a678-ef87c824f2e5	1	EF65FFD038081F33382073A0C479AB8F	session	\N	f	2006-10-11 05:37:14.869
1fa92f86-5918-11db-a678-ef87c824f2e5	1	91E3DE8F8422402E6F66EF46D32FEA00	session	\N	f	2006-10-11 13:03:28.283
bb7ee119-597d-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:10:48.90
c59f58fc-597d-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:11:05.89
4e6354ff-5980-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:29:14.338
56208882-5980-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:29:27.322
1123a2b5-5982-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:41:50.573
4eea4d68-5982-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:43:34.216
5cbfe89b-5983-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:51:06.923
7925ce5e-5983-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:51:54.567
9eab84e1-5983-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:52:57.519
e0d2f1a4-5983-11db-a678-ef87c824f2e5	1	4C4F6B837405D80FBD41BCC0F256C64A	session	\N	f	2006-10-12 01:54:48.507
68523ad8-5995-11db-a678-ef87c824f2e5	1	5D0213ED9C340459551A1D8DB40688A3	session	\N	f	2006-10-12 04:00:17.278
ec5aca4b-599a-11db-a678-ef87c824f2e5	0	B0D9A5198CA09B17628EF53936841869	session	\N	f	2006-10-12 04:39:46.277
24955f9c-5a1a-11db-a678-ef87c824f2e5	0	B0033A574F731ED66B0550BBFB69EF23	session	\N	f	2006-10-12 19:50:26.698
360b487d-5a1a-11db-a678-ef87c824f2e5	0	B0033A574F731ED66B0550BBFB69EF23	session	\N	f	2006-10-12 19:50:55.992
3c806b9e-5a1a-11db-a678-ef87c824f2e5	1	B0033A574F731ED66B0550BBFB69EF23	session	\N	f	2006-10-12 19:51:06.826
d339ed41-5a1a-11db-a678-ef87c824f2e5	1	B0033A574F731ED66B0550BBFB69EF23	session	\N	f	2006-10-12 19:55:19.70
6aa0d804-5a49-11db-a678-ef87c824f2e5	0	78432783EA9A26A508E97749F330DD30	session	\N	f	2006-10-13 01:28:50.561
83138a95-5a49-11db-a678-ef87c824f2e5	1	78432783EA9A26A508E97749F330DD30	session	\N	f	2006-10-13 01:29:31.577
a20b8ce8-5a49-11db-a678-ef87c824f2e5	1	78432783EA9A26A508E97749F330DD30	session	\N	f	2006-10-13 01:30:23.534
ba6e880b-5a49-11db-a678-ef87c824f2e5	1	78432783EA9A26A508E97749F330DD30	session	\N	f	2006-10-13 01:31:04.448
4676755e-5a55-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 02:53:43.845
009c4461-5a56-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 02:58:56.149
65232164-5a56-11db-a678-ef87c824f2e5	0	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:01:44.805
88718585-5a56-11db-a678-ef87c824f2e5	0	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:02:44.039
4e234346-5a57-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:08:15.715
79f44dc9-5a57-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:09:29.23
aa68c8ac-5a57-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:10:50.521
c6d2f42f-5a57-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:11:38.193
cda7ea92-5a57-11db-a678-ef87c824f2e5	1	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:11:49.655
004fc035-5a58-11db-a678-ef87c824f2e5	0	C34917B1412F745C53D532FA236E1D8B	session	\N	f	2006-10-13 03:13:14.641
4dbf2626-5a5e-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 03:58:21.536
4872d629-5a5f-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:05:22.144
6fd58a0c-5a5f-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:06:28.222
986ffa9d-5a5f-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:07:36.343
a821501e-5a5f-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:08:02.697
e11934af-5a5f-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:09:38.248
f484fa22-5a5f-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:10:10.831
65ed1cb5-5a60-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:13:21.096
882248a8-5a60-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:14:18.487
b0fa858b-5a60-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:15:27.014
e2c7647e-5a60-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:16:50.564
0299731f-5a61-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:17:43.95
1d468552-5a61-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:18:28.705
2f153c93-5a61-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:18:58.582
b0d7d074-5a62-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:29:45.779
cbe5a045-5a62-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:30:31.168
d8cbab58-5a63-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:38:02.305
f2bdf909-5a63-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:38:45.836
6852d55a-5a64-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:42:03.105
768c7efd-5a64-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:42:26.971
e2fd6be0-5a64-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:45:28.905
157afd33-5a65-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:46:53.614
722ed4c6-5a65-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:49:29.143
aebbc6f9-5a65-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:51:10.73
065bb91c-5a66-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:53:37.74
1fc527bf-5a66-11db-a678-ef87c824f2e5	1	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:54:20.374
32483ae2-5a66-11db-a678-ef87c824f2e5	0	521B1B1F417202EA3395C7541F9ECC94	session	\N	f	2006-10-13 04:54:51.433
915416c3-5a67-11db-a678-ef87c824f2e5	1	FA431AAEB9BC9E05CD883D3EC0A86E3E	session	\N	f	2006-10-13 05:04:40.39
04f33d96-5a68-11db-a678-ef87c824f2e5	1	FA431AAEB9BC9E05CD883D3EC0A86E3E	session	\N	f	2006-10-13 05:07:54.371
92229819-5a6c-11db-a678-ef87c824f2e5	1	BFC21FF410BE2E8D6BD371088EB88F15	session	\N	f	2006-10-13 05:40:29.227
a27c629c-5a6c-11db-a678-ef87c824f2e5	1	BFC21FF410BE2E8D6BD371088EB88F15	session	\N	f	2006-10-13 05:40:56.659
bfe94c8f-5a76-11db-a678-ef87c824f2e5	0	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 06:53:20.994
d8c2b030-5a76-11db-a678-ef87c824f2e5	0	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 06:54:02.684
42965cf1-5a77-11db-a678-ef87c824f2e5	2	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 06:57:00.232
7112b155-5a77-11db-a678-ef87c824f2e5	2	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 06:58:18.222
63a3b549-5a78-11db-a678-ef87c824f2e5	1	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 07:05:05.181
e0b1420c-5a78-11db-a678-ef87c824f2e5	1	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 07:08:34.985
cf50725f-5a79-11db-a678-ef87c824f2e5	1	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 07:15:15.326
335cc832-5a7a-11db-a678-ef87c824f2e5	1	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 07:18:03.179
88899775-5a7a-11db-a678-ef87c824f2e5	1	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 07:20:26.079
c8536528-5a7a-11db-a678-ef87c824f2e5	1	C0229EFE85DAC180B77668210C7CDF39	session	\N	f	2006-10-13 07:22:13.098
5f39a7ab-5a7c-11db-a678-ef87c824f2e5	2	DFA2C10293A76C62E4B3AC9AD3549ED8	session	\N	f	2006-10-13 07:33:35.762
750cd02f-5a7c-11db-a678-ef87c824f2e5	2	DFA2C10293A76C62E4B3AC9AD3549ED8	session	\N	f	2006-10-13 07:34:12.378
d7bc3f93-5af4-11db-a678-ef87c824f2e5	1	34A505DD6BB590F284A14A648FC11FC8	session	\N	f	2006-10-13 21:55:57.552
e50615b6-5b1a-11db-a678-ef87c824f2e5	0	8F390E5FBD8D3A6D5B8AD9038F40544F	session	\N	f	2006-10-14 02:28:20.722
f85d41b7-5b1a-11db-a678-ef87c824f2e5	1	8F390E5FBD8D3A6D5B8AD9038F40544F	session	\N	f	2006-10-14 02:28:53.17
03c00e8c-5b24-11db-a678-ef87c824f2e5	0	13B239A7F1E15405C247CF9DAE385387	session	\N	f	2006-10-14 03:33:37.743
98b15ddd-5b30-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:03:41.588
bbee0ec0-5b30-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:04:40.706
cb168533-5b30-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:05:06.137
e1ef0fc6-5b30-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:05:44.466
f5a524a9-5b30-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:06:17.536
09dc9e8c-5b31-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:06:51.454
36a9471f-5b31-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:08:06.615
4d373422-5b31-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:08:44.455
7bacaab5-5b31-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:10:02.40
948cec28-5b31-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:10:44.135
a6a5f2db-5b31-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:11:14.498
ccf4ecce-5b31-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:12:18.769
fb0204a2-5b31-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:13:36.03
4e767586-5b32-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:15:56.044
a50f1eea-5b34-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:32:40.322
cf18139e-5b34-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:33:50.845
673a26f2-5b35-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:38:06.082
c8ae6cc6-5b35-11db-a678-ef87c824f2e5	1	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:40:49.583
ede84d39-5b35-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:41:52.038
6d53357d-5b37-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:52:35.306
be632981-5b37-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:54:51.306
d98bfb65-5b37-11db-a678-ef87c824f2e5	2	F5C18E438999566D24386738EC966A66	session	\N	f	2006-10-14 05:55:36.872
cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	2	F551499CFF8144ABDDCD1AA53EF3BD23	session	\N	f	2006-10-16 17:05:45.46
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	1	B82420B511D696D1A6CD3E0A15D0A104	session	\N	f	2006-10-19 14:09:28.951
edca2ccb-5fb9-11db-a0c5-bfdd3c37f4d2	0	3F879B7F0E36210AEC5463ED9F88A2BC	session	\N	f	2006-10-19 23:36:50.06
c2f78a0c-5fba-11db-a0c5-bfdd3c37f4d2	0	3F879B7F0E36210AEC5463ED9F88A2BC	session	\N	f	2006-10-19 23:42:47.712
\.


--
-- Data for Name: ssparams; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY ssparams (itemid, paramvalue, paramkey) FROM stdin;
dcbc536a-4c47-11db-aa6c-ddb528e81c59	Quadrant Budget Report for the  region	report-description
dcbc536a-4c47-11db-aa6c-ddb528e81c59	QuadrantBudgetReport_.pdf	report-name
86907efa-4c51-11db-9549-e18ab7296d34	45% to 54%	index5
86907efa-4c51-11db-9549-e18ab7296d34	#00ff00	color1
86907efa-4c51-11db-9549-e18ab7296d34	85% or more	index1
86907efa-4c51-11db-9549-e18ab7296d34	Metric by Country	title
86907efa-4c51-11db-9549-e18ab7296d34	#ff0000	color6
86907efa-4c51-11db-9549-e18ab7296d34	55% to 64%	index4
86907efa-4c51-11db-9549-e18ab7296d34	75% to 84%	index2
86907efa-4c51-11db-9549-e18ab7296d34	#80ff00	color3
86907efa-4c51-11db-9549-e18ab7296d34	65% to 74%	index3
86907efa-4c51-11db-9549-e18ab7296d34	#40ff00	color2
86907efa-4c51-11db-9549-e18ab7296d34	44% or less	index6
86907efa-4c51-11db-9549-e18ab7296d34	#ffff00	color4
86907efa-4c51-11db-9549-e18ab7296d34	#ff8000	color5
86907efa-4c51-11db-9549-e18ab7296d34	samples/svg/europemap/svg//86907efa-4c51-11db-9549-e18ab7296d34	svg
9a2e77fe-4c51-11db-9549-e18ab7296d34	45% to 54%	index5
9a2e77fe-4c51-11db-9549-e18ab7296d34	#00ff00	color1
9a2e77fe-4c51-11db-9549-e18ab7296d34	85% or more	index1
9a2e77fe-4c51-11db-9549-e18ab7296d34	Metric by Country	title
9a2e77fe-4c51-11db-9549-e18ab7296d34	#ff0000	color6
9a2e77fe-4c51-11db-9549-e18ab7296d34	55% to 64%	index4
9a2e77fe-4c51-11db-9549-e18ab7296d34	75% to 84%	index2
9a2e77fe-4c51-11db-9549-e18ab7296d34	#80ff00	color3
9a2e77fe-4c51-11db-9549-e18ab7296d34	65% to 74%	index3
9a2e77fe-4c51-11db-9549-e18ab7296d34	#40ff00	color2
9a2e77fe-4c51-11db-9549-e18ab7296d34	44% or less	index6
9a2e77fe-4c51-11db-9549-e18ab7296d34	#ffff00	color4
9a2e77fe-4c51-11db-9549-e18ab7296d34	samples/svg/europemap/svg//9a2e77fe-4c51-11db-9549-e18ab7296d34	svg
9a2e77fe-4c51-11db-9549-e18ab7296d34	#ff8000	color5
86b9bad7-4cb2-11db-9549-e18ab7296d34	http://bigleo.dyndns.org:8080/pentaho/getImage?image=tmp_chart_3137.png	chart_url
86b9bad7-4cb2-11db-9549-e18ab7296d34	tmp_chart_3137.png	chart-filename
86b9bad7-4cb2-11db-9549-e18ab7296d34	http://bigleo.dyndns.org:8080/pentaho/	base-url
1fe2e77b-4cbf-11db-9549-e18ab7296d34	[Positions].[All Positions]	positionSelects
1fe2e77b-4cbf-11db-9549-e18ab7296d34	[Region].[All Regions]	regionSelects
1fe2e77b-4cbf-11db-9549-e18ab7296d34	Pivot?solution=samples&path=analysis&action=query1.xaction	url
1fe2e77b-4cbf-11db-9549-e18ab7296d34	[Department].[All Departments]	departmentSelects
85d0413d-4cde-11db-9549-e18ab7296d34	[Positions].[All Positions]	positionSelects
85d0413d-4cde-11db-9549-e18ab7296d34	[Region].[All Regions]	regionSelects
85d0413d-4cde-11db-9549-e18ab7296d34	Pivot?solution=samples&path=analysis&action=query1.xaction	url
85d0413d-4cde-11db-9549-e18ab7296d34	[Department].[All Departments]	departmentSelects
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	 	territory_qry_string
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	 	productline_qry_string
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	All Employees	employee_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	All Territories	territory_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	 	product_qry_string
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	All Product Lines	productline_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	All Products	product_name
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	http://87.78.34.153:8080/pentaho/	output-message
d54aca9e-4ce2-11db-ac3a-ad59b6c7cec4	 	employee_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	 	territory_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	 	productline_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	All Employees	employee_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	All Territories	territory_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	 	product_qry_string
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	All Product Lines	productline_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	All Products	product_name
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	http://87.78.34.153:8080/pentaho/	output-message
d915672f-4ce2-11db-ac3a-ad59b6c7cec4	 	employee_qry_string
fc6ec07f-4ce5-11db-ac3a-ad59b6c7cec4	Quadrant Budget Report for the  region	report-description
fc6ec07f-4ce5-11db-ac3a-ad59b6c7cec4	QuadrantBudgetReport_.pdf	report-name
57952e0d-4cfe-11db-bb10-1f06ccd53845	Quadrant Budget Report for the  region	report-description
57952e0d-4cfe-11db-bb10-1f06ccd53845	QuadrantBudgetReport_.pdf	report-name
5cd309ae-4cfe-11db-bb10-1f06ccd53845	Quadrant Budget Report for the Central region	report-description
5cd309ae-4cfe-11db-bb10-1f06ccd53845	QuadrantBudgetReport_Central.pdf	report-name
5cd309ae-4cfe-11db-bb10-1f06ccd53845	samples/bursting/report/report-output/pdf/5cd309ae-4cfe-11db-bb10-1f06ccd53845	report-output
6e07aa3c-4d06-11db-bb10-1f06ccd53845	http://192.168.0.164:8080/pentaho/getImage?image=tmp_chart_9954.png	chart_url
6e07aa3c-4d06-11db-bb10-1f06ccd53845	tmp_chart_9954.png	chart-filename
6e07aa3c-4d06-11db-bb10-1f06ccd53845	http://192.168.0.164:8080/pentaho/	base-url
97befc4c-4d75-11db-afac-afc8a21c113a	Pivot?solution=samples&path=steel-wheels/analysis&action=analysis_customers.xaction	url
ef6767ff-4d77-11db-afac-afc8a21c113a	Quadrant Budget Report for the  region	report-description
ef6767ff-4d77-11db-afac-afc8a21c113a	QuadrantBudgetReport_.pdf	report-name
f38ca7b0-4d77-11db-afac-afc8a21c113a	Quadrant Budget Report for the Central region	report-description
f38ca7b0-4d77-11db-afac-afc8a21c113a	QuadrantBudgetReport_Central.pdf	report-name
f38ca7b0-4d77-11db-afac-afc8a21c113a	samples/bursting/report/report-output/pdf/f38ca7b0-4d77-11db-afac-afc8a21c113a	report-output
5d43c6a4-4e29-11db-8fff-3d79c617eb0d	Quadrant Budget Report for the  region	report-description
5d43c6a4-4e29-11db-8fff-3d79c617eb0d	QuadrantBudgetReport_.pdf	report-name
62b1da05-4e29-11db-8fff-3d79c617eb0d	Quadrant Budget Report for the Eastern region	report-description
62b1da05-4e29-11db-8fff-3d79c617eb0d	QuadrantBudgetReport_Eastern.pdf	report-name
62b1da05-4e29-11db-8fff-3d79c617eb0d	samples/bursting/report/report-output/pdf/62b1da05-4e29-11db-8fff-3d79c617eb0d	report-output
5cb8de42-4e93-11db-bae1-5b9a4c1c77e4	Central Westville	rule-result
c3ef06dc-4ee9-11db-bae1-5b9a4c1c77e4	Quadrant Budget Report for the  region	report-description
c3ef06dc-4ee9-11db-bae1-5b9a4c1c77e4	QuadrantBudgetReport_.pdf	report-name
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	45% to 54%	index5
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	#00ff00	color1
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	85% or more	index1
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	Metric by Country	title
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	#ff0000	color6
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	55% to 64%	index4
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	75% to 84%	index2
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	#80ff00	color3
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	65% to 74%	index3
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	#40ff00	color2
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	44% or less	index6
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	#ffff00	color4
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	samples/svg/europemap/svg//a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	svg
a6445fb9-54c9-11db-bae1-5b9a4c1c77e4	#ff8000	color5
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	http://bigleo.dyndns.org:8080/pentaho/getImage?image=tmp_chart_26571.png	chart_url
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	tmp_chart_26571.png	chart-filename
ba8b298d-5592-11db-bae1-5b9a4c1c77e4	http://bigleo.dyndns.org:8080/pentaho/	base-url
c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/xls/c9625f7d-56dd-11db-bae1-5b9a4c1c77e4	report-output
63eb4435-56df-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/xls/63eb4435-56df-11db-bae1-5b9a4c1c77e4	report-output
63eb4435-56df-11db-bae1-5b9a4c1c77e4	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Prashant,<p>Attached is the Quadrant Budget Report for the Southern region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
49cb8349-56f2-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/pdf/49cb8349-56f2-11db-bae1-5b9a4c1c77e4	report-output
49cb8349-56f2-11db-bae1-5b9a4c1c77e4	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Prashant,<p>Attached is the Quadrant Budget Report for the Southern region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	samples/bursting/BurstActionSequence/report-output/pdf/17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	report-output
17a16d8a-57d4-11db-bae1-5b9a4c1c77e4	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Prashant,<p>Attached is the Quadrant Budget Report for the Southern region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
73f18303-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/73f18303-58d4-11db-a678-ef87c824f2e5	report-output
c687a1d7-58d4-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c687a1d7-58d4-11db-a678-ef87c824f2e5	report-output
03cd2e4a-58d8-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/03cd2e4a-58d8-11db-a678-ef87c824f2e5	report-output
11fec19d-58d8-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/11fec19d-58d8-11db-a678-ef87c824f2e5	report-output
d674a400-58d8-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/d674a400-58d8-11db-a678-ef87c824f2e5	report-output
c9764413-58d9-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c9764413-58d9-11db-a678-ef87c824f2e5	report-output
1fa92f86-5918-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/1fa92f86-5918-11db-a678-ef87c824f2e5	report-output
bb7ee119-597d-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/bb7ee119-597d-11db-a678-ef87c824f2e5	report-output
c59f58fc-597d-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c59f58fc-597d-11db-a678-ef87c824f2e5	report-output
4e6354ff-5980-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4e6354ff-5980-11db-a678-ef87c824f2e5	report-output
56208882-5980-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/56208882-5980-11db-a678-ef87c824f2e5	report-output
1123a2b5-5982-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/1123a2b5-5982-11db-a678-ef87c824f2e5	report-output
4eea4d68-5982-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4eea4d68-5982-11db-a678-ef87c824f2e5	report-output
5cbfe89b-5983-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/5cbfe89b-5983-11db-a678-ef87c824f2e5	report-output
7925ce5e-5983-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/7925ce5e-5983-11db-a678-ef87c824f2e5	report-output
9eab84e1-5983-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/9eab84e1-5983-11db-a678-ef87c824f2e5	report-output
e0d2f1a4-5983-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/e0d2f1a4-5983-11db-a678-ef87c824f2e5	report-output
68523ad8-5995-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/68523ad8-5995-11db-a678-ef87c824f2e5	report-output
3c806b9e-5a1a-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/3c806b9e-5a1a-11db-a678-ef87c824f2e5	report-output
d339ed41-5a1a-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/d339ed41-5a1a-11db-a678-ef87c824f2e5	report-output
83138a95-5a49-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/83138a95-5a49-11db-a678-ef87c824f2e5	report-output
a20b8ce8-5a49-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/a20b8ce8-5a49-11db-a678-ef87c824f2e5	report-output
ba6e880b-5a49-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/ba6e880b-5a49-11db-a678-ef87c824f2e5	report-output
4676755e-5a55-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4676755e-5a55-11db-a678-ef87c824f2e5	report-output
009c4461-5a56-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/009c4461-5a56-11db-a678-ef87c824f2e5	report-output
4e234346-5a57-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4e234346-5a57-11db-a678-ef87c824f2e5	report-output
79f44dc9-5a57-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/79f44dc9-5a57-11db-a678-ef87c824f2e5	report-output
aa68c8ac-5a57-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/aa68c8ac-5a57-11db-a678-ef87c824f2e5	report-output
c6d2f42f-5a57-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/c6d2f42f-5a57-11db-a678-ef87c824f2e5	report-output
cda7ea92-5a57-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/cda7ea92-5a57-11db-a678-ef87c824f2e5	report-output
4dbf2626-5a5e-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4dbf2626-5a5e-11db-a678-ef87c824f2e5	report-output
4872d629-5a5f-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/4872d629-5a5f-11db-a678-ef87c824f2e5	report-output
e11934af-5a5f-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/e11934af-5a5f-11db-a678-ef87c824f2e5	report-output
f484fa22-5a5f-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/f484fa22-5a5f-11db-a678-ef87c824f2e5	report-output
65ed1cb5-5a60-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/65ed1cb5-5a60-11db-a678-ef87c824f2e5	report-output
882248a8-5a60-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/882248a8-5a60-11db-a678-ef87c824f2e5	report-output
b0fa858b-5a60-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/b0fa858b-5a60-11db-a678-ef87c824f2e5	report-output
0299731f-5a61-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/0299731f-5a61-11db-a678-ef87c824f2e5	report-output
cbe5a045-5a62-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/cbe5a045-5a62-11db-a678-ef87c824f2e5	report-output
6852d55a-5a64-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/6852d55a-5a64-11db-a678-ef87c824f2e5	report-output
768c7efd-5a64-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/768c7efd-5a64-11db-a678-ef87c824f2e5	report-output
e2fd6be0-5a64-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/e2fd6be0-5a64-11db-a678-ef87c824f2e5	report-output
157afd33-5a65-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/157afd33-5a65-11db-a678-ef87c824f2e5	report-output
722ed4c6-5a65-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/722ed4c6-5a65-11db-a678-ef87c824f2e5	report-output
aebbc6f9-5a65-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/aebbc6f9-5a65-11db-a678-ef87c824f2e5	report-output
065bb91c-5a66-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/065bb91c-5a66-11db-a678-ef87c824f2e5	report-output
1fc527bf-5a66-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/1fc527bf-5a66-11db-a678-ef87c824f2e5	report-output
915416c3-5a67-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/915416c3-5a67-11db-a678-ef87c824f2e5	report-output
04f33d96-5a68-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/04f33d96-5a68-11db-a678-ef87c824f2e5	report-output
92229819-5a6c-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/92229819-5a6c-11db-a678-ef87c824f2e5	report-output
a27c629c-5a6c-11db-a678-ef87c824f2e5	test/rules/anfaAction3/report-output/pdf/a27c629c-5a6c-11db-a678-ef87c824f2e5	report-output
42965cf1-5a77-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
42965cf1-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/xls/42965cf1-5a77-11db-a678-ef87c824f2e5	report-output
7112b155-5a77-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
7112b155-5a77-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/7112b155-5a77-11db-a678-ef87c824f2e5	report-output
63a3b549-5a78-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
63a3b549-5a78-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/63a3b549-5a78-11db-a678-ef87c824f2e5	report-output
e0b1420c-5a78-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
e0b1420c-5a78-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/e0b1420c-5a78-11db-a678-ef87c824f2e5	report-output
cf50725f-5a79-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
cf50725f-5a79-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/cf50725f-5a79-11db-a678-ef87c824f2e5	report-output
335cc832-5a7a-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
335cc832-5a7a-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/335cc832-5a7a-11db-a678-ef87c824f2e5	report-output
88899775-5a7a-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
88899775-5a7a-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/88899775-5a7a-11db-a678-ef87c824f2e5	report-output
c8536528-5a7a-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Butler,<p>Attached is the Quadrant Budget Report for the GMAIC10025 region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
c8536528-5a7a-11db-a678-ef87c824f2e5	test/rules/anfaAction4/report-output/pdf/c8536528-5a7a-11db-a678-ef87c824f2e5	report-output
5f39a7ab-5a7c-11db-a678-ef87c824f2e5	samples/bursting/BurstActionSequence/report-output/pdf/5f39a7ab-5a7c-11db-a678-ef87c824f2e5	report-output
5f39a7ab-5a7c-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold> Prashant,<p>Attached is the Quadrant Budget Report for the Southern region.  Generated using the workflow bursting example.</p> <br/>Have a nice day. </span></body></html>	formatted_msg
750cd02f-5a7c-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
750cd02f-5a7c-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/750cd02f-5a7c-11db-a678-ef87c824f2e5	report-output
d7bc3f93-5af4-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
d7bc3f93-5af4-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/d7bc3f93-5af4-11db-a678-ef87c824f2e5	report-output
f85d41b7-5b1a-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
f85d41b7-5b1a-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/f85d41b7-5b1a-11db-a678-ef87c824f2e5	report-output
98b15ddd-5b30-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
98b15ddd-5b30-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/98b15ddd-5b30-11db-a678-ef87c824f2e5	report-output
bbee0ec0-5b30-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
bbee0ec0-5b30-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/bbee0ec0-5b30-11db-a678-ef87c824f2e5	report-output
cb168533-5b30-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
cb168533-5b30-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/cb168533-5b30-11db-a678-ef87c824f2e5	report-output
e1ef0fc6-5b30-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
e1ef0fc6-5b30-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/e1ef0fc6-5b30-11db-a678-ef87c824f2e5	report-output
f5a524a9-5b30-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
f5a524a9-5b30-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/f5a524a9-5b30-11db-a678-ef87c824f2e5	report-output
09dc9e8c-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
09dc9e8c-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/09dc9e8c-5b31-11db-a678-ef87c824f2e5	report-output
36a9471f-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
36a9471f-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/36a9471f-5b31-11db-a678-ef87c824f2e5	report-output
4d373422-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
4d373422-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/4d373422-5b31-11db-a678-ef87c824f2e5	report-output
7bacaab5-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
7bacaab5-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/7bacaab5-5b31-11db-a678-ef87c824f2e5	report-output
948cec28-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
948cec28-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/948cec28-5b31-11db-a678-ef87c824f2e5	report-output
a6a5f2db-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
a6a5f2db-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/a6a5f2db-5b31-11db-a678-ef87c824f2e5	report-output
ccf4ecce-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
ccf4ecce-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/ccf4ecce-5b31-11db-a678-ef87c824f2e5	report-output
fb0204a2-5b31-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
fb0204a2-5b31-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/fb0204a2-5b31-11db-a678-ef87c824f2e5	report-output
4e767586-5b32-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
4e767586-5b32-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/4e767586-5b32-11db-a678-ef87c824f2e5	report-output
a50f1eea-5b34-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
a50f1eea-5b34-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/a50f1eea-5b34-11db-a678-ef87c824f2e5	report-output
cf18139e-5b34-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
cf18139e-5b34-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/cf18139e-5b34-11db-a678-ef87c824f2e5	report-output
673a26f2-5b35-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
673a26f2-5b35-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/673a26f2-5b35-11db-a678-ef87c824f2e5	report-output
c8ae6cc6-5b35-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
c8ae6cc6-5b35-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/c8ae6cc6-5b35-11db-a678-ef87c824f2e5	report-output
ede84d39-5b35-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
ede84d39-5b35-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/ede84d39-5b35-11db-a678-ef87c824f2e5	report-output
6d53357d-5b37-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
6d53357d-5b37-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/6d53357d-5b37-11db-a678-ef87c824f2e5	report-output
be632981-5b37-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
be632981-5b37-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/be632981-5b37-11db-a678-ef87c824f2e5	report-output
d98bfb65-5b37-11db-a678-ef87c824f2e5	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
d98bfb65-5b37-11db-a678-ef87c824f2e5	samples/invoice/invoice/report-output/pdf/d98bfb65-5b37-11db-a678-ef87c824f2e5	report-output
cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	<html><body><span style=font-family:tahoma,ariel;color:#000080;font-weight:bold>Dear Butler,<p>Attached is the Invoice for Order GMAIC10025 .  .</p> <br/>Thank you for your Order <br/> Have a nice day. </span></body></html>	formatted_msg
cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	samples/invoice/invoice/report-output/pdf/cc8f1b43-5d27-11db-a0c5-bfdd3c37f4d2	report-output
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	45% to 54%	index5
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	#00ff00	color1
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	85% or more	index1
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	Metric by Country	title
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	#ff0000	color6
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	55% to 64%	index4
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	75% to 84%	index2
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	#80ff00	color3
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	65% to 74%	index3
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	#40ff00	color2
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	44% or less	index6
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	#ffff00	color4
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	samples/svg/europemap/svg//abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	svg
abb52878-5f6a-11db-a0c5-bfdd3c37f4d2	#ff8000	color5
\.


--
-- Data for Name: versionmap; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY versionmap (itemid, versionvalue, versionkey) FROM stdin;
PENTAHO_HIBERNATE_VERSIONS	1	ContentLocation
PENTAHO_HIBERNATE_VERSIONS	1	ContentItem
PENTAHO_HIBERNATE_VERSIONS	3	RuntimeElement
PENTAHO_HIBERNATE_VERSIONS	1	ContentItemFile
\.


--
-- Data for Name: versmgr; Type: TABLE DATA; Schema: public; Owner: hibuser
--

COPY versmgr (versionkey, revision) FROM stdin;
PENTAHO_HIBERNATE_VERSIONS	1
\.


--
-- Name: RTELEMENT_pkey; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY "RTELEMENT"
    ADD CONSTRAINT "RTELEMENT_pkey" PRIMARY KEY ("INSTANCEID");


--
-- Name: contentitem_pkey; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY contentitem
    ADD CONSTRAINT contentitem_pkey PRIMARY KEY (contitemid);


--
-- Name: contentlocation_pkey; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY contentlocation
    ADD CONSTRAINT contentlocation_pkey PRIMARY KEY (contentid);


--
-- Name: contitemfile_pkey; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY contitemfile
    ADD CONSTRAINT contitemfile_pkey PRIMARY KEY (contifileid);


--
-- Name: rtelement_pkey; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY rtelement
    ADD CONSTRAINT rtelement_pkey PRIMARY KEY (instanceid);


--
-- Name: sys_ct_3; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY contentitem
    ADD CONSTRAINT sys_ct_3 UNIQUE (path);


--
-- Name: sys_ct_5; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY contentlocation
    ADD CONSTRAINT sys_ct_5 UNIQUE (dirpath);


--
-- Name: sys_pk_bdparams; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY bdparams
    ADD CONSTRAINT sys_pk_bdparams PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_cplxparams; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY cplxparams
    ADD CONSTRAINT sys_pk_cplxparams PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_dtparams; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY dtparams
    ADD CONSTRAINT sys_pk_dtparams PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_lngparams; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY lngparams
    ADD CONSTRAINT sys_pk_lngparams PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_lsparams; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY lsparams
    ADD CONSTRAINT sys_pk_lsparams PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_paramtypesmap; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY paramtypesmap
    ADD CONSTRAINT sys_pk_paramtypesmap PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_ssparams; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY ssparams
    ADD CONSTRAINT sys_pk_ssparams PRIMARY KEY (itemid, paramkey);


--
-- Name: sys_pk_versionmap; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY versionmap
    ADD CONSTRAINT sys_pk_versionmap PRIMARY KEY (itemid, versionkey);


--
-- Name: versmgr_pkey; Type: CONSTRAINT; Schema: public; Owner: hibuser; Tablespace: 
--

ALTER TABLE ONLY versmgr
    ADD CONSTRAINT versmgr_pkey PRIMARY KEY (versionkey);


--
-- Name: fk60e4afe64eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY ssparams
    ADD CONSTRAINT fk60e4afe64eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fk60e4afe64eedd025; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY paramtypesmap
    ADD CONSTRAINT fk60e4afe64eedd025 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fk61733c484eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY bdparams
    ADD CONSTRAINT fk61733c484eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fk692b5eec875c1bf0; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY contentitem
    ADD CONSTRAINT fk692b5eec875c1bf0 FOREIGN KEY (parent_id) REFERENCES contentlocation(contentid);


--
-- Name: fk7f994a164eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY dtparams
    ADD CONSTRAINT fk7f994a164eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fk7fc3f441d2a64ce; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY contitemfile
    ADD CONSTRAINT fk7fc3f441d2a64ce FOREIGN KEY (parent_id) REFERENCES contentitem(contitemid);


--
-- Name: fk89bc75cd4eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY lsparams
    ADD CONSTRAINT fk89bc75cd4eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fkd3eda1b04eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY paramtypesmap
    ADD CONSTRAINT fkd3eda1b04eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fkd6d6e97f4eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY cplxparams
    ADD CONSTRAINT fkd6d6e97f4eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fke304fccb4eedd021; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY lngparams
    ADD CONSTRAINT fke304fccb4eedd021 FOREIGN KEY (itemid) REFERENCES rtelement(instanceid);


--
-- Name: fkf4f325841e8538ef; Type: FK CONSTRAINT; Schema: public; Owner: hibuser
--

ALTER TABLE ONLY versionmap
    ADD CONSTRAINT fkf4f325841e8538ef FOREIGN KEY (itemid) REFERENCES versmgr(versionkey);


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

