<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="chen.20160421145715.2" a="E"><vh>1 介绍</vh>
<v t="chen.20160421150618.1"><vh>@file password_cracker.py</vh></v>
</v>
<v t="chen.20160421150154.1" a="E"><vh>2 Penetration Testing with Python</vh>
<v t="chen.20160422112322.1" a="E"><vh>build a port scanner</vh>
<v t="chen.20160422112405.1"><vh>tcp full Connect scan</vh></v>
<v t="chen.20160422112437.1"><vh>Integrating the Nmap Port Scanner</vh></v>
</v>
</v>
<v t="chen.20160422141946.1" a="E"><vh>3 使用python进行调查</vh>
<v t="chen.20160422142140.1"><vh>mechanize库 Beatuiful Soup库</vh></v>
</v>
<v t="chen.20160422142739.1" a="E"><vh>4 Network Traffic Analysis with Python</vh>
<v t="chen.20160428142453.1" a="E"><vh>WHERE IS THAT IP TRAFFIC HEADED</vh>
<v t="chen.20160422142839.1"><vh>Geo-Location</vh></v>
<v t="chen.20160422143000.1"><vh>Using PyGeoIP to Correlate IP to Physical Locations</vh></v>
<v t="chen.20160426165655.1"><vh>Using Dpkt to Parse Packets</vh>
<v t="chen.20160426172011.1"><vh>低轨道离子炮（Low Orbit Ion Cannon，LOIC）</vh></v>
<v t="chen.20160426172326.1"><vh>黄金眼（GoldenEye ）HTTP拒绝服务工具 </vh></v>
</v>
</v>
<v t="chen.20160428142930.1" a="E"><vh>Using Scapy to Parse Packets</vh>
<v t="chen.20160428145707.1"><vh>@file scapy_sniff.py</vh></v>
</v>
<v t="chen.20160427162827.1"><vh>Parsing TTL Fields with Scapy</vh></v>
</v>
<v t="chen.20160427165426.1"><vh>5 Wireless Mayhem with Python</vh>
<v t="chen.20160427165456.1" a="E"><vh>Sniffing Wirless Networks for Personal Information</vh>
<v t="chen.20160428135700.1"><vh>@file test_sniff.py</vh></v>
</v>
</v>
<v t="chen.20160428165504.1"><vh>6 Web Recon with Python</vh>
<v t="chen.20160428165519.1"><vh>@file anonBrowser.py</vh></v>
<v t="chen.20160429095103.1"><vh>@file imageMirror.py</vh></v>
<v t="chen.20160429095551.1"><vh>@file sendMail.py</vh></v>
</v>
<v t="chen.20160429102015.1"><vh>7 Antivirus Evasion with Python</vh></v>
</vnodes>
<tnodes>
<t tx="chen.20160421145715.2">for the darker side of python.
provide python recipes for penetration testing, web analysis, network analysis, forensic analysis and expliting wireless devices.

chapter wrap-up

we moved on and wrote our first two Python programs—a twenty-year-old UNIX password
cracker and a zip-file brute-force password cracker.</t>
<t tx="chen.20160421150154.1">chapter wrap-up

 We started by building our own port scanner. Next, we examined
