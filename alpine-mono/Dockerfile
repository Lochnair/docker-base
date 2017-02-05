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

# Download signing key
RUN \
curl -L -o "/etc/apk/keys/lochnair.rsa.pub" "https://gist.githubusercontent.com/Lochnair/038b5f66942a2859eeb893753de64963/raw/817b13368b9d611f058cc7c8949717284dea628c/lochnair_alpine.rsa.pub"

# Download Mono package
RUN \
curl -L -o "/tmp/mono.apk" "https://build.lochnair.net/view/Alpine/job/alpine-mono/10/artifact/packages/x86_64/mono-4.6.2.16-r1.apk"

# Install Mono
RUN \
apk add --no-cache \
    "/tmp/mono.apk"