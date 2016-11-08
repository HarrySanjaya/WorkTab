#!/bin/bash

ssh root@192.168.51.215 -p 1309 /opt/glassfish3/glassfish/bin/asadmin list-domains | grep 'running'
ssh root@192.168.51.215 -p 1309 /usr/share/glassfish3/glassfish/bin/asadmin list-domains | grep 'running'
ssh root@192.168.51.196 -p 22 /usr/share/glassfish3/glassfish/bin/asadmin list-domains | grep 'running'

