#!/usr/bin/env python3

BANNER = """





"""

# 803DC0F0

file = open('frameworkF.map', 'r') 
lines = file.readlines() 

output = open('vtable.lcf', 'w')
  
for line in lines: 
    data = [ x.strip() for x in line.strip().split(" ") ]
    data = [ x for x in data if len(x) > 0 ]
    if len(data) < 6 or len(data) > 7:
       continue

    if not data[4].startswith("__vt"):
        continue

    print(data[4]) 
    output.write("\"%s\" = %s;\n" % (data[4], "0x" + data[2]))

output.close()
