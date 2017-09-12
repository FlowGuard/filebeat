#!/bin/sh
if [ ! -f /etc/filebeat/fields.yml ]; then
  cp  /usr/share/filebeat/fields.yml /etc/filebeat/
fi

filebeat -e -path.config /etc/filebeat
