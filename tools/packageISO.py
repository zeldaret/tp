import sys
import os
from pathlib import Path
import struct

ISO_MAX_SIZE = 1459978240

# Directories towards the top will be at the end of the ISO
# The entries in the BOOT section have priority over the directories listed
TP_FILE_PRIORITY = [
    "rel/",
    "./", # All uncaught files
    "BOOT", # All files in the BOOT array
    "res/Object/",
    "res/Stage/",
    "Audiores/Waves/",
    "Audiores/Stream/",
    "res/Particle/",
    "Movie/",
    "map/"
]

# There are a few differences here than actually running the game from boot,
# Likely due to version differences. This is the order on GC US
TP_BOOT_PRIORITY = [
    "str/Final/Release/COPYDATE",
    "RELS.arc",
    "Audiores/Z2Sound.baa",
    "Audiores/Seqs/Z2SoundSeqs.arc",
    "res/Object/LogoUs.arc",
    "res/Object/Always.arc",
    "res/Object/Alink.arc",
    "res/FieldMap/Field0.arc",
    "res/Object/AlAnm.arc",
    "res/Layout/fmapres.arc",
    "res/Layout/dmapres.arc",
    "res/Layout/clctres.arc",
    "res/Layout/itemicon.arc",
    "res/Layout/ringres.arc",
    "res/Layout/playerName.arc",
    "res/Layout/itmInfRes.arc",
    "res/Layout/button.arc",
    "res/CardIcon/cardicon.arc",
    "res/Msgus/bmgres.arc",
    "res/Layout/msgcom.arc",
    "res/Layout/msgres00.arc",
    "res/Layout/msgres01.arc",
    "res/Layout/msgres02.arc",
    "res/Layout/msgres03.arc",
    "res/Layout/msgres04.arc",
    "res/Layout/msgres05.arc",
    "res/Layout/msgres06.arc",
    "res/Layout/main2D.arc",
    "res/Fontus/fontres.arc",
    "res/Fontus/rubyres.arc",
    "res/Particle/common.jpc",
    "res/ItemTable/item_table.bin",
    "res/ItemTable/enemy_table.bin",
    "res/Stage/F_SP102/STG_00.arc",
    "res/Object/Event.arc",
    "res/Object/CamParam.arc",
    "res/Particle/Pscene001.jpc",
    "res/Msgus/bmgres8.arc",
    "rel/Final/Release/d_a_title.rel",
    "res/Stage/F_SP102/R00_00.arc",
    "res/Object/Title.arc",
    "res/Object/Demo38_01.arc",
    "res/Layout/Title2D.arc",
    "res/Object/Kmdl.arc",
    "rel/Final/Release/d_a_obj_ihasi.rel",
    "rel/Final/Release/d_a_horse.rel",
    "res/Object/Obj_ihasi.arc",
    "res/Object/CstaFB.arc",
    "res/Object/@bg0056.arc",
    "res/Object/@bg0010.arc",
    "res/Object/HyShd.arc",
    "res/Object/Horse.arc",
    "res/Object/J_Umak.arc",
    "res/Object/Midna.arc",
    "Audiores/Stream/title_back.ast",
    "res/Object/fileSel.arc",
    "Audiores/Stream/menu_select.ast",
]

def getPaddingByOffset(padding, offset):
    return padding - (offset % padding)

def addPaddingToFile(file, padding):
    file.write(bytearray(getPaddingByOffset(padding,file.tell())))


def sortFileList(x):
    l = []
    for c in x:
        c = ord(c.lower())
        if c == ord("_"):
            l.append(255)
        else:
            l.append(c)
    return l


def parseDir(dir, stringTable, currentEntryNum, parent):
    # print(dir)
    entries = sorted(os.listdir(dir), key=sortFileList)
    table = []
    for entry in entries:
        currentEntryNum = currentEntryNum + 1
        tableEntry = {
            "name": entry,
            "children": None,
            "size": None,
            "stringTableOffset": len(stringTable),
            "entryNum": currentEntryNum,
            "parent": parent,
            "path": None,
        }
        stringTable = stringTable + entry + "\0"
        if os.path.isdir(dir / entry):
            tableEntry["children"], stringTable, currentEntryNum = parseDir(
                dir/entry, stringTable, currentEntryNum, tableEntry
            )
        else:
            tableEntry["size"] = os.path.getsize(dir/entry)
            tableEntry["path"] = dir/entry

        table.append(tableEntry)
    return table, stringTable, currentEntryNum

def recurseCreateFST(files,fst):
    for currentFile in files:
        if currentFile["children"]:  # is a directory
            nextDirEntryNum = 0
            testLastEntryFile = currentFile["children"][-1]
            parentEntryNum = 0
            while True:
                if testLastEntryFile["children"]:
                    testLastEntryFile = testLastEntryFile["children"][-1]
                else:
                    nextDirEntryNum = testLastEntryFile["entryNum"] + 1
                    break
            if currentFile["parent"]:
                parentEntryNum = currentFile["parent"]["entryNum"]
            fst.append({'type': 'dir', 'stringTableOffset': currentFile["stringTableOffset"], 'parentEntryNum': parentEntryNum, 'nextDirEntryNum': nextDirEntryNum})
            recurseCreateFST(currentFile["children"],fst)
        else:  # is a file
            fst.append({'type': 'file', 'path': currentFile["path"], 'stringTableOffset': currentFile["stringTableOffset"], 'offset': None, 'size': currentFile["size"], 'adjustedSize': currentFile["size"]+getPaddingByOffset(0x100,currentFile["size"])})

