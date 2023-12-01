import os
import sys
import libarc
from pathlib import Path
import libyaz0

"""
Extracts the game assets and stores them in the game folder
Usage: `python tools/extract_game_assets.py`
"""

fileMagicNumber = b"GZ2E01"
fstInfoPosition = 0x424
bootPosition = 0x0
bootSize = 0x440
bi2Position = 0x440
bi2Size = 0x2000
apploaderPosition = 0x2440
dolInfoPosition = 0x420

numFileEntries = 0

yaz0DecompressFunction = libyaz0.decompress

"""
Returns the offset address and size of fst.bin
"""


def getFstInfo(handler, fstOffsetPosition):
    fstOffset = int.from_bytes(bytearray(handler.read(4)), byteorder="big")
    handler.seek(
        fstOffsetPosition + 4
    )  # Get the size which is 4 bytes after the offset
    fstSize = int.from_bytes(bytearray(handler.read(4)), byteorder="big")
    return fstOffset, fstSize


"""
Parses the fst.bin into a list of dictionaries containing
the file entry type, the file/folder name, the ISO file offset/parent file entry, the file size/last file entry
"""


def parseFstBin(fstBinBytes):
    currentByte = 0
    numFileEntries = int.from_bytes(
        fstBinBytes[10:12], byteorder="big"
    )  # fst.bin offset
    stringTableOffset = numFileEntries * 0xC

    ret = []

    while currentByte != (numFileEntries * 12):
        currentByte += 12

        # lazy
        if currentByte == (numFileEntries * 12):
            break

        fileFolder = fstBinBytes[currentByte]
        filenameOffset = int.from_bytes(
            fstBinBytes[currentByte + 1 : currentByte + 4], byteorder="big"
        )
        fileOffsetOrParentEntryNum = int.from_bytes(
            fstBinBytes[currentByte + 4 : currentByte + 8], byteorder="big"
        )
        fileSizeOrLastEntryNum = int.from_bytes(
            fstBinBytes[currentByte + 8 : currentByte + 12], byteorder="big"
        )
        currentFilenameOffset = stringTableOffset + filenameOffset

        # Figure out the filename by checking for null string terminator
        i = 0
        while fstBinBytes[currentFilenameOffset + i] != 0:
            i += 1

        fileName = (
            fstBinBytes[currentFilenameOffset : currentFilenameOffset + i]
        ).decode()

        if fileFolder == 0:
            ret.append(
                {
                    "type": "File",
                    "fileName": fileName,
                    "fileOffset": fileOffsetOrParentEntryNum,
                    "fileSize": fileSizeOrLastEntryNum,
                }
            )
        else:
            ret.append(
                {
                    "type": "Folder",
                    "folderName": fileName,
                    "parentFolderEntryNumber": fileOffsetOrParentEntryNum,
                    "lastEntryNumber": fileSizeOrLastEntryNum,
                }
            )

    return ret


"""
Write the current folder to disk and return it's name/last entry number
"""


def writeFolder(parsedFstBin, i):
    folderPath = i["folderName"] + "/"
    lastEntryNumber = i["lastEntryNumber"]

    if i["parentFolderEntryNumber"] == 0:
        if not os.path.exists(folderPath):
            os.makedirs(folderPath)
    else:
        parentFolderEntry = parsedFstBin[i["parentFolderEntryNumber"] - 1]
        while True:
            folderPath = parentFolderEntry["folderName"] + "/" + folderPath
            if parentFolderEntry["parentFolderEntryNumber"] == 0:
                break

            nextParentFolderEntryNumber = parentFolderEntry["parentFolderEntryNumber"]
            parentFolderEntry = parsedFstBin[nextParentFolderEntryNumber - 1]

        if not os.path.exists(folderPath):
            os.makedirs(folderPath)

    return folderPath, lastEntryNumber


"""
Use the parsed fst.bin contents to write assets to file
"""

convertDefinitions = [
    {
        "extension": ".arc",
        "function": libarc.extract_to_directory,
        "exceptions": ["archive/dat/speakerse.arc"],
    }
]


def writeFile(name, data):
    if data[0:4] == bytes("Yaz0", "ascii"):
        splitName = os.path.splitext(name)
        name = splitName[0] + ".c" + splitName[1]
        data = libyaz0.decompress(data)

    extractDef = None
    splitName = os.path.splitext(name)
    ext = splitName[1]
    for extractData in convertDefinitions:
        if ext == extractData["extension"]:
            extractDef = extractData
            if extractData["exceptions"] != None:
                for exception in extractData["exceptions"]:
                    if str(name) == exception:
                        extractDef = None
            break

    if extractDef == None:
        file = open(name, "wb")
        file.write(data)
        file.close()
    else:
        name = extractDef["function"](name, data, writeFile)
    return name


