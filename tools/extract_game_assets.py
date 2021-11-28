import os
import sys

"""
Extracts the game assets and stores them in the game folder
Usage: `python tools/extract_game_assets.py`
"""

fstInfoPosition = 0x424
numFileEntries = 0

"""
Returns the offset address and size of fst.bin
"""
def getFstInfo(handler, fstOffsetPosition):
    fstOffset = int.from_bytes(bytearray(handler.read(4)), byteorder='big')
    handler.seek(fstOffsetPosition + 4) # Get the size which is 4 bytes after the offset
    fstSize = int.from_bytes(bytearray(handler.read(4)), byteorder='big')
    return fstOffset, fstSize

"""
Parses the fst.bin into a list of dictionaries containing
the file entry type, the file/folder name, the ISO file offset/parent file entry, the file size/last file entry
"""
def parseFstBin(fstBinBytes):
    currentByte = 0
    numFileEntries = int.from_bytes(fstBinBytes[10:12], byteorder='big') # fst.bin offset
    stringTableOffset = numFileEntries * 0xC

    ret = []

    while currentByte != (numFileEntries*12):
        currentByte += 12

        # lazy
        if currentByte == (numFileEntries*12):
            break

        fileFolder = fstBinBytes[currentByte]
        filenameOffset = int.from_bytes(fstBinBytes[currentByte+1:currentByte+4], byteorder='big')
        fileOffsetOrParentEntryNum = int.from_bytes(fstBinBytes[currentByte+4:currentByte+8], byteorder='big')
        fileSizeOrLastEntryNum = int.from_bytes(fstBinBytes[currentByte+8:currentByte+12], byteorder='big')
        currentFilenameOffset = stringTableOffset+filenameOffset

        # Figure out the filename by checking for null string terminator
        i = 0
        while fstBinBytes[currentFilenameOffset+i] != 0:
            i += 1

        fileName = (fstBinBytes[currentFilenameOffset:currentFilenameOffset+i]).decode()

        if fileFolder == 0:
            ret.append({"type": "File","fileName": fileName,"fileOffset":fileOffsetOrParentEntryNum,"fileSize":fileSizeOrLastEntryNum})
        else:
            ret.append({"type": "Folder","folderName": fileName,"parentFolderEntryNumber": fileOffsetOrParentEntryNum, "lastEntryNumber": fileSizeOrLastEntryNum})
        
    return ret

"""
Write the current folder to disk and return it's name/last entry number
"""
def writeFolder(parsedFstBin,i):
    folderPath = i["folderName"]+"/"
    lastEntryNumber = i["lastEntryNumber"]

    if i["parentFolderEntryNumber"] == 0:
        if not os.path.exists(folderPath):
            os.makedirs(folderPath)
    else:
        parentFolderEntry = parsedFstBin[i["parentFolderEntryNumber"]-1]
        while True:
            folderPath = parentFolderEntry["folderName"] + "/" + folderPath
            if parentFolderEntry["parentFolderEntryNumber"] == 0:
                break

            nextParentFolderEntryNumber = parentFolderEntry["parentFolderEntryNumber"]
            parentFolderEntry = parsedFstBin[nextParentFolderEntryNumber-1]
        
        if not os.path.exists(folderPath):
            os.makedirs(folderPath)

    return folderPath, lastEntryNumber

"""
Use the parsed fst.bin contents to write assets to file
"""
def writeAssets(parsedFstBin, handler):
    # Write the folder structure and files to disc
    j = 0
    folderStack = []
    folderStack.append({"folderName": "./", "lastEntryNumber": numFileEntries})
    for i in parsedFstBin:
        j += 1
        if i["type"] == "Folder":
            currentFolder, lastEntryNumber = writeFolder(parsedFstBin,i)
            folderStack.append({"folderName": currentFolder, "lastEntryNumber": lastEntryNumber})
        else:
            handler.seek(i["fileOffset"])
            with open((folderStack[-1]["folderName"]+i["fileName"]), "wb") as currentFile:
                currentFile.write(bytearray(handler.read(i["fileSize"])))
            
            while folderStack[-1]["lastEntryNumber"] == j+1:
                folderStack.pop()

def extract(path):
    with open(path, "rb") as f:
        # Seek to fst offset information and retrieve it
        f.seek(fstInfoPosition)
        fstOffset,fstSize = getFstInfo(f,fstInfoPosition)

        # Seek to fst.bin and retrieve it
        f.seek(fstOffset)
        fstBinBytes = bytearray(f.read(fstSize))

        # Parse fst.bin
        parsedFstBin = parseFstBin(fstBinBytes)

        # Write assets to file
        writeAssets(parsedFstBin, f)

def main():
    extract(sys.argv[1], "rb")

if __name__ == "__main__":
    main()