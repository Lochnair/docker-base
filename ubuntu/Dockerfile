FROM ubuntu:xenial
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Ubuntu base image"

ARG S6_VER="v1.19.1.1"
ARG S6_ARCH="amd64"

# Install curl and openssl
RUN \
apt update && \
apt install -y \
    curl \
    openssl && \
apt remove -y locales && \
rm -rf /var/lib/apt/lists/*

# Install S&-overlay
RUN curl -L -o /tmp/s6-overlay-${S6_ARCH}.tar.gz https://github.com/just-containers/s6-overlay/releases/download/${S6_VER}/s6-overlay-${S6_ARCH}.tar.gz
RUN \
tar xzf /tmp/s6-overlay-${S6_ARCH}.tar.gz -C / && \
rm /tmp/s6-overlay-${S6_ARCH}.tar.gz && \

# Remove documentation
find /usr/share/doc -depth -type f ! -name copyright | xargs rm && \
find /usr/share/doc -empty|xargs rmdir && \
rm -rf /usr/share/man /usr/share/groff /usr/share/info /usr/share/lintian /usr/share/linda /var/cache/man && \

# Remove unnecessary locales
find /usr/share/locale -mindepth 1 -maxdepth 1 ! -name 'en' | xargs rm -r && \

# Create app folder
mkdir /app && \
mkdir /config && \

# Create container user
useradd -u 313 -U -s /bin/false -d /config cont && \
usermod -G users cont

COPY root/ /

ENTRYPOINT ["/init"]