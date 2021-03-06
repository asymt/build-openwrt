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
sed -i 's/192.168.1.1/192.168.50.1/g' package/base-files/files/bin/config_generate
sed -i 's/PKG_SOURCE_URL\S*/PKG_SOURCE_URL:=https:\/\/github.com\/AdguardTeam\/AdGuardHome\/releases\/download\/v0.104.3/g' feeds/diy/adguardhome/Makefile 
sed -i 's/=86/=386/g' feeds/diy/adguardhome/Makefile
pushd package/OpenClash/luci-app-openclash/tools/po2lmo
make && sudo make install
popd
