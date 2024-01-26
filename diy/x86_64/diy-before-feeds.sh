#!/bin/bash

# Enable helloworld
sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add passwall
echo 'src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main' >> feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main' >> feeds.conf.default    