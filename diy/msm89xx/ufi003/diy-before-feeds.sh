#!/bin/bash

# Add luci-app-mosdns
git clone --depth=1 https://github.com/sbwml/luci-app-mosdns package/mosdns
git clone --depth=1 https://github.com/sbwml/v2ray-geodata package/v2ray-geodata

# Add luci-app-smstool
git clone --depth-1 https://github.com/4IceG/luci-app-sms-tool package/luci-app-sms-tool