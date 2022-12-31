import sys
import os
from pathlib import Path
import struct

def addPaddingToFile(file,padding):
    file.write(bytearray(padding - (file.tell() % padding)))

def sortFileList(x):
    l = []
    for c in x:
        c = ord(c.lower())
        if c==ord('_'):
            l.append(255)
        else:
            l.append(c)
    return l

def parseDir(dir,stringTable,currentEntryNum,parent):
    os.chdir(dir)
    entries = sorted(os.listdir('./'), key=sortFileList)
    table = []
    for entry in entries:
        currentEntryNum = currentEntryNum + 1
        tableEntry = {"name": entry, "children": None, "size": None,"stringTableOffset": len(stringTable),"entryNum": currentEntryNum,"parent": parent, "path": None}
        stringTable = stringTable+entry+"\0"
        if os.path.isdir(entry):
            tableEntry["children"],stringTable,currentEntryNum = parseDir(entry,stringTable,currentEntryNum,tableEntry)
        else:
            tableEntry["size"] = os.path.getsize(entry)
            tableEntry["path"] = os.path.abspath(entry)
        
        table.append(tableEntry)
    os.chdir("..")
    return table,stringTable,currentEntryNum

def recurseWriteFst(files,fstBin,isoFile):
    for currentFile in files:
        if currentFile["children"]: #is a directory
            nextDirEntryNum = 0
            testLastEntryFile = currentFile["children"][-1]
            parentEntryNum = 0
            while True:
                if testLastEntryFile["children"]:
                    testLastEntryFile = testLastEntryFile["children"][-1]
                else:
                    nextDirEntryNum = testLastEntryFile["entryNum"]+1
                    break
            if currentFile["parent"]:
                parentEntryNum = currentFile["parent"]["entryNum"]
            fstBin.append(struct.pack(">BBHII",1,(currentFile["stringTableOffset"]>>16)&0xFF,currentFile["stringTableOffset"]&0xFFFF,parentEntryNum,nextDirEntryNum))
            recurseWriteFst(currentFile["children"],fstBin,isoFile)
        else: #is a file
            fstBin.append(struct.pack(">BBHII",0,(currentFile["stringTableOffset"]>>16)&0xFF,currentFile["stringTableOffset"]&0xFFFF,isoFile.tell(),currentFile["size"]))
            isoFile.write(open(currentFile["path"],"rb").read())
            addPaddingToFile(isoFile,0x100)


def packageISO(sourcePath,destPath):
    print("Converting filesystem into ISO")

    ISOfile = open(destPath,"wb")
    #write sys files
    ISOfile.write(open(sourcePath/"sys/boot.bin","rb").read())
    ISOfile.write(open(sourcePath/"sys/bi2.bin","rb").read())
    ISOfile.write(open(sourcePath/"sys/apploader.img","rb").read())
    addPaddingToFile(ISOfile,0x100)

    dolStartPos = ISOfile.tell()
    ISOfile.seek(0x420)
    ISOfile.write(struct.pack(">I",dolStartPos))
    ISOfile.seek(dolStartPos)

    ISOfile.write(open(sourcePath/"sys/main.dol","rb").read())
    addPaddingToFile(ISOfile,0x100)

    fstStartPos = ISOfile.tell()

    files,stringTable,entryLength = parseDir(sourcePath/"files","",0,None)
    entryLength = entryLength + 1

    ISOfile.seek(0x424)
    ISOfile.write(struct.pack(">II",fstStartPos,(entryLength*12)+len(stringTable)))
    

    #print(stringTable)
    #print(files)
    #print(hex(entryLength))
    #print(files[0]["entryNum"])
    
    fstBin = []
    fstBin.append(struct.pack(">BBHII",1,0,0,0,entryLength))

    ISOfile.seek(fstStartPos+(entryLength*12)+len(stringTable))
    addPaddingToFile(ISOfile,0x100)
    recurseWriteFst(files,fstBin,ISOfile)

    ISOfile.write(bytearray(1459978240 - (ISOfile.tell())))
    
    ISOfile.seek(fstStartPos)
    for fileEntry in fstBin:
        ISOfile.write(fileEntry)
    ISOfile.seek((entryLength*12) + fstStartPos)
    ISOfile.write(bytearray(stringTable,"utf8"))

    
    


if __name__ == "__main__":
    packageISO(Path(sys.argv[1]),Path(sys.argv[2]))