# Centos image
#
# Version 0.1

# Pull from Centos


FROM wmarinho/ubuntu:ubuntu-jdk7

MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV BISERVER_TAG 5.0-SNAPSHOT
ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME $JAVA_HOME

RUN apt-get update
RUN apt-get install wget -y

# Download Pentaho BI Server
RUN /usr/bin/wget -nv http://ci.pentaho.com/job/BISERVER-CE-5.0/lastSuccessfulBuild/artifact/assembly/dist/biserver-ce-${BISERVER_TAG}.zip -O /tmp/biserver-ce-${BISERVER_TAG}.zip

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


RUN apt-get install -y git
RUN git clone https://github.com/webdetails/marketplace.git $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/marketplace
RUN git clone https://github.com/webdetails/cda.git $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/cda
RUN git clone https://github.com/webdetails/cdf.git $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/cdf
RUN git clone https://github.com/webdetails/ccc.git $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/ccc
RUN git clone https://github.com/webdetails/cde.git $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/cde
RUN git clone https://github.com/webdetails/sparkl.git $PENTAHO_HOME/biserver-ce/pentaho-solutions/system/sparkl


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
