#!/bin/bash

# Add packages from kenzok8/small-package
git clone --depth=1 https://github.com/kenzok8/small-package package/small-package

# Fix python 3.11 build for future build host system upgrades
sed -i "/python3.10/i\python3.11 -V 2>&1 | grep 'Python 3', \\\\" include/prereq-build.mk
sed -i '/python3 -V/d' include/prereq-build.mk
sed -i "/python3.6/a\python3 -V 2>&1 | grep -E 'Python 3\\\\.\([6-9]|[0-9][0-9]\)\\\\.?'\)\)" include/prereq-build.mk
