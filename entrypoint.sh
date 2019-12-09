#!/bin/sh -l

if [ "$1" = "1" ]; then
    dkp-pacman -Sy --noconfirm libnx
fi;

$2
