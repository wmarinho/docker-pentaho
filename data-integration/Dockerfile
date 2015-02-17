FROM wmarinho/ubuntu:oracle-jdk-7


MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV PDI_TAG 5.2.0.0-209

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME /usr/lib/jvm/java-7-oracle

RUN apt-get update \
	&& apt-get install wget unzip git -y 


# Download Pentaho BI Server
#RUN /usr/bin/wget -nv  http://ci.pentaho.com/view/Data%20Integration/job/kettle-5.1/lastSuccessfulBuild/artifact/assembly/dist/pdi-ce-${PDI_TAG}.zip -O /tmp/pdi-ce-${PDI_TAG}.zip 
RUN /usr/bin/wget -nv http://downloads.sourceforge.net/project/pentaho/Data%20Integration/5.2/pdi-ce-${PDI_TAG}.zip

RUN  /usr/bin/unzip -q /tmp/pdi-ce-${PDI_TAG}.zip -d  $PENTAHO_HOME &&\
     rm /tmp/pdi-ce-${PDI_TAG}.zip

ADD run.sh /opt/pentaho/data-integration/
ADD slave_dyn.xml /opt/pentaho/data-integration/

WORKDIR /opt/pentaho/data-integration

EXPOSE 8181

CMD ["./run.sh"]
