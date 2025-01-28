
#! /usr/bin/bash
url=" https://example-files.online-convert.com/document/txt/example.txt"
dist="/opt/example_modified.txt"
file="/tmp/example.txt"
echo"****************************************************Download file**********************************************"
wget -q -O $file $url 
echo "&&&&&&&&&&&&&&&&&&&&&& child Kids&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&

sed 's/children/kids/' $file > $dist

echo "*******************date ****************************************
echo "Last modified: $(date)" >> $dist

cat $dist

