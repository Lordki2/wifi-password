#!/bin/bash


cd /etc/NetworkManager/system-connections/
ls /etc/NetworkManager/system-connections/  | cut -d. -f1

echo '	'
echo "Enter SSID"
read x
#echo $x
clear
cat $x.nmconnection | grep -A3  wifi-security | tail -n2 | cut -d= -f2 > temp.txt

for LINEA in $(cat temp.txt);do

	if [ "$LINEA" = "none" ];then
		s=1
	fi
done

if [[ $s -eq 1  ]];then
	cat WLANASIR2.nmconnection | grep -A5 wifi-security | tail -n2 | cut -d= -f2
else
	cat $x.nmconnection | grep -A3  wifi-security | tail -n2 | cut -d= -f2
fi
