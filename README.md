# remotefork

Debian based docker image for acestream.

logo-text-test (v3.1.31)® https://web.telegram.org/#/im?p=@AceStreamMOD
usage

docker run \
--privileged \
-d \
-e PUID=0 \
-e PGID=0 \
--net=host \
--name=ace86 \
-e TZ=Europe/Berlin \
sybdata/remotefork bash -c "/usr/bin/start.sh your_server_ip 600"

где:
    your_server_ip - адрес машины на которую ставится этот контейнер
    600 - Время очистки кеша acestream в секундах
    TZ='timezone'
