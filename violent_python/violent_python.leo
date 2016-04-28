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
<v t="chen.20160422142839.1"><vh>Geo-Location</vh></v>
<v t="chen.20160422143000.1"><vh>Using PyGeoIP to Correlate IP to Physical Locations</vh></v>
<v t="chen.20160426165655.1"><vh>Using Dpkt to Parse Packets</vh>
<v t="chen.20160426172011.1"><vh>低轨道离子炮（Low Orbit Ion Cannon，LOIC）</vh></v>
<v t="chen.20160426172326.1"><vh>黄金眼（GoldenEye ）HTTP拒绝服务工具 </vh></v>
</v>
<v t="chen.20160427162827.1"><vh>Parsing TTL Fields with Scapy</vh></v>
</v>
<v t="chen.20160427165426.1" a="E"><vh>5 Wireless Mayhem with Python</vh>
<v t="chen.20160427165456.1"><vh>newHeadline</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="chen.20160421145715.2">for the darker side of python.
provide python recipes for penetration testing, web analysis, network analysis, forensic analysis and expliting wireless devices.</t>
<t tx="chen.20160421150154.1"></t>
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
<t tx="chen.20160422141946.1"></t>
<t tx="chen.20160422142140.1">https://pypi.python.org/pypi/mechanize/

Stateful programmatic web browsing, after Andy Lester’s Perl module WWW::Mechanize.

mechanize.Browser implements the urllib2.OpenerDirector interface. Browser objects have state, including navigation history, HTML form state, cookies, etc. </t>
<t tx="chen.20160422142739.1"></t>
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
<t tx="chen.20160427165426.1"></t>
<t tx="chen.20160427165456.1"></t>
</tnodes>
</leo_file>
