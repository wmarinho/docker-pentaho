#!/bin/bash
### ====================================================================== ###
## ##
## Pentaho Start Script ##
## ##
### ====================================================================== ###

DIR_REL=`dirname $0`
cd $DIR_REL
DIR=`pwd`
cd -

Xms_64="-Xmx2048m"
Xmx_64="-Xms1024m"
Xms_32="-Xms256m"
Xmx_32="-Xmx768m"
cat_opts=""

. "$DIR/set-pentaho-env.sh"

setPentahoEnv "$DIR/jre"

#if [ -e "$DIR/promptuser.sh" ]; then
#sh "$DIR/promptuser.sh"
#  rm "$DIR/promptuser.sh"
#fi
if [ "$?" = 0 ]; then
cd "$DIR/tomcat/bin"
  
  linuxbitness=`getconf LONG_BIT`
  if [ ${linuxbitness} == '64' ]; then
export CATALINA_OPTS="$Xms_64 $Xmx_64 -XX:MaxPermSize=256m -Dsun.rmi.dgc.client.gcInterval=3600000 -Dsun.rmi.dgc.server.gcInterval=3600000 $cat_opts"
  else
export CATALINA_OPTS="$Xms_32 $Xmx_32 -XX:MaxPermSize=256m -Dsun.rmi.dgc.client.gcInterval=3600000 -Dsun.rmi.dgc.server.gcInterval=3600000 $cat_opts"
  fi
JAVA_HOME=$_PENTAHO_JAVA_HOME
  sh startup.sh
fi
