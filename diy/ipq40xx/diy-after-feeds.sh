#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/Railgun/g' package/base-files/files/bin/config_generate

# Replace vssr cn_ip_cidr source
rm -f package/small-package/luci-app-vssr/root/etc/vssr/china_ssr.txt
curl -o package/small-package/luci-app-vssr/root/etc/vssr/china_ssr.txt https://ispip.clang.cn/all_cn_cidr.txt

# Remove breaking mosdns v5 support, revert back to sbwml/luci-app-mosdns
rm -rf package/small-package/{mosdns,luci-app-mosdns}

# DO NOT use small-package's upx
rm -rf package/small-package/upx*

# Use passwall icon in luci-theme-design by default
sed -i 's/openclash/passwall/g' package/small-package/luci-app-design-config/root/etc/config/design

# Tries to fix build error: we should probably not override some core packages
# Maybe we should even deprecate small-package if these kind of things happen again
rm -rf package/small-package/{opkg,firewall}

# Make tailsale config persistent during sysupgrades
echo "/etc/tailscale/" >> package/base-files/files/etc/sysupgrade.conf