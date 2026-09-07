do_install:append() {
	chown -R root:root ${D}${datadir}/tf-m/scripts/wrapper
}
