
echo ~/.bashrc >> echo export IDL_STARTUP=~/.idl/idl_startup.pro
echo ~/.bashrc >> echo export IDL_PATH='<IDL_DEFAULT>:+~/.idl'

touch csa_info.csv
echo DEVICE, DECOMPOSED=0 \\nLOADCT, 39 \\n!P.BACKGROUND=255 \\n!P.COLOR=0 > idl_startup.pro


sudo mv /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl.so /usr/local/itt/idl/idl80/bin/bin.linux.x86_64/libcurl_old.so
sudo cp libcurl.so /usr/local/itt/idl/idl80/bin/bin.linux.x86_64
