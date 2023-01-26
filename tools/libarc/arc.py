"""

Simple library for reading and paring rarc files.

"""

import struct
import os
import ctypes

from pathlib import Path
from dataclasses import dataclass, field
from typing import List, Dict

#
# source:
# http://wiki.tockdom.com/wiki/RARC_(File_Format)
#

NODE_SIZE = 0x10
DIRECTORY_SIZE = 0x14
ROOT = struct.unpack(">I", "ROOT".encode("ascii"))[0]


def chunks(lst, n):
    for i in range(0, len(lst), n):
        yield lst[i : i + n]


@dataclass
class StringTable:
    """RARC String Table"""

    strings: Dict[int, str] = field(default_factory=dict)

    def get(self, offset):
        return self.strings[offset]


@dataclass
class Directory:
    """RARC Directory"""

    index: int
    name_hash: int
    type: int
    name_offset: int
    data_offset: int
    data_length: int
    unknown0: int

    name: str = None
    rarc: "RARC" = field(default=None, repr=False)


@dataclass
class File(Directory):
    """RARC File"""


@dataclass
class Folder(Directory):
    """RARC Folder"""


@dataclass
class Node:
    """RARC Node"""

    identifier: int
    name_offset: int
    name_hash: int
    directory_count: int
    directory_index: int

    name: str = None
    parent = None
    rarc: "RARC" = field(default=None, repr=False)

    def files_and_folders(self, depth):
        """Generator for eacg file and directory of this node"""
        for directory in self.rarc._directories[self.directory_index :][
            : self.directory_count
        ]:
            yield depth, directory
            if isinstance(directory, Folder):
                if directory.data_offset < len(self.rarc._nodes):
                    node = self.rarc._nodes[directory.data_offset]
                    if directory.name == "." or directory.name == "..":
                        continue
                    yield from node.files_and_folders(depth + 1)


@dataclass
class RARC:
    """
    RARC - Archive of files and folder
    """

    # header
    magic: int  # 'RARC'
    file_length: int
    header_length: int
    file_offset: int
    file_data_length: int
    file_data_mmem: int
    file_data_amem: int
    unknown1: int

    # info block
    node_count: int
    node_offset: int
    directory_count: int
    directory_offset: int
    string_table_length: int
    string_table_offset: int
    file_count: int
    unknown2: int
    unknown3: int

    string_table: StringTable = None
    _nodes: List[Node] = field(default_factory=list)
    _directories: List[Node] = field(default_factory=list)
    _root: Node = None

    @property
    def files_and_folders(self):
        """Generator for each file and directory"""
        yield from self._root.files_and_folders(0)


def read_string_table(rarc, data):
    buffer = data[rarc.string_table_offset :][: rarc.string_table_length]
    rarc.string_table = StringTable()

    offset = 0
    for string in str(buffer, "shift-jis").split("\0"):
        rarc.string_table.strings[offset] = string
        offset += len(bytearray(string, "shift-jis")) + 1


def read_node(rarc, buffer):
    node = Node(*struct.unpack(">IIHHI", buffer))
    node.name = rarc.string_table.get(node.name_offset)
    node.rarc = rarc
    return node


def read_nodes(rarc, data):
    buffer = data[rarc.node_offset :][: rarc.node_count * NODE_SIZE]
    rarc._nodes = []
    for node_buffer in chunks(buffer, NODE_SIZE):
        node = read_node(rarc, node_buffer)
        if node.identifier == ROOT:
            rarc._root = node
        rarc._nodes.append(node)


def read_directory(rarc, buffer, file_data):
    header = struct.unpack(">HHHHIII", buffer)
    if header[0] == 0xFFFF:
        directory = Folder(*header)
    else:
        directory = File(*header)
        directory.data = file_data[directory.data_offset :][: directory.data_length]
    directory.name = rarc.string_table.get(directory.name_offset)
    directory.rarc = rarc
    return directory


def read_directories(rarc, data, file_data):
    buffer = data[rarc.directory_offset :][: rarc.directory_count * DIRECTORY_SIZE]
    rarc._directories = []
    for directory_buffer in chunks(buffer, DIRECTORY_SIZE):
        rarc._directories.append(read_directory(rarc, directory_buffer, file_data))


def read(buffer) -> RARC:
    """Read and parse RARC from buffer."""

    # TODO: Add error checking
    header = struct.unpack(">IIIIIIII", buffer[:32])
    info = struct.unpack(">IIIIIIHHI", buffer[32:][:32])
    rarc = RARC(*header, *info)

    data = buffer[32:]
    file_data = data[rarc.file_offset :][: rarc.file_length]

    read_string_table(rarc, data)
    read_nodes(rarc, data)
    read_directories(rarc, data, file_data)

    return rarc


