#!/bin/bash

for i in {1..254} ; do (ping -c 1 10.11.1.$i | grep "ttl" | cut -d " " -f4 | cut -d ":" -f1 &); done
