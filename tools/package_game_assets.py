import os
import sys
import shutil
import extract_game_assets
from pathlib import Path
import hashlib
import struct
import ctypes
import oead


def sha1_from_data(data):
    sha1 = hashlib.sha1()
    sha1.update(data)

    return sha1.hexdigest().upper()

def copy(path,destPath):
    for root,dirs,files in os.walk(str(path)):
        for file in files:
            outputDir = destPath/Path(str(root))
            #print(str(outputDir.absolute())+file)
            if not outputDir.absolute().exists():
                os.makedirs(outputDir.absolute())
            outputFile = Path(str(outputDir.absolute())+"/"+str(file))
            inFile = Path(str(Path(root).absolute())+"/"+str(file))
            if not outputFile.exists():
                print(str(inFile)+" -> "+str(outputFile))
                shutil.copyfile(inFile,outputFile)
            else:
                inf = open(inFile,"rb")
                inSum = sha1_from_data(bytearray(inf.read()))
                outf = open(outputFile,"rb")
                outSum = sha1_from_data(bytearray(outf.read()))
                if inSum!=outSum:
                    print(str(inFile)+" -> "+str(outputFile))
                    shutil.copyfile(inFile,outputFile)


aMemRels = """d_a_alldie.rel
d_a_andsw2.rel
d_a_bd.rel
d_a_canoe.rel
d_a_cstaf.rel
d_a_demo_item.rel
d_a_door_bossl1.rel
d_a_econt.rel
d_a_e_dn.rel
d_a_e_fm.rel
d_a_e_ga.rel
d_a_e_hb.rel
d_a_e_nest.rel
d_a_e_rd.rel
d_a_fr.rel
d_a_grass.rel
d_a_kytag05.rel
d_a_kytag10.rel
d_a_kytag11.rel
d_a_kytag14.rel
d_a_mg_fish.rel
d_a_npc_besu.rel
d_a_npc_fairy_seirei.rel
d_a_npc_fish.rel
d_a_npc_henna.rel
d_a_npc_kakashi.rel
d_a_npc_kkri.rel
d_a_npc_kolin.rel
d_a_npc_maro.rel
d_a_npc_taro.rel
d_a_npc_tkj.rel
d_a_obj_bhashi.rel
d_a_obj_bkdoor.rel
d_a_obj_bosswarp.rel
d_a_obj_cboard.rel
d_a_obj_digplace.rel
d_a_obj_eff.rel
d_a_obj_fmobj.rel
d_a_obj_gptaru.rel
d_a_obj_hhashi.rel
d_a_obj_kanban2.rel
d_a_obj_kbacket.rel
d_a_obj_kgate.rel
d_a_obj_klift00.rel
d_a_obj_ktonfire.rel
d_a_obj_ladder.rel
d_a_obj_lv2candle.rel
d_a_obj_magne_arm.rel
d_a_obj_metalbox.rel
d_a_obj_mgate.rel
d_a_obj_nameplate.rel
d_a_obj_ornament_cloth.rel
d_a_obj_rope_bridge.rel
d_a_obj_stick.rel
d_a_obj_stonemark.rel
d_a_obj_swallshutter.rel
d_a_obj_swpropeller.rel
d_a_obj_swpush5.rel
d_a_obj_yobikusa.rel
d_a_scene_exit2.rel
d_a_shop_item.rel
d_a_sq.rel
d_a_swc00.rel
d_a_tag_ajnot.rel
d_a_tag_attack_item.rel
d_a_tag_cstasw.rel
d_a_tag_gstart.rel
d_a_tag_hinit.rel
d_a_tag_hjump.rel
d_a_tag_hstop.rel
d_a_tag_lv2prchk.rel
d_a_tag_magne.rel
d_a_tag_mhint.rel
d_a_tag_mstop.rel
d_a_tag_spring.rel
d_a_tag_statue_evt.rel
d_a_ykgr.rel"""

