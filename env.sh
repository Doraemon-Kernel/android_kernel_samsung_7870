cd /tmp/ci/kernel
touch ~/.compile
echo "export ARCH=arm64" >> ~/.compile
echo "export SUBARCH=arm64" >> ~/.compile
echo "export CROSS_COMPILE=/tmp/ci/gcc/bin/aarch64-linux-gnu-" >> ~/.compile
echo "export ANDROID_MAJOR_VERSION=q" >> ~/.compile
echo "export PLATFORM_VERSION=10.0.0" >> ~/.compile
echo "export CCACHE_DIR=/tmp/ccache" >> ~/.compile
echo "export CCACHE_EXEC=$(which ccache)" >> ~/.compile
echo "export USE_CCACHE=1" >> ~/.compile
echo "ccache -M 20G" >> ~/.compile
echo "ccache -o compression=true" >> ~/.compile
echo "export LINUXDIR=/tmp/ci/Linux/" >> ~/.compile
echo "ccache -z" >> ~/.compile
