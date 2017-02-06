FROM lochnair/base:alpine
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Mono base image (Alpine)"

COPY root/ /

# Download Mono package
RUN \
curl -L -o "/tmp/mono.apk" "https://build.lochnair.net/view/Alpine/job/alpine-mono/16/artifact/packages/x86_64/mono-4.6.2.16-r1.apk"

# Install Mono
RUN \
apk add \
    --allow-untrusted \
    --no-cache \
    "/tmp/mono.apk"

# Remove tmp files
RUN \
rm /tmp/*