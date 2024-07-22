from baa import JAUAudioArcInterpreter
from sys import argv
import re

def main():
    if len(argv) != 3:
        print(f"{argv[0]} Usage: python3 {argv[0]} input.baa output.h")
    baa = JAUAudioArcInterpreter(open(argv[1],"rb").read())
    if not baa.parse():
        return print("BAA Failed to parse!")
    
    outfile = open(argv[2],"w")

    header_guard_name = argv[2].upper()
    header_guard_name = re.sub(r'[^A-Z0-9]', '_', header_guard_name)

    outfile.write(f"#ifndef {header_guard_name}\n#define {header_guard_name}\n\n")

    for sectionNum,section in enumerate(baa.nameTable["Sections"]):
        for groupNum,group in enumerate(section["Groups"]):
            groupname = group["Group Name"]
            outfile.write(f"enum {groupname} {{\n")
            for nameId,name in enumerate(group["Names"]):
                if name == '':
                    continue
                comma = ',' if nameId != len(group["Names"])-1 else ''
                outfile.write(f"    {name} = 0x{sectionNum:02x}{groupNum:02x}{nameId:04x}{comma}\n")
            outfile.write("};\n\n")
    
    outfile.write(f"#endif /* {header_guard_name} */\n")
    
if __name__ == "__main__":
    main()
