#!/bin/bash

SCRIPT_PATH=`readlink -f $0`
cd "${SCRIPT_PATH%/*}/src" || exit $?

mkdir -p build/obj build/dest || exit $?

JOBS=${JOBS-1}
MINIX_TARGET=${MINIX_TARGET-3.4.0}

rm -rf "build/dest/boot/minix/${MINIX_TARGET}"
./build.sh -j ${JOBS} -m i386 -O build/obj -D build/dest -U -u build
ec=$?
mv build/dest/boot/minix/.temp build/dest/boot/minix/${MINIX_TARGET} >/dev/null 2>&1
ln -sf minix/${MINIX_TARGET} build/dest/boot/minix_latest >/dev/null 2>&1
exit $ec
