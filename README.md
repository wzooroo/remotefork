# RemoteFork
=========================

Debian based docker image for ![logo-text-test](https://user-images.githubusercontent.com/24189833/36645710-3deca456-1a6d-11e8-8bf0-84f078703d8d.png) (v3.1.33.1)&#174; https://web.telegram.org/#/im?p=@AceStreamMOD.

## Установка
```
docker run --privileged -d --net=host --name=ace86 sybdata/remotefork bash -c "/usr/bin/start.sh your_server_ip 600"
```

### где:
   * your_server_ip - адрес машины на которую ставится этот контейнер
   * 600 - Время очистки кеша acestream в секундах
   * TZ='timezone'
