#!/bin/sh
set -eux
exec docker run --rm --network=host \
  --name elasticsearch \
  -e discovery.type=single-node \
  --security-opt seccomp=unconfined \
  docker.io/elastic/elasticsearch:7.8.0 \
  "$@"
