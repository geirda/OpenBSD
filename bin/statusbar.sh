#! /bin/sh

while true;
do
    ip=$(ifconfig|head -13|tail -1|awk '{print $2}')
    homefs=$(df -h|tail -4|head -1|awk '{print $4}')
    localfs=$(df -h|tail -2|head -1|awk '{print $4}')
    dato=$(date '+%a %d %b %H:%M')
    xsetroot -name " /home $homefs /usr/local $localfs    IP: $ip    $dato "
    sleep 5;
done;
