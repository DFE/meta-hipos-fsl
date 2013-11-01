PRINC := "${@int(PRINC) + 1}"

LICENSE_himx = "GPLv2+"
LIC_FILES_CHKSUM_himx = "file://Licenses/gpl-2.0.txt;md5=b234ee4d69f5fce4486a80fdaf4a4263"

SRC_URI_himx =  "git://github.com/DFE/u-boot.git;protocol=http;branch=master"
SRC_URI_himx[md5sum] = "8c5e4dc994b7c65c8d4dcc365f8ee8a6"
SRC_URI_himx[sha256sum] = "e93e2a2890188d6d8153ec4f16b80ee85d5e255485f46205e623de858cbf0ad4"
SRCREV_himx = "ea26efa27897ba6e238fb823a6d5d09433e07da6"
