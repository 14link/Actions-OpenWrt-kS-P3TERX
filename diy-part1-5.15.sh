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
        sed -i 's/PATCHVER:=6.1/PATCHVER:=5.15/g' target/linux/x86/Makefile

    #    sed -i 's/PATCHVER:=5.15/PATCHVER:=5.15/g' target/linux/x86/Makefile
	#	 sed -i 's/KERNEL_PATCHVER:=5.4/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
	#	 sed -i 's/KERNEL_PATCHVER:=5.10/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
	#	 sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
	#	 sed -i 's/KERNEL_TESTING_PATCHVER:=6.1/KERNEL_TESTING_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
	#	 sed -i 's/KERNEL_TESTING_PATCHVER:=5.4/KERNEL_TESTING_PATCHVER:=5.15/g' ./target/linux/x86/Makefile
	#	 sed -i 's/KERNEL_TESTING_PATCHVER:=5.10/KERNEL_TESTING_PATCHVER:=5.15/g' ./target/linux/x86/Makefile

		sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
		sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

#sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default
#sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall' feeds.conf.default

#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

#sed -i '$a src-git diy https://github.com/firker/diy-ziyong' feeds.conf.default
#sed -i '$a src-git jerryk https://github.com/jerrykuku/openwrt-package' feeds.conf.default
# mv -vf ../mt7621_phicomm_k2p.dts ./target/linux/ramips/dts/mt7621_phicomm_k2p.dts
#　git clone https://github.com/vernesong/OpenClash.git package/OpenClash
#svn co https://github.com/messense/aliyundrive-webdav/trunk/openwrt package/aliyundrive-webdav
#svn co https://github.com/vernesong/OpenClash/trunk/luci-app-openclash package/luci-app-openclash

#rm -rf ./package/feeds/kenzo/luci-theme-edge 

		git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge package/luci-theme-edge
		git clone https://github.com/esirplayground/luci-app-poweroff package/luci-app-poweroff
		git clone https://github.com/sirpdboy/luci-app-autotimeset package/luci-app-autotimeset
		git clone https://github.com/sirpdboy/luci-app-wizard package/luci-app-wizard
#git clone https://github.com/tty228/luci-app-serverchan.git package/luci-app-serverchan
#git clone https://github.com/sirpdboy/luci-theme-opentopd.git package/luci-theme-opentopd
