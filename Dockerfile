

FROM wmarinho/ubuntu:oracle-jdk-7


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
RUN /usr/bin/wget -nv http://ci.pentaho.com/job/biserver-ce-5.1/lastSuccessfulBuild/artifact/assembly/dist/biserver-ce-TRUNK-SNAPSHOT-jenkins-biserver-ce-${BISERVER_TAG}.zip -O /tmp/biserver-ce-${BISERVER_TAG}.zip

RUN /usr/bin/unzip -q /tmp/biserver-ce-${BISERVER_TAG}.zip -d $PENTAHO_HOME 

RUN rm -f /tmp/biserver-ce-${BISERVER_TAG}.zip 

# Disable first-time startup prompt
RUN rm $PENTAHO_HOME/biserver-ce/promptuser.sh

# Disable daemon mode for Tomcat
RUN sed -i -e 's/\(exec ".*"\) start/\1 run/' /opt/pentaho/biserver-ce/tomcat/bin/startup.sh


RUN chmod +x $PENTAHO_HOME/biserver-ce/start-pentaho.sh

EXPOSE 8080 
CMD ["/opt/pentaho/biserver-ce/start-pentaho.sh"]
