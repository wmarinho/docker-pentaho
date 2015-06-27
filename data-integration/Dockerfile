FROM java:7

MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV PDI_VERSION 5.2
ENV PDI_TAG 5.2.0.0-194

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-amd64

RUN apt-get update \
	&& apt-get install wget unzip git -y && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


# Download Pentaho BI Server
RUN /usr/bin/wget -nv http://ufpr.dl.sourceforge.net/project/pentaho/Data%20Integration/${PDI_VERSION}/pdi-ce-${PDI_TAG}.zip -O /tmp/pdi-ce-${PDI_TAG}.zip

RUN  /usr/bin/unzip -q /tmp/pdi-ce-${PDI_TAG}.zip -d  $PENTAHO_HOME &&\
     rm /tmp/pdi-ce-${PDI_TAG}.zip

COPY run.sh /opt/pentaho/data-integration/
COPY slave_dyn.xml /opt/pentaho/data-integration/

WORKDIR /opt/pentaho/data-integration

EXPOSE 8181

CMD ["./run.sh"]
