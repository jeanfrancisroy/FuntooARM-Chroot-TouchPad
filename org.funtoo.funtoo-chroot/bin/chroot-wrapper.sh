#!/bin/sh

CHROOT=/media/ext3fs/funtoo-chroot

cp /etc/resolv.conf ${CHROOT}/etc/resolv.conf

mount --bind /dev ${CHROOT}/dev
mount -t devpts none ${CHROOT}/dev/pts
mount -t proc none ${CHROOT}/proc
mount --bind /sys ${CHROOT}/sys
mount --bind /tmp ${CHROOT}/tmp

chroot ${CHROOT} /bin/bash -c "env-update; source /etc/profile"

umount ${CHROOT}/tmp
umount ${CHROOT}/sys
umount ${CHROOT}/proc
umount ${CHROOT}/dev/pts
umount ${CHROOT}/dev

