# linux
SYSCONFDIR=	/etc
SBINDIR=	/sbin
LIBDIR=		/lib
LIBEXECDIR=	/libexec
DBDIR=		/var/db
RUNDIR=		/var/run
LIBDIR=		/lib
MANDIR=		/usr/share/man
CC=		/home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/bin/arm-cortex_a9-linux-gnueabi-gcc
CFLAGS=		-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -pipe -mno-unaligned-access -Os 
CPPFLAGS=		-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64
CPPFLAGS+=	-D_BSD_SOURCE -D_XOPEN_SOURCE=700
SRCS+=		lpf.c
SRCS+=		if-linux.c if-linux-wireless.c
SRCS+=		platform-linux.c
LDADD+=		-lrt -ldl
CPPFLAGS+=	-DINET
SRCS+=		arp.c dhcp.c ipv4.c ipv4ll.c
CPPFLAGS+=	-DINET6
SRCS+=		ipv6.c ipv6nd.c dhcp6.c
COMPAT_SRCS+=	compat/arc4random.c
COMPAT_SRCS+=	compat/closefrom.c
COMPAT_SRCS+=	compat/strlcpy.c
SERVICEEXISTS=	/usr/sbin/invoke-rc.d --query --quiet $$1 start >/dev/null 2>\&1 || [ $$? = 104 ]
SERVICECMD=	/usr/sbin/invoke-rc.d $$1 $$2
SERVICESTATUS=	service_command $$1 status >/dev/null 2>\&1
HOOKSCRIPTS=	