def writeAssets(parsedFstBin, handler):
    # Write the folder structure and files to disc
    j = 0
    folderStack = []
    if not os.path.exists("./files/"):
        os.makedirs("./files/")
    os.chdir("./files/")
    folderStack.append({"folderName": "./", "lastEntryNumber": numFileEntries})
    for i in parsedFstBin:
        j += 1
        if i["type"] == "Folder":
            currentFolder, lastEntryNumber = writeFolder(parsedFstBin, i)
            folderStack.append(
                {"folderName": currentFolder, "lastEntryNumber": lastEntryNumber}
            )
        else:
            handler.seek(i["fileOffset"])
            writeFile(
                folderStack[-1]["folderName"] + i["fileName"],
                bytearray(handler.read(i["fileSize"])),
            )
            # with open(
            #    (folderStack[-1]["folderName"] + i["fileName"]), "wb"
            # ) as currentFile:
            #    currentFile.write(bytearray(handler.read(i["fileSize"])))

            while folderStack[-1]["lastEntryNumber"] == j + 1:
                folderStack.pop()


def writeSys(boot, bi2, apploader, dol, fst):
    if not os.path.exists("./sys/"):
        os.makedirs("./sys/")
    open("./sys/boot.bin", "wb").write(boot)
    open("./sys/bi2.bin", "wb").write(bi2)
    open("./sys/apploader.img", "wb").write(apploader)
    open("./sys/main.dol", "wb").write(dol)
    open("./sys/fst.bin", "wb").write(fst)


def getDolInfo(disc):
    disc.seek(dolInfoPosition)
    dolOffset = int.from_bytes(bytearray(disc.read(4)), byteorder="big")
    dolSize = 0
    for i in range(7):
        disc.seek(dolOffset + (i * 4))
        segmentOffset = int.from_bytes(bytearray(disc.read(4)), byteorder="big")
        disc.seek(dolOffset + 0x90 + (i * 4))
        segmentSize = int.from_bytes(bytearray(disc.read(4)), byteorder="big")
        if (segmentOffset + segmentSize) > dolSize:
            dolSize = segmentOffset + segmentSize

    for i in range(11):
        disc.seek(dolOffset + 0x1C + (i * 4))
        dataOffset = int.from_bytes(bytearray(disc.read(4)), byteorder="big")
        disc.seek(dolOffset + 0xAC + (i * 4))
        dataSize = int.from_bytes(bytearray(disc.read(4)), byteorder="big")
        if (dataOffset + dataSize) > dolSize:
            dolSize = dataOffset + dataSize

    return dolOffset, dolSize


def extract(isoPath: Path, gamePath: Path, yaz0Encoder):
    if yaz0Encoder == "oead":
        try:
            from oead import yaz0
            global yaz0DecompressFunction
            yaz0DecompressFunction = yaz0.decompress
        except:
            print("Extract: oead isn't installed, falling back to native yaz0")
    isoPath = isoPath.absolute()
    cwd = os.getcwd()
    os.chdir(gamePath)
    with open(isoPath, "rb") as f:
        magic = f.read(len(fileMagicNumber))
        if magic != fileMagicNumber:
            if magic.startswith(b"CISO"):
                raise RuntimeError("Compressed ISO files are not supported.")
            else:
                raise RuntimeError(f"Invalid ISO magic number: expected {fileMagicNumber}, got {magic}")

        # Seek to fst offset information and retrieve it
        f.seek(fstInfoPosition)
        fstOffset, fstSize = getFstInfo(f, fstInfoPosition)

        f.seek(bootPosition)
        bootBytes = bytearray(f.read(bootSize))

        f.seek(bi2Position)
        bi2Bytes = bytearray(f.read(bi2Size))

        f.seek(apploaderPosition + 0x14)
        apploaderSize = int.from_bytes(bytearray(f.read(4)), byteorder="big")
        f.seek(apploaderPosition + 0x18)
        trailerSize = int.from_bytes(bytearray(f.read(4)), byteorder="big")
        apploaderMainSize = 0x20 + apploaderSize + trailerSize
        f.seek(apploaderPosition)
        apploaderBytes = bytearray(f.read(apploaderMainSize))
        dolOffset, dolSize = getDolInfo(f)
        f.seek(dolOffset)
        dolBytes = bytearray(f.read(dolSize))

        # Seek to fst.bin and retrieve it
        f.seek(fstOffset)
        fstBinBytes = bytearray(f.read(fstSize))

        writeSys(bootBytes, bi2Bytes, apploaderBytes, dolBytes, fstBinBytes)

        # Parse fst.bin
        parsedFstBin = parseFstBin(fstBinBytes)

        # Write assets to file
        writeAssets(parsedFstBin, f)
    os.chdir(cwd)


def main():
    extract(Path(sys.argv[1]), Path(sys.argv[2]), "native")


if __name__ == "__main__":
    main()