mMemRels = """d_a_andsw.rel
d_a_arrow.rel
d_a_bg.rel
d_a_bg_obj.rel
d_a_boomerang.rel
d_a_crod.rel
d_a_demo00.rel
d_a_disappear.rel
d_a_dmidna.rel
d_a_door_dbdoor00.rel
d_a_door_knob00.rel
d_a_door_shutter.rel
d_a_door_spiral.rel
d_a_dshutter.rel
d_a_ep.rel
d_a_hitobj.rel
d_a_kytag00.rel
d_a_kytag04.rel
d_a_kytag17.rel
d_a_mg_rod.rel
d_a_midna.rel
d_a_nbomb.rel
d_a_obj_brakeeff.rel
d_a_obj_burnbox.rel
d_a_obj_carry.rel
d_a_obj_ito.rel
d_a_obj_life_container.rel
d_a_obj_movebox.rel
d_a_obj_swpush.rel
d_a_obj_timer.rel
d_a_obj_yousei.rel
d_a_path_line.rel
d_a_scene_exit.rel
d_a_set_bgobj.rel
d_a_spinner.rel
d_a_suspend.rel
d_a_swhit0.rel
d_a_tag_allmato.rel
d_a_tag_attention.rel
d_a_tag_camera.rel
d_a_tag_chkpoint.rel
d_a_tag_event.rel
d_a_tag_evt.rel
d_a_tag_evtarea.rel
d_a_tag_evtmsg.rel
d_a_tag_howl.rel
d_a_tag_kmsg.rel
d_a_tag_lantern.rel
d_a_tag_mist.rel
d_a_tag_msg.rel
d_a_tag_push.rel
d_a_tag_telop.rel
d_a_tbox.rel
d_a_tbox2.rel
d_a_vrbox.rel
d_a_vrbox2.rel
f_pc_profile_lst.rel"""

#Because libarc is only geared toward reading from arcs I'm writing my own arc writer in this file

class HEADER:
    RARC : int
    length : int
    headerLength : int
    fileDataOffset : int
    fileDataLen : int
    fileDataLen2 : int
    unk1 : int
    unk2 : int

class INFO:
    numNodes : int
    firstNodeOffset : int
    totalDirNum : int
    firstDirOffset : int
    stringTableLen : int
    stringTableOffset : int
    numDirsThatAreFiles : int
    unk1 : int
    unk2 : int

class NODE:
    NAME : int
    stringTableOffset: int
    hash : int
    numDirs : int
    firstDirIndex : int

class DIRECTORY:
    dirIndex : int
    stringHash : int
    type : int
    stringOffset : int
    fileOffset : int
    fileLength : int
    unk1 : int

def computeHash(string):
    hash = 0
    for char in string:
        hash = hash*3
        hash = hash + ord(char)

    hash = ctypes.c_ushort(hash)
    hash = hash.value
    return hash

def addFile(index,sizeIndex,dirs,name,stringTable,paths,data):
    file = DIRECTORY()
    file.dirIndex = index
    file.stringHash = computeHash(name)
    file.type = 0xA500
    file.stringOffset = stringTable.find(name)
    path = None
    for relPath in paths:
        if str(relPath).find(name)!=-1:
            path = relPath
    file.unk1 = 0
    fileData = open(path,"rb")
    compressedData = oead.yaz0.compress(fileData.read())
    padding = (0x20-(len(compressedData)%0x20))
    file.fileLength = len(compressedData)
    file.fileOffset = sizeIndex
    sizeIndex = sizeIndex + file.fileLength + padding
    data += compressedData
    data += bytearray(padding)
    fileData.close()
    dirs.append(file)

    return dirs,data,sizeIndex


