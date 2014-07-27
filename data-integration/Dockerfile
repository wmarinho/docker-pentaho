FROM wmarinho/ubuntu:oracle-jdk-7


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV PDI_TAG 5.1-SNAPSHOT

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME /usr/lib/jvm/java-7-oracle

RUN apt-get update \
	&& apt-get install wget unzip git -y 


# Download Pentaho BI Server
RUN /usr/bin/wget -nv  http://ci.pentaho.com/view/Data%20Integration/job/kettle-5.1/lastSuccessfulBuild/artifact/assembly/dist/pdi-ce-${PDI_TAG}.zip -O /tmp/pdi-ce-${PDI_TAG}.zip 

RUN  /usr/bin/unzip -q /tmp/pdi-ce-${PDI_TAG}.zip -d  $PENTAHO_HOME/ &&\
     rm /tmp/pdi-ce-${PDI_TAG}.zip


EXPOSE 8181 40000 40001 40002 40003 40005 40005 40006 40007 40008 40009 40010

CMD ["/opt/pentaho/data-integration/carte.sh", "0.0.0.0", "8181"]
