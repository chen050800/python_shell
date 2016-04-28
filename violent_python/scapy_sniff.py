#@+leo-ver=5-thin
#@+node:chen.20160428145707.1: * @file scapy_sniff.py
#@@language python
from scapy.all import *
from scapy.utils import rdpcap
import pygeoip
gi = pygeoip.GeoIP('/tmp/Geo.dat')

pkt_list = rdpcap("tmp.pcap")
for pkt in pkt_list:
    if pkt.haslayer(TCP) or pkt.haslayer(UDP):
        src = pkt.getlayer(IP).src
        dst = pkt.getlayer(IP).src
        src_geo = gi.record_by_name(src)
        dst_geo = gi.record_by_name(dst)
        src_geoLoc = ""
        dst_geoLoc = ""
        
        if src_geo != None:
            src_geoLoc = src_geo.get("city", "") +", " + src_geo["country_code3"]
        if dst_geo != None:
            dst_geoLoc = str(dst_geo.get("city", "")) + ", " + dst_geo.get("country_code3", "")
            
        print src ,"-->", dst
        print src_geoLoc ,"-->", dst_geoLoc
#@-leo
