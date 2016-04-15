#coding=utf-8
'''
Created on 2016年4月15日

@author: chen
'''

import crypt
passwd = crypt.crypt("toor", "$6$ms32yIGN$")
print passwd

