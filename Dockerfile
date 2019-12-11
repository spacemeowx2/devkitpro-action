FROM devkitpro/devkita64_devkitarm:20190720

RUN git clone -b master https://github.com/switchbrew/libnx.git --depth=1 \
    && cd libnx \
    && make -j8 \
    && make install \
    && cd .. \
    && rm -rf libnx

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
