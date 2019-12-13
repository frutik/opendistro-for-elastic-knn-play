#!/bin/bash

PLUGINS_INSTALLED="/usr/share/elasticsearch/data/plugins.installed"
if [ ! -e $PLUGINS_INSTALLED ]; then
    echo "-- INSTALLING PLUGINS ON FIRST RUN --"
    /usr/share/elasticsearch/bin/elasticsearch-plugin install --silent --batch https://github.com/opendistro-for-elasticsearch/k-NN/files/3919901/opendistro-knn-1.2.1.0.zip
    touch $PLUGINS_INSTALLED
fi

/usr/local/bin/docker-entrypoint.sh
