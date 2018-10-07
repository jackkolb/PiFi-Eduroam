# PiFi-Eduroam
Shell script to connect your Raspberry Pi to Eduroam!
Generates and appends the correct network settings to the wpa_supplicant.conf file

I made this after spending far too long searching and seeing this question come up
 on numerous online threads... hopefully this helps you out :)

Example output:
```
[~] ./pifi.sh
-- PiFi-Eduroam --
Connects your Raspberry Pi to eduroam!

Eduroam Username (id@domain.edu): jackkolb@ucr.edu
Eduroam Password:

Generating network entry...
Complete! Reboot or reset wpa_supplicant
```

