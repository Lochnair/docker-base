FROM alpine:3.5
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Base image"

ARG S6_VER="v1.19.1.1"
ARG S6_ARCH="amd64"

# Install packages:
# We need shadow for modifying users
# and tzdata to set the correct timezone
RUN \
apk add \
    --no-cache \
    --update \
    bash \
    curl \
    openssl \
    shadow \
    tzdata

# Install S&-overlay
RUN curl -L -o /tmp/s6-overlay-${S6_ARCH}.tar.gz https://github.com/just-containers/s6-overlay/releases/download/${S6_VER}/s6-overlay-${S6_ARCH}.tar.gz
RUN \
tar xzf /tmp/s6-overlay-${S6_ARCH}.tar.gz -C / && \
rm /tmp/s6-overlay-${S6_ARCH}.tar.gz && \

# Create app folder
mkdir /app && \
mkdir /config && \

# Create container user
useradd -u 313 -U -s /bin/false -d /config cont && \
usermod -G users cont

COPY root/ /

ENTRYPOINT ["/init"]