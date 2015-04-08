FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

# This append adds ssh keys, so they don't get
# regenerated every time

SRC_URI += "file://sshd-keys.tar"

do_install_append () {
        install -m 0600 ${WORKDIR}/ssh_host_dsa_key ${D}${sysconfdir}/ssh
        install -m 0600 ${WORKDIR}/ssh_host_rsa_key ${D}${sysconfdir}/ssh
        install -m 0600 ${WORKDIR}/ssh_host_ecdsa_key ${D}${sysconfdir}/ssh
        install -m 0600 ${WORKDIR}/ssh_host_ed25519_key ${D}${sysconfdir}/ssh
        install -m 0644 ${WORKDIR}/ssh_host_dsa_key.pub ${D}${sysconfdir}/ssh
        install -m 0644 ${WORKDIR}/ssh_host_rsa_key.pub ${D}${sysconfdir}/ssh
        install -m 0644 ${WORKDIR}/ssh_host_ecdsa_key.pub ${D}${sysconfdir}/ssh
        install -m 0644 ${WORKDIR}/ssh_host_ed25519_key.pub ${D}${sysconfdir}/ssh
}
