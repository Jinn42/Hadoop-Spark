#!/usr/bin/env python
from operator import itemgetter
import sys

max = 0
maxword = ""

for line in sys.stdin:
    # remove leading and trailing whitespace
    line = line.strip()
    
    key, word, count = line.split('\t', 2)
    try:
        count = int(count)
    except ValueError:
        # count was not a number, so silently
        continue
    
    if count > max:
        max = count
        maxword=word
    
print 'most frequent word:\t-%s-\t%s times' % (maxword, max)
