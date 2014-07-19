#!/bin/bash

PGHOST="$RDS_HOSTNAME"
PGUSER="$RDS_USERNAME"
PGPASSWORD="$RDS_PASSWORD"
PGDATABASE="$RDS_DB_NAME"


if [ "$PGHOST" ]; then
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
	        PGPASSWORD=pgadmin.
	        export PGPASSWORD=pgadmin.
	fi
	
	echo "Checking PostgreSQL connection ..."

	nc -zv $PGHOST $PGPORT
	
	if [ "$?" -ne "0" ]; then
		echo "PostgreSQL connection failed."
		exit 0
	fi

	CHK_QUARTZ=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep quartz | wc -l)"`
	CHK_HIBERNATE=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep hibernate | wc -l)"`
	CHK_JCR=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep jackrabbit | wc -l)"`
	CHK_SDATA=`echo "$(psql -U $PGUSER  -h $PGHOST -l | grep sampledata | wc -l)"`

	echo "quartz: $CHK_QUARTZ"
	echo "hibernate: $CHK_HIBERNATE"
	echo "jcr: $CHK_JCR"
	echo "sampledata: $CHK_SDATA"

	cp -r $PENTAHO_HOME/config $PENTAHO_HOME/config_tmp

        rm -rf  "$PENTAHO_HOME/biserver-ce/tomcat/conf/Catalina/*" 
	rm -rf  "$PENTAHO_HOME/biserver-ce/tomcat/temp/*" 
	rm -rf	"$PENTAHO_HOME/biserver-ce/tomcat/work/*" 
	rm -rf	"$PENTAHO_HOME/biserver-ce/tomcat/logs/*"

	$PENTAHO_HOME/scripts/replace.sh "localhost:5432" "$PGHOST:$PGPORT" -path "$PENTAHO_HOME/config_tmp/" -infile
	$PENTAHO_HOME/scripts/replace.sh "@@hibuser@@" "$PGPASSWORD" -path "$PENTAHO_HOME/config_tmp/" -infile
	$PENTAHO_HOME/scripts/replace.sh "@@jcr_user@@" "$PGPASSWORD" -path "$PENTAHO_HOME/config_tmp/" -infile
	$PENTAHO_HOME/scripts/replace.sh "@@pentaho_user@@" "$PGPASSWORD" -path "$PENTAHO_HOME/config_tmp/" -infile
	$PENTAHO_HOME/scripts/replace.sh "awsbiuser" "$PGUSER" -path "$PENTAHO_HOME/config_tmp/" -infile
        
	cp -r $PENTAHO_HOME/config_tmp/postgresql/biserver-ce/* $PENTAHO_HOME/biserver-ce/
	rm -rf $PENTAHO_HOME/config $PENTAHO_HOME/config_tmp
	
	
	if [ "$CHK_JCR" -eq "0" ]; then
	        psql -U $PGUSER  -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_jcr_postgresql.sql
	fi
	if [ "$CHK_HIBERNATE" -eq "0" ]; then
	        psql -U $PGUSER -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_repository_postgresql.sql
	fi
	if [ "$CHK_QUARTZ" -eq "0" ]; then
	        psql -U $PGUSER -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/create_quartz_postgresql.sql
	fi
	 if [ "$CHK_SDATA" -eq "0" ]; then
                psql -U $PGUSER -h $PGHOST -d postgres -f $PENTAHO_HOME/biserver-ce/data/postgresql/sampledata.sql
        fi
	touch /.pentaho_pgconfig

fi



