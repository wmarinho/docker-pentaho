--
-- note: this script assumes pg_hba.conf is configured correctly
--

-- \connect postgres postgres

drop database if exists jackrabbit;
--drop user if exists jcr_user;
drop role if exists jcr_user;

--CREATE USER jcr_user PASSWORD '@@jcr_user@@';
create role jcr_user with password '@@jcr_user@@' login; 

CREATE DATABASE jackrabbit ENCODING = 'UTF8' TABLESPACE = pg_default;
ALTER DATABASE jackrabbit  OWNER TO jcr_user;

GRANT ALL PRIVILEGES ON DATABASE jackrabbit to jcr_user;
