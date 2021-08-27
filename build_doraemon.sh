cd /tmp/ci/
wget https://forum.xda-developers.com/attachments/aik-linux-v3-8-all-tar-gz.5300923/
mv index.html aik.tar.gz
tar -xf aik.tar.gz
source ~/.compile
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-on7xelte.img
mv SimpleV2-on7xelte.img /tmp/ci/AIK-Linux/boot.img
cd /tmp/ci/AIK-Linux/
./unpackimg.sh
mkdir -p /tmp/ci/G610X
cd $LINUXDIR
make O=out exynos7870-on7xelte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-on7xelte_defconfig dtb.img
rm -rf /tmp/ci/AIK-Linux/split_img/boot.img-zImage
rm -rf /tmp/ci/AIK-Linux/split_img/boot.img-dtb
mv out/arch/arm64/boot/dtb.img /tmp/ci/AIK-Linux/split_img/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/AIK-Linux/split_img/boot.img-zImage
rm -rvf out
cd /tmp/ci/AIK-Linux/
./repackimg.sh
mv image-new.img G610X.img
rclone copy -v G610X.img drive:
source ~/.compile
mkdir -p /tmp/ci/J600X
cd $LINUXDIR
make O=out exynos7870-j6lte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-j6lte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/J600X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/J600X/boot.img-zImage
rm -rvf out
source ~/.compile
mkdir -p /tmp/ci/A320X
cd $LINUXDIR
make O=out exynos7870-a3y17lte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-a3y17lte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/A320X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/A320X/boot.img-zImage
rm -rvf out
source ~/.compile
mkdir -p /tmp/ci/A600X
cd $LINUXDIR
make O=out exynos7870-a6lte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-a6lte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/A600X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/A600X/boot.img-zImage
rm -rvf out
source ~/.compile
mkdir -p /tmp/ci/J530X
cd $LINUXDIR
make O=out exynos7870-j5y17lte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-j5y17lte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/J530X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/J530X/boot.img-zImage
rm -rvf out
source ~/.compile
mkdir -p /tmp/ci/J701X
cd $LINUXDIR
make O=out exynos7870-j7velte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-j7velte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/J701X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/J701X/boot.img-zImage
rm -rvf out
source ~/.compile
mkdir -p /tmp/ci/J710X
cd $LINUXDIR
make O=out exynos7870-j7xelte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-j7xelte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/J710X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/J710X/boot.img-zImage
rm -rvf out
source ~/.compile
mkdir -p /tmp/ci/J730X
cd $LINUXDIR
make O=out exynos7870-j7y17lte_defconfig
make O=out -j$(nproc --all)
make O=out exynos7870-j7y17lte_defconfig dtb.img
mv out/arch/arm64/boot/dtb.img /tmp/ci/J730X/boot.img-dtb
mv out/arch/arm64/boot/Image /tmp/ci/J730X/boot.img-zImage
rm -rvf out
