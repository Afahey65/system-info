#!/bin/bash
#Aidan's bash script

#output file
output_file="output.txt"
	exec > >(tee "$output_file") 2>&1

#Color variables
red='\033[0;31m' # Red color
NC='\033[0m'     # No color (reset)

printf "$red\n OUTPUT IS SAVED TO output.txt\n$NC"

printf "$red Welcome to Aidan's System Info script $NC" 
#date and time
printf "$red\n---- The date is:\n$NC"
date

#system name
system=$(hostname)

printf "$red\n---- System Hostname:\n$NC"
	echo "$system"

printf "$red\n---- Release Information for $system:\n$NC"
lsb_release -a

printf "$red\n---- System Uptime:\n$NC" 
	uptime -p 

printf "$red\n---- IP Information:\n$NC"
	ip addr show

printf "$red\n---- CPU Information: \n$NC"
	lscpu
	
printf "$red\n---- Available Memory: \n$NC"
	free -h
	
printf "$red\n---- Storage Information: \n$NC"
	df -h
	

#5 lines of error for some reason
printf "\nerror\nerror\nerror\nerror\nerror"
