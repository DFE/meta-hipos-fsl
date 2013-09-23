# Use latest yocto kernel

COMPATIBLE_MACHINE = "(dres0280_rev_a|himx|nitrogen6x|imx6qsabrelite)"

DEPENDS += " lzop-native test-harness-native "
RDEPENDS_${PN} += " mtd-utils gawk busybox bootconfig "

MACHINE_KERNEL_PR = "r0"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI +=  " file://defconfig \
              file://board-mx6_dres0280.c \
              file://pads-mx6_dres0280.h \
              file://dres0280_defconfig \
              file://0001-dres0280-supprt-files-copied-from-nitrogen6x.patch \
              file://0004-rootfs-is-loaded-from-dev-mmcblk0p1-but-freezes-in-s.patch \
	    "

# The parameter 'type' in a git-SRC_URI is a workaround. The error is in file
# openembedded-core/meta/classes/kernel-yocto.bbclass in function find_kernel_feature_dirs.
# If the parameter is missing, then an exception is thrown. Parameter 'type'
# should not have the value kmeta. Value kmeta is used to mark a source 
# directory as kernel feature directory.

do_configure_prepend() {
	# The defconfig has been copied by oe-framework. Since last (2013-03)
	# oe layer update, it is not coopied into the build directory. The 
	# cause is unknown. As long as it does not work, it is copied here.
	cp ${WORKDIR}/defconfig ${B}/.config
        cp ${WORKDIR}/board-mx6_dres0280.c ${B}/arch/arm/mach-mx6/board-mx6_dres0280.c
        cp ${WORKDIR}/pads-mx6_dres0280.h ${B}/arch/arm/mach-mx6/pads-mx6_dres0280.h
        cp ${WORKDIR}/dres0280_defconfig ${B}/arch/arm/configs/dres0280_defconfig
}
