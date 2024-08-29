#!/bin/bash

make clean
make

FILES=./dl_save/files
HERE=$(pwd)
TOOLCHAIN=./output/hndtools-arm-uclibc-5.3/usr
SYSROOT=$TOOLCHAIN/arm-brcm-linux-uclibcgnueabi/sysroot

cd $TOOLCHAIN
ln -sf arm-brcm-linux-uclibcgnueabi arm-linux
ln -sf arm-linux/sysroot/usr usr
cd $HERE

# still needed?
rm -f $TOOLCHAIN/lib/libgmp.*
rm -f $TOOLCHAIN/lib/libiberty.a
rm -f $TOOLCHAIN/lib/libc.a

cp -f $FILES/fixed/in.h $SYSROOT/usr/include/netinet/in.h

cp -f $FILES/newer/if_pppol2tp.h $SYSROOT/usr/include/linux/if_pppol2tp.h
cp -f $FILES/newer/if_pppox.h $SYSROOT/usr/include/linux/if_pppox.h
cp -f $FILES/newer/timex.h $SYSROOT/usr/include/sys/timex.h

cp -f $FILES/pps/timepps.h $SYSROOT/usr/include/timepps.h

cp -f $FILES/wireguard/netlink.h $SYSROOT/usr/include/linux/netlink.h

echo -e "\nToolchain successfully built!\n\n"
