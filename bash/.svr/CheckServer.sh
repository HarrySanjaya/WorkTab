#!/bin/bash


svrList="/home/it-dept/Harry/MyData/Bash/.svr/ServerList.txt" 

svr=$(cat "$svrList")     

spce=' '
for i in $svr
do 		
	hs=$i$spce$(ping -c1 $svrl$i | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}'); 
	echo $hs
done



#hsl191=$(ping -c1 192.168.51.191 | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}');
#hsl192=$(ping -c1 192.168.51.192 | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}');
#hsl193=$(ping -c1 192.168.51.193 | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}');
#hsl194=$(ping -c1 192.168.51.194 | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}');
#hsl215=$(ping -c1 192.168.51.215 | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}');
#hsl196=$(ping -c1 192.168.51.196 | grep 'packet loss' | awk -F',' '{ print $4}' | awk '{ print $2}');


#if [ ${hsl191%ms} != "0" ] || [ ${hsl192%ms} != "0" ] || [ ${hsl193%ms} != "0" ] || [ ${hsl194%ms} != "0" ]; then
#	notify-send 'MIS Server' "Oke"
#elif [ ${hsl191%ms} = "0" ] || [ ${hsl192%ms} = "0" ] || [ ${hsl193%ms} = "0" ] || [ ${hsl194%ms} = "0" ]; then
#	for i in ${hsl191%ms}${hsl192%ms}${hsl193%ms}${hsl194%ms}
#	do		
#		if [ $i = "0000" ]; then
#			hsl="tes"
#		else 
#			hsl="oke"
#		fi	
#		echo $hsl
#	done
#	#notify-send 'MIS Server' "Not"
#else 
#	echo 'Oke';
#fi
