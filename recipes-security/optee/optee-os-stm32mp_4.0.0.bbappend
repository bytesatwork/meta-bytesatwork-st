# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/optee-os:"

# Increase PR if something changes
PR="r1"

SRC_URI:class-devupstream += " \
	file://0001-arm-dts-Introduce-bytedevkit.patch \
	file://0002-plat-stm32mp1-conf-Add-RAM-flavor-for-bytedevkit.patch \
	file://0003-dts-stm32-Add-stm32mp257-bytedevkit-board-support.patch \
	file://0004-plat-stm32mp2-conf-Add-flavor-for-bytedevkit.patch \
	file://0005-dts-stm32-Adapt-display-clocks.patch \
	file://0006-dts-stm32-stm32mp257f-bytedevkit-Enable-1.8V-on-VDDI.patch \
"

STM32MP_SOURCE_SELECTION = "github"
