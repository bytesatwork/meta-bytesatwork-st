# Copyright (C) 2019 Oliver Stäbler <oliver.staebler@bytesatwork.ch>
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS_prepend := "${THISDIR}/${BP}:"

# Increase PR if something changes
PR="1"

SRC_URI += " \
	file://0001-ARM-dts-Add-support-for-byteENGINE-STM32MP1x.patch \
	file://0002-arm-dts-stm32mp157c-bytedevkit-Initital-version.patch \
	file://0003-drm-add-youritech-panel-with-ili9806e-mipi-controlle.patch \
	file://0004-logo-add-baw-bootlogo-480x845px.patch \
	file://0005-ARM-dts-add-usb-otg-ethernet-watchdog-dsi-backlight-.patch \
"
