require ../../../openembedded-core/meta/recipes-bsp/u-boot/u-boot.inc

COMPATIBLE_MACHINE = "himx"

LICENSE = "GPLv2+"
LIC_FILES_CHKSUM = "file://Licenses/gpl-2.0.txt;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRC_URI =  "git://github.com/DFE/u-boot.git;protocol=http;branch=master"
SRC_URI[md5sum] = "8c5e4dc994b7c65c8d4dcc365f8ee8a6"
SRC_URI[sha256sum] = "e93e2a2890188d6d8153ec4f16b80ee85d5e255485f46205e623de858cbf0ad4"
SRCREV = "3845ed65c4bec7f7ad8b19beec21a9fa627634b5"

PR = "r0"

S = "${WORKDIR}/git"

PACKAGE_ARCH = "${MACHINE_ARCH}"

PROVIDER_u-boot = "u-boot-himx"

UBOOT_MACHINE = "dres0280_rev_a_config"

