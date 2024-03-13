# Copyright (C) 2024 bytes at work AG - https://www.bytesatwork.io
# Released under the MIT license (see COPYING.MIT for the terms)

FILESEXTRAPATHS:prepend := "${THISDIR}/${BPN}-2021.10:"

U_BOOT_RELEASE .= "${PR}"

STM32MP_SOURCE_SELECTION = "github"

do_deploy[sstate-outputdirs] = "${DEPLOY_DIR_IMAGE}/u-boot"

do_deploy:append() {
	install -m 0644 ${B}/${config}/u-boot.dtb ${DEPLOYDIR}${SUBFOLDER}/u-boot-stm32mp157c-bytedevkit-v1-1.dtb
	install -m 0644 ${B}/${config}/u-boot.dtb ${DEPLOYDIR}${SUBFOLDER}/u-boot-stm32mp157c-bytedevkit-v1-3.dtb
	install -m 0644 ${B}/${config}/u-boot-nodtb.bin ${DEPLOYDIR}${SUBFOLDER}/u-boot-nodtb.bin
}

# Increase PR if something changes
PR = "r0rebase"

SRC_URI:class-devupstream += " \
	file://0001-cmd-add-cpuinfo.patch \
	file://0002-board-bytedevkit-Add-initial-version-for-bytedevkit.patch \
	file://0003-arm-dts-stm32mp157c-byteengine-m5-Add-dts-from-linux.patch \
	file://0004-configs-bytedevkit-Add-initial-version.patch \
	file://0005-include-configs-bytedevkit-Add-initial-version.patch \
	file://0006-bytesatwork-m2config-verbatim-import.patch \
	file://0007-board-bytedevkit-introduce-baw_config.patch \
	file://0008-github-workflows-Add-patch-static-analyzer.patch \
"
