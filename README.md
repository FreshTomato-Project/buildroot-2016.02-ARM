# **buildroot-2016.02-ARM** #
  
  
** Ready-to-use buildroot for ARM branch - tested on Debian 12 **
** with gcc-5.3, binutils-2.25.1, gmp-6.1.0, mpc-1.0.3, mpfr-3.1.3... **
  
  
To build the toolchain:

1. Pack the ```/home/[username]/freshtomato-arm/release/src-rt-6.x.4708/linux/linux-2.6.36``` subdirectory into ```linux-2.6.36.4.tar.xz``` file and put it in the dl_save folder in buildroot.


2. Run:

```sh
./build-toolchain.sh
```
  
  
New toolchain is available in ```output/hndtools-arm-uclibc-5.3```.
  
Enjoy!
  
PS: thanks to @st_ty / @st-ty1 for initial idea: https://github.com/st-ty1/Artix_FreshTomato/tree/master/gcc-5.3-toolchain_arm
  
