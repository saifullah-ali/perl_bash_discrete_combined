#!/bin/sh

while [ $(date "+%H") -lt 24 ]; do
	#echo "Now - $(date "+%H")"
	echo "Script running:: Current time -  $(date) >> will run till 00 hrs"
	
	#sudo ifconfig eth3 down;
	sudo ifconfig eth3 192.168.0.101
	#sudo ifconfig eth3 up

	echo "eth3 ip setted up to 192.168.0.101"
	sudo ifconfig eth2 192.168.1.101
	echo "eth2 ip setted up to 192.168.1.101"
	echo "Printing Desired interface ip addresses"
	echo "eth3::"
	sudo ifconfig eth3 | grep "inet addr"
	echo "eth2::"
	sudo ifconfig eth2 | grep "inet addr"
    sleep 180
done
