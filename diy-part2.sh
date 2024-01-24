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
# echo '### Updates default IP gate ###'
# sed -i 's/192.168.1.1/10.1.1.10/g' package/base-files/files/bin/config_generate
# echo '###  ###'

# echo '### Updates Theme Argon ###'
# package/lean/luci-theme-argon /package/feeds/luci/luci-theme-argon
# rm -rf package/feeds/luci/luci-theme-argon
curl -o ./feeds/packages/lang/rust/rust-values.mk https://raw.githubusercontent.com/Jason6111/packages/patch-1/lang/rust/rust-values.mk
curl -o ./feeds/packages/lang/rust/Makefile https://raw.githubusercontent.com/Jason6111/OpenWrt_Personal/main/other/rust/Makefile
curl -o ./feeds/packages/lang/rust/patches/0001-Update-xz2-and-use-it-static.patch https://raw.githubusercontent.com/Jason6111/OpenWrt_Personal/main/other/rust/0001-Update-xz2-and-use-it-static.patch
git clone -b luci-smartdns-dev https://github.com/xiaorouji/openwrt-passwall.git package/passwall
# git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# echo '###  ###'
