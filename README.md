# Twitter-Clone
Basic Twitter Clone


### Introduction 
-----
This is a basic twitter clone using Python.This app enables user to loin their account and do some basic twitter like operations.

### Quick Setup
-----
1.Installing Python web environment 
	link : http://www.programcreek.com/2012/04/python-hello-world-web-application-in-ubuntu/

2.CGI scripts in Python
	link : http://raspberrywebserver.com/cgiscripting/writing-cgi-scripts-in-python.html

3.Copy default file from the setup folder to  
	sudo vi /etc/apache2/sites-available/default

4.Copy the Content of the folder TwitterClone App into folder /usr/lib/cgi-bin/ 

5.Create a dabase name housing and import the sql file from the the sqlFile Folder.  

6.Go to your browser and run localhost(phpmyadmin and mysql already installed)

**NOTE**: Tested ON Ubuntu 12.04

**NOTE**: If not able to run .py files check for python-mysqldb and python-request

### Sql Tables
-----
* users (all the registered users) ->
| id 	| user   | email   | timestamp

* tweets ( all the tweets of users) -> 
| id 	| user   | tweet  | timestamp

* follows (follow user table) ->
| id 	| user   | follow  |

* Cookie

* auth

### Login and Register Form
-----
login and register the user 

**NOTE**: don't want to register , use test username and password from the Folder TestUserPass