ways for attacking the SSH, FTP and SMB protocols and then finished with
constructing our own zero-day exploit using Python.</t>
<t tx="chen.20160422112322.1"></t>
<t tx="chen.20160422112405.1">from socket import *
connSkt = socket(AF_INET, SOCK_STREAM)
connSkt.connect((tgtHost, tgtPort))
connSkt.close()</t>
<t tx="chen.20160422112437.1">@language python
import nmap
nmScan = nmap.PortScanner()
nmScan.scan(tgtHost, tgtPort)
state = nmScan[tgtHost]['tcp'][int(tgtPort)['state']</t>
<t tx="chen.20160422141946.1">chapter wrap-up

 Either by investigating the Windows Registry, the Recycle Bin, artifacts left inside metadata, or application-stored databases, we
have added quite a few useful tools to our arsenal. </t>
<t tx="chen.20160422142140.1">https://pypi.python.org/pypi/mechanize/

Stateful programmatic web browsing, after Andy Lester’s Perl module WWW::Mechanize.

mechanize.Browser implements the urllib2.OpenerDirector interface. Browser objects have state, including navigation history, HTML form state, cookies, etc. </t>
<t tx="chen.20160422142739.1">chapter wrap-up

    We started by writing a rudimentary tool capable of detecting the Operation
Aurora attack.(极光行动（英语：Operation Aurora）或欧若拉行动，是2009年12月中旬可能源自中国的一场网络攻击[1]，其名称“Aurora”（意为极光、欧若拉）来自攻击者电脑上恶意文件所在路径的一部分[2]。遭受攻击的除了Google[3]外，还有20多家公司：其中包括Adobe Systems[4]、Juniper Networks[5]、Rackspace[6]、雅虎、赛门铁克、诺斯洛普·格鲁门和陶氏化工[7]。)

    Next, we wrote some scripts to detect the hacker group
Anonymous’ LOIC toolkit in action.

    Following that, we replicated a program
that seventeen-year-old H. D. Moore used to detect decoy network scans at the
Pentagon.
 
    Next, we created some scripts to detect attacks that utilized DNS as
a vector, including the Storm and Conficker worms. With the ability to analyze
traffic, we replicated a two-decade old attack used by Kevin Mitnick. 

    Finally, we utilized our network analysis skills to craft packets to overwhelm an IDS.</t>
<t tx="chen.20160422142839.1">sudo pip install pygeoip

wget http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz
gunzip GeoLiteCity.dat.gz 
mv GeoLiteCity.dat /tmp/Geo.dat</t>
<t tx="chen.20160422143000.1">import pygeoip
gi = pygeoip.GeoIP('/tmp/Geo.dat')
gi.record_by_name('173.255.226.98')

</t>
<t tx="chen.20160426165655.1">https://github.com/kbandla/dpkt

f = open('test.pcap')
pcap = dpkt.pcap.Reader(f)
for ts, buf in pcap:
    eth = dpkt.ethernet.Ethernet(buf)
    ip = eth.data
    src = socket.inet_ntoa(ip.src)
</t>
<t tx="chen.20160426172011.1">低轨道离子炮（Low Orbit Ion Cannon，LOIC）是一款开源的网络测试工具，也可被用作DoS攻击，使用C#语言编写。</t>
<t tx="chen.20160426172326.1">黄金眼也是一个简单但有效的DOS攻击工具。 这是在Python测试开发的DOS攻击,但是人们也把它当做一种黑客工具了。

https://github.com/jseidl/GoldenEye</t>
<t tx="chen.20160427162827.1"></t>
<t tx="chen.20160427165426.1">chapter wrap-up

    We started by intercepting wireless networks for personal information. 
    
    Next, we examined how to dissect 802.11 wireless traffic in order to discover preferred networks and
find hidden access points.
 
    Following that we crash-landed an unmanned aerial vehicle and built a tool to identify wireless hacker toolkits. 
    
    For the Bluetooth protocol, we built a tool to locate Bluetooth devices, scan them, and exploit a printer and a phone.</t>
<t tx="chen.20160427165456.1"></t>
<t tx="chen.20160428142453.1"></t>
<t tx="chen.20160428142930.1">本目录使用scapy来分析pcap的ip地址，并转化成相应的地理位置




</t>
<t tx="chen.20160428165504.1">chapter wrap-up

    In our own code, we created a class to mimic a web browser while increasing anonymity, scraped a website, used
the power of Google, leveraged Twitter to learn more about a target, and then
    finally brought all of those details together to send a specially crafted email to our target</t>
<t tx="chen.20160429102015.1">chapter wrap-up</t>
</tnodes>
</leo_file>
