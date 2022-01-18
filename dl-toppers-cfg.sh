#!/bin/sh

cd /home/gitpod/toppers
echo `pwd`
curl -O -L https://github.com/mitsut/cfg/releases/download/1.9.7/cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz
tar xvzf cfg-1.9.7-x86_64-unknown-linux-gnu.tar.gz

#curl -O -L https://github.com/mitsut/cfg/releases/download/1.9.7/cfg-1.9.7-x86_64-apple-darwin.tar.gz

mv cfg bin/
ls -la /home/gitpod/toppers/bin
