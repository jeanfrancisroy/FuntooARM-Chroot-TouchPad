#!/bin/sh

export DISPLAY=${1:-:0.0}

XTERM_DIR=/media/cryptofs/apps/usr/palm/applications/org.webosinternals.xterm

export PATH=${XTERM_DIR}/bin:${PATH}

. ${XTERM_DIR}/get_colors.inc

XTERM=${XTERM_DIR}/bin/xterm

NAME=funtoo-chroot

APPID=org.funtoo.${NAME}

APPDIR=/media/cryptofs/apps/usr/palm/applications/${APPID}

${XTERM} -display ${DISPLAY} -maximize $FG $BG -xrm "*metaSendsEscape: true" -u8 -e "sh -x ${APPDIR}/bin/chroot-wrapper.sh" &> /tmp/xterm.log &
