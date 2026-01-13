#!/bin/bash

my_index=`test -f /var/www/html/index.nginx-debian.html && echo $?`
my_port=`nc -z -w2 localhost 80 && echo $?`

if [ $my_index -eq 0 ] && [ $my_port -eq 0 ]; then
        echo 0
        exit 0
else
        echo 1
        exit 1
fi
