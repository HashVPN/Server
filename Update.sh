#!/bin/bash
echo '正在停止后端'
systemctl stop TCat
echo '正在删除后端'
rm -rf /root/TCat
echo '正在下载后端'
wget -P /root/TCat -q https://cdn.jsdelivr.net/gh/TCatCloud/Server/TCat
wget -P /root/TCat -q https://cdn.jsdelivr.net/gh/TCatCloud/Server/TCat.zip
unzip /root/TCat/TCat.zip -d /root/TCat > /dev/null
chmod +x /root/TCat/*
echo '正在启动后端'
systemctl start TCat
echo '正在停止后端'
systemctl stop Hash
echo '正在删除后端'
rm -rf /root/Hash
echo '正在下载后端'
wget -P /root/Hash -q https://cdn.jsdelivr.net/gh/HashVPN/Server/Hash
wget -P /root/Hash -q https://cdn.jsdelivr.net/gh/HashVPN/Server/Hash.zip
unzip /root/Hash/Hash.zip -d /root/Hash > /dev/null
chmod +x /root/Hash/*
echo '正在启动后端'
systemctl start Hash