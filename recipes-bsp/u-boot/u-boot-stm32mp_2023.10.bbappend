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
PR = "r0"

SRC_URI:class-devupstream += " \
	file://0001-github-workflows-Add-action-to-analyze-patches.patch \
	file://0002-cmd-Add-cpuinfo.patch \
	file://0003-board-bytesatwork-Import-bawconfig.patch \
	file://0004-stm32mp1-Add-STM32MP1-bytesatwork-byteDEVKIT-board.patch \
"

# Commit `40469ba48e30e280371a057ce63f7dcb505095b7` is no longer in *any* branch.
SRC_URI:class-devupstream:remove = "git://github.com/STMicroelectronics/u-boot.git;protocol=https;branch=v2023.10-stm32mp"
SRC_URI:class-devupstream:prepend = "git://github.com/STMicroelectronics/u-boot.git;protocol=https;nobranch=1 "
