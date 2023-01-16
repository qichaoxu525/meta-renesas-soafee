FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append_rcar = " file://add-non-owned-item-for-safe-transitioning.patch"
