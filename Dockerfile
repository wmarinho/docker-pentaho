

FROM wmarinho/tomcat:6


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV BISERVER_TAG 5.1-9

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
	&& cp $PENTAHO_HOME/biserver-ce/data/lib/hsql*.jar $PENTAHO_HOME/biserver-ce/tomcat/lib

RUN /usr/bin/wget -nv https://h2database.googlecode.com/files/h2-2010-03-05.zip -O /tmp/h2-2010-03-05.zip \
	&& /usr/bin/unzip -q /tmp/h2-2010-03-05.zip -d /tmp \
	&& cp /tmp/h2/bin/h2*.jar $PENTAHO_HOME/biserver-ce/tomcat/lib \
	&& rm -rf /tmp/h2*

# Disable first-time startup prompt
#RUN rm $PENTAHO_HOME/biserver-ce/promptuser.sh

# Disable daemon mode for Tomcat
#RUN sed -i -e 's/\(exec ".*"\) start/\1 run/' /opt/pentaho/biserver-ce/tomcat/bin/startup.sh


#RUN chmod +x $PENTAHO_HOME/biserver-ce/start-pentaho.sh

EXPOSE 8080 
CMD ["./run.sh"]
