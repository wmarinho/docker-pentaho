FROM java:7

MAINTAINER Wellington Marinho wpmarinho@globo.com

# Init ENV
ENV PENTAHO_VERSION 5.4
ENV PENTAHO_TAG 5.4.0.1-130

ENV PENTAHO_HOME /opt/pentaho

# Apply JAVA_HOME
RUN . /etc/environment
ENV PENTAHO_JAVA_HOME /usr/lib/jvm/java-1.7.0-openjdk-amd64

RUN apt-get update; \
    apt-get install wget unzip git postgresql-client-9.4 vim zip -y; \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*; \
    curl -O https://bootstrap.pypa.io/get-pip.py; \
    python get-pip.py; \
    pip install awscli; \
    rm -f get-pip.py

RUN mkdir ${PENTAHO_HOME}; useradd -s /bin/bash -d ${PENTAHO_HOME} pentaho; chown pentaho:pentaho ${PENTAHO_HOME}

USER pentaho

# Download Pentaho BI Server
RUN /usr/bin/wget --progress=dot:giga http://downloads.sourceforge.net/project/pentaho/Data%20Integration/${PENTAHO_VERSION}/pdi-ce-${PENTAHO_TAG}.zip -O /tmp/pdi-ce-${PENTAHO_TAG}.zip; \
    /usr/bin/unzip -q /tmp/pdi-ce-${PENTAHO_TAG}.zip -d  $PENTAHO_HOME; \
     rm /tmp/pdi-ce-${PENTAHO_TAG}.zip

COPY scripts/ /opt/pentaho/data-integration/
COPY slave_dyn.xml /opt/pentaho/data-integration/


WORKDIR /opt/pentaho/data-integration

EXPOSE 8181

CMD ["./run.sh"]
