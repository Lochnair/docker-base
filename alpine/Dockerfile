FROM alpine:edge
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Base image"

ARG S6_VER="v1.18.1.5"
ARG S6_ARCH="amd64"

RUN \
# Install packages:
# We need shadow for modifying users
# and tzdata to set the correct timezone
apk add \
    --no-cache \
    --update \
    bash \
    curl \
    openssl \
    shadow \
    tzdata && \

# Install S&-overlay
curl -L -o /tmp/s6-overlay-${S6_ARCH}.tar.gz https://github.com/just-containers/s6-overlay/releases/download/${S6_VER}/s6-overlay-${S6_ARCH}.tar.gz && \
tar xzf /tmp/s6-overlay-${S6_ARCH}.tar.gz -C / && \

# Create app folder
mkdir /app && \
mkdir /config && \

# Create container user
useradd -u 313 -U -s /bin/false -d /app cont && \
usermod -G users cont

COPY root/ /

ENTRYPOINT ["/init"]