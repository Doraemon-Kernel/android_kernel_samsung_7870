#!/bin/bash

export ARCH=arm64
export CROSS_COMPILE=../gcc/bin/aarch64-linux-gnu-
export ANDROID_MAJOR_VERSION=q
export ANDROID_PLATFORM_VERSION=10.0.0

make O=./out $1
make O=./out -j$(nproc --all)
