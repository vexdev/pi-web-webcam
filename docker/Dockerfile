FROM debian:trixie

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get clean && apt-get update && \
    apt-get install -y \
    git bc sshfs bison flex libssl-dev python3 make kmod libc6-dev libncurses5-dev \
    crossbuild-essential-armhf \
    crossbuild-essential-arm64 \
    sudo \
    file wget cpio unzip rsync bzip2 g++

RUN groupadd -g 20 staff || true
RUN useradd -m -u 501 -g 20 -s /bin/bash builder

RUN echo "builder ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/builder \
    && chmod 0440 /etc/sudoers.d/builder

# Entrypoint that ensures /output is writable by builder
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

RUN mkdir /build

USER builder
WORKDIR /build

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
CMD ["bash"]
