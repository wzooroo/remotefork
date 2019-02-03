#!/bin/bash

# create folder
mkdir -p /fs/dlna
mkdir -p /fs/acestream
mkdir -p /fs/remotefork

# ACE Stream
 /opt/acestream/start-engine --client-console @/opt/acestream/acestream.conf --bind-all --access-token $2 --cache-dir /tmp/state/.ACEStream --state-dir /tmp/state/.ACEStream --vod-drop-max-age 120 --live-cache-type memory --vod-cache-type memory --live-buffer 25 --vod-buffer 10 --service-remote-access --stats-report-peers >/dev/null 2>&1 &

# Settings.json
if [ -s /fs/remotefork/Settings.json ]
then
	cat /fs/remotefork/Settings.json > /app/Settings.json
else
	cat /app/Settings.json > /fs/remotefork/Settings.json
fi

# RemoteFork
cd /app/
chmod +x RemoteForkCP
./RemoteForkCP docker $1 >/dev/null 2>&1 &

# clear cache
while true; do

        if [[ -z `pgrep acestream` ]]; then
			exit;
        fi

        if [[ -z `pgrep RemoteForkCP` ]]; then
			exit;
        fi

        sleep $3
		cat /app/Settings.json > /fs/remotefork/Settings.json
        rm -rf /tmp/state/.ACEStream/collected_torrent_files/*
done
