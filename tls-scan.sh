#!/bin/sh

docker run \
    --rm=true --interactive --tty \
    treibholz/tls-scan:latest --cacert=/tls-scan/ca-bundle.crt "$@"

# vim:fdm=marker:ts=4:sw=4:sts=4:ai:sta:et
