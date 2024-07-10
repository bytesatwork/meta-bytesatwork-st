# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/linux-stm32mp-6.1:"

# Increase PR if something changes
PR="0"

SRC_URI:class-devupstream += " \
	file://0001-Create-checkpatch.yml.patch \
	file://0002-video-logo-add-bytes-at-work-logo.patch \
	file://0003-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0004-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0005-ARM-dts-stm32mp157c-byteengine-bytedevkit.patch \
	file://0006-drm-panel-youritec-ili9806e-Adapt-to-6.1.patch \
	file://0007-ARM-dts-stm32mp157c-byteengine-Adapt-to-6.1.patch \
"

KERNEL_CONFIG_FRAGMENTS += "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
