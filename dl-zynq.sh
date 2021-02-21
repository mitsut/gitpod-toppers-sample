#!/bin/sh

curl -O https://www.toppers.jp/download.cgi/asp3_zybo_z7_gcc-20210105.zip
unzip asp3_zybo_z7_gcc-20210105.zip
rm asp3_zybo_z7_gcc-20210105.zip

mkdir sample-obj
cd sample-obj/
ruby ../asp3_3.6/configure.rb -T zybo_z7_gcc
