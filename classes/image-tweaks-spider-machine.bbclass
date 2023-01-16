# SPDX-License-Identifier: MIT

require ${@bb.utils.contains('DISTRO_FEATURES', 'xen', \
    bb.utils.contains('BBFILE_COLLECTIONS', 'virtualization-layer', \
        '${RCAR_GATEWAY_VIRTUALIZATION_DYNAMIC_DIR}/conf/machine/include/image-tweaks-spider-machine-xen.inc', \
        '', d), \
    '', d)}
