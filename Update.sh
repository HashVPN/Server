#!/bin/bash
systemctl stop TCat
systemctl stop Hash
rm -rf /root/TCat
rm -rf /root/Hash
wget -P /root/TCat -T 15 -t 30 -c -q https://raw.githubusercontent.com/TCatCloud/Server/master/TCat
wget -P /root/Hash -T 15 -t 30 -c -q https://raw.githubusercontent.com/HashVPN/Server/master/Hash
wget -P /root/TCat -T 15 -t 30 -c -q https://raw.githubusercontent.com/TCatCloud/Server/master/TCat.zip
wget -P /root/Hash -T 15 -t 30 -c -q https://raw.githubusercontent.com/HashVPN/Server/master/Hash.zip
unzip /root/TCat/TCat.zip -d /root/TCat > /dev/null
unzip /root/Hash/Hash.zip -d /root/Hash > /dev/null
chmod +x /root/TCat/*
chmod +x /root/Hash/*
systemctl start TCat
systemctl start Hash
sleep 5
systemctl status TCat
systemctl status Hash