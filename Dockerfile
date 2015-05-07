FROM sdhibit/rpi-baseimage:latest
MAINTAINER Steve Hibit <sdhibit@gmail.com>

ENV JAVA_VERSION 8u33
ENV JAVA_ORACLE_VERSION 8u33-b05
ENV JAVA_BASEURL http://download.oracle.com/otn-pub/java/jdk
ENV JAVA_URL ${JAVA_BASEURL}/${JAVA_ORACLE_VERSION}/jdk-${JAVA_VERSION}-linux-arm-vfp-hflt.tar.gz

ENV JAVA_HOME /opt/jdk1.8.0
ENV PATH $PATH:$JAVA_HOME/bin

RUN set -x \
 && mkdir -p "${JAVA_HOME}" \
 && curl -kL --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
    "${JAVA_URL}" | tar -xz -C "${JAVA_HOME}" --strip-components=1 \
 && update-alternatives --install "/usr/bin/java" "java" "${JAVA_HOME}/bin/java" 1 \
 && update-alternatives --set java "${JAVA_HOME}/bin/java"
