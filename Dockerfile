FROM devkitpro/devkita64_devkitarm:20190720

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
