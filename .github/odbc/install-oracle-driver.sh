mkdir -p /opt/oracle 
wget --quiet -O /opt/oracle/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip
wget --quiet -O /opt/oracle/instantclient-odbc-linux.x64-21.12.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-odbc-linux.x64-21.12.0.0.0dbru.zip
cd /opt/oracle/
unzip instantclient-basic-linux.x64-21.12.0.0.0dbru.zip
unzip instantclient-odbc-linux.x64-21.12.0.0.0dbru.zip
rm *.zip
sudo ln -s /opt/oracle/instantclient_21_12/libclntsh.so.21.1 /usr/local/lib/
sudo ln -s /opt/oracle/instantclient_21_12/libclntshcore.so.21.1 /usr/local/lib/
sudo ln -s /opt/oracle/instantclient_21_12/libnnz21.so /usr/local/lib
sudo ldconfig
ldd instantclient_21_12/libsqora.so.21.1
sudo sh instantclient_21_12/odbc_update_ini.sh / /opt/oracle/instantclient_21_12/

