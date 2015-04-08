FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# This file allows automatic inclusion of wifi settings.
# Simply add the info you want to wpa_supplicant.conf-custom

SRC_URI += "file://wpa_supplicant.conf-custom"

do_install_append () {
        install -m 600 ${WORKDIR}/wpa_supplicant.conf-custom ${D}${sysconfdir}/wpa_supplicant.conf
}
