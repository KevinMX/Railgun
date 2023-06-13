#!/bin/bash

function git_sparse_clone() {
    git clone --filter=blob:none --no-checkout --depth=1 $1 && cd $2
    git sparse-checkout init --cone
    git sparse-checkout set $3
    git checkout
    mv $3 ../$4
    cd ../ && rm -rf $2
}

# Add mtkiappd support for 802.11 k/v/r
git_sparse_clone https://github.com/coolsnowwolf/lede lede package/lean/mt/mtkiappd package/kernel/mt-drivers/mtkiappd