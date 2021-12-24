#!/usr/bin/python
# -*- coding: UTF-8 -*-
# filename：test.py

# CGI处理模块
import cgi, cgitb 

# 创建 FieldStorage 的实例化
form = cgi.FieldStorage() 

# 获取数据
who = form.getvalue('who')
really = form.getvalue('really')

print "Content-type:text/html"
print
print "<html>"
print "<head>"
print "<meta charset=\"utf-8\">"
print "<title>你说是，那就是</title>"
print "</head>"
print "<body>"
print "<h2>你就是大名鼎鼎的%s， AKA%s？</h2>" % (who, really)
print "<h2>还不是我儿子</h2>"
print "</body>"
print "</html>"