cmd_libbb/makedev.o := /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/bin/arm-cortex_a9-linux-gnueabi-gcc -Wp,-MD,libbb/.makedev.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.21.1)" -DBB_BT=AUTOCONF_TIMESTAMP -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -pipe -mno-unaligned-access -Os  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os -fno-strict-aliasing    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(makedev)"  -D"KBUILD_MODNAME=KBUILD_STR(makedev)" -c -o libbb/makedev.o libbb/makedev.c

deps_libbb/makedev.o := \
  libbb/makedev.c \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /opt/crosstools/arm-cortex_a9-eabi-4.7-eglibc-2.18/lib/gcc/arm-cortex_a9-linux-gnueabi/4.7.4/include-fixed/limits.h \
  /opt/crosstools/arm-cortex_a9-eabi-4.7-eglibc-2.18/lib/gcc/arm-cortex_a9-linux-gnueabi/4.7.4/include-fixed/syslimits.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/limits.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/features.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/stdc-predef.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/predefs.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/cdefs.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/wordsize.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/gnu/stubs.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/gnu/stubs-soft.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/posix1_lim.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/local_lim.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/limits.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/posix2_lim.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/xopen_lim.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/stdio_lim.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/byteswap.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/byteswap.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/typesizes.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/byteswap-16.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/endian.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/endian.h \
  /opt/crosstools/arm-cortex_a9-eabi-4.7-eglibc-2.18/lib/gcc/arm-cortex_a9-linux-gnueabi/4.7.4/include/stdint.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/stdint.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/wchar.h \
  /opt/crosstools/arm-cortex_a9-eabi-4.7-eglibc-2.18/lib/gcc/arm-cortex_a9-linux-gnueabi/4.7.4/include/stdbool.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/unistd.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/posix_opt.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/environments.h \
  /opt/crosstools/arm-cortex_a9-eabi-4.7-eglibc-2.18/lib/gcc/arm-cortex_a9-linux-gnueabi/4.7.4/include/stddef.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/confname.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/getopt.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/sysmacros.h \

libbb/makedev.o: $(deps_libbb/makedev.o)

$(deps_libbb/makedev.o):
