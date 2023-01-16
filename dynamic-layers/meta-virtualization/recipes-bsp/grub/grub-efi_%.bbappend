# SPDX-License-Identifier: MIT

GRUB_BUILDIN:append:whitehawk = "${@bb.utils.contains('DISTRO_FEATURES', 'xen', ' chain', '', d)}"
