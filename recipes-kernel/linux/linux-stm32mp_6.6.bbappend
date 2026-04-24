# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-stm32mp-6.6:"

# Increase PR if something changes
PR="5"

SRC_URI:class-devupstream += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-CI-Add-action-to-analyze-patches.patch \
	file://0003-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0004-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0005-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0006-ARM-dts-stm32mp157c-byteengine-bytedevkit.patch \
	file://0007-ARM-configs-Add-nftables-fragment.patch \
	file://0008-ARM-configs-Add-systemd-fragment.patch \
	file://0009-dt-bindings-arm-bytesatwork-Update-modules-and-board.patch \
	file://0010-arm-dts-stm32mp157c-byteengine-bytedevkit.patch \
	file://0011-net-stmmac-Fix-stmmac-names-for-sysfs.patch \
	file://0012-arm64-bytedevkit_stm32mp2_defconfig-Add-basic-config.patch \
	file://0013-arm64-dts-st-stm32mp257f-bytedevkit-Add-device-tree.patch \
	file://0014-arm64-dts-st-stm32mp257f-bytedevkit-Enable-Gb-for-et.patch \
	file://0015-arm64-bytedevkit_stm32mp2_defconfig-add-nftables-sys.patch \
	file://0016-arm64-dts-st-stm32mp257f-bytedevkit-Add-mac-address-.patch \
	file://0017-arm64-dts-st-stm32mp257f-bytedevkit-Fix-LVDS-setup.patch \
	file://0018-arm64-dts-st-stm32mp257f-bytedevkit-Disable-MIPI-tou.patch \
	file://0019-arm64-dts-st-stm32mp257f-bytedevkit-Disable-UHS-for-.patch \
	file://0020-arm64-dts-st-Add-stm32mp253f-bytedevkit.dts.patch \
"

KERNEL_CONFIG_FRAGMENTS:append:bytedevkit-stm32mp1 = "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"

KERNEL_DEFCONFIG:bytedevkit-stm32mp2 = "bytedevkit_stm32mp2_defconfig"
KERNEL_CONFIG_FRAGMENTS:remove:bytedevkit-stm32mp2 = " \
	${WORKDIR}/fragments/${LINUX_VERSION}/fragment-03-systemd.config \
	${WORKDIR}/fragments/${LINUX_VERSION}/fragment-04-modules.config \
"
