#! /bin/sh
# Copyright (C) 2004-2012 Free Software Foundation, Inc.
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

# Test missing when running a tool's --version.

am_create_testdir=empty
. ./defs || exit 1

get_shell_script missing

# b7cb8259 assumed not to exist.

./missing b7cb8259 --version 2>stderr && { cat stderr >&2; exit 1; }
cat stderr >&2
grep . stderr && exit 1
./missing b7cb8259 --grep 2>stderr && { cat stderr >&2; exit 1; }
cat stderr >&2
grep WARNING stderr

./missing --run b7cb8259 --version && exit 1
./missing --run b7cb8259 --grep 2>stderr && { cat stderr >&2; exit 1; }
cat stderr >&2
grep WARNING stderr

# missing itself it known to exist :)

./missing ./missing --version 2>stderr && { cat stderr >&2; exit 1; }
cat stderr >&2
grep . stderr && exit 1
./missing ./missing --grep 2>stderr && { cat stderr >&2; exit 1; }
cat stderr >&2
grep WARNING stderr

./missing --run ./missing --version 2>stderr || { cat stderr >&2; exit 1; }
cat stderr >&2
grep . stderr && exit 1
./missing --run ./missing --grep 2>stderr && { cat stderr >&2; exit 1; }
cat stderr >&2
grep WARNING stderr && exit 1
grep Unknown stderr
