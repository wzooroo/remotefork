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
    wget && \
    
# acestream-engine
   cp /usr/lib/x86_64-linux-gnu/libcrypto.so.1.0.0 /opt/acestream/lib/libcrypto.so.1.0.0 && \
   cp /usr/lib/x86_64-linux-gnu/libssl.so.1.0.0 /opt/acestream/lib/libssl.so.1.0.0 && \
   rm -rf /tmp/* /start.sh /opt/acestream/data/plugins/*
   
# add services
ADD start.sh /usr/bin/start.sh
RUN chmod +x /usr/bin/start.sh

EXPOSE 8621 6878 8027

WORKDIR /
