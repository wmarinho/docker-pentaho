#!/bin/bash

if [ "${INSTALL_PLUGIN}" ]; then
    wget --no-check-certificate 'https://raw.github.com/pmalves/ctools-installer/master/ctools-installer.sh' -P / -o /dev/null

    chmod +x ctools-installer.sh
    ./ctools-installer.sh -s $PENTAHO_HOME/biserver-ce/pentaho-solutions -w $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho -y -c ${INSTALL_PLUGIN}  
fi

