# Use latest yocto kernel

COMPATIBLE_MACHINE = "(dres0280_rev_a|himx)"

DEPENDS += " lzop-native test-harness-native "
RDEPENDS_${PN} += " mtd-utils gawk busybox bootconfig "

MACHINE_KERNEL_PR = "r0"
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

SRC_URI +=  " file://defconfig \
              file://0001-dres0280-supprt-files-copied-from-nitrogen6x.patch \
              file://0002-dres0280-supprt-files-copied-from-nitrogen6x.patch \
              file://0003-dres0280-pad-definitions-copied-from-nitrogen6x-and-.patch \
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
        cp ${WORKDIR}/defconfig ${WORKDIR}/.config
}
