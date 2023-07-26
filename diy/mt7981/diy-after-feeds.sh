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
rm -rf package/small-package/{opkg,firewall,base-files}

# Update Go to 1.20 for Xray-core build
rm -rf feeds/packages/lang/golang
git_sparse_clone https://github.com/openwrt/packages openwrt-22.03 packages-upstream lang/golang feeds/packages/lang/golang

# Make tailsale config persistent during sysupgrades
echo "/etc/tailscale/" >> package/base-files/files/etc/sysupgrade.conf