#!/bin/bash -x
# Ensure GITHUB_COMMIT is set to required tag or SHA-1, and PACKAGE_VERSION is set to, e.g. "0.1.9"

set -o errexit
set -o nounset

PACKAGE_NAME="awa"

GITHUB_TARBALL=$GITHUB_COMMIT.tar.gz
GITHUB_TARBALL_URL="https://github.com/FlowM2M/AwaLWM2M/archive/${GITHUB_TARBALL}"

ORIG_TARBALL="${PACKAGE_NAME}_${PACKAGE_VERSION}.orig.tar.gz"

# clean up first
rm -f $GITHUB_TARBALL
rm -f $ORIG_TARBALL

# retrieve source tarball
cd ubuntu
wget $GITHUB_TARBALL_URL
ln -s $GITHUB_TARBALL $ORIG_TARBALL

# extract source
tar xzf $ORIG_TARBALL --strip-components=1 -C awa

# build binary package, no testing
cd awa
export DEB_BUILD_OPTIONS=nocheck
dpkg-buildpackage -rfakeroot -us -uc
