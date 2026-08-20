# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/files:"

STM32MP_SOURCE_SELECTION = "github"

# Increase PR if something changes
PR = "r4"

SRC_URI:class-devupstream:append = " \
	file://0001-fdts-stm32mp1-bytedevkit-Introduce-bytedevkit-board.patch \
	file://0002-spi-nor-macronix-Use-2-lane-bus-and-dual-read.patch \
	file://0003-fdts-stm32mp2-Introduce-bytedevkit-board.patch \
	file://0004-Revert-feat-stm32mp2-remove-PM-in-serial-boot.patch \
	file://0005-fix-stm32mp25-fdts-Adapt-SD-card-speeds.patch \
"
