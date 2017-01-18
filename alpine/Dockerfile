FROM alpine:edge
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Base image"

ARG S6_VER="v1.18.1.5"
ARG S6_ARCH="amd64"

# Install packages:
# We need shadow for modifying users
# and tzdata to set the correct timezone
RUN apk add \
    --no-cache \
    --update \
    shadow \
    tzdata

# Install S&-overlay
ADD https://github.com/just-containers/s6-overlay/releases/download/${S6_VER}/s6-overlay-${S6_ARCH}.tar.gz /tmp/
RUN tar xzf /tmp/s6-overlay-${S6_ARCH}.tar.gz -C /

# Create app folder
RUN mkdir /app
RUN mkdir /config

# Create container user
RUN useradd -u 313 -U -s /bin/false -d /app cont && \
	usermod -G users cont 

COPY root/ /

ENTRYPOINT ["/init"]