cmd_networking/libiproute/utils.o := /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/bin/arm-cortex_a9-linux-gnueabi-gcc -Wp,-MD,networking/libiproute/.utils.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -D"BB_VER=KBUILD_STR(1.21.1)" -DBB_BT=AUTOCONF_TIMESTAMP -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -pipe -mno-unaligned-access -Os  -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -fno-builtin-strlen -finline-limit=0 -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -Os -fno-strict-aliasing    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(utils)"  -D"KBUILD_MODNAME=KBUILD_STR(utils)" -c -o networking/libiproute/utils.o networking/libiproute/utils.c

deps_networking/libiproute/utils.o := \
  networking/libiproute/utils.c \
  include/libbb.h \
    $(wildcard include/config/feature/shadowpasswds.h) \
    $(wildcard include/config/use/bb/shadow.h) \
    $(wildcard include/config/selinux.h) \
    $(wildcard include/config/feature/utmp.h) \
    $(wildcard include/config/locale/support.h) \
    $(wildcard include/config/use/bb/pwd/grp.h) \
    $(wildcard include/config/lfs.h) \
    $(wildcard include/config/feature/buffers/go/on/stack.h) \
    $(wildcard include/config/feature/buffers/go/in/bss.h) \
    $(wildcard include/config/feature/ipv6.h) \
    $(wildcard include/config/feature/seamless/xz.h) \
    $(wildcard include/config/feature/seamless/lzma.h) \
    $(wildcard include/config/feature/seamless/bz2.h) \
    $(wildcard include/config/feature/seamless/gz.h) \
    $(wildcard include/config/feature/seamless/z.h) \
    $(wildcard include/config/feature/check/names.h) \
    $(wildcard include/config/feature/prefer/applets.h) \
    $(wildcard include/config/long/opts.h) \
    $(wildcard include/config/feature/getopt/long.h) \
    $(wildcard include/config/feature/pidfile.h) \
    $(wildcard include/config/feature/syslog.h) \
    $(wildcard include/config/feature/individual.h) \
    $(wildcard include/config/echo.h) \
    $(wildcard include/config/printf.h) \
    $(wildcard include/config/test.h) \
    $(wildcard include/config/kill.h) \
    $(wildcard include/config/chown.h) \
    $(wildcard include/config/ls.h) \
    $(wildcard include/config/xxx.h) \
    $(wildcard include/config/route.h) \
    $(wildcard include/config/feature/hwib.h) \
    $(wildcard include/config/desktop.h) \
    $(wildcard include/config/feature/crond/d.h) \
    $(wildcard include/config/use/bb/crypt.h) \
    $(wildcard include/config/feature/adduser/to/group.h) \
    $(wildcard include/config/feature/del/user/from/group.h) \
    $(wildcard include/config/ioctl/hex2str/error.h) \
    $(wildcard include/config/feature/editing.h) \
    $(wildcard include/config/feature/editing/history.h) \
    $(wildcard include/config/feature/editing/savehistory.h) \
    $(wildcard include/config/feature/tab/completion.h) \
    $(wildcard include/config/feature/username/completion.h) \
    $(wildcard include/config/feature/editing/vi.h) \
    $(wildcard include/config/feature/editing/save/on/exit.h) \
    $(wildcard include/config/pmap.h) \
    $(wildcard include/config/feature/show/threads.h) \
    $(wildcard include/config/feature/ps/additional/columns.h) \
    $(wildcard include/config/feature/topmem.h) \
    $(wildcard include/config/feature/top/smp/process.h) \
    $(wildcard include/config/killall.h) \
    $(wildcard include/config/pgrep.h) \
    $(wildcard include/config/pkill.h) \
    $(wildcard include/config/pidof.h) \
    $(wildcard include/config/sestatus.h) \
    $(wildcard include/config/unicode/support.h) \
    $(wildcard include/config/feature/mtab/support.h) \
    $(wildcard include/config/feature/devfs.h) \
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
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/ctype.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/xlocale.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/dirent.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/dirent.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/errno.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/errno.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/errno.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/errno.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/errno.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/errno-base.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/fcntl.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/fcntl.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/fcntl-linux.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/uio.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/time.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/select.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/select.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sigset.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/time.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/sysmacros.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/pthreadtypes.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/stat.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/inttypes.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/netdb.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/netinet/in.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/socket.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/uio.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/socket.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/socket_type.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sockaddr.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/socket.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/sockios.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/in.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/rpc/netdb.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/siginfo.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/netdb.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/setjmp.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/setjmp.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/signal.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/signum.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sigaction.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sigcontext.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/sigcontext.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sigstack.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/ucontext.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sigthread.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/stdio.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/libio.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/_G_config.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/wchar.h \
  /opt/crosstools/arm-cortex_a9-eabi-4.7-eglibc-2.18/lib/gcc/arm-cortex_a9-linux-gnueabi/4.7.4/include/stdarg.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/sys_errlist.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/stdlib.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/waitflags.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/waitstatus.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/alloca.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/stdlib-float.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/string.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/libgen.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/poll.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/poll.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/poll.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/ioctl.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/ioctls.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/ioctls.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/ioctls.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/ioctl.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/ioctl.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/ioctl.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/ioctl-types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/ttydefaults.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/mman.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/mman.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/mman-linux.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/stat.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/time.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/wait.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/termios.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/termios.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/timex.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/param.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/param.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/param.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/param.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/pwd.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/grp.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/mntent.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/paths.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/sys/statfs.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/statfs.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/utmp.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/utmp.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/locale.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/bits/locale.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/arpa/inet.h \
  include/pwd_.h \
  include/grp_.h \
  include/shadow_.h \
  include/xatonum.h \
  networking/libiproute/utils.h \
  networking/libiproute/libnetlink.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/int-ll64.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/bitsperlong.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/bitsperlong.h \
    $(wildcard include/config/64bit.h) \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/posix_types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/stddef.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm/posix_types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/asm-generic/posix_types.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/netlink.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/socket.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/rtnetlink.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/if_link.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/if_addr.h \
  /home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/arm-buildroot-linux-gnueabi/sysroot/usr/include/linux/neighbour.h \
  networking/libiproute/ll_map.h \
  networking/libiproute/rtm_map.h \
  include/inet_common.h \

networking/libiproute/utils.o: $(deps_networking/libiproute/utils.o)

$(deps_networking/libiproute/utils.o):
