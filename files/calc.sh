#!/bin/bash
# Author: Chun-Yu Lee (Mat) <matlinuxer2@gmail.com>
# License: MIT License

wget -O data.html http://hackingthursday.wikidot.com/places
tidy -q -asxhtml -numeric -utf8 < data.html > data.xml

cat > h4parser.py <<THEPYTHON
#!/usr/bin/python

import sys
import libxml2

doc = libxml2.parseFile( sys.argv[1] )
ctxt = doc.xpathNewContext()
ctxt.xpathRegisterNs('xhtml', 'http://www.w3.org/1999/xhtml')
print ctxt.xpathEval('//xhtml:table[@class="wiki-content-table"]')[0]
THEPYTHON

chmod +x h4parser.py

./h4parser.py data.xml
