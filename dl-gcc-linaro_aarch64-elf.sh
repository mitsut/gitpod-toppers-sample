#!/bin/sh

cd /home/gitpod/toppers
echo `pwd`
curl -O -L https://releases.linaro.org/components/toolchain/binaries/6.3-2017.02/aarch64-elf/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-elf.tar.xz
tar Jxvf gcc-linaro-6.3.1-2017.02-x86_64_aarch64-elf.tar.xz

echo export PATH=/home/gitpod/toppers/gcc-linaro-6.3.1-2017.02-x86_64_aarch64-elf/bin:$PATH  
