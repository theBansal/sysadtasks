import os
import hashlib
import zlib

def checkmd5(client,server):
    l1=client.read(1024)
    l2=server.read(1024)
    m1=hashlib.md5(l1)
    m2=hashlib.md5(l2)
    if (l1 and l2):
	if str(m1.digest())==str(m2.digest()):
            return True
    	else:
	    return False

