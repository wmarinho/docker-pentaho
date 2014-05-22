# Centos image
#
# Version 0.1

# Pull from Centos


FROM wmarinho/ubuntu-jdk7

MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV BISERVER_TAG 5.0.1-stable
ENV JAVA_PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment

RUN apt-get update
RUN apt-get install wget -y

# Download Pentaho BI Server
RUN /usr/bin/wget -nv http://ufpr.dl.sourceforge.net/project/pentaho/Business%20Intelligence%20Server/${BISERVER_TAG}/biserver-ce-${BISERVER_TAG}.zip -O /tmp/biserver-ce-${BISERVER_TAG}.zip

RUN apt-get install unzip -y

# Add pentaho user
RUN useradd -s /bin/bash -m -d $JAVA_PENTAHO_HOME pentaho

RUN /usr/bin/unzip /tmp/biserver-ce-${BISERVER_TAG}.zip -d $JAVA_PENTAHO_HOME

RUN chown -R pentaho:pentaho $JAVA_PENTAHO_HOME
ADD init_pentaho /etc/init.d/pentaho
ADD start-pentaho.sh $JAVA_PENTAHO_HOME/biserver-ce
RUN chmod +x /etc/init.d/pentaho

RUN apt-get install -y openssh-server apache2 supervisor
RUN mkdir -p /var/run/sshd
RUN echo 'pentaho:pentaho' |chpasswd
RUN mkdir -p /var/log/supervisor

#CMD service pentaho start && tail -t $JAVA_PENTAHO_HOME/biserver-ce/tomcat/logs/catalina.out

ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf


EXPOSE 22 8080

CMD ["/usr/bin/supervisord"]
