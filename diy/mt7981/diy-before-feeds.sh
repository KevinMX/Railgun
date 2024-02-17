#!/bin/bash

# Add passwall and helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/passwall_packages 
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/passwall