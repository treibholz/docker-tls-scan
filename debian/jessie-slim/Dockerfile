FROM debian:jessie-slim

ENV TLSSCAN_VERSION 0.1.6
ENV TLSSCAN_BUILDER_SUM 90e40f390e4bf0ebf257fbf954c2f3efdfbdc360d35c068604923f9247668572

ENV TS_INSTALLDIR /usr/local
ENV TS_BUILDDIR /usr/src/tls-scan

RUN mkdir -p $TS_BUILDDIR && \
    apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install -y --no-install-suggests \
        build-essential curl zip autoconf libtool automake pkg-config jq && \
    curl -L https://raw.githubusercontent.com/prbinu/tls-scan/${TLSSCAN_VERSION}/build-x86-64.sh > ${TS_BUILDDIR}/build-x86-64.sh && \
    echo "${TLSSCAN_BUILDER_SUM} ${TS_BUILDDIR}/build-x86-64.sh" && \
    echo "${TLSSCAN_BUILDER_SUM} ${TS_BUILDDIR}/build-x86-64.sh" | sha256sum -c && \
    chmod +x ${TS_BUILDDIR}/build-x86-64.sh && \
    ${TS_BUILDDIR}/build-x86-64.sh && \
    apt-get remove --purge -y build-essential curl zip autoconf libtool automake pkg-config && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf $TS_BUILDDIR

USER nobody
ENTRYPOINT ["tls-scan"]
CMD ["--help"]

