#!/bin/bash

if [ ! -f "/.pentaho_pgconfig" ]; then
   sh $PENTAHO_HOME/scripts/setup_postgresql.sh
fi

sh $PENTAHO_HOME/biserver-ce/start-pentaho.sh
