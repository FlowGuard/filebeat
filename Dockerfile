FROM docker.elastic.co/beats/filebeat:6.0.0-beta2
ADD filebeat.yml /etc/filebeat/filebeat.yml
VOLUME /etc/filebeat
CMD ["filebeat", "-e", "-path.config", "/etc/filebeat"]
