#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/OpenWrt/Railgun/g' package/base-files/files/bin/config_generate

#Fix mosdns build (see https://github.com/QiuSimons/openwrt-mos/issues/126)
rm -rf feeds/packages/net/mosdns
