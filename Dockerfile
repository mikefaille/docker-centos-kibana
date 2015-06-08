FROM centos:latest

MAINTAINER Michael Faille "michael@faille.io"

ENV KIBANA_VERSION 4.0.2
ENV ELASTICSEARCH_URL http://elasticsearch:9200
run echo "pub  4096R/F4A80EB5 2014-06-23 CentOS-7 Key (CentOS 7 Official Signing Key) <security@centos.org> Key fingerprint = 6341 AB27 53D7 8A78 A7C2  7BB1 24C6 A8A7 F4A8 0EB5" | gpg --quiet --with-fingerprint /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \
     gpg --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7 && \
     yum install tar -y && yum clean all && \
    curl -sLo /tmp/kibana-${KIBANA_VERSION}-linux-x64.tar.gz https://download.elastic.co/kibana/kibana/kibana-${KIBANA_VERSION}-linux-x64.tar.gz && \
    tar xf /tmp/kibana-${KIBANA_VERSION}-linux-x64.tar.gz -C /opt


CMD /opt/kibana-${KIBANA_VERSION}-linux-x64/bin/kibana -q -e ${ELASTICSEARCH_URL}
