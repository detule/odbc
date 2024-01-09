mkdir -p /opt/oracle 
# 21.12 zip
wget --quiet -O /opt/oracle/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-basic-linux.x64-21.12.0.0.0dbru.zip
wget --quiet -O /opt/oracle/instantclient-odbc-linux.x64-21.12.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/2112000/instantclient-odbc-linux.x64-21.12.0.0.0dbru.zip
# 21.12 OL7 RPM
wget --quiet -O oracle-instantclient-basic-21.12.0.0.0-1.x86_64.rpm https://download.oracle.com/otn_software/linux/instantclient/2112000/oracle-instantclient-basic-21.12.0.0.0-1.x86_64.rpm
wget --quiet -O oracle-instantclient-odbc-21.12.0.0.0-1.x86_64.rpm https://download.oracle.com/otn_software/linux/instantclient/2112000/oracle-instantclient-odbc-21.12.0.0.0-1.x86_64.rpm
# 21.12 OL9 ZIP
wget --quiet -O /opt/oracle/instantclient-basic-linux.x64-21.12.0.0.0dbru.el9.zip https://download.oracle.com/otn_software/linux/instantclient/2112000/el9/instantclient-basic-linux.x64-21.12.0.0.0dbru.el9.zip
wget --quiet -O /opt/oracle/instantclient-odbc-linux.x64-21.12.0.0.0dbru.el9.zip https://download.oracle.com/otn_software/linux/instantclient/2112000/el9/instantclient-odbc-linux.x64-21.12.0.0.0dbru.el9.zip
# 19.21 ZIP
wget --quiet -O /opt/oracle/instantclient-basic-linux.x64-19.21.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/1921000/instantclient-basic-linux.x64-19.21.0.0.0dbru.zip
wget --quiet -O /opt/oracle/instantclient-odbc-linux.x64-19.21.0.0.0dbru.zip https://download.oracle.com/otn_software/linux/instantclient/1921000/instantclient-odbc-linux.x64-19.21.0.0.0dbru.zip

cd /opt/oracle/
unzip instantclient-basic-linux.x64-21.12.0.0.0dbru.zip
unzip instantclient-odbc-linux.x64-21.12.0.0.0dbru.zip

#unzip instantclient-basic-linux.x64-19.21.0.0.0dbru.zip
#unzip instantclient-odbc-linux.x64-19.21.0.0.0dbru.zip
#rm *.zip
#sudo ln -s /opt/oracle/instantclient_21_12/libclntsh.so.21.1 /usr/local/lib/
#sudo ln -s /opt/oracle/instantclient_21_12/libclntshcore.so.21.1 /usr/local/lib/
#sudo ln -s /opt/oracle/instantclient_21_12/libnnz21.so /usr/local/lib
#sudo ldconfig
#ldd instantclient_21_12/libsqora.so.21.1
sudo sh instantclient_21_12/odbc_update_ini.sh / /opt/oracle/instantclient_21_12/
#sudo sh instantclient_19_21/odbc_update_ini.sh / /opt/oracle/instantclient_19_21/
#sudo alien -i oracle-instantclient-basic-21.12.0.0.0-1.x86_64.rpm
#sudo alien -i oracle-instantclient-odbc-21.12.0.0.0-1.x86_64.rpm
