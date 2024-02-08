#!/bin/bash

# Modify Default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Modify default hostname
sed -i 's/OpenWrt/Railgun/g' package/base-files/files/bin/config_generate

# Enable 802.11 r
sed -i 's/FtSupport=0/FtSupport=1/g' package/lean/mt/drivers/mt_wifi/files/mt7615.1.2G.dat
sed -i 's/FtSupport=0/FtSupport=1/g' package/lean/mt/drivers/mt_wifi/files/mt7615.1.5G.dat
