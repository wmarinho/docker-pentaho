

FROM wmarinho/ubuntu:ubuntu-jdk7


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV BISERVER_TAG 5.1.0.0-740
#ENV PDI_TAG TRUNK-SNAPSHOT
#ENV PSW_TAG TRUNK-SNAPSHOT

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME $JAVA_HOME

RUN apt-get update && apt-get install wget unzip git openssh-server apache2 supervisor -y
RUN mkdir -p /var/run/sshd && mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf

ADD biserver-ce-${BISERVER_TAG}.zip /tmp/biserver-ce-${BISERVER_TAG}.zip

# Add pentaho user
#RUN useradd -s /bin/bash -m -d $PENTAHO_HOME pentaho
#RUN echo 'pentaho:pentaho' |chpasswd

RUN /usr/bin/unzip -q /tmp/biserver-ce-${BISERVER_TAG}.zip -d $PENTAHO_HOME 
#RUN  /usr/bin/unzip -q /tmp/pdi-ce-${PDI_TAG}.zip -d $PENTAHO_HOME 
#RUN /usr/bin/unzip -q /tmp/workbench-${PSW_TAG}.zip -d $PENTAHO_HOME 
#RUN mv $PENTAHO_HOME/workbench-${PSW_TAG} $PENTAHO_HOME/workbench

RUN rm -f /tmp/biserver-ce-${BISERVER_TAG}.zip 
#RUN rm -f /tmp/pdi-ce-${PDI_TAG}.zip /tmp/workbench-${PSW_TAG}.zip

#ADD init_pentaho /etc/init.d/pentaho
#ADD start-pentaho.sh $JAVA_PENTAHO_HOME/biserver-ce/

# Disable first-time startup prompt
RUN rm $PENTAHO_HOME/biserver-ce/promptuser.sh

# Disable daemon mode for Tomcat
RUN sed -i -e 's/\(exec ".*"\) start/\1 run/' /opt/pentaho/biserver-ce/tomcat/bin/startup.sh


#RUN chmod +x /etc/init.d/pentaho
#RUN chown -R pentaho:pentaho $PENTAHO_HOME
RUN chmod +x $PENTAHO_HOME/biserver-ce/start-pentaho.sh

RUN echo 'root:pentaho' |chpasswd


EXPOSE 22 8080 
CMD ["/usr/bin/supervisord"]
