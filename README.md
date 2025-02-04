# **buildroot-2016.02-ARM** #
  
  
**Ready-to-use buildroot for ARM branch - tested on Debian 12 (with gcc-5.3, binutils-2.25.1, gmp-6.1.0, mpc-1.0.3, mpfr-3.1.3...)**
  
  
To build the toolchain:
  
1. Generate an archive of the linux sources in FT repo (file name has to be "linux-2.6.36.4.tar.xz") and place the archive into the buildroot's dl_save folder:
  
```sh
		cd $HOME/freshtomato-arm/release/src-rt-6.x.4708/linux
		tar cJvf linux-2.6.36.4.tar.xz linux-2.6.36
		mv linux-2.6.36.4.tar.xz $HOME/buildroot-2016.02-ARM/dl_save
```
  
2. To build toolchain with gcc-7.3 and binutils-2.28.1 (not fully working yet, experimental!), rename file ```.config-7.3``` to ```.config``` in main buildroot directory.
  
3. Run:
  
```sh
./build-toolchain.sh
```
  
New toolchain is available in ```output/hndtools-arm-uclibc-5.3``` (or ```output/hndtools-arm-uclibc-7.3``` for gcc-7.3 version).
  
Enjoy!
  
PS: thanks to @st_ty / @st-ty1 for initial idea: https://github.com/st-ty1/Artix_FreshTomato/tree/master/gcc-5.3-toolchain_arm
  
