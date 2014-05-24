# Centos image
#
# Version 0.1

# Pull from Centos


FROM wmarinho/ubuntu:ubuntu-jdk7


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV BISERVER_TAG 5.0.1-stable
ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME $JAVA_HOME

RUN apt-get update
RUN apt-get install wget -y

# Download Pentaho BI Server
RUN /usr/bin/wget -nv http://ufpr.dl.sourceforge.net/project/pentaho/Business%20Intelligence%20Server/${BISERVER_TAG}/biserver-ce-${BISERVER_TAG}.zip -O /tmp/biserver-ce-${BISERVER_TAG}.zip

RUN apt-get install unzip -y

# Add pentaho user
RUN useradd -s /bin/bash -m -d $PENTAHO_HOME pentaho

RUN /usr/bin/unzip /tmp/biserver-ce-${BISERVER_TAG}.zip -d $PENTAHO_HOME

ADD init_pentaho /etc/init.d/pentaho
#ADD start-pentaho.sh $JAVA_PENTAHO_HOME/biserver-ce/

# Disable first-time startup prompt
RUN rm $PENTAHO_HOME/biserver-ce/promptuser.sh
# Disable daemon mode for Tomcat
RUN sed -i -e 's/\(exec ".*"\) start/\1 run/' /opt/pentaho/biserver-ce/tomcat/bin/startup.sh

RUN chown -R pentaho:pentaho $PENTAHO_HOME
RUN chmod +x /etc/init.d/pentaho
RUN chmod +x $PENTAHO_HOME/biserver-ce/start-pentaho.sh
RUN rm -R $PENTAHO_HOME/biserver-ce/*.bat

RUN apt-get install -y openssh-server apache2 supervisor
RUN mkdir -p /var/run/sshd
RUN echo 'pentaho:pentaho' |chpasswd
RUN mkdir -p /var/log/supervisor

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf


EXPOSE 22 8080 
CMD ["/usr/bin/supervisord"]
