#!/usr/bin/python

import ipaddress
import sh

user_input = raw_input("Enter subnet x.x.x.0/24: ")
network = ipaddress.ip_network(unicode(user_input))

for i in network.hosts():

	try:
		sh.ping(i, "-c 1")
		print i, "is online"
	except sh.ErrorReturnCode_1:
		print i, "is offline"

