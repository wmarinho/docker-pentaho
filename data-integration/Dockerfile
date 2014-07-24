FROM wmarinho/ubuntu:oracle-jdk-7


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV PDI_TAG 5.1-SNAPSHOT

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME $JAVA_HOME

RUN apt-get update \
	&& apt-get install wget unzip git -y 


# Download Pentaho BI Server
RUN /usr/bin/wget -nv  http://ci.pentaho.com/view/Data%20Integration/job/kettle-5.1/lastSuccessfulBuild/artifact/assembly/dist/pdi-ce-${PDI_TAG}.zip -O /tmp/pdi-ce-${PDI_TAG}.zip 

RUN mkdir -p $PENTAHO_HOME/data-integration
RUN  /usr/bin/unzip -q /tmp/pdi-ce-${PDI_TAG}.zip -d  $PENTAHO_HOME/data-integration


WORKDIR $PENTAHO_HOME/data-integration

EXPOSE 8181

CMD ["./carte.sh", "0.0.0.0", "8181"]
