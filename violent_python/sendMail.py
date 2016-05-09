#@+leo-ver=5-thin
#@+node:chen.20160429095551.1: * @file sendMail.py
import smtplib
from email.mime.text import MIMEText
def sendMail(user,pwd,to,subject,text):
    msg = MIMEText(text)
    msg['From'] = user
    msg['To'] = to
    msg['Subject'] = subject
    try:
        smtpServer = smtplib.SMTP('mail.leadsec.com.cn', 25)
        print "[+] Connecting To Mail Server."
        smtpServer.ehlo()
#        print "[+] Starting Encrypted Session."
#        smtpServer.starttls()
#        smtpServer.ehlo()
        print "[+] Logging Into Mail Server."
        smtpServer.login(user, pwd)
        print "[+] Sending Mail."
        smtpServer.sendmail(user, to, msg.as_string())
        smtpServer.close()
        print "[+] Mail Sent Successfully."
    except:

        print "[-] Sending Mail Failed."
user = 'username'
pwd = 'password'
sendMail(user, pwd, 'chenchao4@leadsec.com.cn',\
'Re: Important', 'Test Message')
#@-leo
