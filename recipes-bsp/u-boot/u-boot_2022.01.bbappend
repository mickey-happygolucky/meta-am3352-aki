SRC_URI += "file://0001-NFM-Production-eeprom-assume-device-is-BeagleBone-Bl.patch;subdir=git"

FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

COMPATIBLE_MACHINE = "am3352-aki"
