# docker-tls-scan
Dockerfiles for tls-scan (https://github.com/prbinu/tls-scan)

All Images are currently based on Version 0.1.6.

## Debian/Ubuntu

Those images are all built by compiling build-x86-64.sh from prbinu in the image.

The images are cleaned up after the build, but have still between 100-230 MB.

They can be used just as documented in https://github.com/prbinu/tls-scan.

## Alpine

The Alpine-image (the smallest of them <16MB) is based on (frolvlad/alpine-glibc), with the prebuilt binary from prbinu.
(It didn't compile on alpine). The ca-certs are in /tls-scan/


