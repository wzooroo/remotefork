#!/bin/bash

/opt/acestream86/acestream.start >/dev/null 2>&1 &

cd /app/
chmod +x RemoteForkCP
./RemoteForkCP $1 >/dev/null 2>&1 &

while true; do
        sleep $2
        rm -rf /opt/acestream86/androidfs/acestream.engine/.ACEStream/collected_torrent_files/*
done
