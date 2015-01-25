#!/usr/bin/env python
import cgi
import cgitb
import hashlib

cgitb.enable()

form=cgi.FieldStorage()
print "Content-type: text/html\n\n"
print form
