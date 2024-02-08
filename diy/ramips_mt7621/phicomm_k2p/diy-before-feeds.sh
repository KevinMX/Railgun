#!/bin/bash

function git_sparse_clone() {
    git clone --filter=blob:none --no-checkout --depth=1 $1 $2 && cd $2
    git sparse-checkout init --cone
    git sparse-checkout set $3
    git checkout
    mv $3 ../$4
    cd ../ && rm -rf $2
}

# Enable helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add passwall
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> feeds.conf.default    