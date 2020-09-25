FROM gitpod/workspace-full

ENV PACKAGES build-essential gcc-arm-none-eabi gdb-multiarch libpixman-1-0 libjpeg-dev libnuma-dev

USER root

RUN apt-get -q update \
    && apt-get install -yq ${PACKAGES} \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER gitpod

RUN cd /home/gitpod \
    && curl -L -O https://github.com/toppers/qemu_zynq/releases/download/v2.12.0-toppers/qemu-system-arm.zip \
    && unzip qemu-system-arm.zip \
    && mkdir -p toppers/bin \
    && chmod +x qemu-system-arm \
    && mv qemu-system-arm toppers/bin/ \
    && rm qemu-system-arm.zip

RUN echo 'export PATH=/home/gitpod/toppers/bin:$PATH' >>/home/gitpod/.bashrc

# More information: https://www.gitpod.io/docs/config-docker/
