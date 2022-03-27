FROM devkitpro/devkita64:20220216

RUN ln -s /proc/self/mounts /etc/mtab
RUN dkp-pacman -Syyu --noconfirm switch-dev libnx \
    && dkp-pacman -Scc --noconfirm

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
