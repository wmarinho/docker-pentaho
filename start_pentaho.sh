#!/bin/bash

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
        PGUSER=docker
fi
if [ ! "$PGPASSWORD" ]; then
        PGPASSWORD=docker
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
	sed 's/\\connect quartz/--\\connect quartz/g' -i $PENTAHO_HOME/biserver-ce/data/postgresql/create_quartz_postgresql.sql
	psql -U $PGUSER -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_quartz_postgresql.sql
fi

sh /run.sh
