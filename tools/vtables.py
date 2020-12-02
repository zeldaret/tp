#!/usr/bin/env python3

BANNER = """
# This script is will go through the frameworkF.map and extract 
# all vtables and their location. This information can be used to
# place the compiler generated vtables in their correct place.
# - Julgodis, 2020
"""

def extract():
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

        output.write("\"%s\" = %s;\n" % (data[4], "0x" + data[2]))
    output.close()

if __name__ == "__main__":
    import sys

    print(BANNER)
    print("...")
    extract()
    print("COMPLETE vtable.lcf")