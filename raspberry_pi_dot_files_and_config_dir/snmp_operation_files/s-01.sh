#!/bin/sh

# STB-1 remote [ s-01 ] 

PLACE=".1.3.6.1.4.1.8516.1.1" # OID 
REQ="$2" # Requested OID
#
#  Process SET requests by simply logging the assigned value
#      Note that such "assignments" are not persistent, nor is the syntax 
#      or requested value validated
#
case "$REQ" in
 $PLACE.1.*) REQ=$PLACE.1;;
 $PLACE.2.*) REQ=$PLACE.2;;
 $PLACE.3.*) REQ=$PLACE.3;;
 $PLACE.4.*) REQ=$PLACE.4;;
 $PLACE.5.*) REQ=$PLACE.5;;
 $PLACE.6.*) REQ=$PLACE.6;;
 $PLACE.7.*) REQ=$PLACE.7;;
 $PLACE.8.*) REQ=$PLACE.8;;
 $PLACE.9.*) REQ=$PLACE.9;;
 $PLACE.10.*) REQ=$PLACE.10;;
 $PLACE.11.*) REQ=$PLACE.11;;
 $PLACE.12.*) REQ=$PLACE.12;;
 $PLACE.13.*) REQ=$PLACE.13;;
 $PLACE.14.*) REQ=$PLACE.14;;
 $PLACE.15.*) REQ=$PLACE.15;;
 $PLACE.16.*) REQ=$PLACE.16;;
 $PLACE.17.*) REQ=$PLACE.17;;
 $PLACE.18.*) REQ=$PLACE.18;;
 $PLACE.19.*) REQ=$PLACE.19;;
 $PLACE.20.*) REQ=$PLACE.20;;
 $PLACE.21.*) REQ=$PLACE.21;;
 $PLACE.22.*) REQ=$PLACE.22;;
 $PLACE.23.*) REQ=$PLACE.23;;
 $PLACE.24.*) REQ=$PLACE.24;;
 $PLACE.25.*) REQ=$PLACE.25;;
 $PLACE.26.*) REQ=$PLACE.26;;
 $PLACE.27.*) REQ=$PLACE.27;;
 $PLACE.28.*) REQ=$PLACE.28;;
 $PLACE.29.*) REQ=$PLACE.29;;
 $PLACE.30.*) REQ=$PLACE.30;;
 $PLACE.31.*) REQ=$PLACE.31;;
 $PLACE.32.*) REQ=$PLACE.32;;
 $PLACE.33.*) REQ=$PLACE.33;;
 $PLACE.34.*) REQ=$PLACE.34;;
 $PLACE.35.*) REQ=$PLACE.35;;
 $PLACE.36.*) REQ=$PLACE.36;;
 $PLACE.37.*) REQ=$PLACE.37;;
 $PLACE.38.*) REQ=$PLACE.38;;
 $PLACE.39.*) REQ=$PLACE.39;;
 $PLACE.40.*) REQ=$PLACE.40;;
esac 

val_str_f="/home/pi/symlink_snmp/ramdisk/str_check.txt"

if [ "$1" = "-s" ]
then

