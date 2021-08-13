#!/bin/sh
cd `dirname $0`

path=`pwd|rev|cut -c 1-20|rev`
current='Ja_Pack-for-mac-main'

if [ $path = $current ];then

 if [ -d /Applications/Cakebrew.app/Contents/Resources/ ]
 then
  cp -r ./ja.lproj /Applications/Cakebrew.app/Contents/Resources/.
 else
  echo "\033[31m /ApplicationフォルダーにCakebrew.appがありません。\033[37m"
 fi

else
echo "\033[31m Ja_Pack内でクリックして下さい。\033[37m"
fi
