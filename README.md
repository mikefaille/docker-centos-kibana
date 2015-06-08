docker-kibana
===============
Docker [automated build](https://registry.hub.docker.com/u/mikefaille/centos-kibana/) with Kibana 4.0.2 based on [centos:latest](https://registry.hub.docker.com/u/library/centos/)

**Usage with link to elasticsearch:**

     docker run -it --rm --link elasticsearch:elasticsearch mikefaille/kibana:latest

**Usage with URL to elasticsearch:**

     docker run -it --rm -e ELASTICSEARCH_URL=http://elasticsearch_ip:9200 mikefaille/kibana:latest

* Docker-Compose examples here in [logstash](https://github.com/MaksymBilenko/docker-logstash)