case "$REQ" in
  $PLACE.1) gpio write 7 $4 ; exit 0 ;;
  $PLACE.2) gpio write 1 $4; exit 0 ;; # for 5Volt high-sensitivity
  $PLACE.3) val_3=$4;[ $val_3 = "a" ] && echo "s-01-power" > $val_str_f; exit 0 ;;
  $PLACE.4) val_4=$4;[ $val_4 = "a" ] && echo "s-01-mute" > $val_str_f; exit 0 ;;
  $PLACE.5) val_5=$4;[ $val_5 = "a" ] && echo "s-01-VOL_up" > $val_str_f; exit 0 ;;
  $PLACE.6) val_6=$4;[ $val_6 = "a" ] && echo "s-01-VOL_down" > $val_str_f; exit 0 ;;
  $PLACE.7) val_7=$4;[ $val_7 = "a" ] && echo "s-01-CH_up" > $val_str_f; exit 0 ;;
  $PLACE.8) val_8=$4;[ $val_8 = "a" ] && echo "s-01-CH_down" > $val_str_f; exit 0 ;;
  $PLACE.9) val_9=$4;[ $val_9 = "a" ] && echo "s-01-CH_1" > $val_str_f; exit 0 ;;
  $PLACE.10) val_10=$4;[ $val_10 = "a" ] && echo "s-01-CH_2" > $val_str_f; exit 0 ;;
  $PLACE.11) val_11=$4;[ $val_11 = "a" ] && echo "s-01-CH_3" > $val_str_f; exit 0 ;;
  $PLACE.12) val_12=$4;[ $val_12 = "a" ] && echo "s-01-CH_4" > $val_str_f; exit 0 ;;
  $PLACE.13) val_13=$4;[ $val_13 = "a" ] && echo "s-01-CH_5" > $val_str_f; exit 0 ;;
  $PLACE.14) val_14=$4;[ $val_14 = "a" ] && echo "s-01-CH_6" > $val_str_f; exit 0 ;;
  $PLACE.15) val_15=$4;[ $val_15 = "a" ] && echo "s-01-CH_7" > $val_str_f; exit 0 ;;
  $PLACE.16) val_16=$4;[ $val_16 = "a" ] && echo "s-01-CH_8" > $val_str_f; exit 0 ;;
  $PLACE.17) val_17=$4;[ $val_17 = "a" ] && echo "s-01-CH_9" > $val_str_f; exit 0 ;;
  $PLACE.18) val_18=$4;[ $val_18 = "a" ] && echo "s-01-CH_0" > $val_str_f; exit 0 ;;
  $PLACE.19) val_19=$4;[ $val_19 = "a" ] && echo "s-01-Left" > $val_str_f; exit 0 ;;
  $PLACE.20) val_20=$4;[ $val_20 = "a" ] && echo "s-01-Right" > $val_str_f; exit 0 ;;
  $PLACE.21) val_21=$4;[ $val_21 = "a" ] && echo "s-01-Up" > $val_str_f; exit 0 ;;
  $PLACE.22) val_22=$4;[ $val_22 = "a" ] && echo "s-01-Down" > $val_str_f; exit 0 ;;
  $PLACE.23) val_23=$4;[ $val_23 = "a" ] && echo "s-01-Select" > $val_str_f; exit 0 ;;
  $PLACE.24) val_24=$4;[ $val_24 = "a" ] && echo "s-01-Menu" > $val_str_f; exit 0 ;;
  $PLACE.25) val_25=$4;[ $val_25 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.26) val_26=$4;[ $val_26 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.27) val_27=$4;[ $val_27 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.28) val_28=$4;[ $val_28 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.29) val_29=$4;[ $val_29 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.30) val_30=$4;[ $val_30 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.31) val_31=$4;[ $val_31 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.32) val_32=$4;[ $val_32 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.33) val_33=$4;[ $val_33 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.34) val_34=$4;[ $val_34 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.35) val_35=$4;[ $val_35 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.36) val_36=$4;[ $val_36 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.37) val_37=$4;[ $val_37 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.38) val_38=$4;[ $val_38 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.39) val_39=$4;[ $val_39 = "a" ] && echo "" > $val_str_f; exit 0 ;;
  $PLACE.40) val_40=$4;[ $val_40 = "a" ] && echo "" > $val_str_f; exit 0 ;;
esac 
fi
#
#  GETNEXT requests - determine next valid instance
#
if [ "$1" = "-n" ]; then
  case "$REQ" in
    $PLACE) RET=$PLACE.1 ;;
    $PLACE.1) RET=$PLACE.2 ;;
    $PLACE.2) RET=$PLACE.3 ;;
    $PLACE.3) RET=$PLACE.4 ;;
    $PLACE.4) RET=$PLACE.5 ;;
    $PLACE.5) RET=$PLACE.6 ;;
    $PLACE.6) RET=$PLACE.7 ;;
    $PLACE.7) RET=$PLACE.8 ;;
    $PLACE.8) RET=$PLACE.9 ;;
    $PLACE.9) RET=$PLACE.10 ;;
    $PLACE.10) RET=$PLACE.11 ;;
    $PLACE.11) RET=$PLACE.12 ;;
    $PLACE.12) RET=$PLACE.13 ;;
    $PLACE.13) RET=$PLACE.14 ;;
    $PLACE.14) RET=$PLACE.15 ;;
    $PLACE.15) RET=$PLACE.16 ;;
    $PLACE.16) RET=$PLACE.17 ;;
    $PLACE.17) RET=$PLACE.18 ;;
    $PLACE.18) RET=$PLACE.19 ;;
    $PLACE.19) RET=$PLACE.20 ;;
    $PLACE.20) RET=$PLACE.21 ;;
    $PLACE.21) RET=$PLACE.22 ;;
    $PLACE.22) RET=$PLACE.23 ;;
    $PLACE.23) RET=$PLACE.24 ;;
    $PLACE.24) RET=$PLACE.25 ;;
    $PLACE.25) RET=$PLACE.26 ;;
    $PLACE.26) RET=$PLACE.27 ;;
    $PLACE.27) RET=$PLACE.28 ;;
    $PLACE.28) RET=$PLACE.29 ;;
    $PLACE.29) RET=$PLACE.30 ;;
    $PLACE.30) RET=$PLACE.31 ;;
    $PLACE.31) RET=$PLACE.32 ;;
    $PLACE.32) RET=$PLACE.33 ;;
    $PLACE.33) RET=$PLACE.34 ;;
    $PLACE.34) RET=$PLACE.35 ;;
    $PLACE.35) RET=$PLACE.36 ;;
    $PLACE.36) RET=$PLACE.37 ;;
    $PLACE.37) RET=$PLACE.38 ;;
    $PLACE.38) RET=$PLACE.39 ;;
    $PLACE.39) RET=$PLACE.40 ;;
    *) exit 0 ;;
  esac else
