#! /bin/sh
# Copyright (C) 2001-2012 Free Software Foundation, Inc.
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2, or (at your option)
# any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Test to make sure that depcomp is not used when it's not installed
# From Pavel Roskin.

required=cc
. ./defs || exit 1

cat >> configure.ac << 'END'
AC_CONFIG_FILES([subdir/Makefile])
AC_PROG_CC
AC_OUTPUT
END

cat > Makefile.am << 'END'
SUBDIRS = subdir
END

rm -f depcomp
mkdir subdir

cat > subdir/Makefile.in << 'END'
foo:
	$(CC) -o foo foo.c
END

: > subdir/foo.c

$ACLOCAL
$AUTOMAKE --add-missing
$AUTOCONF
./configure 2>stderr || { cat stderr >&2; exit 1; }
cat stderr >&2
test ! -s stderr

:
