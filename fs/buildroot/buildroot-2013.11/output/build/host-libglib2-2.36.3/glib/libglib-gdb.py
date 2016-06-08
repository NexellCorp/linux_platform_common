import sys
import gdb

# Update module path.
dir_ = '/home/chris/work/bsp/lollipop-avn_ref_4330_dev/linux/platform/common/fs/buildroot/buildroot-2013.11/output/host/usr/share/glib-2.0/gdb'
if not dir_ in sys.path:
    sys.path.insert(0, dir_)

from glib import register
register (gdb.current_objfile ())
