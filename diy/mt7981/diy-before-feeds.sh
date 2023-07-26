#!/bin/bash

# Clean up dependencies
find . -name Makefile -exec dirname {} \; | grep -wE 'brook|gn|chinadns-ng|dns2socks|dns2tcp|hysteria|ipt2socks|microsocks|naiveproxy|pdnsd-alt|redsocks2|sagernet-core|shadowsocks-rust|shadowsocksr-libev|simple-obfs|sing-box|ssocks|tcping|trojan|trojan-go|trojan-plus|v2ray-core|v2ray-geodata|v2ray-plugin|v2raya|xray-core|xray-plugin' | xargs rm -rf

# Add packages from kenzok8/small-package
git clone --depth=1 https://github.com/kenzok8/small-package package/small-package

# Fix python 3.11 build for future build host system upgrades
sed -i "/python3.10/i\python3.11 -V 2>&1 | grep 'Python 3', \\\\" include/prereq-build.mk
sed -i '/python3 -V/d' include/prereq-build.mk
sed -i "/python3.6/a\python3 -V 2>&1 | grep -E 'Python 3\\\\.\([6-9]|[0-9][0-9]\)\\\\.?'\)\)" include/prereq-build.mk
