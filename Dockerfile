FROM docker.elastic.co/beats/filebeat:5.5.2
ADD filebeat.yml /usr/share/filebeat/
USER root
RUN mkdir -p /etc/filebeat && cp filebeat*yml /etc/filebeat && chown filebeat:filebeat /etc/filebeat -Rv && chown filebeat:filebeat /usr/share/filebeat -Rv
USER filebeat
VOLUME /etc/filebeat
