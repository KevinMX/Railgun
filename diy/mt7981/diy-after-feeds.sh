#!/bin/bash

# Clone a sub-directory of a git repository. Probably replaces "svn co" which is being deprecated by GitHub.
# Usage: git_sparse_clone $repo_url $repo_branch $sub_directory $target_location

function git_sparse_clone() {
    git clone --filter=blob:none --no-checkout --depth=1 -b $2 $1 upstream && cd upstream
    git sparse-checkout init --cone
    git sparse-checkout set $3
    git checkout
    mv $3 ../$4
    cd ../ && rm -rf upstream
}

# Clean up dependencies
find feeds -name Makefile -exec dirname {} \; | grep -wE 'brook|gn|chinadns-ng|dns2socks|dns2tcp|hysteria|ipt2socks|microsocks|naiveproxy|pdnsd-alt|redsocks2|sagernet-core|shadowsocks-rust|shadowsocksr-libev|simple-obfs|sing-box|ssocks|tcping|trojan|trojan-go|trojan-plus|v2ray-core|v2ray-geodata|v2ray-plugin|v2raya|xray-core|xray-plugin|lua-neturl|mosdns|luci-app-ssr-plus|luci-app-passwall' | xargs rm -rf

# Modify default IP
sed -i 's/192.168.6.1/10.0.0.1/g' package/base-files/files/bin/config_generate

# Modify default Hostname
sed -i 's/ImmortalWrt/Railgun/g' package/base-files/files/bin/config_generate

# Update Go to 1.21 for Xray-core build
rm -rf feeds/packages/lang/golang
git_sparse_clone https://github.com/immortalwrt/packages openwrt-23.05 lang/golang feeds/packages/lang/golang

# Add Rust for ss-rust
git_sparse_clone https://github.com/immortalwrt/packages openwrt-23.05 lang/rust feeds/packages/lang/rust

# Update tailscale to ImmortalWrt master
rm -rf feeds/packages/net/tailscale
git_sparse_clone https://github.com/immortalwrt/packages openwrt-23.05 net/tailscale feeds/packages/net/tailscale

# Make tailsale config persistent during sysupgrades
echo "/etc/tailscale/" >> package/base-files/files/etc/sysupgrade.conf
