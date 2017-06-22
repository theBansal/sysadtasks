import os
import hashlib
import zlib

def checksum(client,server):
    l1=client.read(10)
    l2=server.read(10)
    if (l1 and l2):
        if zlib.adler32(l1)==zlib.adler32(l2):
	    return True
        else:
	    return False
	
