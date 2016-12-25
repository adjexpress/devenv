#!/bin/sh

w3m -dump "http://small.dic.daum.net/word/view.do?wordid=ekw000099472&q=$1"
2> /dev/null 
| awk 'BEGIN { flg = 0 } /����������/ || /������� �����/ { flg = 0 } 
{
    if (flg) print $0 
}/������� �׸�/ { flg = 1 }' 
| sed 's/[.*]//g' | sed 's/.*���հ˻����.*//g' | sed 's/.*?.*//g' 
| sed '/^$/d'; echo ""
