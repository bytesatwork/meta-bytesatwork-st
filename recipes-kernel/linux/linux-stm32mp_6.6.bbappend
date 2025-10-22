# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-stm32mp-6.6:"

# Increase PR if something changes
PR="2"

SRC_URI:class-devupstream += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0003-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0004-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0005-ARM-dts-stm32mp157c-byteengine-bytedevkit.patch \
	file://0006-ARM-configs-Add-nftables-fragment.patch \
	file://0007-ARM-configs-Add-systemd-fragment.patch \
	file://0008-dt-bindings-arm-bytesatwork-Update-modules-and-board.patch \
	file://0009-arm-dts-stm32mp157c-byteengine-bytedevkit.patch \
	file://0010-net-stmmac-Fix-stmmac-names-for-sysfs.patch \
	file://0011-arm64-bytedevkit_stm32mp2_defconfig-Add-basic-config.patch \
	file://0012-arm64-dts-st-stm32mp257f-bytedevkit-Add-device-tree.patch \
	file://0013-arm64-dts-st-stm32mp257f-bytedevkit-Enable-Gb-for-et.patch \
"

KERNEL_CONFIG_FRAGMENTS:append:bytedevkit-stm32mp1 = "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"

KERNEL_DEFCONFIG:bytedevkit-stm32mp2 = "bytedevkit_stm32mp2_defconfig"
KERNEL_CONFIG_FRAGMENTS:remove:bytedevkit-stm32mp2 = "${WORKDIR}/fragments/${LINUX_VERSION}/fragment-04-modules.config"
