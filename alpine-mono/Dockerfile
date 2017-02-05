FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Mono base image (Alpine)"

# Install build dependencies
RUN \
apk add \
    --no-cache \
    --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    --update \
    libgdiplus-dev

COPY root/ /

# Download Mono package
RUN \
curl -L -o "/tmp/mono.apk" "https://build.lochnair.net/view/Alpine/job/alpine-mono/10/artifact/packages/x86_64/mono-4.6.2.16-r1.apk"

# Install Mono
RUN \
apk add 
    --keys=/etc/apk/keys \
    --no-cache \
    "/tmp/mono.apk"

# Remove tmp files
RUN \
rm /tmp/*