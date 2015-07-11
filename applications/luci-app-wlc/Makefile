#
# Copyright (C) 2015 Tiziano Bacocco <tizbac2@gmail.com>
#
# This is free software, licensed under the Apache License, Version 2.0 .
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-wlc

# Version == major.minor.patch
# increase on new functionality (minor) or patches (patch)
PKG_VERSION:=1.0

# Release == build
# increase on changes of translation files
PKG_RELEASE:=1

PKG_LICENSE:=Apache-2.0
PKG_MAINTAINER:=Tiziano Bacocco <tizbac2@gmail.com>

# LuCI specific settings
LUCI_TITLE:=LuCI Wireless Controller configuration
LUCI_DEPENDS:=+luci-mod-admin-full
LUCI_PKGARCH:=all

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
	$(LUCI_TITLE)
	.
	Version: $(PKG_VERSION)-$(PKG_RELEASE)
	$(PKG_MAINTAINER)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
