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
#sed -i '$a src-git mosdns https://github.com/Gzxhwq/openwrt-mos;dev' feeds.conf.default

# echo 'src-git PWpackages https://github.com/xiaorouji/openwrt-passwall.git;packages' >>feeds.conf.default
# echo 'src-git PWluci https://github.com/xiaorouji/openwrt-passwall.git;luci' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
echo 'src-git kenzo https://github.com/kenzok8/openwrt-packages' >>feeds.conf.default
echo 'src-git small https://github.com/kenzok8/small' >>feeds.conf.default
echo 'src-git n2n https://github.com/alecthw/openwrt-n2n' >>feeds.conf.default

#Add external packages
#svn co https://github.com/ophub/luci-app-amlogic/trunk/luci-app-amlogic package/others/luci-app-amlogic
#svn co https://github.com/QiuSimons/openwrt-mos/trunk/v2ray-geodata package/others/v2ray-geodata

#svn co https://github.com/Gzxhwq/openwrt-passwall/branches/sing-box-git/sing-box package/others/sing-box
#sed -i '/iptables-mod-socket/d' ./package/others/sing-box/Makefile
#svn co https://github.com/Gzxhwq/openwrt-passwall/branches/xray-core-git/xray-core package/others/xray-core

#svn co https://github.com/xiaorouji/openwrt-passwall/branches/luci/luci-app-passwall package/others/luci-app-passwall
#svn co https://github.com/Gzxhwq/openwrt-passwall/branches/luci-test/luci-app-passwall package/others/luci-app-passwall
#svn co https://github.com/xiaorouji/openwrt-passwall2/trunk/luci-app-passwall2 package/others/luci-app-passwall2
