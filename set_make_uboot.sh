#!/bin/sh

export ARCH=arm64
export CROSS_COMPILE=aarch64-none-elf-
export PATH=/opt/toolchains/gcc-linaro-aarch64-none-elf-4.8-2013.11_linux/bin/:$PATH
export PATH=/opt/toolchains/gcc-linaro-arm-none-eabi-4.8-2014.04_linux/bin/:$PATH

make distclean
#make odroidn2_config
#make
