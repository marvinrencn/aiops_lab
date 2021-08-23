#!/bin/bash
CHDIR=$(pwd)
docker run -d -p 9090:9090 --name prometheus -v /etc/localtime:/etc/localtime -v $CHDIR/prometheus.yml:/etc/prometheus/prometheus.yml -v $CHDIR/prometheus_record_rules.yml:/etc/prometheus/prometheus_record_rules.yml -v $CHDIR/prometheus_alert_rules.yml:/etc/prometheus/prometheus_alert_rules.yml prom/prometheus
