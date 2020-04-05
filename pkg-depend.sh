#!/bin/sh
[ -z "$1" ] && echo "Usage: pkg-depend.sh package_name" && exit 0
[ -z "$(pkg_info $1)" ] && echo "No package called $1" && exit 1
PKG=$(pkg_info -f $1|grep '^@depend' | cut -f 3 -d :)
[ -z "$PKG" ] && echo "$1 has no dependencies" || echo $PKG
