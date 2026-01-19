# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}-2023.10:"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}/u-boot"

do_deploy:append() {
	install -m 0644 ${B}/${config}/u-boot.dtb ${DEPLOYDIR}${SUBFOLDER}/u-boot-stm32mp157c-bytedevkit-v1-1.dtb
	install -m 0644 ${B}/${config}/u-boot.dtb ${DEPLOYDIR}${SUBFOLDER}/u-boot-stm32mp157c-bytedevkit-v1-3.dtb
	install -m 0644 ${B}/${config}/u-boot-nodtb.bin ${DEPLOYDIR}${SUBFOLDER}/u-boot-nodtb.bin
}

# Increase PR if something changes
PR = "r3"

SRC_URI:class-devupstream += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-CI-Add-action-to-analyze-patches.patch \
	file://0003-cmd-Add-cpuinfo.patch \
	file://0004-board-bytesatwork-Import-bawconfig.patch \
	file://0005-stm32mp1-Add-STM32MP1-bytesatwork-byteDEVKIT-board.patch \
	file://0006-stm32mp2-Add-STM32MP2-bytesatwork-byteDEVKIT-board.patch \
	file://0007-bytesatwork-stm32mp2-Introduce-bawconfig.patch \
	file://0008-configs-stm32mp157_bytedevkit-Add-password.patch \
	file://0009-configs-stm32mp257_bytedevkit-Add-password.patch \
"
