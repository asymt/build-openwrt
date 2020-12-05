#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
# git clone https://github.com/firkerword/v2fly.git package/v2fly
git clone https://github.com/openwrt-develop/luci-theme-atmaterial.git package/lean/luci-theme-atmaterial
git clone -b master https://github.com/firkerword/OpenClash.git package/OpenClash
# git clone https://github.com/firkerword/v2fly.git package/v2fly
git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/luci-app-jd-dailybonus
svn co https://github.com/firker/diy-ziyong/trunk/smartdns package/smartdns
svn co https://github.com/firker/diy-ziyong/trunk/vssr/https-dns-proxy package/https-dns-proxy
#git clone -b openwrt-19.07 https://github.com/xiaorouji/packages.git package/lienol
git clone https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