def extract_node(node, arcData, write_function, parentDir, dirNames) -> str:
    os.mkdir(Path(parentDir) / node.name)
    for i in range(node.directory_index, node.directory_count + node.directory_index):
        dir = arcData._directories[i]
        dirNames[i] = str(Path(parentDir) / Path(node.name)) + "/" + dir.name
        if type(dir) == Folder and dir.name != "." and dir.name != "..":
            for j, node2 in enumerate(arcData._nodes):
                if dir.data_offset == j:
                    dirNames = extract_node(
                        node2,
                        arcData,
                        write_function,
                        Path(parentDir) / node.name,
                        dirNames,
                    )
                    break
        elif type(dir) == File:
            dirNames[i] = write_function(
                Path(parentDir) / Path(node.name) / dir.name, dir.data
            )

    return dirNames


def extract_to_directory(directory, data, write_function):
    print("Extracting " + str(directory))
    os.mkdir(directory)
    arcData = read(data)
    cwd = os.getcwd()
    os.chdir(directory)
    dirNames = extract_node(
        arcData._root, arcData, write_function, "./", [None] * len(arcData._directories)
    )

    files_data = ""
    for i, dir in enumerate(arcData._directories):
        directoryIndicator = ""
        specialType = ""
        indexToUse = str(dir.index).zfill(len(str(len(arcData._directories))))
        if type(dir) == Folder:
            directoryIndicator = "/"
            indexToUse = "Folder"
        if dir.type != 0x200 and dir.type != 0x1100 and dir.type != 0x9500:
            specialType = ":" + hex(dir.type)
        files_data = (
            files_data
            + indexToUse
            + ":"
            + str(dirNames[i])
            + directoryIndicator
            + specialType
            + "\n"
        )

    fileDataLines = files_data.splitlines()
    # fileDataLines.sort(key=lambda x : int(x.split(":")[0]))
    filesFile = open("_files.txt", "w", encoding="utf-8")
    for line in fileDataLines:
        filesFile.write(line + "\n")
    os.chdir(cwd)
    return directory


def computeHash(string):
    hash = 0
    for char in string:
        hash = hash * 3
        hash = hash + ord(char)

    hash = ctypes.c_ushort(hash)
    hash = hash.value
    return hash


def getNodeIdent(fullName):
    if len(fullName) < 4:
        fullName = fullName.upper()
        for i in range(4 - len(fullName)):
            fullName = fullName + " "
    else:
        fullName = fullName.upper()[:4]
    return struct.unpack(">I", fullName.encode("ascii"))[0]


def parseDirForPack(
    fileDataLines, path, convertFunction, nodes, dirs, currentNode, stringTable, data
):
    for i in range(
        currentNode.directory_index,
        currentNode.directory_count + currentNode.directory_index,
    ):
        currentLine = fileDataLines[i].split(":")
        dirId = currentLine[0]
        if dirId == "Folder":
            dirId = 0xFFFF
        else:
            dirId = int(dirId)
        currentLineName = currentLine[1]
        specialDirType = 0
        if len(currentLine) > 2:
            specialDirType = int(currentLine[2], 16)
        if currentLineName[-1] == "/":
            currentLineName = currentLineName[0:-1]
        dirName = currentLineName.split("/")[-1]
        if (
            dirName == "."
            or dirName == ".."
            or (
                os.path.isdir(path / currentLineName)
                and len(os.path.splitext(dirName)[1]) == 0
            )
        ):
            stringTableOffset = 0
            nodeIndex = nodes.index(currentNode)
            if dirName == "..":
                if currentNode.parent == None:
                    nodeIndex = 0xFFFFFFFF
                else:
                    nodeIndex = nodes.index(currentNode.parent)
                stringTableOffset = 2
            if dirName != "." and dirName != "..":
                stringTableOffset = len(bytearray(stringTable, "shift-jis"))
                stringTable = stringTable + dirName + "\0"
                dirsInCurrentDir = []
                for j, line in enumerate(fileDataLines):
                    split = line.split(":")[1].split("/")
                    if split[-1] == "":
                        split.pop()
                    if currentLineName == "/".join(split[0:-1]):
                        dirsInCurrentDir.append(j)
                newNode = Node(
                    getNodeIdent(dirName),
                    stringTableOffset,
                    computeHash(dirName),
                    len(dirsInCurrentDir),
                    dirsInCurrentDir[0],
                    dirName,
                )
                newNode.parent = currentNode
                nodes.append(newNode)
                nodeIndex = len(nodes) - 1
                stringTable, nodes, dirs, data = parseDirForPack(
                    fileDataLines,
                    path,
                    convertFunction,
                    nodes,
                    dirs,
                    newNode,
                    stringTable,
                    data,
                )
            dirs[i] = Folder(
                dirId,
                computeHash(dirName),
                0x200,
                stringTableOffset,
                nodeIndex,
                16,
                0,
                dirName,
            )
        else:
            realFileName, fileData = convertFunction(currentLineName, path, None, True)
            realFileName = os.path.basename(realFileName)
            stringTableOffset = len(bytearray(stringTable, "shift-jis"))
            stringTable = stringTable + realFileName + "\0"
            fileType = 0x1100
            if fileData[:4] == bytearray("Yaz0", "utf-8"):
                fileType = 0x9500
            if specialDirType != 0:
                fileType = specialDirType
            dirs[i] = File(
                dirId,
                computeHash(realFileName),
                fileType,
                stringTableOffset,
                len(data),
                len(fileData),
                0,
                realFileName,
            )
            data = data + fileData
            fileEndPadding = 0x20 - (len(data) % 0x20)
            if fileEndPadding == 0x20:
                fileEndPadding = 0
            data = data + bytearray(fileEndPadding)
    return stringTable, nodes, dirs, data


