
mkdir ~/data
echo export DATA_PATH=~/data >> ~/.bashrc  

echo export IDL_STARTUP=~/.idl/idl_startup.pro >> ~/.bashrc
echo export IDL_PATH='<IDL_DEFAULT>:+~/.idl'   >> ~/.bashrc

cp idl_startup.pro ~/.idl


sudo mv /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl.so /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl_old.so
sudo cp libcurl.so /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl.so.3

source ~/.bashrc


cd ~/.idl
git clone https://github.com/HarutoKoike/lib
cd -
