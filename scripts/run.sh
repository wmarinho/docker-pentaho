#!/bin/bash

if [ ! -f "/.pentaho_config" ]; then
   sh $PENTAHO_HOME/scripts/setup_postgresql.sh
   HOSTNAME=$(`echo hostname`)
   sed -i "s/node1/node-${HOSTNAME}/g" $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/jackrabbit/repository.xml
   sh $PENTAHO_HOME/scripts/install_plugin.sh
   touch /.pentaho_config
fi

sh $PENTAHO_HOME/biserver-ce/start-pentaho.sh
