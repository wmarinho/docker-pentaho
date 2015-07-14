if [ ! -f ".pentaho_pgconfig" ]; then
   sh $PENTAHO_HOME/scripts/setup_postgresql.sh
   #HOSTNAME=$(`echo hostname`)

   sed -i "s/node1/node_${NODE_ID}/g" $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/jackrabbit/repository.xml
   touch .pentaho_pgconfig
fi

if [ ! -f ".install_plugin" ]; then
   sh $PENTAHO_HOME/scripts/install_plugin.sh
   touch .install_plugin
fi

if [ -f "./custom_script.sh" ]; then
   . ./custom_script.sh
   mv ./custom_script.sh ./custom_script.sh.bkp
fi

sh $PENTAHO_HOME/biserver-ce/start-pentaho.sh
