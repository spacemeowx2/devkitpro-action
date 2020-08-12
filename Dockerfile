FROM devkitpro/devkita64_devkitarm:20200730

RUN dkp-pacman -Syyu --noconfirm switch-dev libnx \
    && dkp-pacman -Scc --noconfirm
RUN git clone -b master https://github.com/switchbrew/libnx.git --depth=1 \
    && cd libnx \
    && make -j8 \
    && make install \
    && cd .. \
    && rm -rf libnx

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
