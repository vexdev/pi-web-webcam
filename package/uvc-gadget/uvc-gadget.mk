################################################################################
#
# piwebcam
#
################################################################################

UVC_GADGET_VERSION = 04c18aa6c4a7017957e2dfe88c3ff7ef34a1b3a0
UVC_GADGET_SITE = https://gitlab.freedesktop.org/camera/uvc-gadget.git
UVC_GADGET_LICENSE = GPL-2.0+
UVC_GADGET_LICENSE_FILES = LICENSE
UVC_GADGET_SITE_METHOD = git

UVC_GADGET_DEPENDENCIES = host-pkgconf \
	libcamera

UVC_GADGET_CONF_OPTS = \
	-Dwerror=false

$(eval $(meson-package))
