FROM docker.elastic.co/beats/filebeat:7.1.0
ADD filebeat.yml /etc/filebeat/filebeat.yml
ADD start.sh /start.sh
VOLUME /etc/filebeat
CMD "/start.sh"
