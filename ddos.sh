#!/bin/bash

#platform=$(cat /etc/issue | cut -d " " -f1)

#if [ "$platform" == "Ubuntu" ]; then
#    netstat -ntu | awk '{split($5, a, ":"); print a[1];}' | grep '[[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}]' | sort | uniq -c | sort -n | awk '{if ($1 > 2) {print "/sbin/iptables -I INPUT -p tcp --dport 80 -s " $2 " -j DROP"}}'    netstat -ntu | awk '{split($5, a, ":"); print a[1];}' | grep '[[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}]' | sort | uniq -c | sort -n | awk '{if ($1 > 2) {print "/sbin/iptables -I INPUT -p tcp --dport 80 -s " $2 " -j DROP"}}'
#else
    netstat -ntu | awk '{split($5, a, ":"); print a[1];}' | grep '[[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}]' | sort | uniq -c | sort -n | awk '{if ($1 > 2) {print "/sbin/iptables -I INPUT -p tcp --dport 80 -s " $2 " -j DROP"}}'    netstat -ntu | awk '{split($5, a, ":"); print a[1];}' | grep '[[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}]' | sort | uniq -c | sort -n | awk '{if ($1 > 2) {print "/sbin/iptables -I INPUT -p tcp --dport 80 -s " $2 " -j DROP"}}'
#fi

