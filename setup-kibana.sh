#!/bin/sh
set -eu
kibana_conf_dir=kibana-config-7.8.0
mkdir -p "${kibana_conf_dir}"
if [ -f "${kibana_conf_dir}/kibana.yml" ]; then
    echo "info: ${kibana_conf_dir}/kibana.yml already exported"
    exit
fi
set -x
exec docker run --rm docker.io/elastic/kibana:7.8.0 \
  sh -c 'cd /usr/share/kibana/config && tar -cf - .' |
  tar -C "${kibana_conf_dir}" -xvf -
