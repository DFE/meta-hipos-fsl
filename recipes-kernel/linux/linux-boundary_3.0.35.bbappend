
COMPATIBLE_MACHINE = "(nitrogen6x|imx6qsabrelite|himx)"

FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 2}"

SRC_URI_append_himx =  " file://board-mx6_dres0280.c \
			file://pads-mx6_dres0280.h \
			file://dres0280_defconfig \
			file://0001-DRES0280-add-board-DRES0280.patch \
	"
 
SRC_URI_append_nitrogen6x =  " \
    file://0001-set-gpio-as-card-reader-LED.patch \
"
 
do_configure_prepend_himx() {
	cp ${WORKDIR}/board-mx6_dres0280.c ${B}/arch/arm/mach-mx6/board-mx6_dres0280.c
	cp ${WORKDIR}/pads-mx6_dres0280.h ${B}/arch/arm/mach-mx6/pads-mx6_dres0280.h
	cp ${WORKDIR}/dres0280_defconfig ${B}/arch/arm/configs/dres0280_defconfig
}
