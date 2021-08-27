#!/bin/bash
#
# Doraemon Kernel Script 2021
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software

# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

export DORAEMON_VERSION=R3.5-EAS
export DORAEMON_NAME=Doraemon-Kernel
export LOCALVERSION=-$DORAEMON_NAME-$DORAEMON_VERSION
export FOLDERVERSION=$DORAEMON_NAME-$DORAEMON_VERSION
export CROSS_COMPILE=/tmp/ci/gcc/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=q
export PLATFORM_VERSION=10.0.0
export SUBARCH=arm64
export ARCH=arm64
export DRIVE=Share/Devices/Exynos7870/$FOLDERVERSION/
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-on7xelte_defconfig
mkdir -p on7xelte
make O=on7xelte exynos7870-on7xelte_defconfig
make O=on7xelte exynos7870-on7xelte_defconfig dtb.img
make O=on7xelte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-on7xelte.img
mv SimpleV2-on7xelte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/on7xelte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/on7xelte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-on7xelte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-on7xelte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-a3y17lte_defconfig
mkdir -p a3y17lte
make O=a3y17lte exynos7870-a3y17lte_defconfig
make O=a3y17lte exynos7870-a3y17lte_defconfig dtb.img
make O=a3y17lte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-a3y17lte.img
mv SimpleV2-a3y17lte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/a3y17lte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/a3y17lte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-a3y17lte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-a3y17lte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-j5y17lte_defconfig
mkdir -p j5y17lte
make O=j5y17lte exynos7870-j5y17lte_defconfig
make O=j5y17lte exynos7870-j5y17lte_defconfig dtb.img
make O=j5y17lte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-j5y17lte.img
mv SimpleV2-j5y17lte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/j5y17lte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/j5y17lte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-j5y17lte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-j5y17lte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-j6lte_defconfig
mkdir -p j6lte
make O=j6lte exynos7870-j6lte_defconfig
make O=j6lte exynos7870-j6lte_defconfig dtb.img
make O=j6lte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-j6lte.img
mv SimpleV2-j6lte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/j6lte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/j6lte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-j6lte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-j6lte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-a6lte_defconfig
mkdir -p a6lte
make O=a6lte exynos7870-a6lte_defconfig
make O=a6lte exynos7870-a6lte_defconfig dtb.img
make O=a6lte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-j6lte.img
mv SimpleV2-a6lte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/a6lte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/a6lte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-a6lte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-a6lte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-j7velte_defconfig
mkdir -p j7velte
make O=j7velte exynos7870-j7velte_defconfig
make O=j7velte exynos7870-j7velte_defconfig dtb.img
make O=j7velte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-j7velte.img
mv SimpleV2-j7velte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/j7velte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/j7velte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-j7velte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-j7velte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-j7xelte_defconfig
mkdir -p j7xelte
make O=j7xelte exynos7870-j7xelte_defconfig
make O=j7xelte exynos7870-j7xelte_defconfig dtb.img
make O=j7xelte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-j7xelte.img
mv SimpleV2-j7xelte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/j7xelte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/j7xelte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-j7xelte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-j7xelte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
cat /tmp/ci/kernel/arch/arm64/configs/exynos7870-dora_defconfig >> /tmp/ci/kernel/arch/arm64/configs/exynos7870-j7y17lte_defconfig
mkdir -p j7y17lte
make O=j7y17lte exynos7870-j7y17lte_defconfig
make O=j7y17lte exynos7870-j7y17lte_defconfig dtb.img
make O=j7y17lte -j$(nproc --all)
cd /tmp/ci/kernel/Doraemon/A.I.K/
wget https://github.com/Doraemon-Kernel/android_kernel_samsung_7870/releases/download/SPK/SimpleV2-j7y17lte.img
mv SimpleV2-j7y17lte.img boot.img
./unpackimg.sh
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
rm -rf /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
mv /tmp/ci/kernel/j7y17lte/arch/arm64/boot/dtb.img /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-dtb
mv /tmp/ci/kernel/j7y17lte/arch/arm64/boot/Image /tmp/ci/kernel/Doraemon/A.I.K/split_img/boot.img-zImage
./repackimg.sh
echo -n "SEANDROIDENFORCE" >> /tmp/ci/kernel/Doraemon/A.I.K/image-new.img
mv image-new.img $DORAEMON_NAME-$DORAEMON_VERSION-j7y17lte.img
rclone copy $DORAEMON_NAME-$DORAEMON_VERSION-j7y17lte.img drive:$DRIVE
./cleanup.sh
rm -rf *.img
cd /tmp/ci/kernel/
git checkout HEAD Doraemon
##################################################################
