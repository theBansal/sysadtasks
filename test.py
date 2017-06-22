import md5
import program
import os
c=raw_input("enter client file address")
s=raw_input("enter sever file adress")
client=open(c,'rw+')
server=open(s,'rw+')
if program.checksum(client,server):
    if md5.checkmd5(client,server):
	pass
    else:
	client.write(server.read(1024))
else:
   os.system('mv c s')


