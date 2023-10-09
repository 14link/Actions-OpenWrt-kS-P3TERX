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
	#	sed -i '$a src-git kiddin9 https://github.com/kiddin9/openwrt-packages.git' feeds.conf.default
		sed -i 's/192.168.1.1/192.168.0.252/g' package/base-files/files/bin/config_generate
		sed -i 's/$1$V4UetPzk$CYXluq4wUazHjmCDBCqXF.//g' package/default-settings/files/zzz-default-settings
		sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
		sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
		sed -i '$a src-git diypkg https://github.com/14link/diy-package;22.03' feeds.conf.default
		echo "src-git passwall_packages https://github.com/xiaorouji/openwrt-passwall-packages.git;main" >> "feeds.conf.default"
		echo "src-git passwall https://github.com/xiaorouji/openwrt-passwall.git;main" >> "feeds.conf.default"

	#	 echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
	#	 echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default
	#	 sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
	#	 mv -vf ../mt7621_phicomm_k2p.dts ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
	#	 git clone https://github.com/vernesong/OpenClash.git package/OpenClash
	#	 svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/aliyundrive-webdav
	#	 svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash
	#	 rm -rf ./package/feeds/kenzo/luci-theme-edge 
	#	 git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan