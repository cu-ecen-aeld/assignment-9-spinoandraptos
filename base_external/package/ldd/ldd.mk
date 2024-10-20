
##############################################################
#
# LDD
#
##############################################################

# Reference assignment 7 git contents using latest commit
LDD_VERSION = '52a7baa664a4cd96bf5273d76a97a285871af711'

# Reference the *ssh* repository URL here to work with ssh keys and the automated build/test system
LDD_SITE = 'git@github.com:cu-ecen-aeld/assignment-7-spinoandraptos.git'
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = scull misc-modules
LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)

$(eval $(kernel-module))
$(eval $(generic-package))
