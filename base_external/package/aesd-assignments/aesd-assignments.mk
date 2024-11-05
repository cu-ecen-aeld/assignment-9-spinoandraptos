
##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

# Reference assignment 3 git contents using latest commit
AESD_ASSIGNMENTS_VERSION = a9a5f8cefdee3aa57dce9ef983fcecb3cc6023b9

# Reference the *ssh* repository URL here to work with ssh keys and the automated build/test system
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-spinoandraptos.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/server all
endef

# Install applications based on assignment 3 and later source repository 
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	# Install the aesdsocket application /usr/bin directory
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin
	# Install aesdsocket-start-stop script to /etc/init.d/S99aesdsocket
	$(INSTALL) -m 0755 $(@D)/server/aesdsocket-start-stop.sh $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
