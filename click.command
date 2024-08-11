#!/bin/bash
cd `dirname $0`

path=`pwd|rev|cut -c 1-20|rev`
current='Ja_Pack-for-mac'

if [[ $path =~ $current ]];then

 if [ -d /Applications/Cakebrew.app/Contents/Resources ]
 then
  cp -r ./ja.lproj /Applications/Cakebrew.app/Contents/Resources/.
 else
  echo -e "\033[31m /ApplicationフォルダーにCakebrew.appがありません。\033[0m"
 fi

else
echo -e "\033[31m Ja_Pack内でクリックして下さい。\033[0m"
fi
