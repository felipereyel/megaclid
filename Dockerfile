FROM debian:12

RUN apt-get update
RUN apt-get install -y wget unzip libncurses5 libfuse2 libgcc-s1 libstdc++6 apt-transport-https gpg procps fuse
RUN rm -rf /var/lib/apt/lists/*

WORKDIR /opt
RUN wget https://mega.nz/linux/repo/Debian_12/amd64/megacmd-Debian_12_amd64.deb
RUN apt install -y ./megacmd-Debian_12_amd64.deb

# Add entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["mega-help"]
