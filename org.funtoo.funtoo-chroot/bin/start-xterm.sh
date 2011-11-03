#!/bin/sh

NAME=funtoo-chroot

APPID=org.funtoo.${NAME}

APPDIR=/media/cryptofs/apps/usr/palm/applications/${APPID}

XTERM=/media/cryptofs/apps/usr/palm/applications/org.webosinternals.xterm/bin/xterm

${XTERM} -display :0.0 -maximize -e "sh -x ${APPDIR}/bin/chroot-wrapper.sh" &