#
#  GET requests - check for valid instance
#
case "$REQ" in
 $PLACE.1|\
 $PLACE.2|\
 $PLACE.3|\
 $PLACE.4|\
 $PLACE.5|\
 $PLACE.6|\
 $PLACE.7|\
 $PLACE.8|\
 $PLACE.9|\
 $PLACE.10|\
 $PLACE.11|\
 $PLACE.12|\
 $PLACE.13|\
 $PLACE.14|\
 $PLACE.15|\
 $PLACE.16|\
 $PLACE.17|\
 $PLACE.18|\
 $PLACE.19|\
 $PLACE.20|\
 $PLACE.21|\
 $PLACE.22|\
 $PLACE.23|\
 $PLACE.24|\
 $PLACE.25|\
 $PLACE.26|\
 $PLACE.27|\
 $PLACE.28|\
 $PLACE.29|\
 $PLACE.30|\
 $PLACE.31|\
 $PLACE.32|\
 $PLACE.33|\
 $PLACE.34|\
 $PLACE.35|\
 $PLACE.36|\
 $PLACE.37|\
 $PLACE.38|\
 $PLACE.39|\
 $PLACE.40) RET=$REQ ;;
    *) exit 0 ;;
  esac
fi
#
#  "Process" GET* requests - return hard-coded value
#
echo "$RET"
case "$RET" in
	$PLACE.1) echo "integer"; gpio read 7; exit 0 ;;
  $PLACE.2) echo "integer"; gpio read 1; exit 0 ;;
  $PLACE.3) echo "string"; echo "s-01-power"; exit 0 ;;
  $PLACE.4) echo "string"; echo "s-01-mute"; exit 0 ;;
  $PLACE.5) echo "string"; echo "s-01-VOL_up"; exit 0 ;;
  $PLACE.6) echo "string"; echo "s-01-VOL_down"; exit 0 ;;
  $PLACE.7) echo "string"; echo "s-01-CH_up"; exit 0 ;;
  $PLACE.8) echo "string"; echo "s-01-CH_down"; exit 0 ;;
  $PLACE.9) echo "string"; echo "s-01-CH_1"; exit 0 ;;
  $PLACE.10) echo "string"; echo "s-01-CH_2"; exit 0 ;;
  $PLACE.11) echo "string"; echo "s-01-CH_3"; exit 0 ;;
  $PLACE.12) echo "string"; echo "s-01-CH_4"; exit 0 ;;
  $PLACE.13) echo "string"; echo "s-01-CH_5"; exit 0 ;;
  $PLACE.14) echo "string"; echo "s-01-CH_6"; exit 0 ;;
  $PLACE.15) echo "string"; echo "s-01-CH_7"; exit 0 ;;
  $PLACE.16) echo "string"; echo "s-01-CH_8"; exit 0 ;;
  $PLACE.17) echo "string"; echo "s-01-CH_9"; exit 0 ;;
  $PLACE.18) echo "string"; echo "s-01-CH_0"; exit 0 ;;
  $PLACE.19) echo "string"; echo "s-01-Left"; exit 0 ;;
  $PLACE.20) echo "string"; echo "s-01-Right"; exit 0 ;;
  $PLACE.21) echo "string"; echo "s-01-Up"; exit 0 ;;
  $PLACE.22) echo "string"; echo "s-01-Down"; exit 0 ;;
  $PLACE.23) echo "string"; echo "s-01-Select"; exit 0 ;;
  $PLACE.24) echo "string"; echo "s-01-Menu"; exit 0 ;;
  $PLACE.25) echo "integer"; echo ""; exit 0 ;;
  $PLACE.26) echo "integer"; echo ""; exit 0 ;;
  $PLACE.27) echo "integer"; echo ""; exit 0 ;;
  $PLACE.28) echo "integer"; echo ""; exit 0 ;;
  $PLACE.29) echo "integer"; echo ""; exit 0 ;;
  $PLACE.30) echo "integer"; echo ""; exit 0 ;;
  $PLACE.31) echo "integer"; echo ""; exit 0 ;;
  $PLACE.32) echo "integer"; echo ""; exit 0 ;;
  $PLACE.33) echo "integer"; echo ""; exit 0 ;;
  $PLACE.34) echo "integer"; echo ""; exit 0 ;;
  $PLACE.35) echo "integer"; echo ""; exit 0 ;;
  $PLACE.36) echo "integer"; echo ""; exit 0 ;;
  $PLACE.37) echo "integer"; echo ""; exit 0 ;;
  $PLACE.38) echo "integer"; echo ""; exit 0 ;;
  $PLACE.39) echo "integer"; echo ""; exit 0 ;;
  $PLACE.40) echo "integer"; echo ""; exit 0 ;;
  *) echo "string"; echo "ack... $RET $REQ"; exit 0 ;; # Should not happen esac 
esac
