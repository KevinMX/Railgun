#!/bin/bash

# Use master branch of mosdns and add LuCI support
#rm -rf feeds/packages/net/mosdns
git clone --depth=1 https://github.com/QiuSimons/openwrt-mos package/openwrt-mos

#Use master branch of helloworld and clean up dependencies
rm -rf feeds/packages/net/{chinadns-ng,dns2socks,dns2tcp,hysteria,ipt2socks,microsocks,naiveproxy,redsocks2,sagernet-core,shadowsocks-rust,shadowsocksr-libev,simple-obfs,tcping,trojan,v2ray-core,v2ray-geodata,v2ray-plugin,v2raya,xray-core,xray-plugin}
rm -rf feeds/packages/lang/lua-neturl
rm -rf feeds/luci/applications/luci-app-ssr-plus
git clone --depth=1 https://github.com/fw876/helloworld package/helloworld
