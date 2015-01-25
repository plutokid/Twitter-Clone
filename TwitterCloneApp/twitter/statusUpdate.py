#!/usr/bin/env python
import cgi
import sys
import cgitb

#import libh from one dir back
sys.path.insert(0, '../')
import lib_housing as libh

cgitb.enable()

# adding tweet into the tweets table
form=cgi.FieldStorage()
print "Content-type: text/html\n\n"
ret = libh.auth_cookie()
if ret == 1:
	if ("q" not in form):
		print 'Failed to update status'
	else:
		cur = libh.sql_query('insert into `tweets` (`user`, `tweet`) values ("'+str(libh.getUser())+'","'+str(cgi.escape(form["q"].value))+'")')
else:
	print 'Failed to update status'