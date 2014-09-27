#!/bin/bash

if [ "${INSTALL_PLUGIN}" ]; then
    wget --no-check-certificate 'https://raw.github.com/wmarinho/ctools-installer/master/ctools-installer.sh' -P / -o /dev/null
    sed -i 's/raw.github.com\/pmalves/raw.github.com\/wmarinho/g' /ctools-installer.sh 
    chmod +x /ctools-installer.sh
    ./ctools-installer.sh -s $PENTAHO_HOME/biserver-ce/pentaho-solutions -w $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho -b dev -y -c ${INSTALL_PLUGIN}  
fi

