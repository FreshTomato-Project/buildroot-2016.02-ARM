# **buildroot-2016.02-ARM** #
  
  
**Ready-to-use buildroot for ARM branch - tested on Debian 12 (with gcc-5.3/7.3/7.5, binutils-2.25.1/2.28.1/2.29.1, gmp-6.1.0/6.3.0, mpc-1.0.3/1.3.1, mpfr-3.1.3/4.2.1...)**
  
  
To build the toolchain:
  
1. Generate an archive of the linux sources in FT repo (file name has to be "linux-2.6.36.4.tar.xz") and place the archive into the buildroot's dl_save folder:
  
```sh
		cd $HOME/freshtomato-arm/release/src-rt-6.x.4708/linux
		tar cJvf linux-2.6.36.4.tar.xz linux-2.6.36
		mv linux-2.6.36.4.tar.xz $HOME/buildroot-2016.02-ARM/dl_save
```
  
2. By default, the toolchain is built with gcc 7.5.0. To build with a different one, rename the appropriate file to ```.config``` in main buildroot directory.
  
3. Run:
  
```sh
./build-toolchain.sh
```
  
New toolchain is available in ```output/hndtools-arm-uclibc-5.3/7.3/7.5```.
  
Enjoy!
  
PS: thanks to @st_ty / @st-ty1 for initial idea: https://github.com/st-ty1/Artix_FreshTomato/
  
