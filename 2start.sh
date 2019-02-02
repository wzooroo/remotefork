#!/bin/bash

/opt/start-engine --client-console @/opt/acestream.conf --bind-all --cache-dir /tmp/state/.ACEStream --state-dir /tmp/state/.ACEStream --access-token 666666 --service-remote-access --stats-report-peers >/dev/null 2>&1 &

cd /app/
chmod +x RemoteForkCP
./RemoteForkCP $1 >/dev/null 2>&1 &

while true; do
        sleep $2
        rm -rf /tmp/state/.ACEStream/collected_torrent_files/*
done