def convert_dir_to_arc(sourceDir, convertFunction):
    # print("Converting "+str(sourceDir))
    fileData = open(sourceDir / "_files.txt", "r", encoding="utf-8").read()
    fileDataLinesFull = fileData.splitlines()
    # fileDataLinesFull.sort(key=lambda x : int(x.split(":")[0]))

    fileDataLines = []
    for line in fileDataLinesFull:
        # fileDataLines.append(":".join(line.split(":")[1:])) #this should map directory ids to their index directly
        fileDataLines.append(line)

    rootName = fileDataLines[0].split(":")[1].split("/")[0]
    nodes = []
    dirs = [None] * len(fileDataLines)
    stringTable = ".\0..\0"
    nodes.append(
        Node(
            getNodeIdent("ROOT"),
            len(stringTable),
            computeHash(rootName),
            len(os.listdir(sourceDir / rootName)) + 2,
            0,
            rootName,
        )
    )
    stringTable = stringTable + rootName + "\0"
    data = bytearray(0)

    stringTable, nodes, dirs, data = parseDirForPack(
        fileDataLines,
        sourceDir,
        convertFunction,
        nodes,
        dirs,
        nodes[0],
        stringTable,
        data,
    )

    dirOffset = 32 + (len(nodes) * 16)
    dirOffsetPadding = 0x20 - (dirOffset % 0x20)
    if dirOffsetPadding == 0x20:
        dirOffsetPadding = 0
    dirOffset = dirOffset + dirOffsetPadding
    stringTableOffset = dirOffset + (len(dirs) * 20)
    stringTablePadding = 0x20 - (stringTableOffset % 0x20)
    stringTableOffset = stringTableOffset + stringTablePadding
    stringTableLen = len(bytearray(stringTable, "shift-jis"))
    fileOffset = stringTableOffset + stringTableLen
    fileOffsetPadding = 0x20 - (fileOffset % 0x20)
    if fileOffsetPadding == 0x20:
        fileOffsetPadding = 0
    fileOffset = fileOffset + fileOffsetPadding

    fileLength = fileOffset + len(data)

    mMemLength = len(data)
    aMemLength = 0

    fileCount = len(dirs)
    folderCount = 0
    for dir in dirs:
        if type(dir) == Folder:
            folderCount = folderCount + 1
        if aMemLength == 0 and dir.type == 0xA500:
            aMemLength = mMemLength
            mMemLength = 0
            # hacky way to detect rels.arc

    if folderCount == 2:
        fileCount = fileCount - 2  # need to check on the logic for this

    arcHeader = RARC(
        1380012611,
        fileLength,
        32,
        fileOffset,
        len(data),
        mMemLength,
        aMemLength,
        0,
        len(nodes),
        32,
        len(dirs),
        dirOffset,
        stringTableLen + stringTablePadding,
        stringTableOffset,
        fileCount,
        256,
        0,
    )
    headerData = struct.pack(
        ">IIIIIIIIIIIIIIHHI",
        1380012611,
        fileLength,
        32,
        fileOffset,
        len(data),
        mMemLength,
        aMemLength,
        0,
        len(nodes),
        32,
        len(dirs),
        dirOffset,
        stringTableLen + fileOffsetPadding,
        stringTableOffset,
        fileCount,
        256,
        0,
    )
    nodeData = bytearray()
    for node in nodes:
        nodeData = nodeData + struct.pack(
            ">IIHHI",
            node.identifier,
            node.name_offset,
            node.name_hash,
            node.directory_count,
            node.directory_index,
        )

    dirOffsetPaddingData = bytearray(dirOffsetPadding)
    dirData = bytearray()
    for dir in dirs:
        dirData = dirData + struct.pack(
            ">HHHHIII",
            dir.index,
            dir.name_hash,
            dir.type,
            dir.name_offset,
            dir.data_offset,
            dir.data_length,
            dir.unknown0,
        )

    stringTablePaddingData = bytearray(stringTablePadding)
    stringTableData = bytearray(stringTable, "shift-jis")
    fileOffsetPaddingData = bytearray(fileOffsetPadding)

    fullData = bytearray()
    fullData = (
        headerData
        + nodeData
        + dirOffsetPaddingData
        + dirData
        + stringTablePaddingData
        + stringTableData
        + fileOffsetPaddingData
        + data
    )

    return fullData
