#!/bin/bash 
if [ "$1" == "" ]
then 
    tput setaf 6; echo "antar3s_pingsweep"
    echo "Please, insert an argument"
    tput setaf 1; echo "Use mode: $0 net"
else
    for ip in {1..254};
    i = 0;  
    do 

        tput setaf 2; echo ">"ping -c 1 $1.$ip | grep "64 bytes" | cut -d ":" -f 1 | cut -d " " -f 4 | sef 's/.$/|/'; 
        i = i + 1; 
    done           

fi  
    echo "$i ip addresses responded"    
#for ip in {1..2}; do 
