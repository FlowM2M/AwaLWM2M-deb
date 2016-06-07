#!/bin/bash -x
# Ensure GITHUB_COMMIT is set to required tag or SHA-1, and PACKAGE_VERSION is set to, e.g. "0.1.9"

set -o errexit
set -o nounset

#docker rmi -f registry-hh.flowcloud.systems:5000/flowm2m/awalwm2m-deb:latest
#docker pull registry-hh.flowcloud.systems:5000/flowm2m/awalwm2m-deb:latest
docker build -t awalwm2m-deb -f Dockerfile .
docker run -e GITHUB_COMMIT=$GITHUB_COMMIT -e PACKAGE_VERSION=$PACKAGE_VERSION -v $(pwd):/build -it awalwm2m-deb /build/build-deb.sh
