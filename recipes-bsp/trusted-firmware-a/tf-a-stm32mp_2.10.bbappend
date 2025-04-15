# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

STM32MP_SOURCE_SELECTION = "github"

SRC_URI:class-devupstream:append = " \
	file://0001-fdts-stm32mp1-bytedevkit-Introduce-bytedevkit-board.patch \
	file://0002-spi-nor-macronix-Use-2-lane-bus-and-dual-read.patch \
"
