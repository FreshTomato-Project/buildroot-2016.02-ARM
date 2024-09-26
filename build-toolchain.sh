#!/bin/bash

make clean
make

ret=$?
[ $ret -ne 0 ] && {
	echo -e "\nAn error occurred while building the toolchain!\n\n"
} || {
	[ $(cat .config | grep "BR2_GCC_VERSION=\"7.3.0\"") ] && {
		TOOLCHAIN=./output/hndtools-arm-uclibc-7.3/usr
	} || {
		TOOLCHAIN=./output/hndtools-arm-uclibc-5.3/usr
	}

	FILES=./dl_save/files
	HERE=$(pwd)
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
	cp -f $FILES/pps/timepps.h $SYSROOT/usr/include/timepps.h

	echo -e "\nToolchain successfully built!\n\n"
}

exit $ret