# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-stm32mp-6.1:"

# Increase PR if something changes
PR="0"

SRC_URI:class-devupstream += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-dt-bindings-arm-bytesatwork-Add-module-and-board.patch \
	file://0003-video-logo-add-bytesatwork-boot-logo.patch \
	file://0004-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0005-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0006-ARM-dts-stm32mp157c-byteengine-bytedevkit.patch \
"

KERNEL_CONFIG_FRAGMENTS += "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
