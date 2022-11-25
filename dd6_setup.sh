#!/bin/bash

selfdir=$(cd $(dirname $0); pwd)

if [　! -d ~/data　]; then
    mkdir ~/data
fi

echo export DATA_PATH=~/data >> ~/.bashrc  
echo export IDL_STARTUP=~/.idl/DD6_2022/idl_startup.pro >> ~/.bashrc
echo export IDL_PATH='<IDL_DEFAULT>':+~/.idl   >> ~/.bashrc
source ~/.bashrc


libcurl=/usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl.so
libcurl3=/usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl.so.3

if [ -f $libcurl ]; then
    sudo mv $libcurl /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl_old.so
    sudo mv $libcurl3 /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl_old.so.3
    sudo cp $selfdir/libcurl.so.3 /usr/local/itt/idl/idl80/bin/bin.linux.x86_64
fi

cd ~/.idl
git clone https://github.com/HarutoKoike/lib
cd -
