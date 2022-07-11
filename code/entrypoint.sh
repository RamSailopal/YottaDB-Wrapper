#!/bin/bash
apt-get update 
apt-get install -y build-essential gcc cmake git wget libjson-c-dev libwebsockets-dev git libncurses-dev dialog sysvbanner apache2
cd /usr/local
git clone https://github.com/tsl0922/ttyd.git
cd /usr/local/ttyd && mkdir build && cd build
cmake ..
make && make install
cd /home/yottadb
/opt/yottadb/current/ydb <<< 'H'
cp /home/yottadb/*.m /data/r1.34_x86_64/r
/opt/yottadb/current/ydb <<< 'ZL "HELPPROC.m"'
(echo "D ^%GI";echo "/home/yottadb/help.go";echo "") | /opt/yottadb/current/ydb
(echo "D ^%GI";echo "/home/yottadb/helpindx.go";echo "") | /opt/yottadb/current/ydb
vers=$(/opt/yottadb/current/ydb <<< 'W $ZV' | grep -v "YDB>")
banner yottadb > splash.txt
echo "Version: $vers" >> splash.txt
echo "Website: https://yottadb.com" >> splash.txt
echo "Offline documentation: http://localhost:8081" >> splash.txt
cp splash.txt /opt/yottadb/current/
cp /home/yottadb/ydb /usr/local/bin
chown -R www-data.www-data /var/www/html
service apache2 start
ydb -s
cd /usr/local
git clone https://github.com/shabiel/vim-mumps-tools.git
cd vim-mumps-tools
mkdir ~/.vim
cp -Rf vim/.vim/* ~/.vim/
cp -f vim/.vimrc  ~/.vimrc
cd /home/yottadb
ttyd "bash"

