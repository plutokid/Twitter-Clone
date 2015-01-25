#!/usr/bin/env python
import sys
import cgitb

#import libh from one dir back
sys.path.insert(0, '../')
import lib_housing as libh

cgitb.enable()

#destroying the cookie (logout)
print libh.deAuth()
print "Content-type: text/html\n\n"
print '<meta http-equiv="refresh" content="0;url=http://localhost" />'