#!/bin/bash

# Use master branch of mosdns and add LuCI support
#rm -rf feeds/packages/net/mosdns
git clone --depth=1 https://github.com/QiuSimons/openwrt-mos package/openwrt-mos
