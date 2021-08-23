#!/bin/sh

CHDIR=${pwd}
docker run -d -p 9093:9093 --name alertmanager --restart=always -v /etc/localtime:/etc/localtime -v $CHDIR/alertmanager.yml:/etc/alertmanager/alertmanager.xml prom/alertmanager
