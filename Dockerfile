FROM coresystem/remotefork

# Set correct environment variables
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /tmp

# update apt and install dependencies
RUN apt-get update && apt-get upgrade -y && \
apt-get install -y \
wget

WORKDIR /
