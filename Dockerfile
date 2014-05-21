# Centos image
#
# Version 0.1

# Pull from Centos


FROM wmarinho/ubuntu-jdk7

MAINTAINER Wellington Marinho wpmarinho@globo.com

ENV BISERVER_TAG 5.0.1-stable
ENV JAVA_PENTAHO_HOME /opt/pentaho

RUN apt-get update
RUN apt-get install wget -y
RUN /usr/bin/wget -nv http://ufpr.dl.sourceforge.net/project/pentaho/Business%20Intelligence%20Server/${BISERVER_TAG}/biserver-ce-${BISERVER_TAG}.zip -O /tmp/biserver-ce-${BISERVER_TAG}.zip

RUN apt-get install unzip -y
RUN mkdir $JAVA_PENTAHO_HOME
RUN /usr/bin/unzip /tmp/biserver-ce-${BISERVER_TAG}.zip -d $JAVA_PENTAHO_HOME
