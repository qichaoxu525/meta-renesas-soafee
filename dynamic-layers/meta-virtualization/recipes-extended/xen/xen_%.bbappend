# SPDX-License-Identifier: MIT

FILESEXTRAPATHS:prepend:whitehawk := "${THISDIR}/files:"

SRC_URI:append:whitehawk = " \
    file://0001-arm-acpi-don-t-expose-the-ACPI-IORT-SMMUv3-entry-to-.patch \
    file://acpi.cfg \
    file://msi.cfg \
    file://xen.cfg.in"

DEPENDS:append:whitehawk = " gettext-native"

DOM0_MEMORY_SIZE ??= "4096"

do_deploy:append:whitehawk (){

    export DOM0_MEMORY_SIZE="${DOM0_MEMORY_SIZE}M"

    envsubst < ${WORKDIR}/xen.cfg.in > ${DEPLOYDIR}/xen.cfg
}
