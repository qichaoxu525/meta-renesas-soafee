FILESEXTRAPATHS:prepend := "${THISDIR}/gcc:"

SRC_URI:append = " \
                file://0037-libatomic-Do-not-enforce-march-on-aarch64.patch \
"
