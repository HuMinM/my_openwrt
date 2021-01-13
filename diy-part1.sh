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
sed -i 's/#src-git helloworld/src-git helloworld/g' ./feeds.conf.default
echo "src-git jerryk https://github.com/jerrykuku/openwrt-package.git" >> ./feeds.conf.default
echo "src-git openclash https://github.com/vernesong/OpenClash;master" >> ./feeds.conf.default
rm -rf ./package/lean/luci-theme-argon && git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git ./package/lean/luci-theme-argon
mkdir -p package/lixunhuan
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus.git package/lixunhuan/luci-app-jd-dailybonus
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lixunhuan/luci-app-argon-config
git clone https://github.com/jerrykuku/luci-app-vssr.git package/lixunhuan/luci-app-vssr
# Add a feed source
#sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
