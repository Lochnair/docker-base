FROM alpine:edge
MAINTAINER Lochnair <me@lochnair.net>

LABEL Description="Base image"

RUN apk add \
    --no-cache \
    --update \
    su-exec \
    tzdata
