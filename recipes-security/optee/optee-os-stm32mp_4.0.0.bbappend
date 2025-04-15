# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/optee-os:"

# Increase PR if something changes
PR="r0"

SRC_URI:class-devupstream += " \
	file://0001-arm-dts-Introduce-bytedevkit.patch \
	file://0002-plat-stm32mp1-conf-Add-RAM-flavor-for-bytedevkit.patch \
"

STM32MP_SOURCE_SELECTION = "github"
