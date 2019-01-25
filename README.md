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

## Каналы Торрент-ТВ в формате M3U
http://server_ip:8027/plugin?=pluginacestreamtv%5C.xml&pluginPath=as_channels%3Bttv.json%3Bкатегория Замените текст "категория" в конце url на один из вариантов.

   * Детские
   * Мужские
   * Музыка
   * Новостные
   * Общие
   * Познавательные
   * Развлекательные
   * Региональные
   * Религиозные
   * Спорт
   * Фильмы
   * Эротика
