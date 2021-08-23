#!/bin/sh
docker run -d --restart=always --name node_exporter --net="host" --pid="host" -v "/:/host:ro,rslave" prom/node-exporter --path.rootfs=/host --collector.filesystem.ignored-mount-points="^/(sys|proc|dev|host|etc)($|/)"

