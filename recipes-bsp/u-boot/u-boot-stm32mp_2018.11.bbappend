# Copyright (C) 2019 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"

# Increase PR if something changes
PR="2"

SRC_URI_class-devupstream += " \
	file://0001-board-bytedevkit-Add-initial-version-for-bytedevkit.patch \
	file://0002-configs-bytedevkit-Add-initial-version.patch \
	file://0003-bytedevkit-Add-initial-version.patch \
	file://0004-arm-dts-stm32mp157c-byteengine-m5-Add-dts-from-linux.patch \
	file://0005-arm-dts-stm32mp157c-bytedevkit-Add-dts-from-linux.patch \
	file://0006-arm-dts-bytedevkit-u-boot-Add-initial-version.patch \
	file://0007-arm-bytedevkit-Add-target-bytedevkit.patch \
	file://0008-stmp32mp1-Append-target-bytedevkit.patch \
	file://0009-pll-add-config-for-ethernet-without-clk-feedback-fro.patch \
	file://0010-board-bytedevkit-Update-board-files-with-changes-fro.patch \
	file://0011-bytedevkit-Disable-DISTRO_DEFAULTS.patch \
"

STM32MP_SOURCE_SELECTION = "github"
