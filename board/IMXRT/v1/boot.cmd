setenv bootargs console=ttyLP0 root=/dev/mmcblk0p2 rw earlycon rootwait
load mmc 0:1 0x80800000 imxrt1050-evk.dtb
load mmc 0:1 0x80000000 uImage
bootm 0x80000000 - 0x80800000
