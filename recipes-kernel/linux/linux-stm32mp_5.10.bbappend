# Copyright (C) 2019 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-stm32mp-5.10:"

# Increase PR if something changes
PR="1"

SRC_URI_class-devupstream += " \
	file://0001-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0002-video-logo-add-bytes-at-work-logo.patch \
	file://0003-ARM-configs-Add-bytedevkit-fragment.patch \
	file://0004-ARM-dts-stm32mp175c-byteengine-bytedevkit-Verbatim-i.patch \
	file://0005-ARM-dts-stm32mp175c-byteengine-bytedevkit-Adapt-to-5.patch \
	file://0006-ARM-dts-stm32mp175c-byteengine-Adapt-to-5.4-r2.patch \
	file://0007-ARM-dts-stm32mp175c-byteengine-bytedevkit-Set-ethern.patch \
	file://0008-drm-panel-youritec-ili9806e-Adapt-to-5.10.patch \
	file://0009-ARM-dts-stm32mp157c-byteengine-bytedevkit-Adapt-to-5.patch \
	file://0010-ARM-dts-stm32-Fix-issue-with-usart1-when-using-no-sc.patch \
	file://0011-ARM-configs-bytedevkit-Fix-boot-logo.patch \
	file://0012-lib-iov_iter-initialize-flags-in-new-pipe_buffer.patch \
"

KERNEL_CONFIG_FRAGMENTS += "${S}/arch/arm/configs/fragment-901-bytedevkit.config"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}"
