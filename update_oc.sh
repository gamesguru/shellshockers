#!/bin/bash -e
URL=$1
export BB_AUTH_STRING=dasheenster:zNxmCKaqPhdDbwBDUuMc

printf "\\ndownload 7zip"
curl -L -u $BB_AUTH_STRING  "https://api.bitbucket.org/2.0/repositories/lci-ids/test-utils/downloads/7za.exe" -o 7za.exe

printf "\\ndownload adb"
curl -L -u $BB_AUTH_STRING  "https://api.bitbucket.org/2.0/repositories/lci-ids/test-utils/downloads/adb_win.7z" -o adb_win.7z
./7za.exe x -aoa adb_win.7z
rm 7za
rm adb_win.7z


printf "\\ndownload onecontrol"
curl -L $URL -o com.lci1.one.apk

printf "\\ninstall\\n"
./adb uninstall com.lci1.one
./adb install com.lci1.one.apk

printf "\\ncleanup\\n"
rm adb.exe
rm AdbWinUsbApi.dll
rm AdbWinApi.dll
rm com.lci1.one.apk

read -p "Press enter to continue"
