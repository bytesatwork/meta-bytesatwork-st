# Copyright (C) 2022 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

#@TYPE: Machine
#@NAME: byteENGINE STM32MP1
#@DESCRIPTION: byteENGINE STM32MP1 by bytes at work AG

MACHINEOVERRIDES =. "stm32mp1common:stm32mp15common:"

include conf/machine/include/st-machine-common-stm32mp.inc
include conf/machine/include/st-machine-providers-stm32mp.inc

DEFAULTTUNE = "cortexa7thf-neon-vfpv4"
include conf/machine/include/arm/armv7a/tune-cortexa7.inc

PREFERRED_PROVIDER_virtual/bootloader = "u-boot-stm32mp"
PREFERRED_PROVIDER_virtual/kernel = "linux-stm32mp"

# default kernel load address
ST_KERNEL_LOADADDR = "0xC2000040"

# install kernel modules
MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS += "kernel-modules"

# Set the variable used by meta-st-stm32mp with the yocto standard variable.
# Without this, we cannot create images bigger than ~700MB.
ROOTFS_PARTITION_SIZE = "${IMAGE_ROOTFS_SIZE}"
IMAGE_ROOTFS_MAXSIZE = "8000000000"

# wic
ENABLE_FLASHLAYOUT_CONFIG = "0"
ENABLE_PARTITIONS_IMAGE = "0"
WKS_FILE = "stm32mp1.wks"
IMAGE_FSTYPES += "wic.gz wic.bmap"
UBOOT_BINARY = "u-boot.img"
IMAGE_BOOT_FILES = "${KERNEL_IMAGETYPE} ${KERNEL_DEVICETREE}"

SPDX_WORKAROUND ??= "create-spdx"
INHERIT:remove = "${SPDX_WORKAROUND}"
