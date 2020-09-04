#!/bin/sh
set -eu
kibana_conf_dir=kibana-config-7.8.0
if [ ! -d "${kibana_conf_dir}" -o ! -f "${kibana_conf_dir}/kibana.yml" ]; then
    echo "error: ${kibana_conf_dir}/kibana.yml does not exist"
    exit 1
fi
set -x
exec docker run --rm --network=host --name kibana \
  -v "`pwd`/${kibana_conf_dir}:/usr/share/kibana/config" \
  --security-opt seccomp=unconfined \
  docker.io/elastic/kibana:7.8.0
