FROM coresystem/remotefork

# Set correct environment variables
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /tmp

# install base packages
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /tmp

RUN apt-get update -y && \
    apt-get install -y apt-utils && \
    apt-get install -y \
    nano \
    tzdata \
    htop \
    mc \
    wget && \
    
# install acestream-engine
   wget -o - https://sybdata.de/files/public-docs/acestream_3.1.33_x86_webUI.tar.gz && \
   tar -zxvf acestream_3.1.33_x86_webUI.tar.gz && \
   mv acestream.engine/ /opt/ && \
   find /opt/acestream.engine/androidfs/system -type d -exec chmod 755 {} \; && \
   find /opt/acestream.engine/androidfs/system -type f -exec chmod 644 {} \; && \
   chmod 755 /opt/acestream.engine/androidfs/system/bin/* /opt/acestream.engine/androidfs/acestream.engine/python/bin/python && \
   rm -rf /tmp/* /opt/acestream/* /RunApp.sh
   
# add services
ADD acestream.conf /opt/acestream.engine/androidfs/acestream.engine/acestream.conf
ADD start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh
RUN chmod +x /opt/acestream86/acestream.start
RUN chmod +x /opt/acestream86/acestream.stop

EXPOSE 8621 62062 6878 8027 9955

WORKDIR /
