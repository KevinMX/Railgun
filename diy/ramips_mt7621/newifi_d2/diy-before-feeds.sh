#!/bin/bash

# Use master branch of helloworld
git clone --depth=1 https://github.com/fw876/helloworld package/helloworld

# Use master branch of passwall
git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/passwall

# Patch include/prereq-build.mk for building on distros with newer python versions
patch -p1 < ~/work/Railgun/Railgun/patches/00_python3.patch