def packageISO(sourcePath, destPath):
    print(f"Packaging directory '{sourcePath}' into ISO '{destPath}'")

    ISOfile = open(destPath, "wb")
    # write sys files
    ISOfile.write(open(sourcePath / "sys/boot.bin", "rb").read())
    ISOfile.write(open(sourcePath / "sys/bi2.bin", "rb").read())
    ISOfile.write(open(sourcePath / "sys/apploader.img", "rb").read())
    addPaddingToFile(ISOfile, 0x100)

    dolStartPos = ISOfile.tell()
    ISOfile.seek(0x420)
    ISOfile.write(struct.pack(">I", dolStartPos))
    ISOfile.seek(dolStartPos)

    ISOfile.write(open(sourcePath / "sys/main.dol", "rb").read())
    addPaddingToFile(ISOfile, 0x100)

    fstStartPos = ISOfile.tell()

    cwd = os.getcwd()
    os.chdir(sourcePath / "files")
    files, stringTable, entryLength = parseDir(Path("./"), "", 0, None)
    entryLength = entryLength + 1

    ISOfile.seek(0x424)
    ISOfile.write(
        struct.pack(">II", fstStartPos, (entryLength * 12) + len(stringTable))
    )

    # print(files)

    fst = []
    recurseCreateFST(files,fst)

    pathToEntryDict = {f["path"]: i for i,f in enumerate(fst) if f["type"] == "file"}

    for priorityFile in TP_BOOT_PRIORITY:
        entry = pathToEntryDict[Path(priorityFile)]
        fst[entry]["bootPriority"] = True
        fst[entry]["priorityIndex"] = TP_FILE_PRIORITY.index("BOOT")

    for file in fst:
        if file["type"] == "dir" or ("bootPriority" in file and file["bootPriority"]):
            continue
            
        priorityMatch = max([(i,str(file["path"]).rfind(s)) for i,s in enumerate(TP_FILE_PRIORITY)], key=lambda x: x[1])

        priorityIndex = priorityMatch[0]
        if priorityMatch[1] == -1:
            priorityIndex = TP_FILE_PRIORITY.index("./")
        
        file["priorityIndex"] = priorityIndex
        # print(file["path"])
        # print(priorityMatch)
        # print(priorityIndex)

    fileOrderBins = [[j for j,f in enumerate(fst) if f["type"] == "file" and i == f["priorityIndex"]] for i in range(len(TP_FILE_PRIORITY))]
    # print(fileOrderBins)

    fileOrder = []

    current_offset = ISO_MAX_SIZE - 0x14
    for i,priority in enumerate(fileOrderBins):
        if i == TP_FILE_PRIORITY.index("BOOT"):
            priority = [pathToEntryDict[Path(j)] for j in TP_BOOT_PRIORITY]
        for f in reversed(priority):
            current_offset -= fst[f]["size"]
            if os.path.splitext(fst[f]["path"])[1] != ".thp":
                current_offset -= (current_offset % 4)
            else:
                current_offset -= (current_offset % 0x8000)
            fst[f]["offset"] = current_offset
            fileOrder.append(f)
            # print(f"{current_offset:X} {fst[f]}")

    assert current_offset >= fstStartPos + (entryLength * 12) + len(stringTable), "ISO File is too large!"
    
    # Write FST and stringtable

    ISOfile.seek(fstStartPos)
    
    ISOfile.write(struct.pack(">BBHII", 1, 0, 0, 0, entryLength)) # ROOT
    for f in fst:
        if f["type"] == "dir":
            ISOfile.write(struct.pack(
                    ">BBHII",
                    1,
                    (f["stringTableOffset"] >> 16) & 0xFF,
                    f["stringTableOffset"] & 0xFFFF,
                    f["parentEntryNum"],
                    f["nextDirEntryNum"],
                ))
        else:
            ISOfile.write(struct.pack(
                    ">BBHII",
                    0,
                    (f["stringTableOffset"] >> 16) & 0xFF,
                    f["stringTableOffset"] & 0xFFFF,
                    f["offset"],
                    f["size"],
                ))
    ISOfile.write(bytearray(stringTable, "utf8"))

    for f in reversed(fileOrder):
        file = fst[f]
        ISOfile.seek(file["offset"])
        with open(file["path"],"rb") as of:
            ISOfile.write(of.read())
    
    # Fill the rest of the ISO in
    ISOfile.write(bytearray(ISO_MAX_SIZE - (ISOfile.tell())))

    os.chdir(cwd)

    # print(fst)


    # print(stringTable)
    # print(files)
    # print(hex(entryLength))
    # print(files[0]["entryNum"])


if __name__ == "__main__":
    packageISO(Path(sys.argv[1]), Path(sys.argv[2]))
