FROM coresystem/remotefork

# Set correct environment variables
ENV DEBIAN_FRONTEND=noninteractive LANG=ru_RU.UTF-8 LANGUAGE=ru_RU:ru LC_ALL=ru_RU.UTF-8
WORKDIR /tmp

# Set the locale
RUN locale-gen ru_RU.UTF-8 && \

# update apt and install dependencies
apt-get update && apt-get upgrade -y && \
apt-get install -y \
wget

WORKDIR /
