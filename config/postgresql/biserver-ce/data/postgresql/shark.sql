--
-- PostgreSQL database dump
--

SET client_encoding = 'SQL_ASCII';
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: activities; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE activities (
    id character varying(100) NOT NULL,
    activitysetdefinitionid character varying(90),
    activitydefinitionid character varying(90) NOT NULL,
    process numeric(19,0) NOT NULL,
    theresource numeric(19,0),
    pdefname character varying(200) NOT NULL,
    processid character varying(200) NOT NULL,
    resourceid character varying(100),
    state numeric(19,0) NOT NULL,
    blockactivityid character varying(100),
    performer character varying(100),
    isperformerasynchronous integer,
    priority integer,
    name character varying(254),
    activated bigint NOT NULL,
    accepted bigint,
    laststatetime bigint NOT NULL,
    limittime bigint NOT NULL,
    description character varying(254),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.activities OWNER TO pentaho_user;

--
-- Name: activitydata; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE activitydata (
    activity numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevalue bytea,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    isresult integer NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.activitydata OWNER TO pentaho_user;

--
-- Name: activitydatablobs; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE activitydatablobs (
    activitydatawob numeric(19,0) NOT NULL,
    variablevalue bytea,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.activitydatablobs OWNER TO pentaho_user;

--
-- Name: activitydatawob; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE activitydatawob (
    activity numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    isresult integer NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.activitydatawob OWNER TO pentaho_user;

--
-- Name: activitystateeventaudits; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE activitystateeventaudits (
    keyvalue character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.activitystateeventaudits OWNER TO pentaho_user;

--
-- Name: activitystates; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE activitystates (
    keyvalue character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.activitystates OWNER TO pentaho_user;

--
-- Name: andjointable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE andjointable (
    process numeric(19,0) NOT NULL,
    activitysetdefinitionid character varying(90),
    activitydefinitionid character varying(90) NOT NULL,
    activity numeric(19,0) NOT NULL,
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.andjointable OWNER TO pentaho_user;

--
-- Name: assignmenteventaudits; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE assignmenteventaudits (
    utctime character varying(254) NOT NULL,
    thetype numeric(19,0) NOT NULL,
    activityid character varying(100) NOT NULL,
    activityname character varying(254),
    processid character varying(100) NOT NULL,
    processname character varying(254),
    processdefinitionname character varying(200) NOT NULL,
    processdefinitionversion character varying(20) NOT NULL,
    activitydefinitionid character varying(90) NOT NULL,
    activitysetdefinitionid character varying(90),
    processdefinitionid character varying(90) NOT NULL,
    packageid character varying(90) NOT NULL,
    oldresourceusername character varying(100),
    oldresourcename character varying(100),
    newresourceusername character varying(100) NOT NULL,
    newresourcename character varying(100),
    isaccepted integer NOT NULL,
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.assignmenteventaudits OWNER TO pentaho_user;

--
-- Name: assignmentstable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE assignmentstable (
    activity numeric(19,0) NOT NULL,
    theresource numeric(19,0) NOT NULL,
    activityid character varying(100) NOT NULL,
    activityprocessid character varying(100) NOT NULL,
    activityprocessdefname character varying(200) NOT NULL,
    resourceid character varying(100) NOT NULL,
    isaccepted integer NOT NULL,
    isvalid integer NOT NULL,
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.assignmentstable OWNER TO pentaho_user;

--
-- Name: counters; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE counters (
    name character varying(100) NOT NULL,
    the_number numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.counters OWNER TO pentaho_user;

--
-- Name: createprocesseventaudits; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE createprocesseventaudits (
    utctime character varying(254) NOT NULL,
    thetype numeric(19,0) NOT NULL,
    processid character varying(100) NOT NULL,
    processname character varying(254),
    processdefinitionname character varying(200) NOT NULL,
    processdefinitionversion character varying(20) NOT NULL,
    processdefinitionid character varying(90) NOT NULL,
    packageid character varying(90) NOT NULL,
    pactivityid character varying(100),
    pprocessid character varying(100),
    pprocessname character varying(254),
    pprocessdefinitionname character varying(200),
    pprocessdefinitionversion character varying(20),
    pactivitydefinitionid character varying(90),
    pactivitysetdefinitionid character varying(90),
    pprocessdefinitionid character varying(90),
    ppackageid character varying(90),
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.createprocesseventaudits OWNER TO pentaho_user;

--
-- Name: dataeventaudits; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE dataeventaudits (
    utctime character varying(254) NOT NULL,
    thetype numeric(19,0) NOT NULL,
    activityid character varying(100),
    activityname character varying(254),
    processid character varying(100) NOT NULL,
    processname character varying(254),
    processdefinitionname character varying(200) NOT NULL,
    processdefinitionversion character varying(20) NOT NULL,
    activitydefinitionid character varying(90),
    activitysetdefinitionid character varying(90),
    processdefinitionid character varying(90) NOT NULL,
    packageid character varying(90) NOT NULL,
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.dataeventaudits OWNER TO pentaho_user;

--
-- Name: deadlines; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE deadlines (
    process numeric(19,0) NOT NULL,
    activity numeric(19,0) NOT NULL,
    cnt numeric(19,0) NOT NULL,
    timelimit bigint NOT NULL,
    exceptionname character varying(100) NOT NULL,
    issynchronous integer NOT NULL,
    isexecuted integer NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.deadlines OWNER TO pentaho_user;

--
-- Name: eventtypes; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE eventtypes (
    keyvalue character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.eventtypes OWNER TO pentaho_user;

--
-- Name: groupgrouptable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE groupgrouptable (
    sub_gid numeric(19,0) NOT NULL,
    groupid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.groupgrouptable OWNER TO pentaho_user;

--
-- Name: grouptable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE grouptable (
    groupid character varying(100) NOT NULL,
    description character varying(254),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.grouptable OWNER TO pentaho_user;

--
-- Name: groupuser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE groupuser (
    username character varying(100) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.groupuser OWNER TO pentaho_user;

--
-- Name: groupuserpacklevelparticipant; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE groupuserpacklevelparticipant (
    participantoid numeric(19,0) NOT NULL,
    useroid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.groupuserpacklevelparticipant OWNER TO pentaho_user;

--
-- Name: groupuserproclevelparticipant; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE groupuserproclevelparticipant (
    participantoid numeric(19,0) NOT NULL,
    useroid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.groupuserproclevelparticipant OWNER TO pentaho_user;

--
-- Name: locktable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE locktable (
    enginename character varying(100) NOT NULL,
    id character varying(100) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.locktable OWNER TO pentaho_user;

--
-- Name: neweventauditdata; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE neweventauditdata (
    dataeventaudit numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevalue bytea,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.neweventauditdata OWNER TO pentaho_user;

--
-- Name: neweventauditdatablobs; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE neweventauditdatablobs (
    neweventauditdatawob numeric(19,0) NOT NULL,
    variablevalue bytea,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.neweventauditdatablobs OWNER TO pentaho_user;

--
-- Name: neweventauditdatawob; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE neweventauditdatawob (
    dataeventaudit numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.neweventauditdatawob OWNER TO pentaho_user;

--
-- Name: nextxpdlversions; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE nextxpdlversions (
    xpdlid character varying(90) NOT NULL,
    nextversion character varying(20) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.nextxpdlversions OWNER TO pentaho_user;

--
-- Name: normaluser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE normaluser (
    username character varying(100) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.normaluser OWNER TO pentaho_user;

--
-- Name: objectid; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE objectid (
    "next" numeric(19,0) NOT NULL,
    objectid text
);


ALTER TABLE public.objectid OWNER TO pentaho_user;

--
-- Name: oldeventauditdata; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE oldeventauditdata (
    dataeventaudit numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevalue bytea,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.oldeventauditdata OWNER TO pentaho_user;

--
-- Name: oldeventauditdatablobs; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE oldeventauditdatablobs (
    oldeventauditdatawob numeric(19,0) NOT NULL,
    variablevalue bytea,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.oldeventauditdatablobs OWNER TO pentaho_user;

--
-- Name: oldeventauditdatawob; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE oldeventauditdatawob (
    dataeventaudit numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.oldeventauditdatawob OWNER TO pentaho_user;

--
-- Name: packlevelparticipant; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE packlevelparticipant (
    participant_id character varying(90) NOT NULL,
    packageoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.packlevelparticipant OWNER TO pentaho_user;

--
-- Name: packlevelxpdlapp; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE packlevelxpdlapp (
    application_id character varying(90) NOT NULL,
    packageoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.packlevelxpdlapp OWNER TO pentaho_user;

--
-- Name: packlevelxpdlapptaappdetail; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE packlevelxpdlapptaappdetail (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.packlevelxpdlapptaappdetail OWNER TO pentaho_user;

--
-- Name: packlevelxpdlapptaappdetailusr; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE packlevelxpdlapptaappdetailusr (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.packlevelxpdlapptaappdetailusr OWNER TO pentaho_user;

--
-- Name: packlevelxpdlapptaappuser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE packlevelxpdlapptaappuser (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.packlevelxpdlapptaappuser OWNER TO pentaho_user;

--
-- Name: packlevelxpdlapptoolagentapp; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE packlevelxpdlapptoolagentapp (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.packlevelxpdlapptoolagentapp OWNER TO pentaho_user;

--
-- Name: processdata; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processdata (
    process numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevalue bytea,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processdata OWNER TO pentaho_user;

--
-- Name: processdatablobs; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processdatablobs (
    processdatawob numeric(19,0) NOT NULL,
    variablevalue bytea,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processdatablobs OWNER TO pentaho_user;

--
-- Name: processdatawob; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processdatawob (
    process numeric(19,0) NOT NULL,
    variabledefinitionid character varying(100) NOT NULL,
    variabletype integer NOT NULL,
    variablevaluevchar character varying(4000),
    variablevaluedbl double precision,
    variablevaluelong bigint,
    variablevaluedate timestamp without time zone,
    variablevaluebool integer,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processdatawob OWNER TO pentaho_user;

--
-- Name: processdefinitions; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processdefinitions (
    name character varying(200) NOT NULL,
    packageid character varying(90) NOT NULL,
    processdefinitionid character varying(90) NOT NULL,
    processdefinitioncreated bigint NOT NULL,
    processdefinitionversion character varying(20) NOT NULL,
    state integer NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processdefinitions OWNER TO pentaho_user;

--
-- Name: processes; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processes (
    id character varying(100) NOT NULL,
    processdefinition numeric(19,0) NOT NULL,
    pdefname character varying(200) NOT NULL,
    activityrequesterid character varying(100),
    activityrequesterprocessid character varying(100),
    resourcerequesterid character varying(100) NOT NULL,
    externalrequesterclassname character varying(254),
    state numeric(19,0) NOT NULL,
    priority integer,
    name character varying(254),
    created bigint NOT NULL,
    started bigint,
    laststatetime bigint NOT NULL,
    limittime bigint NOT NULL,
    description character varying(254),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processes OWNER TO pentaho_user;

--
-- Name: processrequesters; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processrequesters (
    id character varying(100) NOT NULL,
    activityrequester numeric(19,0),
    resourcerequester numeric(19,0),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processrequesters OWNER TO pentaho_user;

--
-- Name: processstateeventaudits; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processstateeventaudits (
    keyvalue character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processstateeventaudits OWNER TO pentaho_user;

--
-- Name: processstates; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE processstates (
    keyvalue character varying(30) NOT NULL,
    name character varying(50) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.processstates OWNER TO pentaho_user;

--
-- Name: proclevelparticipant; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE proclevelparticipant (
    participant_id character varying(90) NOT NULL,
    processoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.proclevelparticipant OWNER TO pentaho_user;

--
-- Name: proclevelxpdlapp; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE proclevelxpdlapp (
    application_id character varying(90) NOT NULL,
    processoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.proclevelxpdlapp OWNER TO pentaho_user;

--
-- Name: proclevelxpdlapptaappdetail; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE proclevelxpdlapptaappdetail (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.proclevelxpdlapptaappdetail OWNER TO pentaho_user;

--
-- Name: proclevelxpdlapptaappdetailusr; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE proclevelxpdlapptaappdetailusr (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.proclevelxpdlapptaappdetailusr OWNER TO pentaho_user;

--
-- Name: proclevelxpdlapptaappuser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE proclevelxpdlapptaappuser (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.proclevelxpdlapptaappuser OWNER TO pentaho_user;

--
-- Name: proclevelxpdlapptoolagentapp; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE proclevelxpdlapptoolagentapp (
    xpdl_appoid numeric(19,0) NOT NULL,
    toolagentoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.proclevelxpdlapptoolagentapp OWNER TO pentaho_user;

--
-- Name: resourcestable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE resourcestable (
    username character varying(100) NOT NULL,
    name character varying(100),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.resourcestable OWNER TO pentaho_user;

--
-- Name: stateeventaudits; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE stateeventaudits (
    utctime character varying(254) NOT NULL,
    thetype numeric(19,0) NOT NULL,
    activityid character varying(100),
    activityname character varying(254),
    processid character varying(100) NOT NULL,
    processname character varying(254),
    processdefinitionname character varying(200) NOT NULL,
    processdefinitionversion character varying(20) NOT NULL,
    activitydefinitionid character varying(90),
    activitysetdefinitionid character varying(90),
    processdefinitionid character varying(90) NOT NULL,
    packageid character varying(90) NOT NULL,
    oldprocessstate numeric(19,0),
    newprocessstate numeric(19,0),
    oldactivitystate numeric(19,0),
    newactivitystate numeric(19,0),
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.stateeventaudits OWNER TO pentaho_user;

--
-- Name: toolagentapp; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE toolagentapp (
    tool_agent_name character varying(250) NOT NULL,
    app_name character varying(90) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.toolagentapp OWNER TO pentaho_user;

--
-- Name: toolagentappdetail; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE toolagentappdetail (
    app_mode numeric(10,0) NOT NULL,
    toolagent_appoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.toolagentappdetail OWNER TO pentaho_user;

--
-- Name: toolagentappdetailuser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE toolagentappdetailuser (
    toolagent_appoid numeric(19,0) NOT NULL,
    useroid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.toolagentappdetailuser OWNER TO pentaho_user;

--
-- Name: toolagentappuser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE toolagentappuser (
    toolagent_appoid numeric(19,0) NOT NULL,
    useroid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.toolagentappuser OWNER TO pentaho_user;

--
-- Name: toolagentuser; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE toolagentuser (
    username character varying(100) NOT NULL,
    pwd character varying(100),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.toolagentuser OWNER TO pentaho_user;

--
-- Name: usergrouptable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE usergrouptable (
    userid numeric(19,0) NOT NULL,
    groupid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.usergrouptable OWNER TO pentaho_user;

--
-- Name: userpacklevelparticipant; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE userpacklevelparticipant (
    participantoid numeric(19,0) NOT NULL,
    useroid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.userpacklevelparticipant OWNER TO pentaho_user;

--
-- Name: userproclevelparticipant; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE userproclevelparticipant (
    participantoid numeric(19,0) NOT NULL,
    useroid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.userproclevelparticipant OWNER TO pentaho_user;

--
-- Name: usertable; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE usertable (
    userid character varying(100) NOT NULL,
    firstname character varying(50),
    lastname character varying(50),
    passwd character varying(50) NOT NULL,
    email character varying(254),
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.usertable OWNER TO pentaho_user;

--
-- Name: xpdlapplicationpackage; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlapplicationpackage (
    package_id character varying(90) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlapplicationpackage OWNER TO pentaho_user;

--
-- Name: xpdlapplicationprocess; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlapplicationprocess (
    process_id character varying(90) NOT NULL,
    packageoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlapplicationprocess OWNER TO pentaho_user;

--
-- Name: xpdldata; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdldata (
    xpdlcontent bytea NOT NULL,
    xpdlclasscontent bytea NOT NULL,
    xpdl numeric(19,0) NOT NULL,
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdldata OWNER TO pentaho_user;

--
-- Name: xpdlhistory; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlhistory (
    xpdlid character varying(90) NOT NULL,
    xpdlversion character varying(20) NOT NULL,
    xpdlclassversion bigint NOT NULL,
    xpdluploadtime timestamp without time zone NOT NULL,
    xpdlhistoryuploadtime timestamp without time zone NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlhistory OWNER TO pentaho_user;

--
-- Name: xpdlhistorydata; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlhistorydata (
    xpdlcontent bytea NOT NULL,
    xpdlclasscontent bytea NOT NULL,
    xpdlhistory numeric(19,0) NOT NULL,
    cnt numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlhistorydata OWNER TO pentaho_user;

--
-- Name: xpdlparticipantpackage; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlparticipantpackage (
    package_id character varying(90) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlparticipantpackage OWNER TO pentaho_user;

--
-- Name: xpdlparticipantprocess; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlparticipantprocess (
    process_id character varying(90) NOT NULL,
    packageoid numeric(19,0) NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlparticipantprocess OWNER TO pentaho_user;

--
-- Name: xpdlreferences; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdlreferences (
    referredxpdlid character varying(90) NOT NULL,
    referringxpdl numeric(19,0) NOT NULL,
    referredxpdlnumber integer NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdlreferences OWNER TO pentaho_user;

--
-- Name: xpdls; Type: TABLE; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE TABLE xpdls (
    xpdlid character varying(90) NOT NULL,
    xpdlversion character varying(20) NOT NULL,
    xpdlclassversion bigint NOT NULL,
    xpdluploadtime timestamp without time zone NOT NULL,
    oid numeric(19,0) NOT NULL,
    version integer NOT NULL
);


ALTER TABLE public.xpdls OWNER TO pentaho_user;

--
-- Data for Name: activities; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY activities (id, activitysetdefinitionid, activitydefinitionid, process, theresource, pdefname, processid, resourceid, state, blockactivityid, performer, isperformerasynchronous, priority, name, activated, accepted, laststatetime, limittime, description, oid, version) FROM stdin;
\.


--
-- Data for Name: activitydata; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY activitydata (activity, variabledefinitionid, variabletype, variablevalue, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, isresult, oid, version) FROM stdin;
\.


--
-- Data for Name: activitydatablobs; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY activitydatablobs (activitydatawob, variablevalue, oid, version) FROM stdin;
\.


--
-- Data for Name: activitydatawob; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY activitydatawob (activity, variabledefinitionid, variabletype, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, isresult, oid, version) FROM stdin;
\.


--
-- Data for Name: activitystateeventaudits; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY activitystateeventaudits (keyvalue, name, oid, version) FROM stdin;
open.running	open.running	1000013	0
open.not_running.not_started	open.not_running.not_started	1000015	0
open.not_running.suspended	open.not_running.suspended	1000017	0
closed.completed	closed.completed	1000019	0
closed.terminated	closed.terminated	1000021	0
closed.aborted	closed.aborted	1000023	0
\.


--
-- Data for Name: activitystates; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY activitystates (keyvalue, name, oid, version) FROM stdin;
open.running	open.running	1000001	0
open.not_running.not_started	open.not_running.not_started	1000003	0
open.not_running.suspended	open.not_running.suspended	1000005	0
closed.completed	closed.completed	1000007	0
closed.terminated	closed.terminated	1000009	0
closed.aborted	closed.aborted	1000011	0
\.


--
-- Data for Name: andjointable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY andjointable (process, activitysetdefinitionid, activitydefinitionid, activity, cnt, oid, version) FROM stdin;
\.


--
-- Data for Name: assignmenteventaudits; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY assignmenteventaudits (utctime, thetype, activityid, activityname, processid, processname, processdefinitionname, processdefinitionversion, activitydefinitionid, activitysetdefinitionid, processdefinitionid, packageid, oldresourceusername, oldresourcename, newresourceusername, newresourcename, isaccepted, cnt, oid, version) FROM stdin;
\.


--
-- Data for Name: assignmentstable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY assignmentstable (activity, theresource, activityid, activityprocessid, activityprocessdefname, resourceid, isaccepted, isvalid, cnt, oid, version) FROM stdin;
\.


--
-- Data for Name: counters; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY counters (name, the_number, oid, version) FROM stdin;
_xpdldata_	101	1000406	0
_process_	101	1000601	0
createprocesseventaudit	101	1000603	0
stateeventaudit	101	1000605	0
dataeventaudit	101	1000607	0
_activity_	101	1000642	0
\.


--
-- Data for Name: createprocesseventaudits; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY createprocesseventaudits (utctime, thetype, processid, processname, processdefinitionname, processdefinitionversion, processdefinitionid, packageid, pactivityid, pprocessid, pprocessname, pprocessdefinitionname, pprocessdefinitionversion, pactivitydefinitionid, pactivitysetdefinitionid, pprocessdefinitionid, ppackageid, cnt, oid, version) FROM stdin;
1150906410631	1000027	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReportAndEmail	BurstingExamples	\N	\N	\N	\N	\N	\N	\N	\N	\N	1	1000602	0
1150906417756	1000027	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReportAndEmail	BurstingExamples	\N	\N	\N	\N	\N	\N	\N	\N	\N	2	1000687	0
1150906419506	1000027	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReportAndEmail	BurstingExamples	\N	\N	\N	\N	\N	\N	\N	\N	\N	3	1000768	0
1150906421006	1000027	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReportAndEmail	BurstingExamples	\N	\N	\N	\N	\N	\N	\N	\N	\N	4	1000849	0
\.


--
-- Data for Name: dataeventaudits; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY dataeventaudits (utctime, thetype, activityid, activityname, processid, processname, processdefinitionname, processdefinitionversion, activitydefinitionid, activitysetdefinitionid, processdefinitionid, packageid, cnt, oid, version) FROM stdin;
1150906410725	1000029	\N	\N	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1	1000606	0
1150906411053	1000029	\N	\N	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	2	1000629	0
1150906411146	1000029	\N	\N	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	3	1000636	0
1150906411271	1000031	1_1_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	4	1000644	0
1150906417350	1000032	1_1_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	5	1000661	0
1150906417350	1000031	2_1_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	6	1000665	0
1150906417584	1000032	2_1_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	7	1000682	0
1150906417756	1000029	\N	\N	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	8	1000689	0
1150906417896	1000029	\N	\N	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	9	1000711	0
1150906417943	1000029	\N	\N	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	10	1000718	0
1150906417990	1000031	3_2_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	11	1000725	0
1150906419240	1000032	3_2_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	12	1000742	0
1150906419240	1000031	4_2_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	13	1000746	0
1150906419334	1000032	4_2_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	14	1000763	0
1150906419506	1000029	\N	\N	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	15	1000770	0
1150906419584	1000029	\N	\N	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	16	1000792	0
1150906419615	1000029	\N	\N	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	17	1000799	0
1150906419646	1000031	5_3_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	18	1000806	0
1150906420740	1000032	5_3_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	19	1000823	0
1150906420740	1000031	6_3_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	20	1000827	0
1150906420849	1000032	6_3_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	21	1000844	0
1150906421006	1000029	\N	\N	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	22	1000851	0
1150906421084	1000029	\N	\N	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	23	1000873	0
1150906421131	1000029	\N	\N	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	24	1000880	0
1150906421162	1000031	7_4_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	25	1000887	0
1150906422756	1000032	7_4_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	26	1000904	0
1150906422756	1000031	8_4_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	27	1000908	0
1150906422881	1000032	8_4_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	28	1000925	0
\.


--
-- Data for Name: deadlines; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY deadlines (process, activity, cnt, timelimit, exceptionname, issynchronous, isexecuted, oid, version) FROM stdin;
\.


--
-- Data for Name: eventtypes; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY eventtypes (keyvalue, name, oid, version) FROM stdin;
packageLoaded	packageLoaded	1000024	0
packageUnloaded	packageUnloaded	1000025	0
packageUpdated	packageUpdated	1000026	0
processCreated	processCreated	1000027	0
processStateChanged	processStateChanged	1000028	0
processContextChanged	processContextChanged	1000029	0
activityStateChanged	activityStateChanged	1000030	0
activityContextChanged	activityContextChanged	1000031	0
activityResultChanged	activityResultChanged	1000032	0
activityAssignmentChanged	activityAssignmentChanged	1000033	0
\.


--
-- Data for Name: groupgrouptable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY groupgrouptable (sub_gid, groupid, oid, version) FROM stdin;
\.


--
-- Data for Name: grouptable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY grouptable (groupid, description, oid, version) FROM stdin;
idle	JSP Group	1000035	0
SharkGroup		1000201	0
Pentaho	Pentaho	1000401	0
admin	admin	0	0
\.


--
-- Data for Name: groupuser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY groupuser (username, oid, version) FROM stdin;
admin	0	0
\.


--
-- Data for Name: groupuserpacklevelparticipant; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY groupuserpacklevelparticipant (participantoid, useroid, oid, version) FROM stdin;
\.


--
-- Data for Name: groupuserproclevelparticipant; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY groupuserproclevelparticipant (participantoid, useroid, oid, version) FROM stdin;
\.


--
-- Data for Name: locktable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY locktable (enginename, id, oid, version) FROM stdin;
\.


--
-- Data for Name: neweventauditdata; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY neweventauditdata (dataeventaudit, variabledefinitionid, variabletype, variablevalue, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, oid, version) FROM stdin;
1000606	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000608	0
1000606	Unused_1	3	00		0	0	\N	0	1000609	0
1000606	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000610	0
1000606	Unused_3	3	00		0	0	\N	0	1000611	0
1000606	Pentaho_Instance_Id	3	00		0	0	\N	0	1000612	0
1000606	Pentaho_Solution_Id	3	00		0	0	\N	0	1000613	0
1000606	Unused_2	3	00		0	0	\N	0	1000614	0
1000629	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000631	0
1000636	Pentaho_Instance_Id_Param	3	00	e120ced6-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000638	0
1000644	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000645	0
1000644	Unused_1	3	00		0	0	\N	0	1000646	0
1000644	Pentaho_Instance_Id_Param	3	00	e120ced6-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000647	0
1000644	Unused_3	3	00		0	0	\N	0	1000648	0
1000644	Pentaho_Instance_Id	3	00		0	0	\N	0	1000649	0
1000644	Pentaho_Solution_Id	3	00		0	0	\N	0	1000650	0
1000644	Unused_2	3	00		0	0	\N	0	1000651	0
1000661	Unused_1	3	00		0	0	\N	0	1000662	0
1000665	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000666	0
1000665	Unused_1	3	00		0	0	\N	0	1000667	0
1000665	Pentaho_Instance_Id_Param	3	00	e120ced6-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000668	0
1000665	Unused_3	3	00		0	0	\N	0	1000669	0
1000665	Pentaho_Instance_Id	3	00		0	0	\N	0	1000670	0
1000665	Pentaho_Solution_Id	3	00		0	0	\N	0	1000671	0
1000665	Unused_2	3	00		0	0	\N	0	1000672	0
1000682	Unused_1	3	00		0	0	\N	0	1000683	0
1000689	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000690	0
1000689	Unused_1	3	00		0	0	\N	0	1000691	0
1000689	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000692	0
1000689	Unused_3	3	00		0	0	\N	0	1000693	0
1000689	Pentaho_Instance_Id	3	00		0	0	\N	0	1000694	0
1000689	Pentaho_Solution_Id	3	00		0	0	\N	0	1000695	0
1000689	Unused_2	3	00		0	0	\N	0	1000696	0
1000711	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000713	0
1000718	Pentaho_Instance_Id_Param	3	00	e577ccea-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000720	0
1000725	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000726	0
1000725	Unused_1	3	00		0	0	\N	0	1000727	0
1000725	Pentaho_Instance_Id_Param	3	00	e577ccea-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000728	0
1000725	Unused_3	3	00		0	0	\N	0	1000729	0
1000725	Pentaho_Instance_Id	3	00		0	0	\N	0	1000730	0
1000725	Pentaho_Solution_Id	3	00		0	0	\N	0	1000731	0
1000725	Unused_2	3	00		0	0	\N	0	1000732	0
1000742	Unused_1	3	00		0	0	\N	0	1000743	0
1000746	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000747	0
1000746	Unused_1	3	00		0	0	\N	0	1000748	0
1000746	Pentaho_Instance_Id_Param	3	00	e577ccea-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000749	0
1000746	Unused_3	3	00		0	0	\N	0	1000750	0
1000746	Pentaho_Instance_Id	3	00		0	0	\N	0	1000751	0
1000746	Pentaho_Solution_Id	3	00		0	0	\N	0	1000752	0
1000746	Unused_2	3	00		0	0	\N	0	1000753	0
1000763	Unused_1	3	00		0	0	\N	0	1000764	0
1000770	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000771	0
1000770	Unused_1	3	00		0	0	\N	0	1000772	0
1000770	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000773	0
1000770	Unused_3	3	00		0	0	\N	0	1000774	0
1000770	Pentaho_Instance_Id	3	00		0	0	\N	0	1000775	0
1000770	Pentaho_Solution_Id	3	00		0	0	\N	0	1000776	0
1000770	Unused_2	3	00		0	0	\N	0	1000777	0
1000792	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000794	0
1000799	Pentaho_Instance_Id_Param	3	00	e682d44d-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000801	0
1000806	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000807	0
1000806	Unused_1	3	00		0	0	\N	0	1000808	0
1000806	Pentaho_Instance_Id_Param	3	00	e682d44d-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000809	0
1000806	Unused_3	3	00		0	0	\N	0	1000810	0
1000806	Pentaho_Instance_Id	3	00		0	0	\N	0	1000811	0
1000806	Pentaho_Solution_Id	3	00		0	0	\N	0	1000812	0
1000806	Unused_2	3	00		0	0	\N	0	1000813	0
1000823	Unused_1	3	00		0	0	\N	0	1000824	0
1000827	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000828	0
1000827	Unused_1	3	00		0	0	\N	0	1000829	0
1000827	Pentaho_Instance_Id_Param	3	00	e682d44d-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000830	0
1000827	Unused_3	3	00		0	0	\N	0	1000831	0
1000827	Pentaho_Instance_Id	3	00		0	0	\N	0	1000832	0
1000827	Pentaho_Solution_Id	3	00		0	0	\N	0	1000833	0
1000827	Unused_2	3	00		0	0	\N	0	1000834	0
1000844	Unused_1	3	00		0	0	\N	0	1000845	0
1000851	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000852	0
1000851	Unused_1	3	00		0	0	\N	0	1000853	0
1000851	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000854	0
1000851	Unused_3	3	00		0	0	\N	0	1000855	0
1000851	Pentaho_Instance_Id	3	00		0	0	\N	0	1000856	0
1000851	Pentaho_Solution_Id	3	00		0	0	\N	0	1000857	0
1000851	Unused_2	3	00		0	0	\N	0	1000858	0
1000873	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000875	0
1000880	Pentaho_Instance_Id_Param	3	00	e767b610-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000882	0
1000887	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000888	0
1000887	Unused_1	3	00		0	0	\N	0	1000889	0
1000887	Pentaho_Instance_Id_Param	3	00	e767b610-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000890	0
1000887	Unused_3	3	00		0	0	\N	0	1000891	0
1000887	Pentaho_Instance_Id	3	00		0	0	\N	0	1000892	0
1000887	Pentaho_Solution_Id	3	00		0	0	\N	0	1000893	0
1000887	Unused_2	3	00		0	0	\N	0	1000894	0
1000904	Unused_1	3	00		0	0	\N	0	1000905	0
1000908	Pentaho_Solution_Id_Param	3	00	samples	0	0	\N	0	1000909	0
1000908	Unused_1	3	00		0	0	\N	0	1000910	0
1000908	Pentaho_Instance_Id_Param	3	00	e767b610-0140-11db-9567-13a7c9c7eeee	0	0	\N	0	1000911	0
1000908	Unused_3	3	00		0	0	\N	0	1000912	0
1000908	Pentaho_Instance_Id	3	00		0	0	\N	0	1000913	0
1000908	Pentaho_Solution_Id	3	00		0	0	\N	0	1000914	0
1000908	Unused_2	3	00		0	0	\N	0	1000915	0
1000925	Unused_1	3	00		0	0	\N	0	1000926	0
\.


--
-- Data for Name: neweventauditdatablobs; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY neweventauditdatablobs (neweventauditdatawob, variablevalue, oid, version) FROM stdin;
\.


--
-- Data for Name: neweventauditdatawob; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY neweventauditdatawob (dataeventaudit, variabledefinitionid, variabletype, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, oid, version) FROM stdin;
\.


--
-- Data for Name: nextxpdlversions; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY nextxpdlversions (xpdlid, nextversion, oid, version) FROM stdin;
BurstingExamples	3	1000403	1
\.


--
-- Data for Name: normaluser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY normaluser (username, oid, version) FROM stdin;
\.


--
-- Data for Name: objectid; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY objectid ("next", objectid) FROM stdin;
1001200	\N
\.


--
-- Data for Name: oldeventauditdata; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY oldeventauditdata (dataeventaudit, variabledefinitionid, variabletype, variablevalue, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, oid, version) FROM stdin;
1000629	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000630	0
1000636	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000637	0
1000711	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000712	0
1000718	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000719	0
1000792	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000793	0
1000799	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000800	0
1000873	Pentaho_Solution_Id_Param	3	00		0	0	\N	0	1000874	0
1000880	Pentaho_Instance_Id_Param	3	00		0	0	\N	0	1000881	0
\.


--
-- Data for Name: oldeventauditdatablobs; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY oldeventauditdatablobs (oldeventauditdatawob, variablevalue, oid, version) FROM stdin;
\.


--
-- Data for Name: oldeventauditdatawob; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY oldeventauditdatawob (dataeventaudit, variabledefinitionid, variabletype, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, oid, version) FROM stdin;
\.


--
-- Data for Name: packlevelparticipant; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY packlevelparticipant (participant_id, packageoid, oid, version) FROM stdin;
\.


--
-- Data for Name: packlevelxpdlapp; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY packlevelxpdlapp (application_id, packageoid, oid, version) FROM stdin;
\.


--
-- Data for Name: packlevelxpdlapptaappdetail; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY packlevelxpdlapptaappdetail (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: packlevelxpdlapptaappdetailusr; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY packlevelxpdlapptaappdetailusr (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: packlevelxpdlapptaappuser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY packlevelxpdlapptaappuser (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: packlevelxpdlapptoolagentapp; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY packlevelxpdlapptoolagentapp (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: processdata; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processdata (process, variabledefinitionid, variabletype, variablevalue, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, oid, version) FROM stdin;
\.


--
-- Data for Name: processdatablobs; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processdatablobs (processdatawob, variablevalue, oid, version) FROM stdin;
\.


--
-- Data for Name: processdatawob; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processdatawob (process, variabledefinitionid, variabletype, variablevaluevchar, variablevaluedbl, variablevaluelong, variablevaluedate, variablevaluebool, oid, version) FROM stdin;
\.


--
-- Data for Name: processdefinitions; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processdefinitions (name, packageid, processdefinitionid, processdefinitioncreated, processdefinitionversion, state, oid, version) FROM stdin;
BurstingExamples#1#GenReportAndEmail	BurstingExamples	GenReportAndEmail	1150835254093	1	0	1000407	0
BurstingExamples#2#GenReportAndEmail	BurstingExamples	GenReportAndEmail	1150835254375	2	0	1000410	0
\.


--
-- Data for Name: processes; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processes (id, processdefinition, pdefname, activityrequesterid, activityrequesterprocessid, resourcerequesterid, externalrequesterclassname, state, priority, name, created, started, laststatetime, limittime, description, oid, version) FROM stdin;
\.


--
-- Data for Name: processrequesters; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processrequesters (id, activityrequester, resourcerequester, oid, version) FROM stdin;
\.


--
-- Data for Name: processstateeventaudits; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processstateeventaudits (keyvalue, name, oid, version) FROM stdin;
open.running	open.running	1000012	0
open.not_running.not_started	open.not_running.not_started	1000014	0
open.not_running.suspended	open.not_running.suspended	1000016	0
closed.completed	closed.completed	1000018	0
closed.terminated	closed.terminated	1000020	0
closed.aborted	closed.aborted	1000022	0
\.


--
-- Data for Name: processstates; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY processstates (keyvalue, name, oid, version) FROM stdin;
open.running	open.running	1000000	0
open.not_running.not_started	open.not_running.not_started	1000002	0
open.not_running.suspended	open.not_running.suspended	1000004	0
closed.completed	closed.completed	1000006	0
closed.terminated	closed.terminated	1000008	0
closed.aborted	closed.aborted	1000010	0
\.


--
-- Data for Name: proclevelparticipant; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY proclevelparticipant (participant_id, processoid, oid, version) FROM stdin;
\.


--
-- Data for Name: proclevelxpdlapp; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY proclevelxpdlapp (application_id, processoid, oid, version) FROM stdin;
\.


--
-- Data for Name: proclevelxpdlapptaappdetail; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY proclevelxpdlapptaappdetail (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: proclevelxpdlapptaappdetailusr; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY proclevelxpdlapptaappdetailusr (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: proclevelxpdlapptaappuser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY proclevelxpdlapptaappuser (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: proclevelxpdlapptoolagentapp; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY proclevelxpdlapptoolagentapp (xpdl_appoid, toolagentoid, oid, version) FROM stdin;
\.


--
-- Data for Name: resourcestable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY resourcestable (username, name, oid, version) FROM stdin;
jspUser2	\N	1000038	0
admin	\N	1000204	0
\.


--
-- Data for Name: stateeventaudits; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY stateeventaudits (utctime, thetype, activityid, activityname, processid, processname, processdefinitionname, processdefinitionversion, activitydefinitionid, activitysetdefinitionid, processdefinitionid, packageid, oldprocessstate, newprocessstate, oldactivitystate, newactivitystate, cnt, oid, version) FROM stdin;
1150906410678	1000028	\N	\N	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	\N	1000014	\N	\N	1	1000604	0
1150906411162	1000028	\N	\N	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000014	1000012	\N	\N	2	1000641	0
1150906411271	1000030	1_1_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	3	1000643	0
1150906411334	1000030	1_1_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	4	1000660	0
1150906417350	1000030	1_1_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	5	1000663	0
1150906417350	1000030	2_1_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	6	1000664	0
1150906417350	1000030	2_1_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	7	1000681	0
1150906417584	1000030	2_1_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	8	1000684	0
1150906417584	1000028	\N	\N	1_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000012	1000018	\N	\N	9	1000685	0
1150906417756	1000028	\N	\N	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	\N	1000014	\N	\N	10	1000688	0
1150906417975	1000028	\N	\N	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000014	1000012	\N	\N	11	1000723	0
1150906417975	1000030	3_2_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	12	1000724	0
1150906417990	1000030	3_2_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	13	1000741	0
1150906419240	1000030	3_2_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	14	1000744	0
1150906419240	1000030	4_2_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	15	1000745	0
1150906419240	1000030	4_2_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	16	1000762	0
1150906419334	1000030	4_2_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	17	1000765	0
1150906419334	1000028	\N	\N	2_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000012	1000018	\N	\N	18	1000766	0
1150906419506	1000028	\N	\N	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	\N	1000014	\N	\N	19	1000769	0
1150906419631	1000028	\N	\N	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000014	1000012	\N	\N	20	1000804	0
1150906419646	1000030	5_3_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	21	1000805	0
1150906419646	1000030	5_3_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	22	1000822	0
1150906420740	1000030	5_3_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	23	1000825	0
1150906420740	1000030	6_3_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	24	1000826	0
1150906420740	1000030	6_3_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	25	1000843	0
1150906420849	1000030	6_3_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	26	1000846	0
1150906420849	1000028	\N	\N	3_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000012	1000018	\N	\N	27	1000847	0
1150906421006	1000028	\N	\N	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	\N	1000014	\N	\N	28	1000850	0
1150906421146	1000028	\N	\N	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000014	1000012	\N	\N	29	1000885	0
1150906421146	1000030	7_4_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	30	1000886	0
1150906421162	1000030	7_4_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	31	1000903	0
1150906422756	1000030	7_4_BurstingExamples_GenReportAndEmail_GenReport	Generate Report	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	GenReport	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	32	1000906	0
1150906422756	1000030	8_4_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	\N	1000015	33	1000907	0
1150906422756	1000030	8_4_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000015	1000013	34	1000924	0
1150906422881	1000030	8_4_BurstingExamples_GenReportAndEmail_JamesFlow1_Wor1_Act2	Email Verification	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	JamesFlow1_Wor1_Act2	\N	GenReportAndEmail	BurstingExamples	\N	\N	1000013	1000019	35	1000927	0
1150906422881	1000028	\N	\N	4_BurstingExamples_GenReportAndEmail	Generate Report and Email	BurstingExamples#2#GenReportAndEmail	2	\N	\N	GenReportAndEmail	BurstingExamples	1000012	1000018	\N	\N	36	1000928	0
\.


--
-- Data for Name: toolagentapp; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY toolagentapp (tool_agent_name, app_name, oid, version) FROM stdin;
\.


--
-- Data for Name: toolagentappdetail; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY toolagentappdetail (app_mode, toolagent_appoid, oid, version) FROM stdin;
\.


--
-- Data for Name: toolagentappdetailuser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY toolagentappdetailuser (toolagent_appoid, useroid, oid, version) FROM stdin;
\.


--
-- Data for Name: toolagentappuser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY toolagentappuser (toolagent_appoid, useroid, oid, version) FROM stdin;
\.


--
-- Data for Name: toolagentuser; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY toolagentuser (username, pwd, oid, version) FROM stdin;
\.


--
-- Data for Name: usergrouptable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY usergrouptable (userid, groupid, oid, version) FROM stdin;
1000036	1000035	1000037	0
1000202	1000201	1000203	0
1000202	1000401	1000402	0
\.


--
-- Data for Name: userpacklevelparticipant; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY userpacklevelparticipant (participantoid, useroid, oid, version) FROM stdin;
\.


--
-- Data for Name: userproclevelparticipant; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY userproclevelparticipant (participantoid, useroid, oid, version) FROM stdin;
\.


--
-- Data for Name: usertable; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY usertable (userid, firstname, lastname, passwd, email, oid, version) FROM stdin;
jspUser2	John	JSPUser	5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8	jsp@java.sun.com	1000036	0
admin	Default User		080e42176331f5c52da38b9156e38f5b		1000202	0
\.


--
-- Data for Name: xpdlapplicationpackage; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlapplicationpackage (package_id, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdlapplicationprocess; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlapplicationprocess (process_id, packageoid, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdldata; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdldata (xpdlcontent, xpdlclasscontent, xpdl, cnt, oid, version) FROM stdin;
3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d38223f3e0a3c5061636b61676520786d6c6e733a7873693d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d612d696e7374616e6365220a202020202020202020786d6c6e733a7870646c3d22687474703a2f2f7777772e77666d632e6f72672f323030322f5850444c312e30220a20202020202020202049643d224275727374696e674578616d706c6573220a2020202020202020204e616d653d224275727374696e67204578616d706c6573220a2020202020202020207873693a736368656d614c6f636174696f6e3d22687474703a2f2f7777772e77666d632e6f72672f323030322f5850444c312e3020687474703a2f2f77666d632e6f72672f7374616e64617264732f646f63732f54432d313032355f736368656d615f31305f7870646c2e787364223e0a2020203c5061636b6167654865616465723e0a2020202020203c5850444c56657273696f6e3e312e303c2f5850444c56657273696f6e3e0a2020202020203c56656e646f723e50656e7461686f3c2f56656e646f723e0a2020202020203c437265617465643e323030352d30342d31382031313a33363a35343c2f437265617465643e0a2020203c2f5061636b6167654865616465723e0a2020203c5265646566696e61626c65486561646572205075626c69636174696f6e5374617475733d22554e4445525f54455354222f3e0a2020203c436f6e666f726d616e6365436c617373204772617068436f6e666f726d616e63653d224e4f4e5f424c4f434b4544222f3e0a2020203c53637269707420547970653d22746578742f6a617661736372697074222f3e0a2020203c4170706c69636174696f6e733e0a2020202020203c4170706c69636174696f6e2049643d2250656e7461686f5f416374697669747922204e616d653d2250656e7461686f204163746976697479223e0a2020202020202020203c466f726d616c506172616d65746572733e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22696e7374616e63652d69642220496e6465783d223122204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22736f6c7574696f6e2220496e6465783d223222204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22616374696f6e2220496e6465783d223322204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d227363726970742d726573756c742220496e6465783d223422204d6f64653d224f5554223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020203c2f466f726d616c506172616d65746572733e0a2020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d22546f6f6c4167656e74436c617373222056616c75653d226f72672e70656e7461686f2e706c7567696e2e736861726b2e536861726b546f6f6c4167656e74222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d2250656e7461686f5f41637469766974795f55524c222056616c75653d22687474703a2f2f6c6f63616c686f73743a383038302f70656e7461686f2f53657276696365416374696f6e222f3e0a2020202020202020203c2f457874656e646564417474726962757465733e0a2020202020203c2f4170706c69636174696f6e3e0a2020202020203c4170706c69636174696f6e2049643d2253656e645f456d61696c22204e616d653d2253656e6420456d61696c223e0a2020202020202020203c466f726d616c506172616d65746572733e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22646573745f616464722220496e6465783d223122204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d227375626a6563742220496e6465783d223222204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22636f6e74656e742220496e6465783d223322204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020203c2f466f726d616c506172616d65746572733e0a2020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d22546f6f6c4167656e74436c617373222056616c75653d226f72672e656e68796472612e736861726b2e746f6f6c6167656e742e4d61696c546f6f6c4167656e74222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d224170704e616d65222056616c75653d226f72672e656e68796472612e736861726b2e746f6f6c6167656e742e44656661756c744d61696c4d65737361676548616e646c6572222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d224170704d6f6465222056616c75653d2230222f3e0a2020202020202020203c2f457874656e646564417474726962757465733e0a2020202020203c2f4170706c69636174696f6e3e0a2020203c2f4170706c69636174696f6e733e0a2020203c446174614669656c64733e0a2020202020203c446174614669656c642049643d2250656e7461686f5f536f6c7574696f6e5f49642220497341727261793d2246414c534522204e616d653d2250656e7461686f20536f6c7574696f6e204964223e0a2020202020202020203c44617461547970653e0a2020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020203c2f44617461547970653e0a2020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020203c2f446174614669656c643e0a2020202020203c446174614669656c642049643d2250656e7461686f5f496e7374616e63655f49642220497341727261793d2246414c534522204e616d653d2250656e7461686f20496e7374616e6365204964223e0a2020202020202020203c44617461547970653e0a2020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020203c2f44617461547970653e0a2020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020203c2f446174614669656c643e0a2020203c2f446174614669656c64733e0a2020203c576f726b666c6f7750726f6365737365733e0a2020202020203c576f726b666c6f7750726f63657373204163636573734c6576656c3d225055424c4943222049643d2247656e5265706f7274416e64456d61696c22204e616d653d2247656e6572617465205265706f727420616e6420456d61696c223e0a2020202020202020203c50726f63657373486561646572204475726174696f6e556e69743d2244223e0a2020202020202020202020203c437265617465643e323030352d30342d31382031343a32323a33343c2f437265617465643e0a2020202020202020203c2f50726f636573734865616465723e0a2020202020202020203c5265646566696e61626c65486561646572205075626c69636174696f6e5374617475733d22554e4445525f54455354222f3e0a2020202020202020203c466f726d616c506172616d65746572733e0a2020202020202020202020203c466f726d616c506172616d657465722049643d2250656e7461686f5f536f6c7574696f6e5f49645f506172616d2220496e6465783d223122204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d2250656e7461686f5f496e7374616e63655f49645f506172616d2220496e6465783d223222204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020203c2f466f726d616c506172616d65746572733e0a2020202020202020203c446174614669656c64733e0a2020202020202020202020203c446174614669656c642049643d22556e757365645f312220497341727261793d2246414c534522204e616d653d22556e757365642031223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020202020202020203c2f446174614669656c643e0a2020202020202020202020203c446174614669656c642049643d22556e757365645f322220497341727261793d2246414c534522204e616d653d22556e757365642032223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020202020202020203c2f446174614669656c643e0a2020202020202020202020203c446174614669656c642049643d22556e757365645f332220497341727261793d2246414c534522204e616d653d22556e757365642033223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020202020202020203c2f446174614669656c643e0a2020202020202020203c2f446174614669656c64733e0a2020202020202020203c5061727469636970616e74733e0a2020202020202020202020203c5061727469636970616e742049643d2250656e7461686f41637469766974696573223e0a2020202020202020202020202020203c5061727469636970616e745479706520547970653d2253595354454d222f3e0a2020202020202020202020203c2f5061727469636970616e743e0a2020202020202020203c2f5061727469636970616e74733e0a2020202020202020203c416374697669746965733e0a2020202020202020202020203c41637469766974792049643d2247656e5265706f727422204e616d653d2247656e6572617465205265706f7274223e0a2020202020202020202020202020203c496d706c656d656e746174696f6e3e0a2020202020202020202020202020202020203c546f6f6c2049643d2250656e7461686f5f41637469766974792220547970653d224150504c49434154494f4e223e0a2020202020202020202020202020202020202020203c41637475616c506172616d65746572733e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f496e7374616e63655f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f536f6c7574696f6e5f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e226275727374696e672f7265706f72742e78616374696f6e223c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e556e757365645f313c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020203c2f41637475616c506172616d65746572733e0a2020202020202020202020202020202020203c2f546f6f6c3e0a2020202020202020202020202020203c2f496d706c656d656e746174696f6e3e0a2020202020202020202020202020203c506572666f726d65723e50656e7461686f416374697669746965733c2f506572666f726d65723e0a2020202020202020202020202020203c53746172744d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f53746172744d6f64653e0a2020202020202020202020202020203c46696e6973684d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f46696e6973684d6f64653e0a2020202020202020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d225061727469636970616e744944222056616c75653d2250656e7461686f41637469766974696573222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22584f6666736574222056616c75653d22323530222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22594f6666736574222056616c75653d223630222f3e0a2020202020202020202020202020203c2f457874656e646564417474726962757465733e0a2020202020202020202020203c2f41637469766974793e0a2020202020202020202020203c41637469766974792049643d224a616d6573466c6f77315f576f72315f4163743222204e616d653d22456d61696c20566572696669636174696f6e223e0a2020202020202020202020202020203c496d706c656d656e746174696f6e3e0a2020202020202020202020202020202020203c546f6f6c2049643d2250656e7461686f5f41637469766974792220547970653d224150504c49434154494f4e223e0a2020202020202020202020202020202020202020203c41637475616c506172616d65746572733e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f496e7374616e63655f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f536f6c7574696f6e5f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e226275727374696e672f73656e642d656d61696c2e78616374696f6e223c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e556e757365645f313c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020203c2f41637475616c506172616d65746572733e0a2020202020202020202020202020202020203c2f546f6f6c3e0a2020202020202020202020202020203c2f496d706c656d656e746174696f6e3e0a2020202020202020202020202020203c506572666f726d65723e50656e7461686f416374697669746965733c2f506572666f726d65723e0a2020202020202020202020202020203c53746172744d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f53746172744d6f64653e0a2020202020202020202020202020203c46696e6973684d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f46696e6973684d6f64653e0a2020202020202020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d225061727469636970616e744944222056616c75653d2250656e7461686f41637469766974696573222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22584f6666736574222056616c75653d22343730222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22594f6666736574222056616c75653d223630222f3e0a2020202020202020202020202020203c2f457874656e646564417474726962757465733e0a2020202020202020202020203c2f41637469766974793e0a2020202020202020203c2f416374697669746965733e0a2020202020202020203c5472616e736974696f6e733e0a2020202020202020202020203c5472616e736974696f6e2046726f6d3d2247656e5265706f7274222049643d224a616d6573466c6f77315f576f72315f547261332220546f3d224a616d6573466c6f77315f576f72315f41637432223e0a2020202020202020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22526f7574696e6754797065222056616c75653d224e4f524f5554494e47222f3e0a2020202020202020202020202020203c2f457874656e646564417474726962757465733e0a2020202020202020202020203c2f5472616e736974696f6e3e0a2020202020202020203c2f5472616e736974696f6e733e0a2020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d2253746172744f66576f726b666c6f77222056616c75653d2250656e7461686f416374697669746965733b47656e5265706f72743b3131303b36303b4e4f524f5554494e47222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d22456e644f66576f726b666c6f77220a2020202020202020202020202020202020202020202020202020202020202056616c75653d2250656e7461686f416374697669746965733b4a616d6573466c6f77315f576f72315f416374323b3635303b36303b4e4f524f5554494e47222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d225061727469636970616e7456697375616c4f72646572222056616c75653d2250656e7461686f416374697669746965733b222f3e0a2020202020202020203c2f457874656e646564417474726962757465733e0a2020202020203c2f576f726b666c6f7750726f636573733e0a2020203c2f576f726b666c6f7750726f6365737365733e0a2020203c457874656e646564417474726962757465733e0a2020202020203c457874656e646564417474726962757465204e616d653d224d6164654279222056616c75653d224a615745222f3e0a2020202020203c457874656e646564417474726962757465204e616d653d2256657273696f6e222056616c75653d22312e342e32222f3e0a2020203c2f457874656e646564417474726962757465733e0a3c2f5061636b6167653e	aced0005737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061636b616765ab748ee56fa473bb0200034c000f657874506b6752656673546f49647374002e4c6f72672f656e68796472612f736861726b2f7574696c69746965732f53657175656e636564486173684d61703b4c000f696e7465726e616c56657273696f6e7400124c6a6176612f6c616e672f537472696e673b4c000a6e616d6573706163657374002c4c6f72672f656e68796472612f736861726b2f7870646c2f656c656d656e74732f4e616d657370616365733b787200286f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6d706c6578456c656d656e74d956e140ed48dcec020000787200356f72672e656e68796472612e736861726b2e7870646c2e584d4c42617365466f72436f6c6c656374696f6e416e64436f6d706c657814d5f8368930752d0200024c000a656c656d656e744d617071007e00014c0008656c656d656e74737400154c6a6176612f7574696c2f41727261794c6973743b787200216f72672e656e68796472612e736861726b2e7870646c2e584d4c456c656d656e742c033ff0a2ad60040200055a000a6973526561644f6e6c795a000a697352657175697265644c00046e616d6571007e00024c0006706172656e747400234c6f72672f656e68796472612f736861726b2f7870646c2f584d4c456c656d656e743b4c000576616c756571007e0002787001017400075061636b616765707400007372002c6f72672e656e68796472612e736861726b2e7574696c69746965732e53657175656e636564486173684d61702eea2293a92226120c0000787077040000000d7400024964737200236f72672e656e68796472612e736861726b2e7870646c2e584d4c4174747269627574652363dd80fecb4d3b0200014c000763686f6963657371007e00067871007e0007010171007e000e71007e00097400104275727374696e674578616d706c6573707400044e616d657371007e000f010071007e001271007e00097400114275727374696e67204578616d706c65737074000d5061636b6167654865616465727372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061636b6167654865616465721776e9922ced92ef0200007871007e0004010171007e001571007e00097400007371007e000c77040000000774000b5850444c56657273696f6e7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5850444c56657273696f6ef7227dd7592ec577020000787200276f72672e656e68796472612e736861726b2e7870646c2e584d4c53696d706c65456c656d656e743b46b9bca9c7564a0200007871007e0007010171007e001a71007e0017740003312e3074000656656e646f72737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56656e646f722074f8ea0645b33a0200007871007e001c010171007e001f71007e001774000750656e7461686f74000743726561746564737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e437265617465647acaf4644bbb7c5b0200007871007e001c010171007e002371007e0017740013323030352d30342d31382031313a33363a353474000b4465736372697074696f6e7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4465736372697074696f6edbb03733e63806fb0200007871007e001c010071007e002771007e001774000074000d446f63756d656e746174696f6e7372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446f63756d656e746174696f6e60c439bbd7797f920200007871007e001c010071007e002b71007e001774000074000c5072696f72697479556e69747372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5072696f72697479556e697498b39be89bf8e4e50200007871007e001c010071007e002f71007e0017740000740008436f7374556e6974737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f7374556e6974dc8ed93d48e18c080200007871007e001c010071007e003371007e001774000078737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000a71007e001d71007e002171007e002571007e002971007e002d71007e003171007e0035787400115265646566696e61626c65486561646572737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5265646566696e61626c6548656164657299bf4debcfaa27480200007871007e0004010071007e003971007e00097400007371007e000c7704000000067400115075626c69636174696f6e5374617475737371007e000f010071007e003e71007e003b74000a554e4445525f544553547371007e00370000000477040000000474000074000e554e4445525f5245564953494f4e74000852454c454153454474000a554e4445525f5445535478740006417574686f72737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e417574686f72350ecac466e1a7860200007871007e001c010071007e004671007e003b74000074000756657273696f6e737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56657273696f6e393d33b47ebb4a510200007871007e001c010071007e004a71007e003b740000740008436f646570616765737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f64657061676539246df765bd0d470200007871007e001c010071007e004e71007e003b74000074000a436f756e7472796b65797372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f756e7472796b6579978b2e8117d0d2d10200007871007e001c010071007e005271007e003b74000074000c526573706f6e7369626c65737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e526573706f6e7369626c657324ef1eea7b53c612020000787200246f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6c6c656374696f6ec36263ab689e6a950200007871007e0005010071007e005671007e003b7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000677040000000a71007e003f71007e004871007e004c71007e005071007e005471007e005978740010436f6e666f726d616e6365436c617373737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f6e666f726d616e6365436c617373d7ec79307c6bab940200007871007e0004010071007e005e71007e00097400007371007e000c7704000000017400104772617068436f6e666f726d616e63657371007e000f010071007e006371007e006074000b4e4f4e5f424c4f434b45447371007e00370000000477040000000471007e004274000c46554c4c5f424c4f434b454474000c4c4f4f505f424c4f434b454474000b4e4f4e5f424c4f434b454478787371007e00370000000177040000000a71007e006478740006536372697074737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e53637269707451a66a0ce753e3380200007871007e0004010071007e006b71007e00097400007371007e000c770400000003740004547970657371007e000f010171007e007071007e006d74000f746578742f6a6176617363726970747074000756657273696f6e7371007e000f010071007e007371007e006d740000707400074772616d6d61727371007e000f010071007e007671007e006d74000070787371007e00370000000377040000000a71007e007171007e007471007e00777874001045787465726e616c5061636b61676573737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e45787465726e616c5061636b6167657377c0222bc5a8a8890200007871007e0058010071007e007a71007e00097400007371007e000c770400000000787371007e00370000000077040000000a78740010547970654465636c61726174696f6e73737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e547970654465636c61726174696f6e730de1ca4f783510cd0200007871007e0058010071007e008071007e00097400007371007e000c770400000000787371007e00370000000077040000000a7874000c5061727469636970616e74737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061727469636970616e74736860b7f00267384a0200007871007e0058010071007e008671007e00097400007371007e000c770400000000787371007e00370000000077040000000a7874000c4170706c69636174696f6e737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4170706c69636174696f6e73c280b41419def6bc0200007871007e0058010071007e008c71007e00097400007371007e000c770400000000787371007e00370000000277040000000a7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4170706c69636174696f6e1d7609a252f9fe530200007872002b6f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6c6c656374696f6e456c656d656e7497210b605e7b14d80200007871007e0004010174000b4170706c69636174696f6e71007e008e7400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e009474001050656e7461686f5f41637469766974797071007e00127371007e000f010071007e001271007e009474001050656e7461686f2041637469766974797074000b4465736372697074696f6e7371007e0028010071007e009c71007e009474000074000643686f696365737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4170706c69636174696f6e54797065738f3ffb2107adaea6020000787200276f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6d706c657843686f696365ac9cbd02f0bf78e60200024c000763686f6963657371007e00064c000763686f6f73656e71007e00087871007e0007010171007e009f71007e00947400007371007e00370000000277040000000a737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e466f726d616c506172616d657465727370bac442c7c3815a0200007871007e00580100740010466f726d616c506172616d657465727371007e00a27400007371007e000c770400000000787371007e00370000000477040000000a7372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e466f726d616c506172616d6574657208e5d343eda0b9800200007871007e0093010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e00ac74000b696e7374616e63652d696470740005496e6465787371007e000f010071007e00b271007e00ac74000131707400044d6f64657371007e000f010171007e00b571007e00ac740002494e7371007e003700000003770400000003740002494e7400034f5554740005494e4f5554787400084461746154797065737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4461746154797065862734730b0e0c4d0200007871007e0004010171007e00bc71007e00ac7400007371007e000c77040000000171007e0070737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446174615479706573b70d65f6a271b2ae0200015a000d6973496e697469616c697a65647871007e00a1010171007e007071007e00be7400007371007e00370000000977040000000a737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e426173696354797065b729a8bd7731bf8e0200007871007e0004010174000942617369635479706571007e00c27400007371007e000c77040000000171007e00707371007e000f010171007e007071007e00c6740006535452494e477371007e003700000007770400000007740006535452494e47740005464c4f4154740007494e54454745527400095245464552454e43457400084441544554494d45740007424f4f4c45414e740009504552464f524d455278787371007e00370000000177040000000a71007e00ca787372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4465636c617265645479706564522e5c5ee839920200007871007e0004010174000c4465636c617265645479706571007e00c27400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e00d674000070787371007e00370000000177040000000a71007e00da787372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e536368656d6154797065790e4ea9812e7c290200007871007e0004010174000a536368656d615479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a78737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e45787465726e616c5265666572656e636586620fe8b7c151cf0200007871007e0004010174001145787465726e616c5265666572656e636571007e00c27400007371007e000c770400000003740004787265667371007e000f010071007e00e871007e00e4740000707400086c6f636174696f6e7371007e000f010171007e00eb71007e00e4740000707400096e616d6573706163657371007e000f010071007e00ee71007e00e474000070787371007e00370000000377040000000a71007e00e971007e00ec71007e00ef787372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5265636f726454797065f525a8bda9eb4b000200007871007e0058010174000a5265636f72645479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a78737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e556e696f6e54797065b4daef3550ce47fa0200007871007e00580101740009556e696f6e5479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a787372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e456e756d65726174696f6e54797065aadaf0de66330c620200007871007e0058010174000f456e756d65726174696f6e5479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a78737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41727261795479706567ac2400ad1c4e400200007871007e0004010174000941727261795479706571007e00c27400007371007e000c77040000000374000a4c6f776572496e6465787371007e000f010171007e010971007e01057400007074000a5570706572496e6465787371007e000f010171007e010c71007e01057400007071007e00707371007e00c1010171007e007071007e0105740000707001787371007e00370000000377040000000a71007e010a71007e010d71007e010f78737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4c697374547970659f22d39f0a10ae050200007871007e000401017400084c6973745479706571007e00c27400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0113740000707001787371007e00370000000177040000000a71007e0117787871007e00c601787371007e00370000000177040000000a71007e00c27874000b4465736372697074696f6e7371007e0028010071007e011b71007e00ac740000787371007e00370000000577040000000a71007e00b071007e00b371007e00b671007e00be71007e011c787371007e00ab010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e011f740008736f6c7574696f6e7071007e00b27371007e000f010071007e00b271007e011f740001327071007e00b57371007e000f010171007e00b571007e011f740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e012a71007e011f7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e012b7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e012e7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0131740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0135787371007e00d5010174000c4465636c617265645479706571007e012e7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e013974000070787371007e00370000000177040000000a71007e013d787371007e00dd010174000a536368656d615479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e012e7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e01457400007071007e00eb7371007e000f010171007e00eb71007e01457400007071007e00ee7371007e000f010071007e00ee71007e014574000070787371007e00370000000377040000000a71007e014971007e014b71007e014d787371007e00f2010174000a5265636f72645479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e012e7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e015f7400007071007e010c7371007e000f010171007e010c71007e015f7400007071007e00707371007e00c1010171007e007071007e015f740000707001787371007e00370000000377040000000a71007e016371007e016571007e0167787371007e011201017400084c6973745479706571007e012e7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e016a740000707001787371007e00370000000177040000000a71007e016e787871007e013101787371007e00370000000177040000000a71007e012e7874000b4465736372697074696f6e7371007e0028010071007e017271007e011f740000787371007e00370000000577040000000a71007e012371007e012571007e012771007e012b71007e0173787371007e00ab010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e0176740006616374696f6e7071007e00b27371007e000f010071007e00b271007e0176740001337071007e00b57371007e000f010171007e00b571007e0176740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e018171007e01767400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e01827400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e01857400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0188740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e018c787371007e00d5010174000c4465636c617265645479706571007e01857400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e019074000070787371007e00370000000177040000000a71007e0194787371007e00dd010174000a536368656d615479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e01857400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e019c7400007071007e00eb7371007e000f010171007e00eb71007e019c7400007071007e00ee7371007e000f010071007e00ee71007e019c74000070787371007e00370000000377040000000a71007e01a071007e01a271007e01a4787371007e00f2010174000a5265636f72645479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e01857400007371007e000c77040000000371007e01097371007e000f010171007e010971007e01b67400007071007e010c7371007e000f010171007e010c71007e01b67400007071007e00707371007e00c1010171007e007071007e01b6740000707001787371007e00370000000377040000000a71007e01ba71007e01bc71007e01be787371007e011201017400084c6973745479706571007e01857400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e01c1740000707001787371007e00370000000177040000000a71007e01c5787871007e018801787371007e00370000000177040000000a71007e01857874000b4465736372697074696f6e7371007e0028010071007e01c971007e0176740000787371007e00370000000577040000000a71007e017a71007e017c71007e017e71007e018271007e01ca787371007e00ab010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e01cd74000d7363726970742d726573756c747071007e00b27371007e000f010071007e00b271007e01cd740001347071007e00b57371007e000f010171007e00b571007e01cd7400034f55547371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e01d871007e01cd7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e01d97400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e01dc7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e01df740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e01e3787371007e00d5010174000c4465636c617265645479706571007e01dc7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e01e774000070787371007e00370000000177040000000a71007e01eb787371007e00dd010174000a536368656d615479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e01dc7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e01f37400007071007e00eb7371007e000f010171007e00eb71007e01f37400007071007e00ee7371007e000f010071007e00ee71007e01f374000070787371007e00370000000377040000000a71007e01f771007e01f971007e01fb787371007e00f2010174000a5265636f72645479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e01dc7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e020d7400007071007e010c7371007e000f010171007e010c71007e020d7400007071007e00707371007e00c1010171007e007071007e020d740000707001787371007e00370000000377040000000a71007e021171007e021371007e0215787371007e011201017400084c6973745479706571007e01dc7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0218740000707001787371007e00370000000177040000000a71007e021c787871007e01df01787371007e00370000000177040000000a71007e01dc7874000b4465736372697074696f6e7371007e0028010071007e022071007e01cd740000787371007e00370000000577040000000a71007e01d171007e01d371007e01d571007e01d971007e022178787371007e00e3010074001145787465726e616c5265666572656e636571007e00a27400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e02247400007071007e00eb7371007e000f010171007e00eb71007e02247400007071007e00ee7371007e000f010071007e00ee71007e022474000070787371007e00370000000377040000000a71007e022871007e022a71007e022c787871007e00a6740012457874656e64656441747472696275746573737200326f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e457874656e64656441747472696275746573750c9e705d73391e0200014c001065787441747472696273537472696e6771007e00027871007e0058010071007e022f71007e00947400007371007e000c770400000000787371007e00370000000277040000000a737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e457874656e6465644174747269627574650139f5c0d684d2930200007871007e00040101740011457874656e64656441747472696275746571007e02317400007371007e000c77040000000271007e00127371007e000f010171007e001271007e023674000e546f6f6c4167656e74436c6173737074000556616c75657371007e000f010071007e023c71007e02367400276f72672e70656e7461686f2e706c7567696e2e736861726b2e536861726b546f6f6c4167656e7470787371007e00370000000277040000000a71007e023a71007e023d787371007e02350101740011457874656e64656441747472696275746571007e02317400007371007e000c77040000000271007e00127371007e000f010171007e001271007e024074001450656e7461686f5f41637469766974795f55524c7071007e023c7371007e000f010071007e023c71007e024074002b687474703a2f2f6c6f63616c686f73743a383038302f70656e7461686f2f53657276696365416374696f6e70787371007e00370000000277040000000a71007e024471007e0246787870787371007e00370000000577040000000a71007e009871007e009a71007e009d71007e00a271007e0231787371007e0092010174000b4170706c69636174696f6e71007e008e7400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e024a74000a53656e645f456d61696c7071007e00127371007e000f010071007e001271007e024a74000a53656e6420456d61696c7074000b4465736372697074696f6e7371007e0028010071007e025271007e024a74000071007e009f7371007e00a0010171007e009f71007e024a7400007371007e00370000000277040000000a7371007e00a50100740010466f726d616c506172616d657465727371007e02557400007371007e000c770400000000787371007e00370000000377040000000a7371007e00ab010174000f466f726d616c506172616d6574657271007e02587400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e025d740009646573745f616464727071007e00b27371007e000f010071007e00b271007e025d740001317071007e00b57371007e000f010171007e00b571007e025d740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e026871007e025d7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02697400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e026c7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e026f740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0273787371007e00d5010174000c4465636c617265645479706571007e026c7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e027774000070787371007e00370000000177040000000a71007e027b787371007e00dd010174000a536368656d615479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e026c7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e02837400007071007e00eb7371007e000f010171007e00eb71007e02837400007071007e00ee7371007e000f010071007e00ee71007e028374000070787371007e00370000000377040000000a71007e028771007e028971007e028b787371007e00f2010174000a5265636f72645479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e026c7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e029d7400007071007e010c7371007e000f010171007e010c71007e029d7400007071007e00707371007e00c1010171007e007071007e029d740000707001787371007e00370000000377040000000a71007e02a171007e02a371007e02a5787371007e011201017400084c6973745479706571007e026c7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02a8740000707001787371007e00370000000177040000000a71007e02ac787871007e026f01787371007e00370000000177040000000a71007e026c7874000b4465736372697074696f6e7371007e0028010071007e02b071007e025d740000787371007e00370000000577040000000a71007e026171007e026371007e026571007e026971007e02b1787371007e00ab010174000f466f726d616c506172616d6574657271007e02587400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e02b47400077375626a6563747071007e00b27371007e000f010071007e00b271007e02b4740001327071007e00b57371007e000f010171007e00b571007e02b4740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e02bf71007e02b47400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02c07400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e02c37400007371007e000c77040000000171007e00707371007e000f010171007e007071007e02c6740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e02ca787371007e00d5010174000c4465636c617265645479706571007e02c37400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e02ce74000070787371007e00370000000177040000000a71007e02d2787371007e00dd010174000a536368656d615479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e02c37400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e02da7400007071007e00eb7371007e000f010171007e00eb71007e02da7400007071007e00ee7371007e000f010071007e00ee71007e02da74000070787371007e00370000000377040000000a71007e02de71007e02e071007e02e2787371007e00f2010174000a5265636f72645479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e02c37400007371007e000c77040000000371007e01097371007e000f010171007e010971007e02f47400007071007e010c7371007e000f010171007e010c71007e02f47400007071007e00707371007e00c1010171007e007071007e02f4740000707001787371007e00370000000377040000000a71007e02f871007e02fa71007e02fc787371007e011201017400084c6973745479706571007e02c37400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02ff740000707001787371007e00370000000177040000000a71007e0303787871007e02c601787371007e00370000000177040000000a71007e02c37874000b4465736372697074696f6e7371007e0028010071007e030771007e02b4740000787371007e00370000000577040000000a71007e02b871007e02ba71007e02bc71007e02c071007e0308787371007e00ab010174000f466f726d616c506172616d6574657271007e02587400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e030b740007636f6e74656e747071007e00b27371007e000f010071007e00b271007e030b740001337071007e00b57371007e000f010171007e00b571007e030b740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e031671007e030b7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e03177400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e031a7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e031d740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0321787371007e00d5010174000c4465636c617265645479706571007e031a7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e032574000070787371007e00370000000177040000000a71007e0329787371007e00dd010174000a536368656d615479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e031a7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e03317400007071007e00eb7371007e000f010171007e00eb71007e03317400007071007e00ee7371007e000f010071007e00ee71007e033174000070787371007e00370000000377040000000a71007e033571007e033771007e0339787371007e00f2010174000a5265636f72645479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e031a7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e034b7400007071007e010c7371007e000f010171007e010c71007e034b7400007071007e00707371007e00c1010171007e007071007e034b740000707001787371007e00370000000377040000000a71007e034f71007e035171007e0353787371007e011201017400084c6973745479706571007e031a7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0356740000707001787371007e00370000000177040000000a71007e035a787871007e031d01787371007e00370000000177040000000a71007e031a7874000b4465736372697074696f6e7371007e0028010071007e035e71007e030b740000787371007e00370000000577040000000a71007e030f71007e031171007e031371007e031771007e035f78787371007e00e3010074001145787465726e616c5265666572656e636571007e02557400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e03627400007071007e00eb7371007e000f010171007e00eb71007e03627400007071007e00ee7371007e000f010071007e00ee71007e036274000070787371007e00370000000377040000000a71007e036671007e036871007e036a787871007e0258740012457874656e646564417474726962757465737371007e0230010071007e036d71007e024a7400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e036e7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e037274000e546f6f6c4167656e74436c6173737071007e023c7371007e000f010071007e023c71007e03727400296f72672e656e68796472612e736861726b2e746f6f6c6167656e742e4d61696c546f6f6c4167656e7470787371007e00370000000277040000000a71007e037671007e0378787371007e02350101740011457874656e64656441747472696275746571007e036e7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e037b7400074170704e616d657071007e023c7371007e000f010071007e023c71007e037b7400356f72672e656e68796472612e736861726b2e746f6f6c6167656e742e44656661756c744d61696c4d65737361676548616e646c657270787371007e00370000000277040000000a71007e037f71007e0381787371007e02350101740011457874656e64656441747472696275746571007e036e7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e03847400074170704d6f64657071007e023c7371007e000f010071007e023c71007e03847400013070787371007e00370000000277040000000a71007e038871007e038a787870787371007e00370000000577040000000a71007e024e71007e025071007e025371007e025571007e036e787874000a446174614669656c64737372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446174614669656c6473bdb592caa6d4fa550200007871007e0058010071007e038e71007e00097400007371007e000c770400000000787371007e00370000000277040000000a737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446174614669656c6449d2332e7e91adf70200007871007e00930101740009446174614669656c6471007e03907400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e039574001350656e7461686f5f536f6c7574696f6e5f49647071007e00127371007e000f010071007e001271007e039574001350656e7461686f20536f6c7574696f6e20496470740007497341727261797371007e000f010071007e039d71007e039574000546414c53457371007e0037000000027704000000027400045452554574000546414c53457874000844617461547970657371007e00bd010171007e03a371007e03957400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e03a47400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e03a77400007371007e000c77040000000171007e00707371007e000f010171007e007071007e03aa740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e03ae787371007e00d5010174000c4465636c617265645479706571007e03a77400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e03b274000070787371007e00370000000177040000000a71007e03b6787371007e00dd010174000a536368656d615479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e03a77400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e03be7400007071007e00eb7371007e000f010171007e00eb71007e03be7400007071007e00ee7371007e000f010071007e00ee71007e03be74000070787371007e00370000000377040000000a71007e03c271007e03c471007e03c6787371007e00f2010174000a5265636f72645479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e03a77400007371007e000c77040000000371007e01097371007e000f010171007e010971007e03d87400007071007e010c7371007e000f010171007e010c71007e03d87400007071007e00707371007e00c1010171007e007071007e03d8740000707001787371007e00370000000377040000000a71007e03dc71007e03de71007e03e0787371007e011201017400084c6973745479706571007e03a77400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e03e3740000707001787371007e00370000000177040000000a71007e03e7787871007e03aa01787371007e00370000000177040000000a71007e03a77874000c496e697469616c56616c75657372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e496e697469616c56616c75656a2c7a17fb949c520200007871007e001c010071007e03eb71007e03957400007400064c656e677468737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4c656e6774684d572b2dcca957dc0200007871007e001c010071007e03ef71007e0395740002353074000b4465736372697074696f6e7371007e0028010071007e03f371007e0395740000740012457874656e646564417474726962757465737371007e0230010071007e03f671007e03957400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e039971007e039b71007e039e71007e03a471007e03ed71007e03f171007e03f471007e03f7787371007e03940101740009446174614669656c6471007e03907400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e03fc74001350656e7461686f5f496e7374616e63655f49647071007e00127371007e000f010071007e001271007e03fc74001350656e7461686f20496e7374616e63652049647071007e039d7371007e000f010071007e039d71007e03fc74000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e040771007e03fc7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e04087400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e040b7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e040e740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0412787371007e00d5010174000c4465636c617265645479706571007e040b7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e041674000070787371007e00370000000177040000000a71007e041a787371007e00dd010174000a536368656d615479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e040b7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e04227400007071007e00eb7371007e000f010171007e00eb71007e04227400007071007e00ee7371007e000f010071007e00ee71007e042274000070787371007e00370000000377040000000a71007e042671007e042871007e042a787371007e00f2010174000a5265636f72645479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e040b7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e043c7400007071007e010c7371007e000f010171007e010c71007e043c7400007071007e00707371007e00c1010171007e007071007e043c740000707001787371007e00370000000377040000000a71007e044071007e044271007e0444787371007e011201017400084c6973745479706571007e040b7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0447740000707001787371007e00370000000177040000000a71007e044b787871007e040e01787371007e00370000000177040000000a71007e040b7874000c496e697469616c56616c75657371007e03ec010071007e044f71007e03fc7400007400064c656e6774687371007e03f0010071007e045271007e03fc740002353074000b4465736372697074696f6e7371007e0028010071007e045571007e03fc740000740012457874656e646564417474726962757465737371007e0230010071007e045871007e03fc7400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e040071007e040271007e040471007e040871007e045071007e045371007e045671007e04597878740011576f726b666c6f7750726f636573736573737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e576f726b666c6f7750726f636573736573708e0f5fa2300b2c0200007871007e0058010071007e045e71007e00097400007371007e000c770400000000787371007e00370000000177040000000a7372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e576f726b666c6f7750726f63657373ffd8010769779de90200007871007e0093010174000f576f726b666c6f7750726f6365737371007e04607400007371007e000c77040000000d71007e000e7371007e000f010171007e000e71007e046574001147656e5265706f7274416e64456d61696c7071007e00127371007e000f010071007e001271007e046574001947656e6572617465205265706f727420616e6420456d61696c7074000b4163636573734c6576656c7371007e000f010071007e046d71007e04657400065055424c49437371007e00370000000377040000000371007e00427400065055424c4943740007505249564154457874000d50726f636573734865616465727372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e50726f636573734865616465728c4cae83432d29bf0200007871007e0004010171007e047371007e04657400007371007e000c77040000000874000c4475726174696f6e556e69747371007e000f010071007e047871007e0475740001447371007e00370000000777040000000771007e0042740001597400014d74000144740001687400016d7400017378740007437265617465647371007e0024010071007e048271007e0475740013323030352d30342d31382031343a32323a333474000b4465736372697074696f6e7371007e0028010071007e048571007e04757400007400085072696f72697479737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5072696f726974791560f64e6e3e06620200007871007e001c010071007e048871007e04757400007400054c696d6974737200256f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4c696d6974fc12a2e83198d3970200007871007e001c010071007e048c71007e047574000074000956616c696446726f6d737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56616c696446726f6d63c5857c834c143c0200007871007e001c010071007e049071007e047574000074000756616c6964546f737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56616c6964546f9ec1b6190cab4dc90200007871007e001c010071007e049471007e047574000074000e54696d65457374696d6174696f6e7372002e6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e54696d65457374696d6174696f6ec58014a3162733140200007871007e0004010071007e049871007e04757400007371007e000c77040000000374000b57616974696e6754696d657372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e57616974696e6754696d654ef093e4cef0a02f0200007871007e001c010071007e049d71007e049a74000074000b576f726b696e6754696d657372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e576f726b696e6754696d65be7e1013b183e6d70200007871007e001c010071007e04a171007e049a7400007400084475726174696f6e737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4475726174696f6ea91520f443f4ebe80200007871007e001c010071007e04a571007e049a740000787371007e00370000000377040000000a71007e049f71007e04a371007e04a778787371007e00370000000877040000000a71007e047971007e048371007e048671007e048a71007e048e71007e049271007e049671007e049a787400115265646566696e61626c654865616465727371007e003a010071007e04ab71007e04657400007371007e000c77040000000671007e003e7371007e000f010071007e003e71007e04ac74000a554e4445525f544553547371007e00370000000477040000000471007e004271007e004371007e004471007e004578740006417574686f727371007e0047010071007e04b271007e04ac74000074000756657273696f6e7371007e004b010071007e04b571007e04ac740000740008436f6465706167657371007e004f010071007e04b871007e04ac74000074000a436f756e7472796b65797371007e0053010071007e04bb71007e04ac74000074000c526573706f6e7369626c65737371007e0057010071007e04be71007e04ac7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000677040000000a71007e04af71007e04b371007e04b671007e04b971007e04bc71007e04bf78740010466f726d616c506172616d65746572737371007e00a5010071007e04c471007e04657400007371007e000c770400000000787371007e00370000000277040000000a7371007e00ab010174000f466f726d616c506172616d6574657271007e04c57400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e04c974001950656e7461686f5f536f6c7574696f6e5f49645f506172616d7071007e00b27371007e000f010071007e00b271007e04c9740001317071007e00b57371007e000f010171007e00b571007e04c9740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e04d471007e04c97400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e04d57400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e04d87400007371007e000c77040000000171007e00707371007e000f010171007e007071007e04db740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e04df787371007e00d5010174000c4465636c617265645479706571007e04d87400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e04e374000070787371007e00370000000177040000000a71007e04e7787371007e00dd010174000a536368656d615479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e04d87400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e04ef7400007071007e00eb7371007e000f010171007e00eb71007e04ef7400007071007e00ee7371007e000f010071007e00ee71007e04ef74000070787371007e00370000000377040000000a71007e04f371007e04f571007e04f7787371007e00f2010174000a5265636f72645479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e04d87400007371007e000c77040000000371007e01097371007e000f010171007e010971007e05097400007071007e010c7371007e000f010171007e010c71007e05097400007071007e00707371007e00c1010171007e007071007e0509740000707001787371007e00370000000377040000000a71007e050d71007e050f71007e0511787371007e011201017400084c6973745479706571007e04d87400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0514740000707001787371007e00370000000177040000000a71007e0518787871007e04db01787371007e00370000000177040000000a71007e04d87874000b4465736372697074696f6e7371007e0028010071007e051c71007e04c9740000787371007e00370000000577040000000a71007e04cd71007e04cf71007e04d171007e04d571007e051d787371007e00ab010174000f466f726d616c506172616d6574657271007e04c57400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e052074001950656e7461686f5f496e7374616e63655f49645f506172616d7071007e00b27371007e000f010071007e00b271007e0520740001327071007e00b57371007e000f010171007e00b571007e0520740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e052b71007e05207400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e052c7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e052f7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0532740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0536787371007e00d5010174000c4465636c617265645479706571007e052f7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e053a74000070787371007e00370000000177040000000a71007e053e787371007e00dd010174000a536368656d615479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e052f7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e05467400007071007e00eb7371007e000f010171007e00eb71007e05467400007071007e00ee7371007e000f010071007e00ee71007e054674000070787371007e00370000000377040000000a71007e054a71007e054c71007e054e787371007e00f2010174000a5265636f72645479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e052f7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e05607400007071007e010c7371007e000f010171007e010c71007e05607400007071007e00707371007e00c1010171007e007071007e0560740000707001787371007e00370000000377040000000a71007e056471007e056671007e0568787371007e011201017400084c6973745479706571007e052f7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e056b740000707001787371007e00370000000177040000000a71007e056f787871007e053201787371007e00370000000177040000000a71007e052f7874000b4465736372697074696f6e7371007e0028010071007e057371007e0520740000787371007e00370000000577040000000a71007e052471007e052671007e052871007e052c71007e0574787874000a446174614669656c64737371007e038f010071007e057771007e04657400007371007e000c770400000000787371007e00370000000377040000000a7371007e03940101740009446174614669656c6471007e05787400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e057c740008556e757365645f317071007e00127371007e000f010071007e001271007e057c740008556e7573656420317071007e039d7371007e000f010071007e039d71007e057c74000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e058771007e057c7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e05887400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e058b7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e058e740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0592787371007e00d5010174000c4465636c617265645479706571007e058b7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e059674000070787371007e00370000000177040000000a71007e059a787371007e00dd010174000a536368656d615479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e058b7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e05a27400007071007e00eb7371007e000f010171007e00eb71007e05a27400007071007e00ee7371007e000f010071007e00ee71007e05a274000070787371007e00370000000377040000000a71007e05a671007e05a871007e05aa787371007e00f2010174000a5265636f72645479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e058b7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e05bc7400007071007e010c7371007e000f010171007e010c71007e05bc7400007071007e00707371007e00c1010171007e007071007e05bc740000707001787371007e00370000000377040000000a71007e05c071007e05c271007e05c4787371007e011201017400084c6973745479706571007e058b7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e05c7740000707001787371007e00370000000177040000000a71007e05cb787871007e058e01787371007e00370000000177040000000a71007e058b7874000c496e697469616c56616c75657371007e03ec010071007e05cf71007e057c7400007400064c656e6774687371007e03f0010071007e05d271007e057c740002353074000b4465736372697074696f6e7371007e0028010071007e05d571007e057c740000740012457874656e646564417474726962757465737371007e0230010071007e05d871007e057c7400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e058071007e058271007e058471007e058871007e05d071007e05d371007e05d671007e05d9787371007e03940101740009446174614669656c6471007e05787400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e05de740008556e757365645f327071007e00127371007e000f010071007e001271007e05de740008556e7573656420327071007e039d7371007e000f010071007e039d71007e05de74000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e05e971007e05de7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e05ea7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e05ed7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e05f0740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e05f4787371007e00d5010174000c4465636c617265645479706571007e05ed7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e05f874000070787371007e00370000000177040000000a71007e05fc787371007e00dd010174000a536368656d615479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e05ed7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e06047400007071007e00eb7371007e000f010171007e00eb71007e06047400007071007e00ee7371007e000f010071007e00ee71007e060474000070787371007e00370000000377040000000a71007e060871007e060a71007e060c787371007e00f2010174000a5265636f72645479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e05ed7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e061e7400007071007e010c7371007e000f010171007e010c71007e061e7400007071007e00707371007e00c1010171007e007071007e061e740000707001787371007e00370000000377040000000a71007e062271007e062471007e0626787371007e011201017400084c6973745479706571007e05ed7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0629740000707001787371007e00370000000177040000000a71007e062d787871007e05f001787371007e00370000000177040000000a71007e05ed7874000c496e697469616c56616c75657371007e03ec010071007e063171007e05de7400007400064c656e6774687371007e03f0010071007e063471007e05de740002353074000b4465736372697074696f6e7371007e0028010071007e063771007e05de740000740012457874656e646564417474726962757465737371007e0230010071007e063a71007e05de7400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e05e271007e05e471007e05e671007e05ea71007e063271007e063571007e063871007e063b787371007e03940101740009446174614669656c6471007e05787400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e0640740008556e757365645f337071007e00127371007e000f010071007e001271007e0640740008556e7573656420337071007e039d7371007e000f010071007e039d71007e064074000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e064b71007e06407400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e064c7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e064f7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0652740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0656787371007e00d5010174000c4465636c617265645479706571007e064f7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e065a74000070787371007e00370000000177040000000a71007e065e787371007e00dd010174000a536368656d615479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e064f7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e06667400007071007e00eb7371007e000f010171007e00eb71007e06667400007071007e00ee7371007e000f010071007e00ee71007e066674000070787371007e00370000000377040000000a71007e066a71007e066c71007e066e787371007e00f2010174000a5265636f72645479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e064f7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e06807400007071007e010c7371007e000f010171007e010c71007e06807400007071007e00707371007e00c1010171007e007071007e0680740000707001787371007e00370000000377040000000a71007e068471007e068671007e0688787371007e011201017400084c6973745479706571007e064f7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e068b740000707001787371007e00370000000177040000000a71007e068f787871007e065201787371007e00370000000177040000000a71007e064f7874000c496e697469616c56616c75657371007e03ec010071007e069371007e06407400007400064c656e6774687371007e03f0010071007e069671007e0640740002353074000b4465736372697074696f6e7371007e0028010071007e069971007e0640740000740012457874656e646564417474726962757465737371007e0230010071007e069c71007e06407400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e064471007e064671007e064871007e064c71007e069471007e069771007e069a71007e069d787874000c5061727469636970616e74737371007e0087010071007e06a271007e04657400007371007e000c770400000000787371007e00370000000177040000000a7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061727469636970616e746f2494f37263a48f0200007871007e0093010174000b5061727469636970616e7471007e06a37400007371007e000c77040000000671007e000e7371007e000f010171007e000e71007e06a874001150656e7461686f416374697669746965737071007e00127371007e000f010071007e001271007e06a87400007074000f5061727469636970616e74547970657372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061727469636970616e74547970653e886ea5dd85a8f70200007871007e0004010171007e06b071007e06a87400007371007e000c77040000000171007e00707371007e000f010171007e007071007e06b274000653595354454d7371007e00370000000677040000000674000c5245534f555243455f5345547400085245534f55524345740004524f4c457400134f5247414e495a4154494f4e414c5f554e495474000548554d414e74000653595354454d78787371007e00370000000177040000000a71007e06b57874000b4465736372697074696f6e7371007e0028010071007e06bf71007e06a874000074001145787465726e616c5265666572656e63657371007e00e3010071007e06c271007e06a87400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e06c37400007071007e00eb7371007e000f010171007e00eb71007e06c37400007071007e00ee7371007e000f010071007e00ee71007e06c374000070787371007e00370000000377040000000a71007e06c671007e06c871007e06ca78740012457874656e646564417474726962757465737371007e0230010071007e06cd71007e06a87400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000677040000000a71007e06ac71007e06ae71007e06b271007e06c071007e06c371007e06ce787874000c4170706c69636174696f6e737371007e008d010071007e06d371007e04657400007371007e000c770400000000787371007e00370000000077040000000a7874000c4163746976697479536574737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e416374697669747953657473d071565b34aaeed60200007871007e0058010071007e06d871007e04657400007371007e000c770400000000787371007e00370000000077040000000a7874000a416374697669746965737372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4163746976697469657326475ee1be6cfe500200007871007e0058010071007e06de71007e04657400007371007e000c770400000000787371007e00370000000277040000000a737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41637469766974798b9a9557fbf4bfcb0200007871007e00930101740008416374697669747971007e06e07400007371007e000c77040000000f71007e000e7371007e000f010171007e000e71007e06e574000947656e5265706f72747071007e00127371007e000f010071007e001271007e06e574000f47656e6572617465205265706f72747074000b4465736372697074696f6e7371007e0028010071007e06ed71007e06e57400007400054c696d69747371007e048d010071007e06f071007e06e574000071007e00707372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4163746976697479547970657365c5bd7bf69ee8e80200007871007e00a1010171007e007071007e06e57400007371007e00370000000377040000000a737200256f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e526f757465306514ee0db247dd0200007871007e00040101740005526f75746571007e06f47400007371007e000c770400000000787371007e00370000000077040000000a787372002e6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e496d706c656d656e746174696f6e9c7296925e250c8a0200007871007e0004010174000e496d706c656d656e746174696f6e71007e06f47400007371007e000c77040000000171007e0070737200336f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e496d706c656d656e746174696f6e5479706573150d9fe454d9a1390200007871007e00a1010171007e007071007e06fe7400007371007e00370000000377040000000a737200226f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4e6f7b9585da13112e0b0200007871007e000401017400024e6f71007e07037400007371007e000c770400000000787371007e00370000000077040000000a78737200256f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e546f6f6c7343bf14d66710a9910200007871007e00580100740005546f6f6c7371007e07037400007371007e000c770400000000787371007e00370000000177040000000a737200246f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e546f6f6c40390b478cfb24c70200007871007e00040101740004546f6f6c71007e070d7400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e071374001050656e7461686f5f41637469766974797071007e00707371007e000f010071007e007071007e071374000b4150504c49434154494f4e7371007e00370000000377040000000371007e004274000b4150504c49434154494f4e74000950524f4345445552457874001041637475616c506172616d6574657273737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41637475616c506172616d6574657273eb8cf7b55fec4bfe0200007871007e0058010071007e071e71007e07137400007371007e000c770400000000787371007e00370000000477040000000a7372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41637475616c506172616d65746572d0312aa3804cf2700200007871007e001c010174000f41637475616c506172616d6574657271007e072074001950656e7461686f5f496e7374616e63655f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e072074001950656e7461686f5f536f6c7574696f6e5f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e0720740019226275727374696e672f7265706f72742e78616374696f6e227371007e0724010174000f41637475616c506172616d6574657271007e0720740008556e757365645f317874000b4465736372697074696f6e7371007e0028010071007e073171007e0713740000740012457874656e646564417474726962757465737371007e0230010071007e073471007e07137400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000577040000000a71007e071771007e071971007e072071007e073271007e07357878737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e537562466c6f773b4ff57387373a240200007871007e00040101740007537562466c6f7771007e07037400007371007e000c77040000000371007e000e7371007e000f010171007e000e71007e073b74000070740009457865637574696f6e7371007e000f010071007e074171007e073b71007e00427371007e00370000000377040000000371007e00427400074153594e43485274000653594e4348527874001041637475616c506172616d65746572737371007e071f010071007e074671007e073b7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000377040000000a71007e073f71007e074271007e0747787871007e070d787371007e00370000000177040000000a71007e0703787372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e426c6f636b4163746976697479920b71ca63c4ea460200007871007e0004010174000d426c6f636b416374697669747971007e06f47400007371007e000c770400000001740007426c6f636b49647371007e000f010171007e075271007e074e74000070787371007e00370000000177040000000a71007e0753787871007e06fe740009506572666f726d6572737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e506572666f726d6572a608223125e8ccc40200007871007e001c010071007e075671007e06e574001150656e7461686f4163746976697469657374000953746172744d6f6465737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e53746172744d6f64656e688584d7f3531b0200007871007e0004010071007e075a71007e06e57400007371007e000c77040000000171007e00b5737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e537461727446696e6973684d6f6465737ee7367ae5588b270200007871007e00a1010171007e00b571007e075c7400007371007e00370000000377040000000a7372002c6f72672e656e68796472612e736861726b2e7870646c2e584d4c456d70747943686f696365456c656d656e74b5fef01c563b4d320200007871007e00040100740015584d4c456d70747943686f696365456c656d656e7471007e07607400007371007e000c770400000000787371007e00370000000077040000000a78737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4175746f6d61746963e9743ffb5f8090190200007871007e000401017400094175746f6d6174696371007e07607400007371007e000c770400000000787371007e00370000000077040000000a78737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4d616e75616cb776aa89ee5bd8a40200007871007e000401017400064d616e75616c71007e07607400007371007e000c770400000000787371007e00370000000077040000000a787871007e076a787371007e00370000000177040000000a71007e07607874000a46696e6973684d6f64657372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e46696e6973684d6f6465f683f89b9cbcf37b0200007871007e0004010071007e077671007e06e57400007371007e000c77040000000171007e00b57371007e075f010171007e00b571007e07787400007371007e00370000000377040000000a7371007e07630100740015584d4c456d70747943686f696365456c656d656e7471007e077b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e076901017400094175746f6d6174696371007e077b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e076f01017400064d616e75616c71007e077b7400007371007e000c770400000000787371007e00370000000077040000000a787871007e0783787371007e00370000000177040000000a71007e077b787400085072696f726974797371007e0489010071007e078e71007e06e5740000740009446561646c696e6573737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446561646c696e65733ebd8dc99cc3da060200007871007e0058010071007e079171007e06e57400007371007e000c770400000000787371007e00370000000077040000000a7874001553696d756c6174696f6e496e666f726d6174696f6e737200356f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e53696d756c6174696f6e496e666f726d6174696f6e22937c49aa10a3920200007871007e0004010071007e079771007e06e57400007371007e000c77040000000374000d496e7374616e74696174696f6e7371007e000f010071007e079c71007e079971007e00427371007e00370000000377040000000371007e00427400044f4e43457400084d554c5449504c4578740004436f7374737200246f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f7374cff9c01fdef2919e0200007871007e001c010171007e07a171007e079974000074000e54696d65457374696d6174696f6e7371007e0499010171007e07a571007e07997400007371007e000c77040000000374000b57616974696e6754696d657371007e049e010071007e07a971007e07a674000074000b576f726b696e6754696d657371007e04a2010071007e07ac71007e07a67400007400084475726174696f6e7371007e04a6010071007e07af71007e07a6740000787371007e00370000000377040000000a71007e07aa71007e07ad71007e07b078787371007e00370000000377040000000a71007e079d71007e07a371007e07a67874000449636f6e737200246f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e49636f6eab54ce5528ff7d360200007871007e001c010071007e07b471007e06e574000074000d446f63756d656e746174696f6e7371007e002c010071007e07b871007e06e57400007400165472616e736974696f6e5265737472696374696f6e73737200366f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5472616e736974696f6e5265737472696374696f6e731f4329b7d780693b0200007871007e0058010071007e07bb71007e06e57400007371007e000c770400000000787371007e00370000000077040000000a78740012457874656e646564417474726962757465737371007e0230010071007e07c171007e06e57400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e07c27400007371007e000c77040000000271007e00127371007e000f010171007e001271007e07c674000d5061727469636970616e7449447071007e023c7371007e000f010071007e023c71007e07c674001150656e7461686f4163746976697469657370787371007e00370000000277040000000a71007e07ca71007e07cc787371007e02350101740011457874656e64656441747472696275746571007e07c27400007371007e000c77040000000271007e00127371007e000f010171007e001271007e07cf740007584f66667365747071007e023c7371007e000f010071007e023c71007e07cf74000332353070787371007e00370000000277040000000a71007e07d371007e07d5787371007e02350101740011457874656e64656441747472696275746571007e07c27400007371007e000c77040000000271007e00127371007e000f010171007e001271007e07d8740007594f66667365747071007e023c7371007e000f010071007e023c71007e07d8740002363070787371007e00370000000277040000000a71007e07dc71007e07de787870787371007e00370000000f77040000001071007e06e971007e06eb71007e06ee71007e06f171007e06f471007e075871007e075c71007e077871007e078f71007e079371007e079971007e07b671007e07b971007e07bd71007e07c2787371007e06e40101740008416374697669747971007e06e07400007371007e000c77040000000f71007e000e7371007e000f010171007e000e71007e07e27400144a616d6573466c6f77315f576f72315f416374327071007e00127371007e000f010071007e001271007e07e2740012456d61696c20566572696669636174696f6e7074000b4465736372697074696f6e7371007e0028010071007e07ea71007e07e27400007400054c696d69747371007e048d010071007e07ed71007e07e274000071007e00707371007e06f3010171007e007071007e07e27400007371007e00370000000377040000000a7371007e06f70101740005526f75746571007e07f07400007371007e000c770400000000787371007e00370000000077040000000a787371007e06fd010174000e496d706c656d656e746174696f6e71007e07f07400007371007e000c77040000000171007e00707371007e0702010171007e007071007e07f87400007371007e00370000000377040000000a7371007e070601017400024e6f71007e07fc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e070c0100740005546f6f6c7371007e07fc7400007371007e000c770400000000787371007e00370000000177040000000a7371007e07120101740004546f6f6c71007e08047400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e080974001050656e7461686f5f41637469766974797071007e00707371007e000f010071007e007071007e080974000b4150504c49434154494f4e7371007e00370000000377040000000371007e004271007e071c71007e071d7874001041637475616c506172616d65746572737371007e071f010071007e081271007e08097400007371007e000c770400000000787371007e00370000000477040000000a7371007e0724010174000f41637475616c506172616d6574657271007e081374001950656e7461686f5f496e7374616e63655f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e081374001950656e7461686f5f536f6c7574696f6e5f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e081374001d226275727374696e672f73656e642d656d61696c2e78616374696f6e227371007e0724010174000f41637475616c506172616d6574657271007e0813740008556e757365645f317874000b4465736372697074696f6e7371007e0028010071007e082371007e0809740000740012457874656e646564417474726962757465737371007e0230010071007e082671007e08097400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000577040000000a71007e080d71007e080f71007e081371007e082471007e082778787371007e073a0101740007537562466c6f7771007e07fc7400007371007e000c77040000000371007e000e7371007e000f010171007e000e71007e082c7400007071007e07417371007e000f010071007e074171007e082c71007e00427371007e00370000000377040000000371007e004271007e074471007e07457874001041637475616c506172616d65746572737371007e071f010071007e083471007e082c7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000377040000000a71007e083071007e083271007e0835787871007e0804787371007e00370000000177040000000a71007e07fc787371007e074d010174000d426c6f636b416374697669747971007e07f07400007371007e000c77040000000171007e07527371007e000f010171007e075271007e083b74000070787371007e00370000000177040000000a71007e083f787871007e07f8740009506572666f726d65727371007e0757010071007e084271007e07e274001150656e7461686f4163746976697469657374000953746172744d6f64657371007e075b010071007e084571007e07e27400007371007e000c77040000000171007e00b57371007e075f010171007e00b571007e08467400007371007e00370000000377040000000a7371007e07630100740015584d4c456d70747943686f696365456c656d656e7471007e08497400007371007e000c770400000000787371007e00370000000077040000000a787371007e076901017400094175746f6d6174696371007e08497400007371007e000c770400000000787371007e00370000000077040000000a787371007e076f01017400064d616e75616c71007e08497400007371007e000c770400000000787371007e00370000000077040000000a787871007e0851787371007e00370000000177040000000a71007e08497874000a46696e6973684d6f64657371007e0777010071007e085c71007e07e27400007371007e000c77040000000171007e00b57371007e075f010171007e00b571007e085d7400007371007e00370000000377040000000a7371007e07630100740015584d4c456d70747943686f696365456c656d656e7471007e08607400007371007e000c770400000000787371007e00370000000077040000000a787371007e076901017400094175746f6d6174696371007e08607400007371007e000c770400000000787371007e00370000000077040000000a787371007e076f01017400064d616e75616c71007e08607400007371007e000c770400000000787371007e00370000000077040000000a787871007e0868787371007e00370000000177040000000a71007e0860787400085072696f726974797371007e0489010071007e087371007e07e2740000740009446561646c696e65737371007e0792010071007e087671007e07e27400007371007e000c770400000000787371007e00370000000077040000000a7874001553696d756c6174696f6e496e666f726d6174696f6e7371007e0798010071007e087b71007e07e27400007371007e000c77040000000371007e079c7371007e000f010071007e079c71007e087c71007e00427371007e00370000000377040000000371007e004271007e079f71007e07a078740004436f73747371007e07a2010171007e088171007e087c74000074000e54696d65457374696d6174696f6e7371007e0499010171007e088471007e087c7400007371007e000c77040000000374000b57616974696e6754696d657371007e049e010071007e088871007e088574000074000b576f726b696e6754696d657371007e04a2010071007e088b71007e08857400007400084475726174696f6e7371007e04a6010071007e088e71007e0885740000787371007e00370000000377040000000a71007e088971007e088c71007e088f78787371007e00370000000377040000000a71007e087f71007e088271007e08857874000449636f6e7371007e07b5010071007e089371007e07e274000074000d446f63756d656e746174696f6e7371007e002c010071007e089671007e07e27400007400165472616e736974696f6e5265737472696374696f6e737371007e07bc010071007e089971007e07e27400007371007e000c770400000000787371007e00370000000077040000000a78740012457874656e646564417474726962757465737371007e0230010071007e089e71007e07e27400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e089f7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08a374000d5061727469636970616e7449447071007e023c7371007e000f010071007e023c71007e08a374001150656e7461686f4163746976697469657370787371007e00370000000277040000000a71007e08a771007e08a9787371007e02350101740011457874656e64656441747472696275746571007e089f7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08ac740007584f66667365747071007e023c7371007e000f010071007e023c71007e08ac74000334373070787371007e00370000000277040000000a71007e08b071007e08b2787371007e02350101740011457874656e64656441747472696275746571007e089f7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08b5740007594f66667365747071007e023c7371007e000f010071007e023c71007e08b5740002363070787371007e00370000000277040000000a71007e08b971007e08bb787870787371007e00370000000f77040000001071007e07e671007e07e871007e07eb71007e07ee71007e07f071007e084371007e084671007e085d71007e087471007e087771007e087c71007e089471007e089771007e089a71007e089f787874000b5472616e736974696f6e737372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5472616e736974696f6e73ed393ee4c02f69af0200007871007e0058010071007e08bf71007e04657400007371007e000c770400000000787371007e00370000000177040000000a7372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5472616e736974696f6e037401a7780fb8850200007871007e0093010174000a5472616e736974696f6e71007e08c17400007371007e000c77040000000771007e000e7371007e000f010171007e000e71007e08c67400144a616d6573466c6f77315f576f72315f547261337071007e00127371007e000f010071007e001271007e08c67400007074000446726f6d7371007e000f010171007e08ce71007e08c674000947656e5265706f727470740002546f7371007e000f010171007e08d171007e08c67400144a616d6573466c6f77315f576f72315f4163743270740009436f6e646974696f6e737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f6e646974696f6edada0e786813b77b0200007871007e0004010071007e08d471007e08c67400007371007e000c77040000000171007e00707371007e000f010071007e007071007e08d671007e00427371007e00370000000577040000000571007e0042740009434f4e444954494f4e7400094f5448455257495345740009455843455054494f4e74001044454641554c54455843455054494f4e78787371007e00370000000177040000000a71007e08d97874000b4465736372697074696f6e7371007e0028010071007e08e071007e08c6740000740012457874656e646564417474726962757465737371007e0230010071007e08e371007e08c67400007371007e000c770400000000787371007e00370000000177040000000a7371007e02350101740011457874656e64656441747472696275746571007e08e47400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08e874000b526f7574696e67547970657071007e023c7371007e000f010071007e023c71007e08e87400094e4f524f5554494e4770787371007e00370000000277040000000a71007e08ec71007e08ee787870787371007e00370000000777040000000a71007e08ca71007e08cc71007e08cf71007e08d271007e08d671007e08e171007e08e47878740012457874656e646564417474726962757465737371007e0230010071007e08f271007e04657400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e08f37400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08f774000f53746172744f66576f726b666c6f777071007e023c7371007e000f010071007e023c71007e08f774002c50656e7461686f416374697669746965733b47656e5265706f72743b3131303b36303b4e4f524f5554494e4770787371007e00370000000277040000000a71007e08fb71007e08fd787371007e02350101740011457874656e64656441747472696275746571007e08f37400007371007e000c77040000000271007e00127371007e000f010171007e001271007e090074000d456e644f66576f726b666c6f777071007e023c7371007e000f010071007e023c71007e090074003750656e7461686f416374697669746965733b4a616d6573466c6f77315f576f72315f416374323b3635303b36303b4e4f524f5554494e4770787371007e00370000000277040000000a71007e090471007e0906787371007e02350101740011457874656e64656441747472696275746571007e08f37400007371007e000c77040000000271007e00127371007e000f010171007e001271007e09097400165061727469636970616e7456697375616c4f726465727071007e023c7371007e000f010071007e023c71007e090974001250656e7461686f416374697669746965733b70787371007e00370000000277040000000a71007e090d71007e090f787870787371007e00370000000d77040000001071007e046971007e046b71007e046e71007e047571007e04ac71007e04c571007e057871007e06a371007e06d471007e06da71007e06e071007e08c171007e08f37878740012457874656e646564417474726962757465737371007e0230010071007e091371007e00097400007371007e000c770400000000787371007e00370000000277040000000a7371007e02350101740011457874656e64656441747472696275746571007e09147400007371007e000c77040000000271007e00127371007e000f010171007e001271007e09187400064d61646542797071007e023c7371007e000f010071007e023c71007e09187400044a61574570787371007e00370000000277040000000a71007e091c71007e091e787371007e02350101740011457874656e64656441747472696275746571007e09147400007371007e000c77040000000271007e00127371007e000f010171007e001271007e092174000756657273696f6e7071007e023c7371007e000f010071007e023c71007e0921740005312e342e3270787371007e00370000000277040000000a71007e092571007e0927787870787371007e00370000000d77040000001071007e001071007e001371007e001771007e003b71007e006071007e006d71007e007c71007e008271007e008871007e008e71007e039071007e046071007e0914787371007e000c77040000000078740001317372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4e616d657370616365737c9ad13c2e52a7960200007871007e0058000174000a4e616d6573706163657371007e00097400007371007e000c770400000000787371007e00370000000177040000000a737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4e616d65737061636504e80f7ac2c2085f0200007871007e000400017400094e616d65737061636571007e092e7400007371007e000c77040000000271007e00127371007e000f000171007e001271007e09347400047870646c7071007e00eb7371007e000f000171007e00eb71007e0934740020687474703a2f2f7777772e77666d632e6f72672f323030322f5850444c312e3070787371007e00370000000277040000000a71007e093871007e093a7878	1000404	1	1000405	0
3c3f786d6c2076657273696f6e3d22312e302220656e636f64696e673d225554462d38223f3e0a3c5061636b61676520786d6c6e733a7873693d22687474703a2f2f7777772e77332e6f72672f323030312f584d4c536368656d612d696e7374616e6365220a202020202020202020786d6c6e733a7870646c3d22687474703a2f2f7777772e77666d632e6f72672f323030322f5850444c312e30220a20202020202020202049643d224275727374696e674578616d706c6573220a2020202020202020204e616d653d224275727374696e67204578616d706c6573220a2020202020202020207873693a736368656d614c6f636174696f6e3d22687474703a2f2f7777772e77666d632e6f72672f323030322f5850444c312e3020687474703a2f2f77666d632e6f72672f7374616e64617264732f646f63732f54432d313032355f736368656d615f31305f7870646c2e787364223e0a2020203c5061636b6167654865616465723e0a2020202020203c5850444c56657273696f6e3e312e303c2f5850444c56657273696f6e3e0a2020202020203c56656e646f723e50656e7461686f3c2f56656e646f723e0a2020202020203c437265617465643e323030352d30342d31382031313a33363a35343c2f437265617465643e0a2020203c2f5061636b6167654865616465723e0a2020203c5265646566696e61626c65486561646572205075626c69636174696f6e5374617475733d22554e4445525f54455354222f3e0a2020203c436f6e666f726d616e6365436c617373204772617068436f6e666f726d616e63653d224e4f4e5f424c4f434b4544222f3e0a2020203c53637269707420547970653d22746578742f6a617661736372697074222f3e0a2020203c4170706c69636174696f6e733e0a2020202020203c4170706c69636174696f6e2049643d2250656e7461686f5f416374697669747922204e616d653d2250656e7461686f204163746976697479223e0a2020202020202020203c466f726d616c506172616d65746572733e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22696e7374616e63652d69642220496e6465783d223122204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22736f6c7574696f6e2220496e6465783d223222204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22616374696f6e2220496e6465783d223322204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d227363726970742d726573756c742220496e6465783d223422204d6f64653d224f5554223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020203c2f466f726d616c506172616d65746572733e0a2020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d22546f6f6c4167656e74436c617373222056616c75653d226f72672e70656e7461686f2e706c7567696e2e736861726b2e536861726b546f6f6c4167656e74222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d2250656e7461686f5f41637469766974795f55524c222056616c75653d22687474703a2f2f6c6f63616c686f73743a383038302f70656e7461686f2f53657276696365416374696f6e222f3e0a2020202020202020203c2f457874656e646564417474726962757465733e0a2020202020203c2f4170706c69636174696f6e3e0a2020202020203c4170706c69636174696f6e2049643d2253656e645f456d61696c22204e616d653d2253656e6420456d61696c223e0a2020202020202020203c466f726d616c506172616d65746572733e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22646573745f616464722220496e6465783d223122204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d227375626a6563742220496e6465783d223222204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d22636f6e74656e742220496e6465783d223322204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020203c2f466f726d616c506172616d65746572733e0a2020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d22546f6f6c4167656e74436c617373222056616c75653d226f72672e656e68796472612e736861726b2e746f6f6c6167656e742e4d61696c546f6f6c4167656e74222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d224170704e616d65222056616c75653d226f72672e656e68796472612e736861726b2e746f6f6c6167656e742e44656661756c744d61696c4d65737361676548616e646c6572222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d224170704d6f6465222056616c75653d2230222f3e0a2020202020202020203c2f457874656e646564417474726962757465733e0a2020202020203c2f4170706c69636174696f6e3e0a2020203c2f4170706c69636174696f6e733e0a2020203c446174614669656c64733e0a2020202020203c446174614669656c642049643d2250656e7461686f5f536f6c7574696f6e5f49642220497341727261793d2246414c534522204e616d653d2250656e7461686f20536f6c7574696f6e204964223e0a2020202020202020203c44617461547970653e0a2020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020203c2f44617461547970653e0a2020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020203c2f446174614669656c643e0a2020202020203c446174614669656c642049643d2250656e7461686f5f496e7374616e63655f49642220497341727261793d2246414c534522204e616d653d2250656e7461686f20496e7374616e6365204964223e0a2020202020202020203c44617461547970653e0a2020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020203c2f44617461547970653e0a2020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020203c2f446174614669656c643e0a2020203c2f446174614669656c64733e0a2020203c576f726b666c6f7750726f6365737365733e0a2020202020203c576f726b666c6f7750726f63657373204163636573734c6576656c3d225055424c4943222049643d2247656e5265706f7274416e64456d61696c22204e616d653d2247656e6572617465205265706f727420616e6420456d61696c223e0a2020202020202020203c50726f63657373486561646572204475726174696f6e556e69743d2244223e0a2020202020202020202020203c437265617465643e323030352d30342d31382031343a32323a33343c2f437265617465643e0a2020202020202020203c2f50726f636573734865616465723e0a2020202020202020203c5265646566696e61626c65486561646572205075626c69636174696f6e5374617475733d22554e4445525f54455354222f3e0a2020202020202020203c466f726d616c506172616d65746572733e0a2020202020202020202020203c466f726d616c506172616d657465722049643d2250656e7461686f5f536f6c7574696f6e5f49645f506172616d2220496e6465783d223122204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020202020203c466f726d616c506172616d657465722049643d2250656e7461686f5f496e7374616e63655f49645f506172616d2220496e6465783d223222204d6f64653d22494e223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020203c2f466f726d616c506172616d657465723e0a2020202020202020203c2f466f726d616c506172616d65746572733e0a2020202020202020203c446174614669656c64733e0a2020202020202020202020203c446174614669656c642049643d22556e757365645f312220497341727261793d2246414c534522204e616d653d22556e757365642031223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020202020202020203c2f446174614669656c643e0a2020202020202020202020203c446174614669656c642049643d22556e757365645f322220497341727261793d2246414c534522204e616d653d22556e757365642032223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020202020202020203c2f446174614669656c643e0a2020202020202020202020203c446174614669656c642049643d22556e757365645f332220497341727261793d2246414c534522204e616d653d22556e757365642033223e0a2020202020202020202020202020203c44617461547970653e0a2020202020202020202020202020202020203c42617369635479706520547970653d22535452494e47222f3e0a2020202020202020202020202020203c2f44617461547970653e0a2020202020202020202020202020203c4c656e6774683e35303c2f4c656e6774683e0a2020202020202020202020203c2f446174614669656c643e0a2020202020202020203c2f446174614669656c64733e0a2020202020202020203c5061727469636970616e74733e0a2020202020202020202020203c5061727469636970616e742049643d2250656e7461686f41637469766974696573223e0a2020202020202020202020202020203c5061727469636970616e745479706520547970653d2253595354454d222f3e0a2020202020202020202020203c2f5061727469636970616e743e0a2020202020202020203c2f5061727469636970616e74733e0a2020202020202020203c416374697669746965733e0a2020202020202020202020203c41637469766974792049643d2247656e5265706f727422204e616d653d2247656e6572617465205265706f7274223e0a2020202020202020202020202020203c496d706c656d656e746174696f6e3e0a2020202020202020202020202020202020203c546f6f6c2049643d2250656e7461686f5f41637469766974792220547970653d224150504c49434154494f4e223e0a2020202020202020202020202020202020202020203c41637475616c506172616d65746572733e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f496e7374616e63655f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f536f6c7574696f6e5f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e226275727374696e672f7265706f72742e78616374696f6e223c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e556e757365645f313c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020203c2f41637475616c506172616d65746572733e0a2020202020202020202020202020202020203c2f546f6f6c3e0a2020202020202020202020202020203c2f496d706c656d656e746174696f6e3e0a2020202020202020202020202020203c506572666f726d65723e50656e7461686f416374697669746965733c2f506572666f726d65723e0a2020202020202020202020202020203c53746172744d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f53746172744d6f64653e0a2020202020202020202020202020203c46696e6973684d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f46696e6973684d6f64653e0a2020202020202020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d225061727469636970616e744944222056616c75653d2250656e7461686f41637469766974696573222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22584f6666736574222056616c75653d22323530222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22594f6666736574222056616c75653d223630222f3e0a2020202020202020202020202020203c2f457874656e646564417474726962757465733e0a2020202020202020202020203c2f41637469766974793e0a2020202020202020202020203c41637469766974792049643d224a616d6573466c6f77315f576f72315f4163743222204e616d653d22456d61696c20566572696669636174696f6e223e0a2020202020202020202020202020203c496d706c656d656e746174696f6e3e0a2020202020202020202020202020202020203c546f6f6c2049643d2250656e7461686f5f41637469766974792220547970653d224150504c49434154494f4e223e0a2020202020202020202020202020202020202020203c41637475616c506172616d65746572733e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f496e7374616e63655f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e50656e7461686f5f536f6c7574696f6e5f49645f506172616d3c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e226275727374696e672f73656e642d656d61696c2e78616374696f6e223c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020202020203c41637475616c506172616d657465723e556e757365645f313c2f41637475616c506172616d657465723e0a2020202020202020202020202020202020202020203c2f41637475616c506172616d65746572733e0a2020202020202020202020202020202020203c2f546f6f6c3e0a2020202020202020202020202020203c2f496d706c656d656e746174696f6e3e0a2020202020202020202020202020203c506572666f726d65723e50656e7461686f416374697669746965733c2f506572666f726d65723e0a2020202020202020202020202020203c53746172744d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f53746172744d6f64653e0a2020202020202020202020202020203c46696e6973684d6f64653e0a2020202020202020202020202020202020203c4175746f6d617469632f3e0a2020202020202020202020202020203c2f46696e6973684d6f64653e0a2020202020202020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d225061727469636970616e744944222056616c75653d2250656e7461686f41637469766974696573222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22584f6666736574222056616c75653d22343730222f3e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22594f6666736574222056616c75653d223630222f3e0a2020202020202020202020202020203c2f457874656e646564417474726962757465733e0a2020202020202020202020203c2f41637469766974793e0a2020202020202020203c2f416374697669746965733e0a2020202020202020203c5472616e736974696f6e733e0a2020202020202020202020203c5472616e736974696f6e2046726f6d3d2247656e5265706f7274222049643d224a616d6573466c6f77315f576f72315f547261332220546f3d224a616d6573466c6f77315f576f72315f41637432223e0a2020202020202020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020202020202020203c457874656e646564417474726962757465204e616d653d22526f7574696e6754797065222056616c75653d224e4f524f5554494e47222f3e0a2020202020202020202020202020203c2f457874656e646564417474726962757465733e0a2020202020202020202020203c2f5472616e736974696f6e3e0a2020202020202020203c2f5472616e736974696f6e733e0a2020202020202020203c457874656e646564417474726962757465733e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d2253746172744f66576f726b666c6f77222056616c75653d2250656e7461686f416374697669746965733b47656e5265706f72743b3131303b36303b4e4f524f5554494e47222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d22456e644f66576f726b666c6f77220a2020202020202020202020202020202020202020202020202020202020202056616c75653d2250656e7461686f416374697669746965733b4a616d6573466c6f77315f576f72315f416374323b3635303b36303b4e4f524f5554494e47222f3e0a2020202020202020202020203c457874656e646564417474726962757465204e616d653d225061727469636970616e7456697375616c4f72646572222056616c75653d2250656e7461686f416374697669746965733b222f3e0a2020202020202020203c2f457874656e646564417474726962757465733e0a2020202020203c2f576f726b666c6f7750726f636573733e0a2020203c2f576f726b666c6f7750726f6365737365733e0a2020203c457874656e646564417474726962757465733e0a2020202020203c457874656e646564417474726962757465204e616d653d224d6164654279222056616c75653d224a615745222f3e0a2020202020203c457874656e646564417474726962757465204e616d653d2256657273696f6e222056616c75653d22312e342e32222f3e0a2020203c2f457874656e646564417474726962757465733e0a3c2f5061636b6167653e	aced0005737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061636b616765ab748ee56fa473bb0200034c000f657874506b6752656673546f49647374002e4c6f72672f656e68796472612f736861726b2f7574696c69746965732f53657175656e636564486173684d61703b4c000f696e7465726e616c56657273696f6e7400124c6a6176612f6c616e672f537472696e673b4c000a6e616d6573706163657374002c4c6f72672f656e68796472612f736861726b2f7870646c2f656c656d656e74732f4e616d657370616365733b787200286f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6d706c6578456c656d656e74d956e140ed48dcec020000787200356f72672e656e68796472612e736861726b2e7870646c2e584d4c42617365466f72436f6c6c656374696f6e416e64436f6d706c657814d5f8368930752d0200024c000a656c656d656e744d617071007e00014c0008656c656d656e74737400154c6a6176612f7574696c2f41727261794c6973743b787200216f72672e656e68796472612e736861726b2e7870646c2e584d4c456c656d656e742c033ff0a2ad60040200055a000a6973526561644f6e6c795a000a697352657175697265644c00046e616d6571007e00024c0006706172656e747400234c6f72672f656e68796472612f736861726b2f7870646c2f584d4c456c656d656e743b4c000576616c756571007e0002787001017400075061636b616765707400007372002c6f72672e656e68796472612e736861726b2e7574696c69746965732e53657175656e636564486173684d61702eea2293a92226120c0000787077040000000d7400024964737200236f72672e656e68796472612e736861726b2e7870646c2e584d4c4174747269627574652363dd80fecb4d3b0200014c000763686f6963657371007e00067871007e0007010171007e000e71007e00097400104275727374696e674578616d706c6573707400044e616d657371007e000f010071007e001271007e00097400114275727374696e67204578616d706c65737074000d5061636b6167654865616465727372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061636b6167654865616465721776e9922ced92ef0200007871007e0004010171007e001571007e00097400007371007e000c77040000000774000b5850444c56657273696f6e7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5850444c56657273696f6ef7227dd7592ec577020000787200276f72672e656e68796472612e736861726b2e7870646c2e584d4c53696d706c65456c656d656e743b46b9bca9c7564a0200007871007e0007010171007e001a71007e0017740003312e3074000656656e646f72737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56656e646f722074f8ea0645b33a0200007871007e001c010171007e001f71007e001774000750656e7461686f74000743726561746564737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e437265617465647acaf4644bbb7c5b0200007871007e001c010171007e002371007e0017740013323030352d30342d31382031313a33363a353474000b4465736372697074696f6e7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4465736372697074696f6edbb03733e63806fb0200007871007e001c010071007e002771007e001774000074000d446f63756d656e746174696f6e7372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446f63756d656e746174696f6e60c439bbd7797f920200007871007e001c010071007e002b71007e001774000074000c5072696f72697479556e69747372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5072696f72697479556e697498b39be89bf8e4e50200007871007e001c010071007e002f71007e0017740000740008436f7374556e6974737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f7374556e6974dc8ed93d48e18c080200007871007e001c010071007e003371007e001774000078737200136a6176612e7574696c2e41727261794c6973747881d21d99c7619d03000149000473697a6578700000000777040000000a71007e001d71007e002171007e002571007e002971007e002d71007e003171007e0035787400115265646566696e61626c65486561646572737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5265646566696e61626c6548656164657299bf4debcfaa27480200007871007e0004010071007e003971007e00097400007371007e000c7704000000067400115075626c69636174696f6e5374617475737371007e000f010071007e003e71007e003b74000a554e4445525f544553547371007e00370000000477040000000474000074000e554e4445525f5245564953494f4e74000852454c454153454474000a554e4445525f5445535478740006417574686f72737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e417574686f72350ecac466e1a7860200007871007e001c010071007e004671007e003b74000074000756657273696f6e737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56657273696f6e393d33b47ebb4a510200007871007e001c010071007e004a71007e003b740000740008436f646570616765737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f64657061676539246df765bd0d470200007871007e001c010071007e004e71007e003b74000074000a436f756e7472796b65797372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f756e7472796b6579978b2e8117d0d2d10200007871007e001c010071007e005271007e003b74000074000c526573706f6e7369626c65737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e526573706f6e7369626c657324ef1eea7b53c612020000787200246f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6c6c656374696f6ec36263ab689e6a950200007871007e0005010071007e005671007e003b7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000677040000000a71007e003f71007e004871007e004c71007e005071007e005471007e005978740010436f6e666f726d616e6365436c617373737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f6e666f726d616e6365436c617373d7ec79307c6bab940200007871007e0004010071007e005e71007e00097400007371007e000c7704000000017400104772617068436f6e666f726d616e63657371007e000f010071007e006371007e006074000b4e4f4e5f424c4f434b45447371007e00370000000477040000000471007e004274000c46554c4c5f424c4f434b454474000c4c4f4f505f424c4f434b454474000b4e4f4e5f424c4f434b454478787371007e00370000000177040000000a71007e006478740006536372697074737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e53637269707451a66a0ce753e3380200007871007e0004010071007e006b71007e00097400007371007e000c770400000003740004547970657371007e000f010171007e007071007e006d74000f746578742f6a6176617363726970747074000756657273696f6e7371007e000f010071007e007371007e006d740000707400074772616d6d61727371007e000f010071007e007671007e006d74000070787371007e00370000000377040000000a71007e007171007e007471007e00777874001045787465726e616c5061636b61676573737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e45787465726e616c5061636b6167657377c0222bc5a8a8890200007871007e0058010071007e007a71007e00097400007371007e000c770400000000787371007e00370000000077040000000a78740010547970654465636c61726174696f6e73737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e547970654465636c61726174696f6e730de1ca4f783510cd0200007871007e0058010071007e008071007e00097400007371007e000c770400000000787371007e00370000000077040000000a7874000c5061727469636970616e74737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061727469636970616e74736860b7f00267384a0200007871007e0058010071007e008671007e00097400007371007e000c770400000000787371007e00370000000077040000000a7874000c4170706c69636174696f6e737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4170706c69636174696f6e73c280b41419def6bc0200007871007e0058010071007e008c71007e00097400007371007e000c770400000000787371007e00370000000277040000000a7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4170706c69636174696f6e1d7609a252f9fe530200007872002b6f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6c6c656374696f6e456c656d656e7497210b605e7b14d80200007871007e0004010174000b4170706c69636174696f6e71007e008e7400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e009474001050656e7461686f5f41637469766974797071007e00127371007e000f010071007e001271007e009474001050656e7461686f2041637469766974797074000b4465736372697074696f6e7371007e0028010071007e009c71007e009474000074000643686f696365737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4170706c69636174696f6e54797065738f3ffb2107adaea6020000787200276f72672e656e68796472612e736861726b2e7870646c2e584d4c436f6d706c657843686f696365ac9cbd02f0bf78e60200024c000763686f6963657371007e00064c000763686f6f73656e71007e00087871007e0007010171007e009f71007e00947400007371007e00370000000277040000000a737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e466f726d616c506172616d657465727370bac442c7c3815a0200007871007e00580100740010466f726d616c506172616d657465727371007e00a27400007371007e000c770400000000787371007e00370000000477040000000a7372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e466f726d616c506172616d6574657208e5d343eda0b9800200007871007e0093010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e00ac74000b696e7374616e63652d696470740005496e6465787371007e000f010071007e00b271007e00ac74000131707400044d6f64657371007e000f010171007e00b571007e00ac740002494e7371007e003700000003770400000003740002494e7400034f5554740005494e4f5554787400084461746154797065737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4461746154797065862734730b0e0c4d0200007871007e0004010171007e00bc71007e00ac7400007371007e000c77040000000171007e0070737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446174615479706573b70d65f6a271b2ae0200015a000d6973496e697469616c697a65647871007e00a1010171007e007071007e00be7400007371007e00370000000977040000000a737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e426173696354797065b729a8bd7731bf8e0200007871007e0004010174000942617369635479706571007e00c27400007371007e000c77040000000171007e00707371007e000f010171007e007071007e00c6740006535452494e477371007e003700000007770400000007740006535452494e47740005464c4f4154740007494e54454745527400095245464552454e43457400084441544554494d45740007424f4f4c45414e740009504552464f524d455278787371007e00370000000177040000000a71007e00ca787372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4465636c617265645479706564522e5c5ee839920200007871007e0004010174000c4465636c617265645479706571007e00c27400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e00d674000070787371007e00370000000177040000000a71007e00da787372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e536368656d6154797065790e4ea9812e7c290200007871007e0004010174000a536368656d615479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a78737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e45787465726e616c5265666572656e636586620fe8b7c151cf0200007871007e0004010174001145787465726e616c5265666572656e636571007e00c27400007371007e000c770400000003740004787265667371007e000f010071007e00e871007e00e4740000707400086c6f636174696f6e7371007e000f010171007e00eb71007e00e4740000707400096e616d6573706163657371007e000f010071007e00ee71007e00e474000070787371007e00370000000377040000000a71007e00e971007e00ec71007e00ef787372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5265636f726454797065f525a8bda9eb4b000200007871007e0058010174000a5265636f72645479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a78737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e556e696f6e54797065b4daef3550ce47fa0200007871007e00580101740009556e696f6e5479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a787372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e456e756d65726174696f6e54797065aadaf0de66330c620200007871007e0058010174000f456e756d65726174696f6e5479706571007e00c27400007371007e000c770400000000787371007e00370000000077040000000a78737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41727261795479706567ac2400ad1c4e400200007871007e0004010174000941727261795479706571007e00c27400007371007e000c77040000000374000a4c6f776572496e6465787371007e000f010171007e010971007e01057400007074000a5570706572496e6465787371007e000f010171007e010c71007e01057400007071007e00707371007e00c1010171007e007071007e0105740000707001787371007e00370000000377040000000a71007e010a71007e010d71007e010f78737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4c697374547970659f22d39f0a10ae050200007871007e000401017400084c6973745479706571007e00c27400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0113740000707001787371007e00370000000177040000000a71007e0117787871007e00c601787371007e00370000000177040000000a71007e00c27874000b4465736372697074696f6e7371007e0028010071007e011b71007e00ac740000787371007e00370000000577040000000a71007e00b071007e00b371007e00b671007e00be71007e011c787371007e00ab010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e011f740008736f6c7574696f6e7071007e00b27371007e000f010071007e00b271007e011f740001327071007e00b57371007e000f010171007e00b571007e011f740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e012a71007e011f7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e012b7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e012e7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0131740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0135787371007e00d5010174000c4465636c617265645479706571007e012e7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e013974000070787371007e00370000000177040000000a71007e013d787371007e00dd010174000a536368656d615479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e012e7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e01457400007071007e00eb7371007e000f010171007e00eb71007e01457400007071007e00ee7371007e000f010071007e00ee71007e014574000070787371007e00370000000377040000000a71007e014971007e014b71007e014d787371007e00f2010174000a5265636f72645479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e012e7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e012e7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e015f7400007071007e010c7371007e000f010171007e010c71007e015f7400007071007e00707371007e00c1010171007e007071007e015f740000707001787371007e00370000000377040000000a71007e016371007e016571007e0167787371007e011201017400084c6973745479706571007e012e7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e016a740000707001787371007e00370000000177040000000a71007e016e787871007e013101787371007e00370000000177040000000a71007e012e7874000b4465736372697074696f6e7371007e0028010071007e017271007e011f740000787371007e00370000000577040000000a71007e012371007e012571007e012771007e012b71007e0173787371007e00ab010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e0176740006616374696f6e7071007e00b27371007e000f010071007e00b271007e0176740001337071007e00b57371007e000f010171007e00b571007e0176740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e018171007e01767400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e01827400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e01857400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0188740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e018c787371007e00d5010174000c4465636c617265645479706571007e01857400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e019074000070787371007e00370000000177040000000a71007e0194787371007e00dd010174000a536368656d615479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e01857400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e019c7400007071007e00eb7371007e000f010171007e00eb71007e019c7400007071007e00ee7371007e000f010071007e00ee71007e019c74000070787371007e00370000000377040000000a71007e01a071007e01a271007e01a4787371007e00f2010174000a5265636f72645479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e01857400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e01857400007371007e000c77040000000371007e01097371007e000f010171007e010971007e01b67400007071007e010c7371007e000f010171007e010c71007e01b67400007071007e00707371007e00c1010171007e007071007e01b6740000707001787371007e00370000000377040000000a71007e01ba71007e01bc71007e01be787371007e011201017400084c6973745479706571007e01857400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e01c1740000707001787371007e00370000000177040000000a71007e01c5787871007e018801787371007e00370000000177040000000a71007e01857874000b4465736372697074696f6e7371007e0028010071007e01c971007e0176740000787371007e00370000000577040000000a71007e017a71007e017c71007e017e71007e018271007e01ca787371007e00ab010174000f466f726d616c506172616d6574657271007e00a67400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e01cd74000d7363726970742d726573756c747071007e00b27371007e000f010071007e00b271007e01cd740001347071007e00b57371007e000f010171007e00b571007e01cd7400034f55547371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e01d871007e01cd7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e01d97400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e01dc7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e01df740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e01e3787371007e00d5010174000c4465636c617265645479706571007e01dc7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e01e774000070787371007e00370000000177040000000a71007e01eb787371007e00dd010174000a536368656d615479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e01dc7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e01f37400007071007e00eb7371007e000f010171007e00eb71007e01f37400007071007e00ee7371007e000f010071007e00ee71007e01f374000070787371007e00370000000377040000000a71007e01f771007e01f971007e01fb787371007e00f2010174000a5265636f72645479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e01dc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e01dc7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e020d7400007071007e010c7371007e000f010171007e010c71007e020d7400007071007e00707371007e00c1010171007e007071007e020d740000707001787371007e00370000000377040000000a71007e021171007e021371007e0215787371007e011201017400084c6973745479706571007e01dc7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0218740000707001787371007e00370000000177040000000a71007e021c787871007e01df01787371007e00370000000177040000000a71007e01dc7874000b4465736372697074696f6e7371007e0028010071007e022071007e01cd740000787371007e00370000000577040000000a71007e01d171007e01d371007e01d571007e01d971007e022178787371007e00e3010074001145787465726e616c5265666572656e636571007e00a27400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e02247400007071007e00eb7371007e000f010171007e00eb71007e02247400007071007e00ee7371007e000f010071007e00ee71007e022474000070787371007e00370000000377040000000a71007e022871007e022a71007e022c787871007e00a6740012457874656e64656441747472696275746573737200326f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e457874656e64656441747472696275746573750c9e705d73391e0200014c001065787441747472696273537472696e6771007e00027871007e0058010071007e022f71007e00947400007371007e000c770400000000787371007e00370000000277040000000a737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e457874656e6465644174747269627574650139f5c0d684d2930200007871007e00040101740011457874656e64656441747472696275746571007e02317400007371007e000c77040000000271007e00127371007e000f010171007e001271007e023674000e546f6f6c4167656e74436c6173737074000556616c75657371007e000f010071007e023c71007e02367400276f72672e70656e7461686f2e706c7567696e2e736861726b2e536861726b546f6f6c4167656e7470787371007e00370000000277040000000a71007e023a71007e023d787371007e02350101740011457874656e64656441747472696275746571007e02317400007371007e000c77040000000271007e00127371007e000f010171007e001271007e024074001450656e7461686f5f41637469766974795f55524c7071007e023c7371007e000f010071007e023c71007e024074002b687474703a2f2f6c6f63616c686f73743a383038302f70656e7461686f2f53657276696365416374696f6e70787371007e00370000000277040000000a71007e024471007e0246787870787371007e00370000000577040000000a71007e009871007e009a71007e009d71007e00a271007e0231787371007e0092010174000b4170706c69636174696f6e71007e008e7400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e024a74000a53656e645f456d61696c7071007e00127371007e000f010071007e001271007e024a74000a53656e6420456d61696c7074000b4465736372697074696f6e7371007e0028010071007e025271007e024a74000071007e009f7371007e00a0010171007e009f71007e024a7400007371007e00370000000277040000000a7371007e00a50100740010466f726d616c506172616d657465727371007e02557400007371007e000c770400000000787371007e00370000000377040000000a7371007e00ab010174000f466f726d616c506172616d6574657271007e02587400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e025d740009646573745f616464727071007e00b27371007e000f010071007e00b271007e025d740001317071007e00b57371007e000f010171007e00b571007e025d740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e026871007e025d7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02697400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e026c7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e026f740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0273787371007e00d5010174000c4465636c617265645479706571007e026c7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e027774000070787371007e00370000000177040000000a71007e027b787371007e00dd010174000a536368656d615479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e026c7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e02837400007071007e00eb7371007e000f010171007e00eb71007e02837400007071007e00ee7371007e000f010071007e00ee71007e028374000070787371007e00370000000377040000000a71007e028771007e028971007e028b787371007e00f2010174000a5265636f72645479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e026c7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e026c7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e029d7400007071007e010c7371007e000f010171007e010c71007e029d7400007071007e00707371007e00c1010171007e007071007e029d740000707001787371007e00370000000377040000000a71007e02a171007e02a371007e02a5787371007e011201017400084c6973745479706571007e026c7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02a8740000707001787371007e00370000000177040000000a71007e02ac787871007e026f01787371007e00370000000177040000000a71007e026c7874000b4465736372697074696f6e7371007e0028010071007e02b071007e025d740000787371007e00370000000577040000000a71007e026171007e026371007e026571007e026971007e02b1787371007e00ab010174000f466f726d616c506172616d6574657271007e02587400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e02b47400077375626a6563747071007e00b27371007e000f010071007e00b271007e02b4740001327071007e00b57371007e000f010171007e00b571007e02b4740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e02bf71007e02b47400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02c07400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e02c37400007371007e000c77040000000171007e00707371007e000f010171007e007071007e02c6740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e02ca787371007e00d5010174000c4465636c617265645479706571007e02c37400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e02ce74000070787371007e00370000000177040000000a71007e02d2787371007e00dd010174000a536368656d615479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e02c37400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e02da7400007071007e00eb7371007e000f010171007e00eb71007e02da7400007071007e00ee7371007e000f010071007e00ee71007e02da74000070787371007e00370000000377040000000a71007e02de71007e02e071007e02e2787371007e00f2010174000a5265636f72645479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e02c37400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e02c37400007371007e000c77040000000371007e01097371007e000f010171007e010971007e02f47400007071007e010c7371007e000f010171007e010c71007e02f47400007071007e00707371007e00c1010171007e007071007e02f4740000707001787371007e00370000000377040000000a71007e02f871007e02fa71007e02fc787371007e011201017400084c6973745479706571007e02c37400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e02ff740000707001787371007e00370000000177040000000a71007e0303787871007e02c601787371007e00370000000177040000000a71007e02c37874000b4465736372697074696f6e7371007e0028010071007e030771007e02b4740000787371007e00370000000577040000000a71007e02b871007e02ba71007e02bc71007e02c071007e0308787371007e00ab010174000f466f726d616c506172616d6574657271007e02587400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e030b740007636f6e74656e747071007e00b27371007e000f010071007e00b271007e030b740001337071007e00b57371007e000f010171007e00b571007e030b740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e031671007e030b7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e03177400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e031a7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e031d740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0321787371007e00d5010174000c4465636c617265645479706571007e031a7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e032574000070787371007e00370000000177040000000a71007e0329787371007e00dd010174000a536368656d615479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e031a7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e03317400007071007e00eb7371007e000f010171007e00eb71007e03317400007071007e00ee7371007e000f010071007e00ee71007e033174000070787371007e00370000000377040000000a71007e033571007e033771007e0339787371007e00f2010174000a5265636f72645479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e031a7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e031a7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e034b7400007071007e010c7371007e000f010171007e010c71007e034b7400007071007e00707371007e00c1010171007e007071007e034b740000707001787371007e00370000000377040000000a71007e034f71007e035171007e0353787371007e011201017400084c6973745479706571007e031a7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0356740000707001787371007e00370000000177040000000a71007e035a787871007e031d01787371007e00370000000177040000000a71007e031a7874000b4465736372697074696f6e7371007e0028010071007e035e71007e030b740000787371007e00370000000577040000000a71007e030f71007e031171007e031371007e031771007e035f78787371007e00e3010074001145787465726e616c5265666572656e636571007e02557400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e03627400007071007e00eb7371007e000f010171007e00eb71007e03627400007071007e00ee7371007e000f010071007e00ee71007e036274000070787371007e00370000000377040000000a71007e036671007e036871007e036a787871007e0258740012457874656e646564417474726962757465737371007e0230010071007e036d71007e024a7400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e036e7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e037274000e546f6f6c4167656e74436c6173737071007e023c7371007e000f010071007e023c71007e03727400296f72672e656e68796472612e736861726b2e746f6f6c6167656e742e4d61696c546f6f6c4167656e7470787371007e00370000000277040000000a71007e037671007e0378787371007e02350101740011457874656e64656441747472696275746571007e036e7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e037b7400074170704e616d657071007e023c7371007e000f010071007e023c71007e037b7400356f72672e656e68796472612e736861726b2e746f6f6c6167656e742e44656661756c744d61696c4d65737361676548616e646c657270787371007e00370000000277040000000a71007e037f71007e0381787371007e02350101740011457874656e64656441747472696275746571007e036e7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e03847400074170704d6f64657071007e023c7371007e000f010071007e023c71007e03847400013070787371007e00370000000277040000000a71007e038871007e038a787870787371007e00370000000577040000000a71007e024e71007e025071007e025371007e025571007e036e787874000a446174614669656c64737372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446174614669656c6473bdb592caa6d4fa550200007871007e0058010071007e038e71007e00097400007371007e000c770400000000787371007e00370000000277040000000a737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446174614669656c6449d2332e7e91adf70200007871007e00930101740009446174614669656c6471007e03907400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e039574001350656e7461686f5f536f6c7574696f6e5f49647071007e00127371007e000f010071007e001271007e039574001350656e7461686f20536f6c7574696f6e20496470740007497341727261797371007e000f010071007e039d71007e039574000546414c53457371007e0037000000027704000000027400045452554574000546414c53457874000844617461547970657371007e00bd010171007e03a371007e03957400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e03a47400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e03a77400007371007e000c77040000000171007e00707371007e000f010171007e007071007e03aa740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e03ae787371007e00d5010174000c4465636c617265645479706571007e03a77400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e03b274000070787371007e00370000000177040000000a71007e03b6787371007e00dd010174000a536368656d615479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e03a77400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e03be7400007071007e00eb7371007e000f010171007e00eb71007e03be7400007071007e00ee7371007e000f010071007e00ee71007e03be74000070787371007e00370000000377040000000a71007e03c271007e03c471007e03c6787371007e00f2010174000a5265636f72645479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e03a77400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e03a77400007371007e000c77040000000371007e01097371007e000f010171007e010971007e03d87400007071007e010c7371007e000f010171007e010c71007e03d87400007071007e00707371007e00c1010171007e007071007e03d8740000707001787371007e00370000000377040000000a71007e03dc71007e03de71007e03e0787371007e011201017400084c6973745479706571007e03a77400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e03e3740000707001787371007e00370000000177040000000a71007e03e7787871007e03aa01787371007e00370000000177040000000a71007e03a77874000c496e697469616c56616c75657372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e496e697469616c56616c75656a2c7a17fb949c520200007871007e001c010071007e03eb71007e03957400007400064c656e677468737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4c656e6774684d572b2dcca957dc0200007871007e001c010071007e03ef71007e0395740002353074000b4465736372697074696f6e7371007e0028010071007e03f371007e0395740000740012457874656e646564417474726962757465737371007e0230010071007e03f671007e03957400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e039971007e039b71007e039e71007e03a471007e03ed71007e03f171007e03f471007e03f7787371007e03940101740009446174614669656c6471007e03907400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e03fc74001350656e7461686f5f496e7374616e63655f49647071007e00127371007e000f010071007e001271007e03fc74001350656e7461686f20496e7374616e63652049647071007e039d7371007e000f010071007e039d71007e03fc74000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e040771007e03fc7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e04087400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e040b7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e040e740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0412787371007e00d5010174000c4465636c617265645479706571007e040b7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e041674000070787371007e00370000000177040000000a71007e041a787371007e00dd010174000a536368656d615479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e040b7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e04227400007071007e00eb7371007e000f010171007e00eb71007e04227400007071007e00ee7371007e000f010071007e00ee71007e042274000070787371007e00370000000377040000000a71007e042671007e042871007e042a787371007e00f2010174000a5265636f72645479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e040b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e040b7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e043c7400007071007e010c7371007e000f010171007e010c71007e043c7400007071007e00707371007e00c1010171007e007071007e043c740000707001787371007e00370000000377040000000a71007e044071007e044271007e0444787371007e011201017400084c6973745479706571007e040b7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0447740000707001787371007e00370000000177040000000a71007e044b787871007e040e01787371007e00370000000177040000000a71007e040b7874000c496e697469616c56616c75657371007e03ec010071007e044f71007e03fc7400007400064c656e6774687371007e03f0010071007e045271007e03fc740002353074000b4465736372697074696f6e7371007e0028010071007e045571007e03fc740000740012457874656e646564417474726962757465737371007e0230010071007e045871007e03fc7400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e040071007e040271007e040471007e040871007e045071007e045371007e045671007e04597878740011576f726b666c6f7750726f636573736573737200316f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e576f726b666c6f7750726f636573736573708e0f5fa2300b2c0200007871007e0058010071007e045e71007e00097400007371007e000c770400000000787371007e00370000000177040000000a7372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e576f726b666c6f7750726f63657373ffd8010769779de90200007871007e0093010174000f576f726b666c6f7750726f6365737371007e04607400007371007e000c77040000000d71007e000e7371007e000f010171007e000e71007e046574001147656e5265706f7274416e64456d61696c7071007e00127371007e000f010071007e001271007e046574001947656e6572617465205265706f727420616e6420456d61696c7074000b4163636573734c6576656c7371007e000f010071007e046d71007e04657400065055424c49437371007e00370000000377040000000371007e00427400065055424c4943740007505249564154457874000d50726f636573734865616465727372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e50726f636573734865616465728c4cae83432d29bf0200007871007e0004010171007e047371007e04657400007371007e000c77040000000874000c4475726174696f6e556e69747371007e000f010071007e047871007e0475740001447371007e00370000000777040000000771007e0042740001597400014d74000144740001687400016d7400017378740007437265617465647371007e0024010071007e048271007e0475740013323030352d30342d31382031343a32323a333474000b4465736372697074696f6e7371007e0028010071007e048571007e04757400007400085072696f72697479737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5072696f726974791560f64e6e3e06620200007871007e001c010071007e048871007e04757400007400054c696d6974737200256f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4c696d6974fc12a2e83198d3970200007871007e001c010071007e048c71007e047574000074000956616c696446726f6d737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56616c696446726f6d63c5857c834c143c0200007871007e001c010071007e049071007e047574000074000756616c6964546f737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e56616c6964546f9ec1b6190cab4dc90200007871007e001c010071007e049471007e047574000074000e54696d65457374696d6174696f6e7372002e6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e54696d65457374696d6174696f6ec58014a3162733140200007871007e0004010071007e049871007e04757400007371007e000c77040000000374000b57616974696e6754696d657372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e57616974696e6754696d654ef093e4cef0a02f0200007871007e001c010071007e049d71007e049a74000074000b576f726b696e6754696d657372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e576f726b696e6754696d65be7e1013b183e6d70200007871007e001c010071007e04a171007e049a7400007400084475726174696f6e737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4475726174696f6ea91520f443f4ebe80200007871007e001c010071007e04a571007e049a740000787371007e00370000000377040000000a71007e049f71007e04a371007e04a778787371007e00370000000877040000000a71007e047971007e048371007e048671007e048a71007e048e71007e049271007e049671007e049a787400115265646566696e61626c654865616465727371007e003a010071007e04ab71007e04657400007371007e000c77040000000671007e003e7371007e000f010071007e003e71007e04ac74000a554e4445525f544553547371007e00370000000477040000000471007e004271007e004371007e004471007e004578740006417574686f727371007e0047010071007e04b271007e04ac74000074000756657273696f6e7371007e004b010071007e04b571007e04ac740000740008436f6465706167657371007e004f010071007e04b871007e04ac74000074000a436f756e7472796b65797371007e0053010071007e04bb71007e04ac74000074000c526573706f6e7369626c65737371007e0057010071007e04be71007e04ac7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000677040000000a71007e04af71007e04b371007e04b671007e04b971007e04bc71007e04bf78740010466f726d616c506172616d65746572737371007e00a5010071007e04c471007e04657400007371007e000c770400000000787371007e00370000000277040000000a7371007e00ab010174000f466f726d616c506172616d6574657271007e04c57400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e04c974001950656e7461686f5f536f6c7574696f6e5f49645f506172616d7071007e00b27371007e000f010071007e00b271007e04c9740001317071007e00b57371007e000f010171007e00b571007e04c9740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e04d471007e04c97400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e04d57400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e04d87400007371007e000c77040000000171007e00707371007e000f010171007e007071007e04db740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e04df787371007e00d5010174000c4465636c617265645479706571007e04d87400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e04e374000070787371007e00370000000177040000000a71007e04e7787371007e00dd010174000a536368656d615479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e04d87400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e04ef7400007071007e00eb7371007e000f010171007e00eb71007e04ef7400007071007e00ee7371007e000f010071007e00ee71007e04ef74000070787371007e00370000000377040000000a71007e04f371007e04f571007e04f7787371007e00f2010174000a5265636f72645479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e04d87400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e04d87400007371007e000c77040000000371007e01097371007e000f010171007e010971007e05097400007071007e010c7371007e000f010171007e010c71007e05097400007071007e00707371007e00c1010171007e007071007e0509740000707001787371007e00370000000377040000000a71007e050d71007e050f71007e0511787371007e011201017400084c6973745479706571007e04d87400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0514740000707001787371007e00370000000177040000000a71007e0518787871007e04db01787371007e00370000000177040000000a71007e04d87874000b4465736372697074696f6e7371007e0028010071007e051c71007e04c9740000787371007e00370000000577040000000a71007e04cd71007e04cf71007e04d171007e04d571007e051d787371007e00ab010174000f466f726d616c506172616d6574657271007e04c57400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e052074001950656e7461686f5f496e7374616e63655f49645f506172616d7071007e00b27371007e000f010071007e00b271007e0520740001327071007e00b57371007e000f010171007e00b571007e0520740002494e7371007e00370000000377040000000371007e00b971007e00ba71007e00bb7874000844617461547970657371007e00bd010171007e052b71007e05207400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e052c7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e052f7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0532740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0536787371007e00d5010174000c4465636c617265645479706571007e052f7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e053a74000070787371007e00370000000177040000000a71007e053e787371007e00dd010174000a536368656d615479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e052f7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e05467400007071007e00eb7371007e000f010171007e00eb71007e05467400007071007e00ee7371007e000f010071007e00ee71007e054674000070787371007e00370000000377040000000a71007e054a71007e054c71007e054e787371007e00f2010174000a5265636f72645479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e052f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e052f7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e05607400007071007e010c7371007e000f010171007e010c71007e05607400007071007e00707371007e00c1010171007e007071007e0560740000707001787371007e00370000000377040000000a71007e056471007e056671007e0568787371007e011201017400084c6973745479706571007e052f7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e056b740000707001787371007e00370000000177040000000a71007e056f787871007e053201787371007e00370000000177040000000a71007e052f7874000b4465736372697074696f6e7371007e0028010071007e057371007e0520740000787371007e00370000000577040000000a71007e052471007e052671007e052871007e052c71007e0574787874000a446174614669656c64737371007e038f010071007e057771007e04657400007371007e000c770400000000787371007e00370000000377040000000a7371007e03940101740009446174614669656c6471007e05787400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e057c740008556e757365645f317071007e00127371007e000f010071007e001271007e057c740008556e7573656420317071007e039d7371007e000f010071007e039d71007e057c74000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e058771007e057c7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e05887400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e058b7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e058e740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0592787371007e00d5010174000c4465636c617265645479706571007e058b7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e059674000070787371007e00370000000177040000000a71007e059a787371007e00dd010174000a536368656d615479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e058b7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e05a27400007071007e00eb7371007e000f010171007e00eb71007e05a27400007071007e00ee7371007e000f010071007e00ee71007e05a274000070787371007e00370000000377040000000a71007e05a671007e05a871007e05aa787371007e00f2010174000a5265636f72645479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e058b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e058b7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e05bc7400007071007e010c7371007e000f010171007e010c71007e05bc7400007071007e00707371007e00c1010171007e007071007e05bc740000707001787371007e00370000000377040000000a71007e05c071007e05c271007e05c4787371007e011201017400084c6973745479706571007e058b7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e05c7740000707001787371007e00370000000177040000000a71007e05cb787871007e058e01787371007e00370000000177040000000a71007e058b7874000c496e697469616c56616c75657371007e03ec010071007e05cf71007e057c7400007400064c656e6774687371007e03f0010071007e05d271007e057c740002353074000b4465736372697074696f6e7371007e0028010071007e05d571007e057c740000740012457874656e646564417474726962757465737371007e0230010071007e05d871007e057c7400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e058071007e058271007e058471007e058871007e05d071007e05d371007e05d671007e05d9787371007e03940101740009446174614669656c6471007e05787400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e05de740008556e757365645f327071007e00127371007e000f010071007e001271007e05de740008556e7573656420327071007e039d7371007e000f010071007e039d71007e05de74000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e05e971007e05de7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e05ea7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e05ed7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e05f0740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e05f4787371007e00d5010174000c4465636c617265645479706571007e05ed7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e05f874000070787371007e00370000000177040000000a71007e05fc787371007e00dd010174000a536368656d615479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e05ed7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e06047400007071007e00eb7371007e000f010171007e00eb71007e06047400007071007e00ee7371007e000f010071007e00ee71007e060474000070787371007e00370000000377040000000a71007e060871007e060a71007e060c787371007e00f2010174000a5265636f72645479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e05ed7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e05ed7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e061e7400007071007e010c7371007e000f010171007e010c71007e061e7400007071007e00707371007e00c1010171007e007071007e061e740000707001787371007e00370000000377040000000a71007e062271007e062471007e0626787371007e011201017400084c6973745479706571007e05ed7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e0629740000707001787371007e00370000000177040000000a71007e062d787871007e05f001787371007e00370000000177040000000a71007e05ed7874000c496e697469616c56616c75657371007e03ec010071007e063171007e05de7400007400064c656e6774687371007e03f0010071007e063471007e05de740002353074000b4465736372697074696f6e7371007e0028010071007e063771007e05de740000740012457874656e646564417474726962757465737371007e0230010071007e063a71007e05de7400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e05e271007e05e471007e05e671007e05ea71007e063271007e063571007e063871007e063b787371007e03940101740009446174614669656c6471007e05787400007371007e000c77040000000871007e000e7371007e000f010171007e000e71007e0640740008556e757365645f337071007e00127371007e000f010071007e001271007e0640740008556e7573656420337071007e039d7371007e000f010071007e039d71007e064074000546414c53457371007e00370000000277040000000271007e03a171007e03a27874000844617461547970657371007e00bd010171007e064b71007e06407400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e064c7400007371007e00370000000977040000000a7371007e00c5010174000942617369635479706571007e064f7400007371007e000c77040000000171007e00707371007e000f010171007e007071007e0652740006535452494e477371007e00370000000777040000000771007e00cd71007e00ce71007e00cf71007e00d071007e00d171007e00d271007e00d378787371007e00370000000177040000000a71007e0656787371007e00d5010174000c4465636c617265645479706571007e064f7400007371007e000c77040000000171007e000e7371007e000f010171007e000e71007e065a74000070787371007e00370000000177040000000a71007e065e787371007e00dd010174000a536368656d615479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00e3010174001145787465726e616c5265666572656e636571007e064f7400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e06667400007071007e00eb7371007e000f010171007e00eb71007e06667400007071007e00ee7371007e000f010071007e00ee71007e066674000070787371007e00370000000377040000000a71007e066a71007e066c71007e066e787371007e00f2010174000a5265636f72645479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00f80101740009556e696f6e5479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e00fe010174000f456e756d65726174696f6e5479706571007e064f7400007371007e000c770400000000787371007e00370000000077040000000a787371007e0104010174000941727261795479706571007e064f7400007371007e000c77040000000371007e01097371007e000f010171007e010971007e06807400007071007e010c7371007e000f010171007e010c71007e06807400007071007e00707371007e00c1010171007e007071007e0680740000707001787371007e00370000000377040000000a71007e068471007e068671007e0688787371007e011201017400084c6973745479706571007e064f7400007371007e000c77040000000171007e00707371007e00c1010171007e007071007e068b740000707001787371007e00370000000177040000000a71007e068f787871007e065201787371007e00370000000177040000000a71007e064f7874000c496e697469616c56616c75657371007e03ec010071007e069371007e06407400007400064c656e6774687371007e03f0010071007e069671007e0640740002353074000b4465736372697074696f6e7371007e0028010071007e069971007e0640740000740012457874656e646564417474726962757465737371007e0230010071007e069c71007e06407400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000877040000000a71007e064471007e064671007e064871007e064c71007e069471007e069771007e069a71007e069d787874000c5061727469636970616e74737371007e0087010071007e06a271007e04657400007371007e000c770400000000787371007e00370000000177040000000a7372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061727469636970616e746f2494f37263a48f0200007871007e0093010174000b5061727469636970616e7471007e06a37400007371007e000c77040000000671007e000e7371007e000f010171007e000e71007e06a874001150656e7461686f416374697669746965737071007e00127371007e000f010071007e001271007e06a87400007074000f5061727469636970616e74547970657372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5061727469636970616e74547970653e886ea5dd85a8f70200007871007e0004010171007e06b071007e06a87400007371007e000c77040000000171007e00707371007e000f010171007e007071007e06b274000653595354454d7371007e00370000000677040000000674000c5245534f555243455f5345547400085245534f55524345740004524f4c457400134f5247414e495a4154494f4e414c5f554e495474000548554d414e74000653595354454d78787371007e00370000000177040000000a71007e06b57874000b4465736372697074696f6e7371007e0028010071007e06bf71007e06a874000074001145787465726e616c5265666572656e63657371007e00e3010071007e06c271007e06a87400007371007e000c77040000000371007e00e87371007e000f010071007e00e871007e06c37400007071007e00eb7371007e000f010171007e00eb71007e06c37400007071007e00ee7371007e000f010071007e00ee71007e06c374000070787371007e00370000000377040000000a71007e06c671007e06c871007e06ca78740012457874656e646564417474726962757465737371007e0230010071007e06cd71007e06a87400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000677040000000a71007e06ac71007e06ae71007e06b271007e06c071007e06c371007e06ce787874000c4170706c69636174696f6e737371007e008d010071007e06d371007e04657400007371007e000c770400000000787371007e00370000000077040000000a7874000c4163746976697479536574737372002c6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e416374697669747953657473d071565b34aaeed60200007871007e0058010071007e06d871007e04657400007371007e000c770400000000787371007e00370000000077040000000a7874000a416374697669746965737372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4163746976697469657326475ee1be6cfe500200007871007e0058010071007e06de71007e04657400007371007e000c770400000000787371007e00370000000277040000000a737200286f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41637469766974798b9a9557fbf4bfcb0200007871007e00930101740008416374697669747971007e06e07400007371007e000c77040000000f71007e000e7371007e000f010171007e000e71007e06e574000947656e5265706f72747071007e00127371007e000f010071007e001271007e06e574000f47656e6572617465205265706f72747074000b4465736372697074696f6e7371007e0028010071007e06ed71007e06e57400007400054c696d69747371007e048d010071007e06f071007e06e574000071007e00707372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4163746976697479547970657365c5bd7bf69ee8e80200007871007e00a1010171007e007071007e06e57400007371007e00370000000377040000000a737200256f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e526f757465306514ee0db247dd0200007871007e00040101740005526f75746571007e06f47400007371007e000c770400000000787371007e00370000000077040000000a787372002e6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e496d706c656d656e746174696f6e9c7296925e250c8a0200007871007e0004010174000e496d706c656d656e746174696f6e71007e06f47400007371007e000c77040000000171007e0070737200336f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e496d706c656d656e746174696f6e5479706573150d9fe454d9a1390200007871007e00a1010171007e007071007e06fe7400007371007e00370000000377040000000a737200226f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4e6f7b9585da13112e0b0200007871007e000401017400024e6f71007e07037400007371007e000c770400000000787371007e00370000000077040000000a78737200256f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e546f6f6c7343bf14d66710a9910200007871007e00580100740005546f6f6c7371007e07037400007371007e000c770400000000787371007e00370000000177040000000a737200246f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e546f6f6c40390b478cfb24c70200007871007e00040101740004546f6f6c71007e070d7400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e071374001050656e7461686f5f41637469766974797071007e00707371007e000f010071007e007071007e071374000b4150504c49434154494f4e7371007e00370000000377040000000371007e004274000b4150504c49434154494f4e74000950524f4345445552457874001041637475616c506172616d6574657273737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41637475616c506172616d6574657273eb8cf7b55fec4bfe0200007871007e0058010071007e071e71007e07137400007371007e000c770400000000787371007e00370000000477040000000a7372002f6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e41637475616c506172616d65746572d0312aa3804cf2700200007871007e001c010174000f41637475616c506172616d6574657271007e072074001950656e7461686f5f496e7374616e63655f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e072074001950656e7461686f5f536f6c7574696f6e5f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e0720740019226275727374696e672f7265706f72742e78616374696f6e227371007e0724010174000f41637475616c506172616d6574657271007e0720740008556e757365645f317874000b4465736372697074696f6e7371007e0028010071007e073171007e0713740000740012457874656e646564417474726962757465737371007e0230010071007e073471007e07137400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000577040000000a71007e071771007e071971007e072071007e073271007e07357878737200276f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e537562466c6f773b4ff57387373a240200007871007e00040101740007537562466c6f7771007e07037400007371007e000c77040000000371007e000e7371007e000f010171007e000e71007e073b74000070740009457865637574696f6e7371007e000f010071007e074171007e073b71007e00427371007e00370000000377040000000371007e00427400074153594e43485274000653594e4348527874001041637475616c506172616d65746572737371007e071f010071007e074671007e073b7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000377040000000a71007e073f71007e074271007e0747787871007e070d787371007e00370000000177040000000a71007e0703787372002d6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e426c6f636b4163746976697479920b71ca63c4ea460200007871007e0004010174000d426c6f636b416374697669747971007e06f47400007371007e000c770400000001740007426c6f636b49647371007e000f010171007e075271007e074e74000070787371007e00370000000177040000000a71007e0753787871007e06fe740009506572666f726d6572737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e506572666f726d6572a608223125e8ccc40200007871007e001c010071007e075671007e06e574001150656e7461686f4163746976697469657374000953746172744d6f6465737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e53746172744d6f64656e688584d7f3531b0200007871007e0004010071007e075a71007e06e57400007371007e000c77040000000171007e00b5737200306f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e537461727446696e6973684d6f6465737ee7367ae5588b270200007871007e00a1010171007e00b571007e075c7400007371007e00370000000377040000000a7372002c6f72672e656e68796472612e736861726b2e7870646c2e584d4c456d70747943686f696365456c656d656e74b5fef01c563b4d320200007871007e00040100740015584d4c456d70747943686f696365456c656d656e7471007e07607400007371007e000c770400000000787371007e00370000000077040000000a78737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4175746f6d61746963e9743ffb5f8090190200007871007e000401017400094175746f6d6174696371007e07607400007371007e000c770400000000787371007e00370000000077040000000a78737200266f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4d616e75616cb776aa89ee5bd8a40200007871007e000401017400064d616e75616c71007e07607400007371007e000c770400000000787371007e00370000000077040000000a787871007e076a787371007e00370000000177040000000a71007e07607874000a46696e6973684d6f64657372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e46696e6973684d6f6465f683f89b9cbcf37b0200007871007e0004010071007e077671007e06e57400007371007e000c77040000000171007e00b57371007e075f010171007e00b571007e07787400007371007e00370000000377040000000a7371007e07630100740015584d4c456d70747943686f696365456c656d656e7471007e077b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e076901017400094175746f6d6174696371007e077b7400007371007e000c770400000000787371007e00370000000077040000000a787371007e076f01017400064d616e75616c71007e077b7400007371007e000c770400000000787371007e00370000000077040000000a787871007e0783787371007e00370000000177040000000a71007e077b787400085072696f726974797371007e0489010071007e078e71007e06e5740000740009446561646c696e6573737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e446561646c696e65733ebd8dc99cc3da060200007871007e0058010071007e079171007e06e57400007371007e000c770400000000787371007e00370000000077040000000a7874001553696d756c6174696f6e496e666f726d6174696f6e737200356f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e53696d756c6174696f6e496e666f726d6174696f6e22937c49aa10a3920200007871007e0004010071007e079771007e06e57400007371007e000c77040000000374000d496e7374616e74696174696f6e7371007e000f010071007e079c71007e079971007e00427371007e00370000000377040000000371007e00427400044f4e43457400084d554c5449504c4578740004436f7374737200246f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f7374cff9c01fdef2919e0200007871007e001c010171007e07a171007e079974000074000e54696d65457374696d6174696f6e7371007e0499010171007e07a571007e07997400007371007e000c77040000000374000b57616974696e6754696d657371007e049e010071007e07a971007e07a674000074000b576f726b696e6754696d657371007e04a2010071007e07ac71007e07a67400007400084475726174696f6e7371007e04a6010071007e07af71007e07a6740000787371007e00370000000377040000000a71007e07aa71007e07ad71007e07b078787371007e00370000000377040000000a71007e079d71007e07a371007e07a67874000449636f6e737200246f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e49636f6eab54ce5528ff7d360200007871007e001c010071007e07b471007e06e574000074000d446f63756d656e746174696f6e7371007e002c010071007e07b871007e06e57400007400165472616e736974696f6e5265737472696374696f6e73737200366f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5472616e736974696f6e5265737472696374696f6e731f4329b7d780693b0200007871007e0058010071007e07bb71007e06e57400007371007e000c770400000000787371007e00370000000077040000000a78740012457874656e646564417474726962757465737371007e0230010071007e07c171007e06e57400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e07c27400007371007e000c77040000000271007e00127371007e000f010171007e001271007e07c674000d5061727469636970616e7449447071007e023c7371007e000f010071007e023c71007e07c674001150656e7461686f4163746976697469657370787371007e00370000000277040000000a71007e07ca71007e07cc787371007e02350101740011457874656e64656441747472696275746571007e07c27400007371007e000c77040000000271007e00127371007e000f010171007e001271007e07cf740007584f66667365747071007e023c7371007e000f010071007e023c71007e07cf74000332353070787371007e00370000000277040000000a71007e07d371007e07d5787371007e02350101740011457874656e64656441747472696275746571007e07c27400007371007e000c77040000000271007e00127371007e000f010171007e001271007e07d8740007594f66667365747071007e023c7371007e000f010071007e023c71007e07d8740002363070787371007e00370000000277040000000a71007e07dc71007e07de787870787371007e00370000000f77040000001071007e06e971007e06eb71007e06ee71007e06f171007e06f471007e075871007e075c71007e077871007e078f71007e079371007e079971007e07b671007e07b971007e07bd71007e07c2787371007e06e40101740008416374697669747971007e06e07400007371007e000c77040000000f71007e000e7371007e000f010171007e000e71007e07e27400144a616d6573466c6f77315f576f72315f416374327071007e00127371007e000f010071007e001271007e07e2740012456d61696c20566572696669636174696f6e7074000b4465736372697074696f6e7371007e0028010071007e07ea71007e07e27400007400054c696d69747371007e048d010071007e07ed71007e07e274000071007e00707371007e06f3010171007e007071007e07e27400007371007e00370000000377040000000a7371007e06f70101740005526f75746571007e07f07400007371007e000c770400000000787371007e00370000000077040000000a787371007e06fd010174000e496d706c656d656e746174696f6e71007e07f07400007371007e000c77040000000171007e00707371007e0702010171007e007071007e07f87400007371007e00370000000377040000000a7371007e070601017400024e6f71007e07fc7400007371007e000c770400000000787371007e00370000000077040000000a787371007e070c0100740005546f6f6c7371007e07fc7400007371007e000c770400000000787371007e00370000000177040000000a7371007e07120101740004546f6f6c71007e08047400007371007e000c77040000000571007e000e7371007e000f010171007e000e71007e080974001050656e7461686f5f41637469766974797071007e00707371007e000f010071007e007071007e080974000b4150504c49434154494f4e7371007e00370000000377040000000371007e004271007e071c71007e071d7874001041637475616c506172616d65746572737371007e071f010071007e081271007e08097400007371007e000c770400000000787371007e00370000000477040000000a7371007e0724010174000f41637475616c506172616d6574657271007e081374001950656e7461686f5f496e7374616e63655f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e081374001950656e7461686f5f536f6c7574696f6e5f49645f506172616d7371007e0724010174000f41637475616c506172616d6574657271007e081374001d226275727374696e672f73656e642d656d61696c2e78616374696f6e227371007e0724010174000f41637475616c506172616d6574657271007e0813740008556e757365645f317874000b4465736372697074696f6e7371007e0028010071007e082371007e0809740000740012457874656e646564417474726962757465737371007e0230010071007e082671007e08097400007371007e000c770400000000787371007e00370000000077040000000a7870787371007e00370000000577040000000a71007e080d71007e080f71007e081371007e082471007e082778787371007e073a0101740007537562466c6f7771007e07fc7400007371007e000c77040000000371007e000e7371007e000f010171007e000e71007e082c7400007071007e07417371007e000f010071007e074171007e082c71007e00427371007e00370000000377040000000371007e004271007e074471007e07457874001041637475616c506172616d65746572737371007e071f010071007e083471007e082c7400007371007e000c770400000000787371007e00370000000077040000000a78787371007e00370000000377040000000a71007e083071007e083271007e0835787871007e0804787371007e00370000000177040000000a71007e07fc787371007e074d010174000d426c6f636b416374697669747971007e07f07400007371007e000c77040000000171007e07527371007e000f010171007e075271007e083b74000070787371007e00370000000177040000000a71007e083f787871007e07f8740009506572666f726d65727371007e0757010071007e084271007e07e274001150656e7461686f4163746976697469657374000953746172744d6f64657371007e075b010071007e084571007e07e27400007371007e000c77040000000171007e00b57371007e075f010171007e00b571007e08467400007371007e00370000000377040000000a7371007e07630100740015584d4c456d70747943686f696365456c656d656e7471007e08497400007371007e000c770400000000787371007e00370000000077040000000a787371007e076901017400094175746f6d6174696371007e08497400007371007e000c770400000000787371007e00370000000077040000000a787371007e076f01017400064d616e75616c71007e08497400007371007e000c770400000000787371007e00370000000077040000000a787871007e0851787371007e00370000000177040000000a71007e08497874000a46696e6973684d6f64657371007e0777010071007e085c71007e07e27400007371007e000c77040000000171007e00b57371007e075f010171007e00b571007e085d7400007371007e00370000000377040000000a7371007e07630100740015584d4c456d70747943686f696365456c656d656e7471007e08607400007371007e000c770400000000787371007e00370000000077040000000a787371007e076901017400094175746f6d6174696371007e08607400007371007e000c770400000000787371007e00370000000077040000000a787371007e076f01017400064d616e75616c71007e08607400007371007e000c770400000000787371007e00370000000077040000000a787871007e0868787371007e00370000000177040000000a71007e0860787400085072696f726974797371007e0489010071007e087371007e07e2740000740009446561646c696e65737371007e0792010071007e087671007e07e27400007371007e000c770400000000787371007e00370000000077040000000a7874001553696d756c6174696f6e496e666f726d6174696f6e7371007e0798010071007e087b71007e07e27400007371007e000c77040000000371007e079c7371007e000f010071007e079c71007e087c71007e00427371007e00370000000377040000000371007e004271007e079f71007e07a078740004436f73747371007e07a2010171007e088171007e087c74000074000e54696d65457374696d6174696f6e7371007e0499010171007e088471007e087c7400007371007e000c77040000000374000b57616974696e6754696d657371007e049e010071007e088871007e088574000074000b576f726b696e6754696d657371007e04a2010071007e088b71007e08857400007400084475726174696f6e7371007e04a6010071007e088e71007e0885740000787371007e00370000000377040000000a71007e088971007e088c71007e088f78787371007e00370000000377040000000a71007e087f71007e088271007e08857874000449636f6e7371007e07b5010071007e089371007e07e274000074000d446f63756d656e746174696f6e7371007e002c010071007e089671007e07e27400007400165472616e736974696f6e5265737472696374696f6e737371007e07bc010071007e089971007e07e27400007371007e000c770400000000787371007e00370000000077040000000a78740012457874656e646564417474726962757465737371007e0230010071007e089e71007e07e27400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e089f7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08a374000d5061727469636970616e7449447071007e023c7371007e000f010071007e023c71007e08a374001150656e7461686f4163746976697469657370787371007e00370000000277040000000a71007e08a771007e08a9787371007e02350101740011457874656e64656441747472696275746571007e089f7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08ac740007584f66667365747071007e023c7371007e000f010071007e023c71007e08ac74000334373070787371007e00370000000277040000000a71007e08b071007e08b2787371007e02350101740011457874656e64656441747472696275746571007e089f7400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08b5740007594f66667365747071007e023c7371007e000f010071007e023c71007e08b5740002363070787371007e00370000000277040000000a71007e08b971007e08bb787870787371007e00370000000f77040000001071007e07e671007e07e871007e07eb71007e07ee71007e07f071007e084371007e084671007e085d71007e087471007e087771007e087c71007e089471007e089771007e089a71007e089f787874000b5472616e736974696f6e737372002b6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5472616e736974696f6e73ed393ee4c02f69af0200007871007e0058010071007e08bf71007e04657400007371007e000c770400000000787371007e00370000000177040000000a7372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e5472616e736974696f6e037401a7780fb8850200007871007e0093010174000a5472616e736974696f6e71007e08c17400007371007e000c77040000000771007e000e7371007e000f010171007e000e71007e08c67400144a616d6573466c6f77315f576f72315f547261337071007e00127371007e000f010071007e001271007e08c67400007074000446726f6d7371007e000f010171007e08ce71007e08c674000947656e5265706f727470740002546f7371007e000f010171007e08d171007e08c67400144a616d6573466c6f77315f576f72315f4163743270740009436f6e646974696f6e737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e436f6e646974696f6edada0e786813b77b0200007871007e0004010071007e08d471007e08c67400007371007e000c77040000000171007e00707371007e000f010071007e007071007e08d671007e00427371007e00370000000577040000000571007e0042740009434f4e444954494f4e7400094f5448455257495345740009455843455054494f4e74001044454641554c54455843455054494f4e78787371007e00370000000177040000000a71007e08d97874000b4465736372697074696f6e7371007e0028010071007e08e071007e08c6740000740012457874656e646564417474726962757465737371007e0230010071007e08e371007e08c67400007371007e000c770400000000787371007e00370000000177040000000a7371007e02350101740011457874656e64656441747472696275746571007e08e47400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08e874000b526f7574696e67547970657071007e023c7371007e000f010071007e023c71007e08e87400094e4f524f5554494e4770787371007e00370000000277040000000a71007e08ec71007e08ee787870787371007e00370000000777040000000a71007e08ca71007e08cc71007e08cf71007e08d271007e08d671007e08e171007e08e47878740012457874656e646564417474726962757465737371007e0230010071007e08f271007e04657400007371007e000c770400000000787371007e00370000000377040000000a7371007e02350101740011457874656e64656441747472696275746571007e08f37400007371007e000c77040000000271007e00127371007e000f010171007e001271007e08f774000f53746172744f66576f726b666c6f777071007e023c7371007e000f010071007e023c71007e08f774002c50656e7461686f416374697669746965733b47656e5265706f72743b3131303b36303b4e4f524f5554494e4770787371007e00370000000277040000000a71007e08fb71007e08fd787371007e02350101740011457874656e64656441747472696275746571007e08f37400007371007e000c77040000000271007e00127371007e000f010171007e001271007e090074000d456e644f66576f726b666c6f777071007e023c7371007e000f010071007e023c71007e090074003750656e7461686f416374697669746965733b4a616d6573466c6f77315f576f72315f416374323b3635303b36303b4e4f524f5554494e4770787371007e00370000000277040000000a71007e090471007e0906787371007e02350101740011457874656e64656441747472696275746571007e08f37400007371007e000c77040000000271007e00127371007e000f010171007e001271007e09097400165061727469636970616e7456697375616c4f726465727071007e023c7371007e000f010071007e023c71007e090974001250656e7461686f416374697669746965733b70787371007e00370000000277040000000a71007e090d71007e090f787870787371007e00370000000d77040000001071007e046971007e046b71007e046e71007e047571007e04ac71007e04c571007e057871007e06a371007e06d471007e06da71007e06e071007e08c171007e08f37878740012457874656e646564417474726962757465737371007e0230010071007e091371007e00097400007371007e000c770400000000787371007e00370000000277040000000a7371007e02350101740011457874656e64656441747472696275746571007e09147400007371007e000c77040000000271007e00127371007e000f010171007e001271007e09187400064d61646542797071007e023c7371007e000f010071007e023c71007e09187400044a61574570787371007e00370000000277040000000a71007e091c71007e091e787371007e02350101740011457874656e64656441747472696275746571007e09147400007371007e000c77040000000271007e00127371007e000f010171007e001271007e092174000756657273696f6e7071007e023c7371007e000f010071007e023c71007e0921740005312e342e3270787371007e00370000000277040000000a71007e092571007e0927787870787371007e00370000000d77040000001071007e001071007e001371007e001771007e003b71007e006071007e006d71007e007c71007e008271007e008871007e008e71007e039071007e046071007e0914787371007e000c77040000000078740001327372002a6f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4e616d657370616365737c9ad13c2e52a7960200007871007e0058000174000a4e616d6573706163657371007e00097400007371007e000c770400000000787371007e00370000000177040000000a737200296f72672e656e68796472612e736861726b2e7870646c2e656c656d656e74732e4e616d65737061636504e80f7ac2c2085f0200007871007e000400017400094e616d65737061636571007e092e7400007371007e000c77040000000271007e00127371007e000f000171007e001271007e09347400047870646c7071007e00eb7371007e000f000171007e00eb71007e0934740020687474703a2f2f7777772e77666d632e6f72672f323030322f5850444c312e3070787371007e00370000000277040000000a71007e093871007e093a7878	1000408	2	1000409	0
\.


--
-- Data for Name: xpdlhistory; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlhistory (xpdlid, xpdlversion, xpdlclassversion, xpdluploadtime, xpdlhistoryuploadtime, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdlhistorydata; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlhistorydata (xpdlcontent, xpdlclasscontent, xpdlhistory, cnt, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdlparticipantpackage; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlparticipantpackage (package_id, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdlparticipantprocess; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlparticipantprocess (process_id, packageoid, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdlreferences; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdlreferences (referredxpdlid, referringxpdl, referredxpdlnumber, oid, version) FROM stdin;
\.


--
-- Data for Name: xpdls; Type: TABLE DATA; Schema: public; Owner: pentaho_user
--

COPY xpdls (xpdlid, xpdlversion, xpdlclassversion, xpdluploadtime, oid, version) FROM stdin;
BurstingExamples	1	1118791556000	2006-06-20 15:27:33.75	1000404	0
BurstingExamples	2	1118791556000	2006-06-20 15:27:34.296	1000408	0
\.


--
-- Name: activities_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY activities
    ADD CONSTRAINT activities_pkey PRIMARY KEY (oid);


--
-- Name: activitydata_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY activitydata
    ADD CONSTRAINT activitydata_pkey PRIMARY KEY (oid);


--
-- Name: activitydatablobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY activitydatablobs
    ADD CONSTRAINT activitydatablobs_pkey PRIMARY KEY (oid);


--
-- Name: activitydatawob_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY activitydatawob
    ADD CONSTRAINT activitydatawob_pkey PRIMARY KEY (oid);


--
-- Name: activitystateeventaudits_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY activitystateeventaudits
    ADD CONSTRAINT activitystateeventaudits_pkey PRIMARY KEY (oid);


--
-- Name: activitystates_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY activitystates
    ADD CONSTRAINT activitystates_pkey PRIMARY KEY (oid);


--
-- Name: andjointable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY andjointable
    ADD CONSTRAINT andjointable_pkey PRIMARY KEY (oid);


--
-- Name: assignmenteventaudits_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY assignmenteventaudits
    ADD CONSTRAINT assignmenteventaudits_pkey PRIMARY KEY (oid);


--
-- Name: assignmentstable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY assignmentstable
    ADD CONSTRAINT assignmentstable_pkey PRIMARY KEY (oid);


--
-- Name: counters_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY counters
    ADD CONSTRAINT counters_pkey PRIMARY KEY (oid);


--
-- Name: createprocesseventaudits_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY createprocesseventaudits
    ADD CONSTRAINT createprocesseventaudits_pkey PRIMARY KEY (oid);


--
-- Name: dataeventaudits_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY dataeventaudits
    ADD CONSTRAINT dataeventaudits_pkey PRIMARY KEY (oid);


--
-- Name: deadlines_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY deadlines
    ADD CONSTRAINT deadlines_pkey PRIMARY KEY (oid);


--
-- Name: eventtypes_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY eventtypes
    ADD CONSTRAINT eventtypes_pkey PRIMARY KEY (oid);


--
-- Name: groupgrouptable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY groupgrouptable
    ADD CONSTRAINT groupgrouptable_pkey PRIMARY KEY (oid);


--
-- Name: grouptable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY grouptable
    ADD CONSTRAINT grouptable_pkey PRIMARY KEY (oid);


--
-- Name: groupuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY groupuser
    ADD CONSTRAINT groupuser_pkey PRIMARY KEY (oid);


--
-- Name: groupuserpacklevelparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY groupuserpacklevelparticipant
    ADD CONSTRAINT groupuserpacklevelparticipant_pkey PRIMARY KEY (oid);


--
-- Name: groupuserproclevelparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY groupuserproclevelparticipant
    ADD CONSTRAINT groupuserproclevelparticipant_pkey PRIMARY KEY (oid);


--
-- Name: locktable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY locktable
    ADD CONSTRAINT locktable_pkey PRIMARY KEY (oid);


--
-- Name: neweventauditdata_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY neweventauditdata
    ADD CONSTRAINT neweventauditdata_pkey PRIMARY KEY (oid);


--
-- Name: neweventauditdatablobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY neweventauditdatablobs
    ADD CONSTRAINT neweventauditdatablobs_pkey PRIMARY KEY (oid);


--
-- Name: neweventauditdatawob_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY neweventauditdatawob
    ADD CONSTRAINT neweventauditdatawob_pkey PRIMARY KEY (oid);


--
-- Name: nextxpdlversions_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY nextxpdlversions
    ADD CONSTRAINT nextxpdlversions_pkey PRIMARY KEY (oid);


--
-- Name: normaluser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY normaluser
    ADD CONSTRAINT normaluser_pkey PRIMARY KEY (oid);


--
-- Name: objectid_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY objectid
    ADD CONSTRAINT objectid_pkey PRIMARY KEY ("next");


--
-- Name: oldeventauditdata_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY oldeventauditdata
    ADD CONSTRAINT oldeventauditdata_pkey PRIMARY KEY (oid);


--
-- Name: oldeventauditdatablobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY oldeventauditdatablobs
    ADD CONSTRAINT oldeventauditdatablobs_pkey PRIMARY KEY (oid);


--
-- Name: oldeventauditdatawob_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY oldeventauditdatawob
    ADD CONSTRAINT oldeventauditdatawob_pkey PRIMARY KEY (oid);


--
-- Name: packlevelparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY packlevelparticipant
    ADD CONSTRAINT packlevelparticipant_pkey PRIMARY KEY (oid);


--
-- Name: packlevelxpdlapp_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY packlevelxpdlapp
    ADD CONSTRAINT packlevelxpdlapp_pkey PRIMARY KEY (oid);


--
-- Name: packlevelxpdlapptaappdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY packlevelxpdlapptaappdetail
    ADD CONSTRAINT packlevelxpdlapptaappdetail_pkey PRIMARY KEY (oid);


--
-- Name: packlevelxpdlapptaappdetailusr_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY packlevelxpdlapptaappdetailusr
    ADD CONSTRAINT packlevelxpdlapptaappdetailusr_pkey PRIMARY KEY (oid);


--
-- Name: packlevelxpdlapptaappuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY packlevelxpdlapptaappuser
    ADD CONSTRAINT packlevelxpdlapptaappuser_pkey PRIMARY KEY (oid);


--
-- Name: packlevelxpdlapptoolagentapp_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY packlevelxpdlapptoolagentapp
    ADD CONSTRAINT packlevelxpdlapptoolagentapp_pkey PRIMARY KEY (oid);


--
-- Name: processdata_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processdata
    ADD CONSTRAINT processdata_pkey PRIMARY KEY (oid);


--
-- Name: processdatablobs_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processdatablobs
    ADD CONSTRAINT processdatablobs_pkey PRIMARY KEY (oid);


--
-- Name: processdatawob_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processdatawob
    ADD CONSTRAINT processdatawob_pkey PRIMARY KEY (oid);


--
-- Name: processdefinitions_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processdefinitions
    ADD CONSTRAINT processdefinitions_pkey PRIMARY KEY (oid);


--
-- Name: processes_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processes
    ADD CONSTRAINT processes_pkey PRIMARY KEY (oid);


--
-- Name: processrequesters_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processrequesters
    ADD CONSTRAINT processrequesters_pkey PRIMARY KEY (oid);


--
-- Name: processstateeventaudits_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processstateeventaudits
    ADD CONSTRAINT processstateeventaudits_pkey PRIMARY KEY (oid);


--
-- Name: processstates_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY processstates
    ADD CONSTRAINT processstates_pkey PRIMARY KEY (oid);


--
-- Name: proclevelparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY proclevelparticipant
    ADD CONSTRAINT proclevelparticipant_pkey PRIMARY KEY (oid);


--
-- Name: proclevelxpdlapp_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY proclevelxpdlapp
    ADD CONSTRAINT proclevelxpdlapp_pkey PRIMARY KEY (oid);


--
-- Name: proclevelxpdlapptaappdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY proclevelxpdlapptaappdetail
    ADD CONSTRAINT proclevelxpdlapptaappdetail_pkey PRIMARY KEY (oid);


--
-- Name: proclevelxpdlapptaappdetailusr_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY proclevelxpdlapptaappdetailusr
    ADD CONSTRAINT proclevelxpdlapptaappdetailusr_pkey PRIMARY KEY (oid);


--
-- Name: proclevelxpdlapptaappuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY proclevelxpdlapptaappuser
    ADD CONSTRAINT proclevelxpdlapptaappuser_pkey PRIMARY KEY (oid);


--
-- Name: proclevelxpdlapptoolagentapp_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY proclevelxpdlapptoolagentapp
    ADD CONSTRAINT proclevelxpdlapptoolagentapp_pkey PRIMARY KEY (oid);


--
-- Name: resourcestable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY resourcestable
    ADD CONSTRAINT resourcestable_pkey PRIMARY KEY (oid);


--
-- Name: stateeventaudits_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY stateeventaudits
    ADD CONSTRAINT stateeventaudits_pkey PRIMARY KEY (oid);


--
-- Name: toolagentapp_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY toolagentapp
    ADD CONSTRAINT toolagentapp_pkey PRIMARY KEY (oid);


--
-- Name: toolagentappdetail_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY toolagentappdetail
    ADD CONSTRAINT toolagentappdetail_pkey PRIMARY KEY (oid);


--
-- Name: toolagentappdetailuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY toolagentappdetailuser
    ADD CONSTRAINT toolagentappdetailuser_pkey PRIMARY KEY (oid);


--
-- Name: toolagentappuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY toolagentappuser
    ADD CONSTRAINT toolagentappuser_pkey PRIMARY KEY (oid);


--
-- Name: toolagentuser_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY toolagentuser
    ADD CONSTRAINT toolagentuser_pkey PRIMARY KEY (oid);


--
-- Name: usergrouptable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY usergrouptable
    ADD CONSTRAINT usergrouptable_pkey PRIMARY KEY (oid);


--
-- Name: userpacklevelparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY userpacklevelparticipant
    ADD CONSTRAINT userpacklevelparticipant_pkey PRIMARY KEY (oid);


--
-- Name: userproclevelparticipant_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY userproclevelparticipant
    ADD CONSTRAINT userproclevelparticipant_pkey PRIMARY KEY (oid);


--
-- Name: usertable_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY usertable
    ADD CONSTRAINT usertable_pkey PRIMARY KEY (oid);


--
-- Name: xpdlapplicationpackage_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlapplicationpackage
    ADD CONSTRAINT xpdlapplicationpackage_pkey PRIMARY KEY (oid);


--
-- Name: xpdlapplicationprocess_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlapplicationprocess
    ADD CONSTRAINT xpdlapplicationprocess_pkey PRIMARY KEY (oid);


--
-- Name: xpdldata_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdldata
    ADD CONSTRAINT xpdldata_pkey PRIMARY KEY (oid);


--
-- Name: xpdlhistory_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlhistory
    ADD CONSTRAINT xpdlhistory_pkey PRIMARY KEY (oid);


--
-- Name: xpdlhistorydata_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlhistorydata
    ADD CONSTRAINT xpdlhistorydata_pkey PRIMARY KEY (oid);


--
-- Name: xpdlparticipantpackage_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlparticipantpackage
    ADD CONSTRAINT xpdlparticipantpackage_pkey PRIMARY KEY (oid);


--
-- Name: xpdlparticipantprocess_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlparticipantprocess
    ADD CONSTRAINT xpdlparticipantprocess_pkey PRIMARY KEY (oid);


--
-- Name: xpdlreferences_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdlreferences
    ADD CONSTRAINT xpdlreferences_pkey PRIMARY KEY (oid);


--
-- Name: xpdls_pkey; Type: CONSTRAINT; Schema: public; Owner: pentaho_user; Tablespace: 
--

ALTER TABLE ONLY xpdls
    ADD CONSTRAINT xpdls_pkey PRIMARY KEY (oid);


--
-- Name: i1_activities; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_activities ON activities USING btree (id);


--
-- Name: i1_activitydata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_activitydata ON activitydata USING btree (activity, variabledefinitionid);


--
-- Name: i1_activitydatablobs; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_activitydatablobs ON activitydatablobs USING btree (activitydatawob);


--
-- Name: i1_activitydatawob; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_activitydatawob ON activitydatawob USING btree (activity, variabledefinitionid);


--
-- Name: i1_activitystateeventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_activitystateeventaudits ON activitystateeventaudits USING btree (keyvalue);


--
-- Name: i1_activitystates; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_activitystates ON activitystates USING btree (keyvalue);


--
-- Name: i1_andjointable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_andjointable ON andjointable USING btree (cnt);


--
-- Name: i1_assignmenteventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_assignmenteventaudits ON assignmenteventaudits USING btree (cnt);


--
-- Name: i1_assignmentstable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_assignmentstable ON assignmentstable USING btree (cnt);


--
-- Name: i1_counters; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_counters ON counters USING btree (name);


--
-- Name: i1_createprocesseventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_createprocesseventaudits ON createprocesseventaudits USING btree (cnt);


--
-- Name: i1_dataeventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_dataeventaudits ON dataeventaudits USING btree (cnt);


--
-- Name: i1_deadlines; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_deadlines ON deadlines USING btree (cnt);


--
-- Name: i1_eventtypes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_eventtypes ON eventtypes USING btree (keyvalue);


--
-- Name: i1_groupgrouptable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_groupgrouptable ON groupgrouptable USING btree (sub_gid, groupid);


--
-- Name: i1_grouptable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_grouptable ON grouptable USING btree (groupid);


--
-- Name: i1_groupuser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_groupuser ON groupuser USING btree (username);


--
-- Name: i1_groupuserpacklevelparticipant; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_groupuserpacklevelparticipant ON groupuserpacklevelparticipant USING btree (participantoid, useroid);


--
-- Name: i1_groupuserproclevelparticipant; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_groupuserproclevelparticipant ON groupuserproclevelparticipant USING btree (participantoid, useroid);


--
-- Name: i1_locktable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_locktable ON locktable USING btree (id);


--
-- Name: i1_neweventauditdata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_neweventauditdata ON neweventauditdata USING btree (dataeventaudit, variabledefinitionid);


--
-- Name: i1_neweventauditdatablobs; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_neweventauditdatablobs ON neweventauditdatablobs USING btree (neweventauditdatawob);


--
-- Name: i1_neweventauditdatawob; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_neweventauditdatawob ON neweventauditdatawob USING btree (dataeventaudit, variabledefinitionid);


--
-- Name: i1_nextxpdlversions; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_nextxpdlversions ON nextxpdlversions USING btree (xpdlid, nextversion);


--
-- Name: i1_normaluser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_normaluser ON normaluser USING btree (username);


--
-- Name: i1_oldeventauditdata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_oldeventauditdata ON oldeventauditdata USING btree (dataeventaudit, variabledefinitionid);


--
-- Name: i1_oldeventauditdatablobs; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_oldeventauditdatablobs ON oldeventauditdatablobs USING btree (oldeventauditdatawob);


--
-- Name: i1_oldeventauditdatawob; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_oldeventauditdatawob ON oldeventauditdatawob USING btree (dataeventaudit, variabledefinitionid);


--
-- Name: i1_packlevelparticipant; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_packlevelparticipant ON packlevelparticipant USING btree (participant_id, packageoid);


--
-- Name: i1_packlevelxpdlapp; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_packlevelxpdlapp ON packlevelxpdlapp USING btree (application_id, packageoid);


--
-- Name: i1_packlevelxpdlapptaappdetail; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_packlevelxpdlapptaappdetail ON packlevelxpdlapptaappdetail USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_packlevelxpdlapptaappdetailusr; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_packlevelxpdlapptaappdetailusr ON packlevelxpdlapptaappdetailusr USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_packlevelxpdlapptaappuser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_packlevelxpdlapptaappuser ON packlevelxpdlapptaappuser USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_packlevelxpdlapptoolagentapp; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_packlevelxpdlapptoolagentapp ON packlevelxpdlapptoolagentapp USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_processdata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processdata ON processdata USING btree (process, variabledefinitionid);


--
-- Name: i1_processdatablobs; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processdatablobs ON processdatablobs USING btree (processdatawob);


--
-- Name: i1_processdatawob; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processdatawob ON processdatawob USING btree (process, variabledefinitionid);


--
-- Name: i1_processdefinitions; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processdefinitions ON processdefinitions USING btree (name);


--
-- Name: i1_processes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processes ON processes USING btree (id);


--
-- Name: i1_processrequesters; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processrequesters ON processrequesters USING btree (id);


--
-- Name: i1_processstateeventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processstateeventaudits ON processstateeventaudits USING btree (keyvalue);


--
-- Name: i1_processstates; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_processstates ON processstates USING btree (keyvalue);


--
-- Name: i1_proclevelparticipant; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_proclevelparticipant ON proclevelparticipant USING btree (participant_id, processoid);


--
-- Name: i1_proclevelxpdlapp; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_proclevelxpdlapp ON proclevelxpdlapp USING btree (application_id, processoid);


--
-- Name: i1_proclevelxpdlapptaappdetail; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_proclevelxpdlapptaappdetail ON proclevelxpdlapptaappdetail USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_proclevelxpdlapptaappdetailusr; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_proclevelxpdlapptaappdetailusr ON proclevelxpdlapptaappdetailusr USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_proclevelxpdlapptaappuser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_proclevelxpdlapptaappuser ON proclevelxpdlapptaappuser USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_proclevelxpdlapptoolagentapp; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_proclevelxpdlapptoolagentapp ON proclevelxpdlapptoolagentapp USING btree (xpdl_appoid, toolagentoid);


--
-- Name: i1_resourcestable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_resourcestable ON resourcestable USING btree (username);


--
-- Name: i1_stateeventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_stateeventaudits ON stateeventaudits USING btree (cnt);


--
-- Name: i1_toolagentapp; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_toolagentapp ON toolagentapp USING btree (tool_agent_name, app_name);


--
-- Name: i1_toolagentappdetail; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_toolagentappdetail ON toolagentappdetail USING btree (app_mode, toolagent_appoid);


--
-- Name: i1_toolagentappdetailuser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_toolagentappdetailuser ON toolagentappdetailuser USING btree (toolagent_appoid, useroid);


--
-- Name: i1_toolagentappuser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_toolagentappuser ON toolagentappuser USING btree (toolagent_appoid, useroid);


--
-- Name: i1_toolagentuser; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_toolagentuser ON toolagentuser USING btree (username);


--
-- Name: i1_usergrouptable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_usergrouptable ON usergrouptable USING btree (userid, groupid);


--
-- Name: i1_userpacklevelparticipant; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_userpacklevelparticipant ON userpacklevelparticipant USING btree (participantoid, useroid);


--
-- Name: i1_userproclevelparticipant; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_userproclevelparticipant ON userproclevelparticipant USING btree (participantoid, useroid);


--
-- Name: i1_usertable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_usertable ON usertable USING btree (userid);


--
-- Name: i1_xpdlapplicationpackage; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlapplicationpackage ON xpdlapplicationpackage USING btree (package_id);


--
-- Name: i1_xpdlapplicationprocess; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlapplicationprocess ON xpdlapplicationprocess USING btree (process_id, packageoid);


--
-- Name: i1_xpdldata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdldata ON xpdldata USING btree (cnt);


--
-- Name: i1_xpdlhistory; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlhistory ON xpdlhistory USING btree (xpdlid, xpdlversion);


--
-- Name: i1_xpdlhistorydata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlhistorydata ON xpdlhistorydata USING btree (cnt);


--
-- Name: i1_xpdlparticipantpackage; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlparticipantpackage ON xpdlparticipantpackage USING btree (package_id);


--
-- Name: i1_xpdlparticipantprocess; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlparticipantprocess ON xpdlparticipantprocess USING btree (process_id, packageoid);


--
-- Name: i1_xpdlreferences; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdlreferences ON xpdlreferences USING btree (referredxpdlid, referringxpdl);


--
-- Name: i1_xpdls; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i1_xpdls ON xpdls USING btree (xpdlid, xpdlversion);


--
-- Name: i2_activities; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i2_activities ON activities USING btree (process, activitysetdefinitionid, activitydefinitionid);


--
-- Name: i2_activitystateeventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_activitystateeventaudits ON activitystateeventaudits USING btree (name);


--
-- Name: i2_activitystates; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_activitystates ON activitystates USING btree (name);


--
-- Name: i2_andjointable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i2_andjointable ON andjointable USING btree (process, activitysetdefinitionid, activitydefinitionid);


--
-- Name: i2_assignmentstable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_assignmentstable ON assignmentstable USING btree (activity, theresource);


--
-- Name: i2_deadlines; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i2_deadlines ON deadlines USING btree (process, timelimit);


--
-- Name: i2_eventtypes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_eventtypes ON eventtypes USING btree (name);


--
-- Name: i2_groupgrouptable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i2_groupgrouptable ON groupgrouptable USING btree (groupid);


--
-- Name: i2_locktable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_locktable ON locktable USING btree (id, enginename);


--
-- Name: i2_processes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i2_processes ON processes USING btree (processdefinition);


--
-- Name: i2_processrequesters; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i2_processrequesters ON processrequesters USING btree (activityrequester);


--
-- Name: i2_processstateeventaudits; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_processstateeventaudits ON processstateeventaudits USING btree (name);


--
-- Name: i2_processstates; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_processstates ON processstates USING btree (name);


--
-- Name: i2_xpdldata; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE UNIQUE INDEX i2_xpdldata ON xpdldata USING btree (xpdl);


--
-- Name: i3_activities; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i3_activities ON activities USING btree (process, state);


--
-- Name: i3_andjointable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i3_andjointable ON andjointable USING btree (activity);


--
-- Name: i3_assignmentstable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i3_assignmentstable ON assignmentstable USING btree (theresource, isvalid);


--
-- Name: i3_deadlines; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i3_deadlines ON deadlines USING btree (activity, timelimit);


--
-- Name: i3_processes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i3_processes ON processes USING btree (state);


--
-- Name: i3_processrequesters; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i3_processrequesters ON processrequesters USING btree (resourcerequester);


--
-- Name: i4_assignmentstable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i4_assignmentstable ON assignmentstable USING btree (activityid);


--
-- Name: i4_processes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i4_processes ON processes USING btree (activityrequesterid);


--
-- Name: i5_assignmentstable; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i5_assignmentstable ON assignmentstable USING btree (resourceid);


--
-- Name: i5_processes; Type: INDEX; Schema: public; Owner: pentaho_user; Tablespace: 
--

CREATE INDEX i5_processes ON processes USING btree (resourcerequesterid);


--
-- PostgreSQL database dump complete
--

