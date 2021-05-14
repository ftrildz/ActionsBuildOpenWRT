#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# ==========luci-app-==========
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/luci-app-argon-config
git clone https://github.com/garypang13/luci-app-dnsfilter package/luci-app-dnsfilter
git clone https://github.com/godros/luci-app-godproxy.git package/luci-app-godproxy
git clone https://github.com/vernesong/OpenClash package/OpenClash

# ==========luci-theme-==========
cd package/lean
rm -rf luci-theme-argon
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git

# ==========luci-app-bypass==========
cd ..
git clone https://github.com/garypang13/luci-app-bypass
git clone https://github.com/garypang13/smartdns-le
svn co https://github.com/garypang13/openwrt-packages/trunk/chinadns-ng
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan-go
svn co https://github.com/garypang13/openwrt-packages/trunk/trojan-plus
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb
