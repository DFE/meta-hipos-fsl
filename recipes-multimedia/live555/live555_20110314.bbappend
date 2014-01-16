
FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

PRINC := "${@int(PRINC) + 2}"

SRC_URI_append_himx =  " file://0001-live555-remove-SO_REUSEPORT.patch \
                       "

