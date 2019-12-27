#!/bin/sh
bzip2 -c9k ./Packages > ./Packages.bz2
printf "Origin: KidsiOS Repository\nLabel: KidsiOS Repository\nSuite: stable\nVersion: 1.0\nCodename: ios\nArchitecture: iphoneos-arm\nComponents: main\nDescription: Somes Tweaks Support For KidsAuto iOS\nMD5Sum:\n "$(cat ./Packages | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages)" Packages\n "$(cat ./Packages.bz2 | md5 | cut -d ' ' -f 1)" "$(stat -f%z ./Packages.bz2)" Packages.bz2\n" >Release;
exit 0
