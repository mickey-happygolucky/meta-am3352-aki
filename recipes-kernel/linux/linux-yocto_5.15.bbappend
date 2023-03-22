SRC_URI += "file://0001-dts-Add-devicetree-for-am3352-aki.patch;subdir=git"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "am3352-aki"