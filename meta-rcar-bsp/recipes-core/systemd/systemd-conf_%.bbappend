FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append_rcar = " \
    file://wired.network \
"
