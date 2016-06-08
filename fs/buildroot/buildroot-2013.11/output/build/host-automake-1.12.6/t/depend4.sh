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

# Check that dependencies are included when there are many header files.

. ./defs || exit 1

echo AC_PROG_CC >> configure.ac

$ACLOCAL

headers=
for header in one.h two.h three.h four.h five.h six.h; do
  headers="$headers $header"
  unindent > Makefile.am << END
    bin_PROGRAMS = fred
    fred_SOURCES = fred1.c $headers
END
  $AUTOMAKE
  test 1 -eq $(grep -c '^@AMDEP_TRUE@@am__include@' Makefile.in)
done

:
