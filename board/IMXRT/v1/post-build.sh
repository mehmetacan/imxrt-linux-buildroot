#!/bin/sh
rm output/images/uImage
cp output/build/linux-b0cdf1678ef72b1846ca381e7f93a569abbe52a3/arch/arm/boot/dts/imxrt1050-evk.dtb output/images # bug in curent buildroot for kernel 5.16.x
mkimage -A arm -O linux -T kernel -C none -a 0x80008000 -e 0x80008000 -n "Linux kernel" -d output/images/Image output/images/uImage
./support/scripts/genimage.sh $2 $3
