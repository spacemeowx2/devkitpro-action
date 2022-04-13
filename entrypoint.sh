#!/bin/sh -l

CMD="$1"
UPDATE_LIBNX="$2"
LIBNX_REV="$3"

# if LIBNX_REV is exist, update libnx
if [ -n "${LIBNX_REV}" ]; then
    echo "Update libnx to ${LIBNX_REV}"
    git clone https://github.com/switchbrew/libnx.git \
        && cd libnx \
        && git reset --hard ${LIBNX_REV} \
        && make -j8 \
        && make install \
        && cd .. \
        && rm -rf libnx
elif [ "$UPDATE_LIBNX" = "1" ]; then
    echo "Update libnx by dpk-pacman"
    dkp-pacman -Sy --noconfirm libnx
fi;

$CMD
