#!/bin/bash


ss | awk '{split($6, a, ":"); print a[1];}' | grep '[[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}\.[:digit:]{1,3}]' | sort | uniq -c | sort -n | awk '{if ($1 > 2) {print "/sbin/iptables -I INPUT -p tcp --dport 80 -s " $2 " -j DROP"}}'

