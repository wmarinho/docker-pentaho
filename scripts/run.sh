#!/bin/bash

if [ ! -f "/.pentaho_pgconfig" ]; then
   sh $PENTAHO_HOME/scripts/setup_postgresql.sh
fi

if [ "$RDS_HOSTNAME" ]; then
    HOSTNAME=$(`echo hostname`)
	sed -i "s/node1/${HOSTNAME}/g" $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/jackrabbit/repository.xml
fi


sh $PENTAHO_HOME/biserver-ce/start-pentaho.sh
