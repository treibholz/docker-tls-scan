FROM frolvlad/alpine-glibc

ADD https://github.com/prbinu/tls-scan/releases/download/0.1.6/tls-scan-linux.tar.gz /

USER nobody

WORKDIR /tls-scan
ENTRYPOINT ["/tls-scan/tls-scan"]
CMD ["--help"]
