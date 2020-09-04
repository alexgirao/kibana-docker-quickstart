# -*- mode:org; coding:utf-8-unix -*-

#+TITLE: 2020-09-04_14h13m24_kibana-sample_data_flights-exploration
#+STARTUP: indent

* References

- https://www.elastic.co/guide/en/kibana/current/tutorial-sample-data.html

* Download docker images

#+BEGIN_SRC sh
  docker pull docker.io/elastic/elasticsearch:7.8.0
  docker pull docker.io/elastic/logstash:7.8.0
  docker pull docker.io/elastic/kibana:7.8.0
  docker pull docker.io/elastic/filebeat:7.8.0
#+END_SRC

* Start elasticsearch

#+BEGIN_SRC sh
  ./start-elasticsearch.sh
#+END_SRC

* Setup Kibana

#+BEGIN_SRC sh
  ./setup-kibana.sh
#+END_SRC

* Start kibana

#+BEGIN_SRC sh
  ./start-kibana.sh
#+END_SRC
