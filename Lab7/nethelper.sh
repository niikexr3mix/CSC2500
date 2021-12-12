#!/bin/bash

function read_hosts ()
{
	hosts=(cat $1)

	count=1

	for host in hosts
	do
		hosts_array[$count]=$host
		count=count+1
	done
}

function pick_host ()
{
	count=1
	dooder=1

	for host in $1
	do
		echo "$count) $host"
		count=count+1
	done

	read -p "Select a number to choose a host " which_host

	#if ( $which_host -ge $dooder || $which_host -lt $count )
	#	then
	#		echo "continuing"
	#	else
	#		echo "Unexpected error! Exiting"
	#		exit 0
	#
	#fi

	
}


read_hosts $@

done=0

while [ $done == 0 ]
do
	echo "(P) for ping"
	echo "(N) for nslookup"
	echo "(Q) for quit"

	read -p "Select one of the above: " cmd

	case $cmd in
		P|p)
			pick_host "$hosts"
			echo "ping -c 1 ${hosts_array[$which_host]}"
			ping -c 1 ${hosts_array[which_host]}
				;;
		N|n) 
			pick_host "$hosts"
			echo "nslookup ${hosts_array[$which_host]}"
			nslookup ${hosts_array[$which_host]}
			 	;;
		Q|q)
			done=1;
			;;

		*) echo "Bad choice";
			;;

	esac
done
