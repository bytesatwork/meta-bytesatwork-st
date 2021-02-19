# Copyright (C) 2019 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${BPN}-${LINUX_VERSION}:"

# Increase PR if something changes
PR="0"

SRC_URI_class-devupstream += " \
	file://0001-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0002-video-logo-add-bytes-at-work-logo.patch \
	file://0003-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0004-ARM-dts-stm32mp175c-byteengine-bytedevkit-Verbatim-i.patch \
	file://0005-ARM-dts-stm32mp175c-byteengine-bytedevkit-Adapt-to-5.patch \
	file://0006-ARM-dts-stm32mp175c-byteengine-Adapt-to-5.4-r2.patch \
"

KERNEL_CONFIG_FRAGMENTS += "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
