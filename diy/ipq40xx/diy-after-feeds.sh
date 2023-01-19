#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/Railgun/g' package/base-files/files/bin/config_generate

#Fix mosdns build (see https://github.com/QiuSimons/openwrt-mos/issues/126)
rm -rf feeds/packages/net/mosdns
rm -rf feeds/luci/applications/luci-app-mosdns

# Replace vssr cn_ip_cidr source
rm -f package/small-package/luci-app-vssr/root/etc/vssr/china_ssr.txt
curl -o package/small-package/luci-app-vssr/root/etc/vssr/china_ssr.txt https://ispip.clang.cn/all_cn_cidr.txt

# Remove breaking mosdns v5 support, revert back to sbwml/luci-app-mosdns
rm -rf package/small-package/{mosdns,luci-app-mosdns}
