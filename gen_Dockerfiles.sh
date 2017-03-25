#!/bin/bash
LANG=C

DIST="debian"

for IMAGE in jessie jessie-slim stretch stretch-slim; do
    mkdir -p ${DIST}/${IMAGE}
    cat Dockerfile.common | sed -e "s/%%%IMAGE%%%/${DIST}:${IMAGE}/" >  ${DIST}/${IMAGE}/Dockerfile
    git add ${DIST}/${IMAGE}/Dockerfile
    echo "docker build -t tls-scan:${DIST}-${IMAGE} ${DIST}/${IMAGE}/" > _${DIST}_${IMAGE}.build
    chmod +x _${DIST}_${IMAGE}.build
done

DIST="ubuntu"

for IMAGE in 16.04 16.10 17.04; do
    mkdir -p ${DIST}/${IMAGE}
    cat Dockerfile.common | sed -e "s/%%%IMAGE%%%/${DIST}:${IMAGE}/" >  ${DIST}/${IMAGE}/Dockerfile
    git add ${DIST}/${IMAGE}/Dockerfile
    echo "docker build -t tls-scan:${DIST}-${IMAGE} ${DIST}/${IMAGE}/" > _${DIST}_${IMAGE}.build
    chmod +x _${DIST}_${IMAGE}.build
done

