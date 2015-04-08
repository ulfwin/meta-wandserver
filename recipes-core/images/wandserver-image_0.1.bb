SUMMARY = "Image suitable for making the wandboard a server"

IMAGE_FEATURES += "splash ssh-server-openssh doc-pkgs"
IMAGE_INSTALL_append = " python3 apache2 man-pages vim parted samba openhab screen modphp mariadb"

LICENSE = "MIT"

inherit core-image

# Uncomment below to use more of the SD-card space
#IMAGE_ROOTFS_EXTRA_SPACE = "2000000"

ROOTFS_POSTPROCESS_COMMAND += "set_root_passwd;"
set_root_passwd() {
   sed 's%^root:[^:]*:%root:$1$eu9vMyjg$XJFDRvY4Cel4S8GvE2nbK.:%' \
       < ${IMAGE_ROOTFS}/etc/shadow \
       > ${IMAGE_ROOTFS}/etc/shadow.new;
   mv ${IMAGE_ROOTFS}/etc/shadow.new ${IMAGE_ROOTFS}/etc/shadow ;
}
