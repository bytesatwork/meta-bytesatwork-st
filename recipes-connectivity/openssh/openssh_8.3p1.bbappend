# Don't use rng-tools, use SoC hwrng
RRECOMMENDS_${PN}-sshd_remove_class-target = " rng-tools"
