# SPDX-License-Identifier: MIT

GRUB_CFG_FILE ?= "${RCAR_ADAS_VIRTUALIZATION_DYNAMIC_DIR}/wic/adas-xen-grub.cfg"

WKS_SEARCH_PATH:prepend = "${RCAR_ADAS_VIRTUALIZATION_DYNAMIC_DIR}/wic:"

IMAGE_EFI_BOOT_FILES += "xen-whitehawk.efi;xen.efi xen.cfg \
                     ${RCAR_ADAS_LAYERDIR}/wic/adas-grub.cfg;./EFI/BOOT"

do_image_wic[depends] += "xen:do_deploy"
