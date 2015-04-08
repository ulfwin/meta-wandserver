FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# This append makes sure wifi connect at boot

SRC_URI += "file://interfaces-custom"

do_install_append () {
        install -m 0644 ${WORKDIR}/interfaces-custom ${D}${sysconfdir}/network/interfaces
}