def copyRelFiles(buildPath,aMemList,mMemList):
    relArcPaths = []
    for root,dirs,files in os.walk(str(buildPath/"rel")):
        for file in files:
            if file.find(".rel")!=-1:
                relArcFound = False
                for rel in aMemList:
                    if rel==file:
                        relArcFound = True
                for rel in mMemList:
                    if rel==file:
                        relArcFound = True
                fullPath = Path(root+"/"+file)
                if relArcFound==False:
                    print(str(fullPath)+" -> "+str(buildPath/"game/files/rel/Final/Release"/file))
                    relSource = open(fullPath,"rb")
                    data = relSource.read()
                    relSource.close()
                    data = oead.yaz0.compress(data)
                    relNew = open(buildPath/"game/files/rel/Final/Release"/file,"wb")
                    relNew.write(data)
                    relNew.truncate()
                    relNew.close()
                else:
                    relArcPaths.append(fullPath)

                
    
    arcHeader = HEADER()
    arcHeader.RARC = 0x52415243
    arcHeader.headerLength = 0x20
    arcHeader.unk1 = 0
    arcHeader.unk2 = 0
    infoBlock = INFO()
    infoBlock.numNodes = 3
    infoBlock.numDirsThatAreFiles = 142
    rootNode = NODE()
    rootNode.NAME = 0x524F4F54
    rootNode.numDirs = 4
    rootNode.firstDirIndex = 0
    rootNode.hash = computeHash("rels")
    aMemNode = NODE()
    aMemNode.NAME = 0x414d454d
    aMemNode.hash = computeHash("amem")
    aMemNode.numDirs = 79
    aMemNode.firstDirIndex = 4
    mMemNode = NODE()
    mMemNode.hash = computeHash("mmem")
    mMemNode.NAME = 0x4d4d454d
    mMemNode.numDirs = 59
    mMemNode.firstDirIndex = 83

    stringTable = ".\0..\0rels\0amem\0"
    for rel in aMemList:
        stringTable = stringTable+rel+'\0'
    stringTable = stringTable+"mmem\0"
    for rel in mMemList:
        stringTable = stringTable+rel+'\0'
    stringTable = stringTable+"\0\0\0\0\0\0"
    
    rootNode.stringTableOffset = stringTable.find("rels")
    aMemNode.stringTableOffset = stringTable.find("amem")
    mMemNode.stringTableOffset = stringTable.find("mmem")

    aMemDir = DIRECTORY()
    aMemDir.dirIndex = 0xFFFF
    aMemDir.type = 0x200
    aMemDir.stringOffset = stringTable.find("amem")
    aMemDir.stringHash = computeHash("amem")
    aMemDir.fileOffset = 1
    aMemDir.fileLength = 0x10
    aMemDir.unk1 = 0

    mMemDir = DIRECTORY()
    mMemDir.dirIndex = 0xFFFF
    mMemDir.type = 0x200
    mMemDir.stringOffset = stringTable.find("mmem")
    mMemDir.stringHash = computeHash("mmem")
    mMemDir.fileOffset = 2
    mMemDir.fileLength = 0x10
    mMemDir.unk1 = 0

    unkDir = DIRECTORY()
    unkDir.dirIndex = 0xFFFF
    unkDir.stringHash = 0x2E
    unkDir.type = 0x200
    unkDir.stringOffset = 0
    unkDir.fileOffset = 0
    unkDir.fileLength = 0x10
    unkDir.unk1 = 0

    unkDir2 = DIRECTORY()
    unkDir2.dirIndex = 0xFFFF
    unkDir2.stringHash = 0xB8
    unkDir2.type = 0x200
    unkDir2.stringOffset = 2
    unkDir2.fileOffset = 0xFFFFFFFF
    unkDir2.fileLength = 0x10
    unkDir2.unk1 = 0

    dirs = [aMemDir,mMemDir,unkDir,unkDir2]

    data = bytearray()

    dirIndex = 4
    sizeIndex = 0
    for rel in aMemList:
        retdirs,retdata,retSize = addFile(dirIndex,sizeIndex,dirs,rel,stringTable,relArcPaths,data)
        dirIndex = dirIndex+1
        sizeIndex = retSize
        dirs = retdirs
        data = retdata
    dirs.append(unkDir)
    dirs.append(unkDir2)
    dirIndex = dirIndex+2
    for rel in mMemList:
        retdirs,retdata,retSize = addFile(dirIndex,sizeIndex,dirs,rel,stringTable,relArcPaths,data)
        dirIndex = dirIndex+1
        sizeIndex = retSize
        #print(hex(dirIndex))
        dirs = retdirs
        data = retdata
    unkDir3 = DIRECTORY()
    unkDir3.dirIndex = 0xFFFF
    unkDir3.stringHash = 0x2E
    unkDir3.type = 0x200
    unkDir3.stringOffset = 0
    unkDir3.fileOffset = 2
    unkDir3.fileLength = 0x10
    unkDir3.unk1 = 0

    unkDir4 = DIRECTORY()
    unkDir4.dirIndex = 0xFFFF
    unkDir4.stringHash = 0xB8
    unkDir4.type = 0x200
    unkDir4.stringOffset = 2
    unkDir4.fileOffset = 0
    unkDir4.fileLength = 0x10
    unkDir4.unk1 = 0
    dirs.append(unkDir3)
    dirs.append(unkDir4)
    dirIndex = dirIndex+2

    arcHeader.length = len(stringTable)+0x20+0x20+0x30+(len(dirs)*0x14)+len(data)
    arcHeader.fileDataOffset=0x14E0
    arcHeader.fileDataLen=len(data)
    arcHeader.fileDataLen2=arcHeader.fileDataLen

    infoBlock.firstNodeOffset = 0x20
    infoBlock.firstDirOffset = 0x60
    infoBlock.stringTableLen = len(stringTable)
    infoBlock.stringTableOffset = 0xB80
    infoBlock.unk1 = 0x100
    infoBlock.unk2 = 0
    infoBlock.totalDirNum = 0x8E

    
    outputArcFile = open(buildPath/"game/files/RELS.arc","wb")
    outputArcFile.seek(0)

    outputArcFile.write(struct.pack(">IIIIIIII",arcHeader.RARC,arcHeader.length,arcHeader.headerLength,arcHeader.fileDataOffset,arcHeader.fileDataLen,arcHeader.unk1,arcHeader.fileDataLen2,arcHeader.unk2))
    outputArcFile.write(struct.pack(">IIIIIIHHI",infoBlock.numNodes,infoBlock.firstNodeOffset,infoBlock.totalDirNum,infoBlock.firstDirOffset,infoBlock.stringTableLen,infoBlock.stringTableOffset,infoBlock.numDirsThatAreFiles,infoBlock.unk1,infoBlock.unk2))
    outputArcFile.write(struct.pack(">IIHHI",rootNode.NAME,rootNode.stringTableOffset,rootNode.hash,rootNode.numDirs,rootNode.firstDirIndex))
    outputArcFile.write(struct.pack(">IIHHI",aMemNode.NAME,aMemNode.stringTableOffset,aMemNode.hash,aMemNode.numDirs,aMemNode.firstDirIndex))
    outputArcFile.write(struct.pack(">IIHHI",mMemNode.NAME,mMemNode.stringTableOffset,mMemNode.hash,mMemNode.numDirs,mMemNode.firstDirIndex))
    outputArcFile.write(bytearray(16))
    for dir in dirs:
        outputArcFile.write(struct.pack(">HHHHIII",dir.dirIndex,dir.stringHash,dir.type,dir.stringOffset,dir.fileOffset,dir.fileLength,dir.unk1))
    outputArcFile.write(bytearray(8))
    strBytearray = bytearray()
    strBytearray.extend(map(ord,stringTable))
    outputArcFile.write(strBytearray)
    outputArcFile.write(data)

    outputArcFile.truncate()
    outputArcFile.close()

    



    





    

def main(gamePath,buildPath):
    if not gamePath.exists():
        gamePath.mkdir(parents=True, exist_ok=True)
    
    iso = Path("gz2e01.iso")
    if not iso.exists() or not iso.is_file():
        print("gz2e01.iso doesn't exist in project directory!")
        sys.exit(1)
    
    if not (gamePath/"files").exists() or not (gamePath/"sys").exists():
        print("ISO is not extracted; extracting...")
        previousDir = os.getcwd()
        os.chdir(str(gamePath.absolute()))
        extract_game_assets.extract("../" + str(iso))
        os.chdir(previousDir)

    print("Copying game files...")
    copy(gamePath,buildPath.absolute())

    print(str(buildPath/"main_shift.dol")+" -> "+str(buildPath/"game/sys/main.dol"))
    shutil.copyfile(buildPath/"main_shift.dol",buildPath/"game/sys/main.dol")
    
    copyRelFiles(buildPath,aMemRels.splitlines(),mMemRels.splitlines())


    

if __name__ == "__main__":
    main(Path(sys.argv[1]),Path(sys.argv[2]))