FROM docker.elastic.co/beats/filebeat:5.5.2
ADD filebeat.yml /usr/share/filebeat/
USER root
RUN mkdir -p /etc/filebeat && cp filebeat*yml filebeat*json /etc/filebeat
USER filebeat
VOLUME /etc/filebeat
