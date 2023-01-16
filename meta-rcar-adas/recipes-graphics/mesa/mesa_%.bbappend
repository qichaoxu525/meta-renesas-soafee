# These below libraries are provided by gles-user-module
PACKAGECONFIG:remove_rcar-v4x = "egl gles"

do_install:append_rcar-v4x() {
    # Have to remove khrplatform.h file due to conflict with gles-user-module
    # even though libegl from mesa is removed
    rm -r ${D}${includedir}/KHR
}

