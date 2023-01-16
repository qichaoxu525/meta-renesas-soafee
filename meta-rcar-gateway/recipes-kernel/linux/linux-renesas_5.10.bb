DESCRIPTION = "Linux kernel for the R-Car Gateway based board"

LIC_FILES_CHKSUM = "file://COPYING;md5=6bc538ed5bd9a7fc9398086aedcd7e46"

require recipes-kernel/linux/linux-yocto.inc

COMPATIBLE_MACHINE = "spider"

RENESAS_BSP_URL = " \
    git://github.com/renesas-rcar/linux-bsp.git;branch=master;protocol=https"
BRANCH = "v5.10.41/rcar-5.1.7.rc5"
SRCREV = "5b26eb114c74c907671d996128bb0233f516703c"

SRC_URI = "${RENESAS_BSP_URL};nocheckout=1;branch=${BRANCH}"
SRC_URI:append = "\
        ${@oe.utils.conditional("USE_DOCKER", "1", " file://docker.cfg ", "", d)} \
        file://docker.cfg \
        file://kubernetes.cfg \
        file://touch.cfg \
        file://xen.cfg \
        file://myconfig.cfg \
        file://0001-Enable-SD-Card.patch \
"

LINUX_VERSION ?= "5.10.41"
PV = "${LINUX_VERSION}+git${SRCPV}"
PR = "r1"

# For generating defconfig
KCONFIG_MODE = "--alldefconfig"
KBUILD_DEFCONFIG = "defconfig"

# uio_pdrv_genirq configuration
KERNEL_MODULE_AUTOLOAD:append = " uio_pdrv_genirq"
KERNEL_MODULE_PROBECONF:append = " uio_pdrv_genirq"
module_conf_uio_pdrv_genirq:append = ' options uio_pdrv_genirq of_id="generic-uio"'

PACKAGES += "${PN}-uapi"

# Install S4 specific UAPI headers
do_install:append() {
    install -d ${D}/usr/include/linux/
    install -d ${D}/lib/modules/${KERNEL_VERSION}/extra/
    install -m 0644 ${STAGING_KERNEL_DIR}/include/uapi/linux/rcar-ipmmu-domains.h ${D}/usr/include/linux/
    install -m 0644 ${STAGING_KERNEL_DIR}/include/uapi/linux/renesas_uioctl.h ${D}/usr/include/linux/
    mv ${D}/lib/modules/${KERNEL_VERSION}/kernel/drivers/dma/dmatest.ko ${D}/lib/modules/${KERNEL_VERSION}/extra/
}

FILES:${PN}-uapi = "/usr/include"
# dmatest autoload configuration
KERNEL_MODULE_AUTOLOAD:append = " dmatest"
KERNEL_MODULE_PROBECONF:append = " dmatest"
