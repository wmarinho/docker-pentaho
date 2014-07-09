

FROM wmarinho/tomcat:6


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV BISERVER_TAG 5.1-12

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME $JAVA_HOME

RUN apt-get update \
	&& apt-get install wget unzip git -y 


# Download Pentaho BI Server
RUN /usr/bin/wget -nv http://ci.pentaho.com/job/biserver-ce-5.1/lastSuccessfulBuild/artifact/assembly/dist/biserver-manual-ce-TRUNK-SNAPSHOT-jenkins-biserver-ce-${BISERVER_TAG}.zip -O /tmp/biserver-ce-${BISERVER_TAG}.zip

RUN /usr/bin/unzip -q /tmp/biserver-ce-${BISERVER_TAG}.zip -d /tmp  \
	&& mkdir  -p $PENTAHO_HOME/biserver-ce \
	&& ln -s $CATALINA_HOME $PENTAHO_HOME/biserver-ce/tomcat
RUN rm -f /tmp/biserver-ce-${BISERVER_TAG}.zip
RUN mv /tmp/pentaho.war $PENTAHO_HOME/biserver-ce/tomcat/webapps \
	&& mv /tmp/pentaho-style.war $PENTAHO_HOME/biserver-ce/tomcat/webapps \
	&& /usr/bin/unzip -q /tmp/pentaho-data.zip -d $PENTAHO_HOME/biserver-ce \
	&& /usr/bin/unzip -q /tmp/pentaho-solutions.zip -d $PENTAHO_HOME/biserver-ce \
	&& rm -rf /tmp/pentaho* \
	&& /usr/bin/unzip -q $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho.war -d $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho \
	&& rm $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho.war \
	&& cp $PENTAHO_HOME/biserver-ce/data/lib/hsql*.jar $PENTAHO_HOME/biserver-ce/tomcat/lib

RUN /usr/bin/wget -nv https://h2database.googlecode.com/files/h2-2010-03-05.zip -O /tmp/h2-2010-03-05.zip \
	&& /usr/bin/unzip -q /tmp/h2-2010-03-05.zip -d /tmp \
	&& cp /tmp/h2/bin/h2*.jar $PENTAHO_HOME/biserver-ce/tomcat/lib \
	&& rm -rf /tmp/h2*

ENV PENTAHO_JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV JAVA_HOME /usr/lib/jvm/java-7-oracle
ENV CATALINA_OPTS -Djava.awt.headless=true -Xms512m -Xmx1024m -XX:MaxPermSize=256m -Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8000 -Dsun.rmi.dgc.client.gcInterval=3600000 -Dsun.rmi.dgc.server.gcInterval=3600000

ENV CATALINA_HOME /opt/pentaho/biserver-ce/tomcat
ENV CATALINA_BASE /opt/pentaho/biserver-ce/tomcat

RUN apt-get install postgresql-client-9.3 -y

ADD config/postgresql/jackrabbit/repository.xml  $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/jackrabbit/
ADD config/postgresql/tomcat/context.xml $PENTAHO_HOME/biserver-ce/tomcat/webapps/pentaho/META-INF/
ADD config/postgresql/tomcat/lib/postgresql-9.3-1101.jdbc41.jar $PENTAHO_HOME/biserver-ce/tomcat/lib/

ADD scripts/init_pentaho.sh $PENTAHO_HOME/biserver-ce/
ADD scripts/start_pentaho.sh $PENTAHO_HOME/biserver-ce/


EXPOSE 8080 
CMD ["$PENTAHO_HOME/biserver-ce/start_pentaho.sh"]
