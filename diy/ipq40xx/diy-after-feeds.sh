#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/Railgun/g' package/base-files/files/bin/config_generate

# Use passwall icon in luci-theme-design by default
sed -i 's/openclash/passwall/g' feeds/luci/applications/luci-app-design-config/root/etc/config/design

# Make tailsale config persistent during sysupgrades
echo "/etc/tailscale/" >> package/base-files/files/etc/sysupgrade.conf