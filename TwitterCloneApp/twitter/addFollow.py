#!/usr/bin/env python
import sys
import cgi
import cgitb
import hashlib

sys.path.insert(0, '../')
import lib_housing as libh

cgitb.enable()

form=cgi.FieldStorage()

ret = libh.auth_cookie()
print "Content-type: text/html\n\n"

#follow and unFollow a person
if ret == 0:
	print '<meta http-equiv="refresh" content="0;url=http://localhost" />'
else:
	if ("a" in form) and ("q" in form):
		q = cgi.escape(form["q"].value)
		if cgi.escape(form["a"].value) == "unfollow":
			query = "delete from `follows` where `user`='" + str(libh.getUser()) + "' and `follow` = '" + str(q)+"'"
			cur = libh.sql_query(query)
			print '<meta http-equiv="refresh" content="0;url=profile.py?q='+str(q)+'" />'
		else:
			query = "insert into `follows` (`user`, `follow`) values ('" + str(libh.getUser()) + "','" + str(q)+"')"
			cur = libh.sql_query(query)
			print '<meta http-equiv="refresh" content="0;url=profile.py?q='+str(q)+'" />'
	elif ("q" in form):
		q = cgi.escape(form["q"].value)
		query = "insert into `follows` (`user`, `follow`) values ('" + str(libh.getUser()) + "','" + str(q)+"')"
		cur = libh.sql_query(query)
		print '<meta http-equiv="refresh" content="0;url=profile.py?q='+str(q)+'" />'
	else:
		print '<meta http-equiv="refresh" content="0;url=index.py" />'
