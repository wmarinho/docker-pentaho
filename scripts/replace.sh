#!/bin/bash

str_search="$1"
str_replace="$2"
opts="$3"
file_pattern="$4"
infile=""

if [ "$5" = "-infile" ]
then
  infile="-i"
fi

case "$opts" in
"-file")
/bin/sed $infile 's/'$str_search'/'$str_replace'/g' $file_pattern
;;
"-path")
files=`grep -rl $str_search $file_pattern`
#echo $files
echo $files | /usr/bin/xargs  /bin/sed $infile 's/'$str_search'/'$str_replace'/g'
;;
"-file_pattern")
find . -name $file_pattern -type f -print0 | xargs -0 /bin/sed $infile 's/'$str_search'/'$str_replace'/g'
;;
*)
echo "Usage: $0 old_str new_str -file filename > new_file"
echo "Usage: $0 old_str new_str -file_pattern /path/*.*"
echo "Usage: $0 old_str new_str -path  /path/ -infile "
;;
esac
exit 0
