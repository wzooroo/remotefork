FROM coresystem/remotefork

# Set correct environment variables
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /tmp

# install base packages
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /tmp

RUN apt-get update -y && apt-get upgrade -V -y && apt-get dist-upgrade -y && apt-get autoremove -y && \
    apt-get install -y apt-utils && \
    apt-get install -y --no-install-recommends \
    python-libxslt1 \
    net-tools \
    nano \
    tzdata \
    wget && \
    
# install acestream-engine
   wget -o - https://github.com/ShutovPS/RemoteFork/releases/download/v1.40.0.12/linux-x64.zip && \
   unzip linux-x64.zip && \
   mv linux-x64 app && \
   rm -rf /app/wwwroot && \
   mv app/* /app && \
   wget -o - https://github.com/ShutovPS/RemoteFork.Plugins/releases/download/filmix.0.0.3/RemoteFork.Plugins.Filmix.dll && \
   wget -o - https://github.com/ShutovPS/RemoteFork.Plugins/releases/download/hdrezka.0.0.10/RemoteFork.Plugins.HDRezka.dll && \
   wget -o - https://github.com/ShutovPS/RemoteFork.Plugins/releases/download/kinosha.0.0.2/RemoteFork.Plugins.Kinosha.dll && \
   wget -o - https://github.com/ShutovPS/RemoteFork.Plugins/releases/download/moonwalk.0.0.7/RemoteFork.Plugins.Moonwalk.dll && \
   mv *.dll /app/Plugins && \
   
 # acestream
   cd /opt/ && \
   wget -o - http://acestream.org/downloads/linux-beta/acestream_3.1.35_ubuntu_18.04_x86_64.tar.gz && \
   tar -zxvf acestream_3.1.35_ubuntu_18.04_x86_64.tar.gz && \
   cp /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /opt/lib/libcrypto.so.1.0.0 && \
   cp /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0 /opt/lib/libssl.so.1.0.0 && \
   rm -rf acestream_3.1.35_ubuntu_18.04_x86_64.tar.gz /opt/data/plugins/* && \
  
   
   #wget -o - https://sybdata.de/data/acestream/acestream_3.1.33.1_x86_wbUI.tar.gz && \
   #tar -zxvf acestream_3.1.33.1_x86_wbUI.tar.gz && \
   #mv acestream.engine/ /opt/ && \
   rm -rf /tmp/* /RunApp.sh 
   
# add services
#ADD acestream.conf /opt/acestream.engine/androidfs/acestream.engine/acestream.conf
ADD start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh

EXPOSE 8621 6878 8027

WORKDIR /
