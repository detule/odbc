mkdir -p /opt/oracle 
wget --quiet -O /opt/oracle/instantclient-basic-linux.x64-21.8.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/218000/instantclient-basic-linux.x64-21.8.0.0.0dbru.zip
wget --quiet -O /opt/oracle/instantclient-odbc-linux.x64-21.8.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/218000/instantclient-odbc-linux.x64-21.8.0.0.0dbru.zip
cd /opt/oracle/
unzip instantclient-basic-linux.x64-21.8.0.0.0dbru.zip
unzip instantclient-odbc-linux.x64-21.8.0.0.0dbru.zip
rm *.zip
sudo ln -s /opt/oracle/instantclient_21_8/libclntsh.so.21.1 /usr/local/lib/
sudo ln -s /opt/oracle/instantclient_21_8/libclntshcore.so.21.1 /usr/local/lib/
sudo ldconfig
ldd instantclient_21_8/libsqora.so.21.1
#sh instantclient_21_8/odbc_update_ini.sh / /opt/oracle/instantclient_21_8/

