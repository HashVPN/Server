#!/bin/bash
systemctl stop TCat
rm -rf /root/TCat
wget -P /root/TCat -T 15 -t 30 -c --retry-connrefused https://raw.githubusercontent.com/TCatCloud/Server/master/TCat
wget -P /root/TCat -T 15 -t 30 -c --retry-connrefused https://raw.githubusercontent.com/TCatCloud/Server/master/TCat.zip
unzip /root/TCat/TCat.zip -d /root/TCat
rm -f /root/TCat/TCat.zip
chmod +x /root/TCat/*
systemctl start TCat
systemctl stop Hash
rm -rf /root/Hash
wget -P /root/Hash -T 15 -t 30 -c --retry-connrefused https://raw.githubusercontent.com/HashVPN/Server/master/Hash
wget -P /root/Hash -T 15 -t 30 -c --retry-connrefused https://raw.githubusercontent.com/HashVPN/Server/master/Hash.zip
unzip /root/Hash/Hash.zip -d /root/Hash
rm -f /root/Hash/Hash.zip
chmod +x /root/Hash/*
systemctl start Hash
wget -P /root -T 15 -t 30 -c --retry-connrefused https://raw.githubusercontent.com/TCatCloud/Server/master/System-Optimize.sh
source /root/System-Optimize.sh
install_bbr
rm -f /root/System-Optimize.sh