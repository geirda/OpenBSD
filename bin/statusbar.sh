#! /bin/sh

while true;
do
    ip=$(ifconfig|head -13|tail -1|awk '{print $2}')
    homefs=$(df -h|awk '/sd0k/{print $4}')
    localfs=$(df -h||awk '/sd0h/{print $4}')
    dato=$(date '+%a %d %b %H:%M')
    xsetroot -name " /home $homefs /usr/local $localfs    IP: $ip    $dato "
    sleep 5;
done;
