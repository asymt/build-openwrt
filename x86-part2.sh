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
sed -i 's/holmium/1715173329/g' package/lean/dnsforwarder/Makefile
sed -i 's/6fa74a3fc87cba97dbc4a7213b760f8d997cd9c5f11900d47d387b23764cf20a/6a95c4323e008499af8d3549513c8a128c69b97296888a4c4b642e6c14a65508/g' package/firmware/ath10k-firmware/Makefile
rm -rf ./package/lean/v2ray
rm -rf ./package/lean/v2ray-plugin
rm -rf ./package/lean/luci-theme-argon
rm -rf ./package/lienol/v2ray
rm -rf ./package/lienol/v2ray-plugin
rm -rf ./feeds/packages/net/smartdns
rm -rf ./feeds/packages/net/https-dns-proxy
rm -rf ./feeds/packages/lang/golang

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray package/lean/v2ray
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray-plugin package/lean/v2ray-plugin
svn co https://github.com/coolsnowwolf/packages/trunk/lang/golang feeds/packages/lang/golang
