import struct

class JAUAudioArcInterpreter:
    def __init__(self,file):
        self.offset = 0
        self.file = file
        self.nameTable = {"Sections": []}
    
    def readU32_string(self):
        val = struct.unpack(">4s",self.file[self.offset:self.offset+4])[0]
        self.offset += 4
        return val

    def readU32_(self):
        val = struct.unpack(">I",self.file[self.offset:self.offset+4])[0]
        self.offset += 4
        return val
    
    def readU8_(self):
        val = struct.unpack(">B",self.file[self.offset:self.offset+1])[0]
        self.offset += 1
        return val
    
    def getString(self,bytes,offset):
        string = bytes[offset:]
        string = string[:string.index(0)]
        return string

    # More JAudio Decomp is required for this
    def readWS(self,bank_no,offset,waveArc):
        # print(bank_no)
        # print(offset)
        # print(waveArc)

        size = struct.unpack(">I",self.file[offset+4:offset+8])[0]
        # print(size)
        wsys = self.file[offset:offset+size]
        someNumber,archiveBankOffset,ctrlGroupOffset = struct.unpack(">III",wsys[12:24])
        # print(ctrlGroupOffset)

    def readBNK(self,param_1,param_2):
        pass

    def beginBNKList(self,param_1,param_2):
        pass
    
    def endBNKList(self):
        pass
    
    def readBSC(self,param_1,param_2):
        pass

    def readBST(self,offset,size):
        # print(offset)
        bst = self.file[offset:offset+size]
        numSections = struct.unpack(">I",bst[32:36])[0]

        sectionOffsets = []        
        for i in range(numSections):
             sectionOffsets.append(struct.unpack(">I",bst[36+(i*4):40+(i*4)])[0])
        for sectionOffset in sectionOffsets:
            numGroups = struct.unpack(">I",bst[sectionOffset:sectionOffset+4])[0]
            groupOffsets = []
            for i in range(numGroups):
                groupOffsets.append(struct.unpack(">I",bst[sectionOffset+4+(i*4):sectionOffset+8+(i*4)])[0])
            # print(groupOffsets)
            for groupOffset in groupOffsets:
                numEntries,unk = struct.unpack(">II",bst[groupOffset:groupOffset+8])
                entries = []
                for i in range(numEntries):
                    val = struct.unpack(">I",bst[groupOffset+8+(i*4):groupOffset+12+(i*4)])[0]
                    entries.append({"Type":val>>24,"Offset":val&0xFFFFFF})
                for entry in entries:
                    
                    # print(f"{entry['Type']} {entry['Offset']}")
                    match entry["Type"] & 0xf0:
                        case 0x50: #SFX
                            priority,unk,pad,swBit,volume = struct.unpack(">BBHIf",bst[entry["Offset"]:entry["Offset"]+12])
                            # print(f"{priority:01x} {unk:01x} {pad:02x} {swBit:04x} {volume}")
                        case 0x60: #Arc BGM
                            priority,unk,arcIndex = struct.unpack(">BBH",bst[entry["Offset"]:entry["Offset"]+4])
                            # print(f"{priority:01x} {unk:01x} Arc Index: {arcIndex}")
                        case 0x70: #Streams
                            priority,unk,resourceID,stringOffset = struct.unpack(">BBHI",bst[entry["Offset"]:entry["Offset"]+8])
                            # print(f"{priority:01x} {unk:01x} {resourceID:02x} {stringOffset:04x} ")
                            streamPath = self.getString(bst,stringOffset)
                            # print(f"{streamPath}")
                    

    def readBSTN(self,offset,size):
        # print(param_1)
        bstn = self.file[offset:offset+size]
        numSections = struct.unpack(">I",bstn[32:36])[0]
        # print(numSections)
        sectionOffsets = []
        for i in range(numSections):
            sectionOffsets.append(struct.unpack(">I",bstn[36+(i*4):40+(i*4)])[0])
        # print(sectionOffsets)
        sections = []
        for offset in sectionOffsets:
            numGroups,sectionNameOffset = struct.unpack(">II",bstn[offset:offset+8])
            sectionName = self.getString(bstn,sectionNameOffset)
            # print(f"Section {sectionName} has {numGroups} groups")
            section = {"Section Name":sectionName.decode('ascii'),
                       "Groups":[]}
            groupOffsets = []
            for i in range(numGroups):
                groupOffsets.append(struct.unpack(">I",bstn[offset+8+(i*4):offset+12+(i*4)])[0])
            groups = []
            for groupOffset in groupOffsets:
                groupSize,groupNameOffset = struct.unpack(">II",bstn[groupOffset:groupOffset+8])
                groupName = self.getString(bstn,groupNameOffset)
                group = {"Group Name":groupName.decode('ascii'),
                         "Names": []}
                # print(f"Group {groupName} has {groupSize} entries")
                nameOffsets = []
                for i in range(groupSize):
                    nameOffsets.append(struct.unpack(">I",bstn[groupOffset+8+(i*4):groupOffset+12+(i*4)])[0])
                names = []
                for nameOffset in nameOffsets:
                    names.append(self.getString(bstn,nameOffset).decode("ascii"))
                # print(names)
                group["Names"] = names
                groups.append(group)
            section["Groups"] = groups
            sections.append(section)
        self.nameTable["Sections"] = sections


    def readBMS(self,param_1,param_2,param_3):
        pass

    def readBMS_fromArchive(self):
        pass

    def newVoiceBank(self,param_1,param_2):
        pass

    def newDynamicSeqBlock(self,param_1):
        pass

    def readBSFT(self,param_1):
        pass

    def readMaxSeCategory(self,param_1,param_2,param_3):
        pass

    def parse(self):
        if self.readU32_string() != b'AA_<':
            return False
                
        while self.readCommand_() == True:
            pass

        return True

    def readCommand_(self):
        command = self.readU32_string()
        print(command)
        match command:
            case b'>_AA':
                return False
            case b'ws  ':
                self.readWS(self.readU32_(),self.readU32_(),self.readU32_())
            case b'bnk ':
                self.readBNK(self.readU32_(),self.readU32_())
            case b'bl_<':
                self.beginBNKList(self.readU32_(),self.readU32_())
            case b'>_bl':
                self.endBNKList()
            case b'bsc ':
                start = self.readU32_()
                end = self.readU32_()
                self.readBSC(start,end-start)
            case b'bst ':
                start = self.readU32_()
                end = self.readU32_()
                self.readBST(start,end-start)
            case b'bstn':
                start = self.readU32_()
                end = self.readU32_()
                self.readBSTN(start,end-start)
            case b'bms ':
                param_1 = self.readU32_()
                start = self.readU32_()
                end = self.readU32_()
                self.readBMS(param_1,start,end-start)
            case b'bmsa':
                self.readBMS_fromArchive(self.readU32_())
            case b'vbnk':
                self.newVoiceBank(self.readU32_(),self.readU32_())
            case b'dsqb':
                self.newDynamicSeqBlock(self.readU32_())
            case b'bsft':
                self.readBSFT(self.readU32_())
            case b'sect':
                self.readU8_()
                self.readMaxSeCategory(self.readU8_(),self.readU8_(),self.readU8_())
        return True



def main():
    baa = JAUAudioArcInterpreter(open("Z2Sound.baa","rb").read())
    baa.parse()

if __name__ == "__main__":
    main()
