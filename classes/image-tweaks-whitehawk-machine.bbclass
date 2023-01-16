# SPDX-License-Identifier: MIT

require ${@bb.utils.contains('DISTRO_FEATURES', 'xen', \
    bb.utils.contains('BBFILE_COLLECTIONS', 'virtualization-layer', \
        '${RCAR_ADAS_VIRTUALIZATION_DYNAMIC_DIR}/conf/machine/include/image-tweaks-whitehawk-machine-xen.inc', \
        '', d), \
    '', d)}
