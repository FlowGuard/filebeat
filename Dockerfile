FROM docker.elastic.co/beats/filebeat:5.5.2
ADD filebeat.yml /etc/filebeat/filebeat.yml
VOLUME /etc/filebeat
CMD ["filebeat", "-e", "-path.config", "/etc/filebeat"]
