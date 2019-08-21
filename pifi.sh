#/usr/bin/sh

# Created by Jack Kolb in 2018

# PiFi-Eduroam: adds the network sequence for eduroam
# to a raspberry pi's wpa_supplicant.conf file

WPA_SUPPLICANT_FILE="/etc/wpa_supplicant/wpa_supplicant.conf"

echo '-- PiFi-Eduroam --'
echo 'Connects your Raspberry Pi to eduroam!'
echo ''

read -p 'Eduroam Username (id@domain.edu): ' USERNAME
read -p 'Eduroam Password: ' PASSWORD

echo ''
echo ''
echo 'Generating network entry...'

echo ''                          >> $WPA_SUPPLICANT_FILE
echo 'network={'                 >> $WPA_SUPPLICANT_FILE
echo '  ssid="eduroam"'          >> $WPA_SUPPLICANT_FILE
echo '  scan_ssid=1'             >> $WPA_SUPPLICANT_FILE
echo '	key_mgmt=WPA-EAP'        >> $WPA_SUPPLICANT_FILE
echo '	group=CCMP TKIP'         >> $WPA_SUPPLICANT_FILE
echo '	eap=PEAP'                >> $WPA_SUPPLICANT_FILE
echo '	identity="'$USERNAME'"'  >> $WPA_SUPPLICANT_FILE
echo '	password="'$PASSWORD'"'  >> $WPA_SUPPLICANT_FILE
echo '	phase1="peapver=0"'      >> $WPA_SUPPLICANT_FILE
echo '	phase2="MSCHAPv2"'       >> $WPA_SUPPLICANT_FILE
echo '}'                         >> $WPA_SUPPLICANT_FILE

echo 'Complete! Reboot or reset wpa_supplicant'
