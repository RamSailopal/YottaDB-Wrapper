#!/bin/bash
apt-get update 
apt-get install -y make gcc libssl-dev libncurses-dev dialog sysvbanner apache2
cd /tmp
wget --no-check-certificate http://invisible-island.net/datafiles/release/lynx-cur.tar.gz
tar -xvf lynx-cur.tar.gz
cd lynx2.9.0dev.10
./configure --with-ssl
make
cp lynx /usr/local/bin
cp /tmp/lynx2.9.0dev.10/lynx.cfg /usr/local/etc
cp /tmp/lynx2.9.0dev.10/samples/lynx.lss /usr/local/etc
cd /home/yottadb
vers=$(/opt/yottadb/current/ydb <<< 'W $ZV' | grep -v "YDB>")
banner yottadb > splash.txt
echo "Version: $vers" >> splash.txt
echo "Website: https://yottadb.com" >> splash.txt
cp splash.txt /opt/yottadb/current/
cp ydb /usr/local/bin
tail -f /dev/null

