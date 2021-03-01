#!/bin/bash
systemctl stop TCat
systemctl stop Hash
echo '后端已停止'
rm -rf /root/TCat
rm -rf /root/Hash
echo '后端已删除'
wget -P /root/TCat -T 15 -t 30 -c -q https://raw.githubusercontent.com/TCatCloud/Server/master/TCat
wget -P /root/Hash -T 15 -t 30 -c -q https://raw.githubusercontent.com/HashVPN/Server/master/Hash
wget -P /root/TCat -T 15 -t 30 -c -q https://raw.githubusercontent.com/TCatCloud/Server/master/TCat.zip
wget -P /root/Hash -T 15 -t 30 -c -q https://raw.githubusercontent.com/HashVPN/Server/master/Hash.zip
echo '后端已下载'
unzip /root/TCat/TCat.zip -d /root/TCat > /dev/null
unzip /root/Hash/Hash.zip -d /root/Hash > /dev/null
chmod +x /root/TCat/*
chmod +x /root/Hash/*
echo '后端已部署'
systemctl start TCat
systemctl start Hash
systemctl status TCat
systemctl status Hash
echo '后端已启动'