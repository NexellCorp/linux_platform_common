#! /bin/sh
# Copyright (C) 2003-2012 Free Software Foundation, Inc.
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

# Test support for building HTML documentation, and the many
# install-DOC flavors.

required='makeinfo-html tex texi2dvi'
. ./defs || exit 1

cat >>configure.ac <<\EOF
AC_CONFIG_FILES([rec/Makefile])

# At the time of writing, Autoconf does not supplies any of these
# definitions (and those below are purposely not those of the standard).
AC_SUBST([dvidir],  ['${datadir}/${PACKAGE}/dvi'])
AC_SUBST([htmldir], ['${datadir}/${PACKAGE}/html'])
AC_SUBST([pdfdir],  ['${datadir}/${PACKAGE}/pdf'])
AC_SUBST([psdir],   ['${datadir}/${PACKAGE}/ps'])

AC_OUTPUT
EOF

cat > Makefile.am << 'END'
SUBDIRS = rec
info_TEXINFOS = main.texi sub/main2.texi
END

cat > main.texi << 'END'
\input texinfo
@setfilename main.info
@settitle main
@node Top
Hello walls.
@bye
END

mkdir sub
cat > sub/main2.texi << 'END'
\input texinfo
@setfilename main2.info
@settitle main2
@node Top
Hello walls.
@bye
END

mkdir rec
cat > rec/main3.texi << 'END'
\input texinfo
@setfilename main3.info
@settitle main3
@node Top
Hello walls.
@bye
END

cat > rec/Makefile.am << 'END'
info_TEXINFOS = main3.texi

install-pdf-local:
	@$(MKDIR_P) "$(pdfdir)"
	:> "$(pdfdir)/hello"
uninstall-local:
	rm -f "$(pdfdir)/hello"
END

$ACLOCAL
$AUTOMAKE --add-missing
$AUTOCONF

./configure

$MAKE

$sleep
# Test production of split-per-node HTML.
$MAKE html
test -d main.html
test -d sub/main2.html
test -d rec/main3.html

# Rebuilding main.html should cause its timestamp to be updated.
is_newest main.html main.texi
$sleep
touch main.texi
$MAKE html
is_newest main.html main.texi

$MAKE clean
test ! -e main.html
test ! -e sub/main2.html
test ! -e rec/main3.html

# Test production of a single HTML file.
MAKEINFOFLAGS=--no-split $MAKE -e html
test -f main.html
test -f sub/main2.html
test -f rec/main3.html
$MAKE clean
test ! -e main.html
test ! -e sub/main2.html
test ! -e rec/main3.html

# Make sure AM_MAKEINFOHTMLFLAGS is supported, and override AM_MAKEINFO.
cat >>Makefile.am <<\EOF
AM_MAKEINFOHTMLFLAGS = --no-headers --no-split
AM_MAKEINFOFLAGS = --unsupported-option
EOF
$AUTOMAKE
./configure --prefix "$(pwd)"

$MAKE html
test -f main.html
test -f sub/main2.html
test -d rec/main3.html
$MAKE clean
test ! -e main.html
test ! -e sub/main2.html
test ! -e rec/main3.html

$MAKE install-html
test -f share/$me/html/main.html
test -f share/$me/html/main2.html
test -d share/$me/html/main3.html
$MAKE uninstall
test ! -e share/$me/html/main.html
test ! -e share/$me/html/main2.html
test ! -e share/$me/html/main3.html

$MAKE install-dvi
test -f share/$me/dvi/main.dvi
test -f share/$me/dvi/main2.dvi
test -f share/$me/dvi/main3.dvi
$MAKE uninstall
test ! -e share/$me/dvi/main.dvi
test ! -e share/$me/dvi/main2.dvi
test ! -e share/$me/dvi/main3.dvi

dvips --help || skip_ "dvips is missing"

$MAKE install-ps
test -f share/$me/ps/main.ps
test -f share/$me/ps/main2.ps
test -f share/$me/ps/main3.ps
$MAKE uninstall
test ! -e share/$me/ps/main.ps
test ! -e share/$me/ps/main2.ps
test ! -e share/$me/ps/main3.ps

pdfetex --help || pdftex --help \
  || skip_ "pdftex and pdfetex are both missing"

$MAKE install-pdf
test -f share/$me/pdf/main.pdf
test -f share/$me/pdf/main2.pdf
test -f share/$me/pdf/main3.pdf
test -f share/$me/pdf/hello
$MAKE uninstall
test ! -e share/$me/pdf/main.pdf
test ! -e share/$me/pdf/main2.pdf
test ! -e share/$me/pdf/main3.pdf
test ! -e share/$me/pdf/hello

:
