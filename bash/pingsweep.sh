#!/bin/bash

for i in {1..254} ; do (ping -c 1 192.168.1.$i | grep "ttl" | cut -d " " -f4 | cut -d ":" -f1 &); done
