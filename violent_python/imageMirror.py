#@+leo-ver=5-thin
#@+node:chen.20160429095103.1: * @file imageMirror.py
from anonBrowser import *
from BeautifulSoup import BeautifulSoup
import os
import optparse
def mirrorImages(url, dir):
    ab = anonBrowser()
    ab.anonymize()
    html = ab.open(url)
    soup = BeautifulSoup(html)
    image_tags = soup.findAll('img')
    for image in image_tags:
        filename = image['src'].lstrip('http://')
        filename = os.path.join(dir,\
        filename.replace('/', '_'))
        print '[+] Saving ' + str(filename)
        data = ab.open(image['src']).read()
        ab.back()
        save = open(filename, 'wb')
        save.write(data)
        save.close()
#@-leo
