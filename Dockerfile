FROM docker.elastic.co/beats/filebeat:5.5.2
USER root
RUN mkdir -p /etc/filebeat && cp filebeat*yml /etc/filebeat && chown filebeat:filebeat /etc/filebeat -Rv
USER filebeat
VOLUME /etc/filebeat
CMD ["filebeat", "-e", "-path.config", "/etc/filebeat"]
