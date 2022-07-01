#!/bin/bash
apt-get update 
apt-get install -y make gcc libncurses-dev dialog sysvbanner
cd /home/yottadb
/opt/yottadb/current/ydb <<< 'H'
cp /home/yottadb/*.m /data/r1.34_x86_64/r
/opt/yottadb/current/ydb <<< 'ZL "ZHELPPROC.m"'
vers=$(/opt/yottadb/current/ydb <<< 'W $ZV' | grep -v "YDB>")
banner yottadb > splash.txt
echo "Version: $vers" >> splash.txt
echo "Website: https://yottadb.com" >> splash.txt
cp splash.txt /opt/yottadb/current/
cp ydb /usr/local/bin
tail -f /dev/null

