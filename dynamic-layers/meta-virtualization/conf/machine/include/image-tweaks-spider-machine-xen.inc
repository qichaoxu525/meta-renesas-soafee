# SPDX-License-Identifier: MIT

GRUB_CFG_FILE ?= "${RCAR_GATEWAY_VIRTUALIZATION_DYNAMIC_DIR}/wic/gateway-xen-grub.cfg"

WKS_SEARCH_PATH:prepend = "${RCAR_GATEWAY_VIRTUALIZATION_DYNAMIC_DIR}/wic:"

IMAGE_EFI_BOOT_FILES += "xen-spider.efi;xen.efi xen.cfg \
                     ${RCAR_GATEWAY_LAYERDIR}/wic/gateway-grub.cfg;./EFI/BOOT"

do_image_wic[depends] += "xen:do_deploy"
