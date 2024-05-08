#!/bin/bash

# Clone a sub-directory of a git repository. Probably replaces "svn co" which is being deprecated by GitHub.
# Usage: git_sparse_clone $repo_url $repo_branch $local_temp_url $sub_directory $target_location

function git_sparse_clone() {
    git clone --filter=blob:none --no-checkout --depth=1 -b $2 $1 $3 && cd $3
    git sparse-checkout init --cone
    git sparse-checkout set $4
    git checkout
    mv $4 ../$5
    cd ../ && rm -rf $3
}

# Clean up dependencies
find feeds -name Makefile -exec dirname {} \; | grep -wE 'gn|chinadns-ng|dns2socks|dns2tcp|hysteria|ipt2socks|microsocks|naiveproxy|redsocks2|shadowsocks-rust|shadowsocksr-libev|simple-obfs|sing-box|ssocks|tcping|trojan|v2ray-core|v2ray-geodata|v2ray-plugin|v2raya|xray-core|xray-plugin|lua-neturl|luci-app-ssr-plus|kuci-app-mosdns|mosdns' | xargs rm -rf

# Modify Default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
sed -i 's/ImmortalWrt/Railgun/g' package/base-files/files/bin/config_generate

# Use sbwml/luci-app-mosdns master
git clone --depth=1 https://github.com/sbwml/luci-app-mosdns package/mosdns
git clone --depth=1 https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Update Go to 1.20 for Xray-core build
rm -rf feeds/packages/lang/golang
git_sparse_clone https://github.com/openwrt/packages master packages-upstream lang/golang feeds/packages/lang/golang