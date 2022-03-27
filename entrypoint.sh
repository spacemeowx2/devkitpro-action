#!/bin/sh -l

CMD="$1"
UPDATE_LIBNX="$2"
LIBNX_REV="$3"

# if LIBNX_REV is exist, update libnx
if [ -n "${LIBNX_REV}" ]; then
git clone -b ${LIBNX_REV} https://github.com/switchbrew/libnx.git --depth=1 \
    && cd libnx \
    && make -j8 \
    && make install \
    && cd .. \
    && rm -rf libnx
elif [ "$UPDATE_LIBNX" = "1" ]; then
    dkp-pacman -Sy --noconfirm libnx
fi;

$2
