#@+leo-ver=5-thin
#@+node:chen.20160421150618.1: * @file password_cracker.py
#@@language python
import crypt
passwd = crypt.crypt("toor", "$6$ms32yIGN$")
print(passwd)


#@-leo
