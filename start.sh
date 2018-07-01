#!/bin/bash

/opt/acestream/acestream.start >/dev/null 2>&1 &

cd /app/
dotnet RemoteForkCP.dll $1 >/dev/null 2>&1 &

while true; do
        sleep $2
        rm -rf /opt/acestream/androidfs/acestream.engine/.ACEStream/collected_torrent_files/*
done
