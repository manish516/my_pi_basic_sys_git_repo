#!/bin/bash

gpio mode 1 out
gpio mode 7 out
#gpio mode 2 out

touch /home/pi/symlink_snmp/ramdisk/str_check.txt 
chmod 777 /home/pi/symlink_snmp/ramdisk/str_check.txt

cp -f /home/pi/symlink_snmp/snmp_op_ir_bg_best_ramdisk.sh /home/pi/symlink_snmp/ramdisk/

chmod 777 /home/pi/symlink_snmp/ramdisk/snmp_op_ir_bg_best_ramdisk.sh

bash /home/pi/symlink_snmp/ramdisk/snmp_op_ir_bg_best_ramdisk.sh 
