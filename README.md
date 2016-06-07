# AwaLWM2M-deb

Debian/Ubuntu package build for [Awa LWM2M](https://github.com/FlowM2M/AwaLWM2M).

Set the variable GITHUB_COMMIT to specify the git revision that should be build. For example, "0.1.9".

Modify debian/changelog (e.g. with dch -i) to an appropriate version.

Run ./build-all.sh to create a docker image, containing the necessary Debian package building tools,
which is then run to generate the Ubuntu/Debian package in the 'ubuntu' directory.


