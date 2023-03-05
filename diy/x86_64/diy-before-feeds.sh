#!/bin/bash
# Add packages from kenzok8/small-package
git clone --depth=1 https://github.com/kenzok8/small-package package/small-package

# Add luci-theme-design configuration plugin
git clone --depth=1 https://github.com/gngpp/luci-app-design-config package/luci-app-design-config
