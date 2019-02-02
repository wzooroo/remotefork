# RemoteFork
=========================

ubuntu based docker image for ![logo-text-test](https://user-images.githubusercontent.com/24189833/36645710-3deca456-1a6d-11e8-8bf0-84f078703d8d.png) (v3.1.35)

![img_0645](https://user-images.githubusercontent.com/24189833/52170358-eedb7880-2748-11e9-817b-63ec339b98fb.jpg)

## Установка
```
docker run -d --net=host -v /home/dlna/:/fs/dlna/ --name=acefork sybdata/remotefork bash -c "/usr/bin/start.sh your_server_ip hhGHqCMt 1800"
```

### где:
   * your_server_ip - адрес машины на которую ставится этот контейнер
   * 1800 - Время очистки кеша acestream в секундах (30 минут)
   * /home/dlna/ - Каталог доступный в DLNA
   * TZ='timezone'
   
### Веб-интерфейс
```
RemoteFork: http://your_server_ip:8027/
Ace Stream: http://your_server_ip:6878/webui/app/hhGHqCMt/server
```
## Каналы Торрент-ТВ в формате M3U
```
http://server_ip:8027/ttv.html 
```
или
```
http://server_ip:8027/plugin?=pluginacestreamtv%5C.xml&pluginPath=as_channels%3Bttv.json%3Bкатегория 
```
Замените текст "категория" в конце url на один из вариантов.

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
![2501ia](https://user-images.githubusercontent.com/24189833/51752839-af61bc00-20b8-11e9-81e6-442cc2af3be9.gif)
