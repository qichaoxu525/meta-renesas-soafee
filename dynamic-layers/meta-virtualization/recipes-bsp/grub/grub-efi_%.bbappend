# SPDX-License-Identifier: MIT

GRUB_BUILDIN:append:spider = "${@bb.utils.contains('DISTRO_FEATURES', 'xen', ' chain', '', d)}"
