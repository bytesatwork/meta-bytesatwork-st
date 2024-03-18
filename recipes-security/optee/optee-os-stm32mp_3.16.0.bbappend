# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/optee-os:"

# Increase PR if something changes
PR="r0"

SRC_URI:class-devupstream += " \
	file://0001-dts-stm32mp1-Add-support-for-byteDEVKIT-STM32MP1.patch \
"

STM32MP_SOURCE_SELECTION = "github"
