#!/bin/bash

if [ -f "/.pentaho_config" ]; then
   echo "Pentaho already configured"
   exit 0
fi


if [ ! "$PGHOST" ]; then
        PGHOST=127.0.0.1
fi
if [ ! "$PGPORT" ]; then
        PGPORT=5432
fi
if [ ! "$PGDATABASE" ]; then
        PGDATABASE=postgres
fi
if [ ! "$PGUSER" ]; then
        PGUSER=pgadmin
fi
if [ ! "$PGPASSWORD" ]; then
        PGPASSWORD=pgadmin
	export PGPASSWORD=pgadmin
fi

CHK_QUARTZ=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep quartz | wc -l)"`
CHK_HIBERNATE=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep hibernate | wc -l)"`
CHK_JCR=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep jackrabbit | wc -l)"`

echo "quartz: $CHK_QUARTZ"
echo "hibernate: $CHK_HIBERNATE"
echo "jcr: $CHK_JCR"

if [ "$CHK_JCR" -eq "0" ]; then
        psql -U $PGUSER  -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_jcr_postgresql.sql
fi
if [ "$CHK_HIBERNATE" -eq "0" ]; then
        psql -U $PGUSER -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_repository_postgresql.sql
fi
if [ "$CHK_QUARTZ" -eq "0" ]; then
#        sed 's/\\connect quartz/--\\connect quartz/g' -i $PENTAHO_HOME/biserver-ce/data/postgresql/create_quartz_postgresql.sql
        psql -U $PGUSER -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_quartz_postgresql.sql
fi

# Hibernate
sed 's/hsql.hibernate.cfg.xml/postgresql.hibernate.cfg.xml/g' -i $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/hibernate/hibernate-settings.xml
sed "s/localhost:5432/$PGHOST:$PGPORT/g" -i $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/hibernate/postgresql.hibernate.cfg.xml

# Jackrabbit
sed "s/localhost:5432/$PGHOST:$PGPORT/g" -i $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/jackrabbit/repository.xml
sed "s/@@jcr_user@@/password/g" -i $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/jackrabbit/repository.xml

# Tomcat Pentaho app
sed "s/localhost:5432/$PGHOST:$PGPORT/g" -i $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho/META-INF/context.xml
sed "s/@@pentaho_user@@/password/g" -i $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho/META-INF/context.xml
sed "s/@@hibuser@@/password/g" -i $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho/META-INF/context.xml

touch /.pentaho_config
