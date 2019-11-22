IMAGE_INSTALL_append = " \
    tzdata \
    aos-servicemanager \
    logrotate \
    openssh-sshd \
    openssh-scp \
"

IMAGE_INSTALL_crown_append = " \
   meta-calc \
" 

populate_vmlinux () {
    find ${STAGING_KERNEL_BUILDDIR} -iname "vmlinux*" -exec mv {} ${DEPLOY_DIR_IMAGE} \; || true
}

IMAGE_POSTPROCESS_COMMAND += "populate_vmlinux; "
