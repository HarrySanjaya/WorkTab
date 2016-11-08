#!/bin/bash

_home=/home/it-dept/Harry/MyData/Bash/.svr

FuncSvrChk ()
{
	svrBad=$(sh $1/CheckServer.sh | grep -v "0ms" | awk '{ print $1}')
	svrChk=$(sh $1/CheckServer.sh | grep -v "0ms" | awk '{ print $2}')
	svrFil=$(echo $svrChk | awk '{ print $1}')
	if [ "$svrFil" != "0ms" ]; then
		notify-send 'Check Server' "$svrBad"
	else
		echo "Server Oke"
	fi
}

FuncDomChk ()
{
	domBad=$(sh $1/CheckDomain.sh | grep "not running")
	domChk=$(sh $1/CheckDomain.sh | grep "not running" | awk '{ print $2}')
	domFil=$(echo $domChk | awk '{ print $1}')
	if [ "$domFil" = "not running" ]; then
		notify-send 'Check Domain' "$domBad"
	else
		echo "Domain Oke"
	fi
}


FuncSvrChk $_home

FuncDomChk $_home
