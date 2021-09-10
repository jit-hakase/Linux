#!/bin/bash

sed -i s/ONBOOT=no/ONBOOT=yes/ /etc/sysconfig/network-scripts/ifcfg-em1
sed -i s/BOOTPROTO=dhcp/BOOTPROTO=static/ /etc/sysconfig/network-scripts/ifcfg-em1
sed -i '/BOOTPROTO=static/a\IPADDR=192.168.2.15\nNETMASK=255.255.255.0\nGATEWAY=192.168.2.1' /etc/sysconfig/network-scripts/ifcfg-em1

service network restart
