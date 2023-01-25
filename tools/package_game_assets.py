import os
import sys
import shutil
import extract_game_assets
from pathlib import Path
import libyaz0
import libarc
import threading


def getMaxDateFromDir(path):
    maxTime = 0
    for root, dirs, files in os.walk(str(path)):
        for file in files:
            time = os.path.getmtime(Path(root + "/" + file))
            if time > maxTime:
                maxTime = time
    return maxTime


convertDefinitions = [
    {
        "sourceExtension": ".arc",
        "destExtension": ".arc",
        "convertFunction": libarc.convert_dir_to_arc,
        "exceptions": ["game/files/res/Object/HomeBtn.c.arc/archive/dat/speakerse.arc"],
    }
]


def convertEntry(file, path, destPath, returnData):
    split = os.path.splitext(file)
    mustBeCompressed = False
    destFileName = file
    if split[0].split(".")[-1] == "c":
        destFileName = split[0][0:-2] + split[-1]
        mustBeCompressed = True
    sourceExtension = split[-1]
    data = None

    extractDef = None
    for extractData in convertDefinitions:
        if sourceExtension == extractData["sourceExtension"]:
            extractDef = extractData
            if extractData["exceptions"] != None:
                for exception in extractData["exceptions"]:
                    if str(path / file) == exception:
                        extractDef = None
            break

    if extractDef != None:
        destFileName = os.path.splitext(destFileName)[0] + extractDef["destExtension"]

    targetTime = 0
    if destPath != None and os.path.exists(destPath / destFileName):
        targetTime = os.path.getmtime(destPath / destFileName)
    sourceTime = 0
    if targetTime != 0:
        if os.path.isdir(path / file):
            sourceTime = getMaxDateFromDir(path / file)
        else:
            sourceTime = os.path.getmtime(path / file)
    if returnData == False and sourceTime < targetTime:
        return destFileName

    if extractDef != None:
        data = extractDef["convertFunction"](path / file, convertEntry)

    if mustBeCompressed == True:
        if data == None:
            data = open(path / file, "rb").read()
        data = libyaz0.compress(data)
    if returnData == True:
        if data == None and returnData == True:
            data = open(path / file, "rb").read()
        return destFileName, data
    else:
        print(str(path / file) + " -> " + str(destPath / destFileName))
        if data != None:
            open(destPath / destFileName, "wb").write(data)
        else:
            shutil.copy(path / file, destPath / destFileName)
        return destFileName

def copy(path, destPath):
    for file in os.listdir(path):
        split = os.path.splitext(file)
        if len(split[1]) == 0 and os.path.isdir(path / file):
            # is a standard directory
            if not Path(destPath / file).exists():
                os.mkdir(destPath / file)
            copy(path / file, destPath / file)
        else:
            # either a file or directory that needs to be converted
            convertEntry(file, path, destPath, False)


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


def copyRelFiles(gamePath, buildPath, aMemList, mMemList):
    relArcPaths = []
    for root, dirs, files in os.walk(str(buildPath / "dolzel2/rel")):
        for file in files:
            if file.find(".rel") != -1:
                relArcFound = False
                for rel in aMemList:
                    if rel == file:
                        relArcFound = True
                for rel in mMemList:
                    if rel == file:
                        relArcFound = True
                fullPath = Path(root + "/" + file)
                if relArcFound == False:
                    print(
                        str(fullPath)
                        + " -> "
                        + str(buildPath / "dolzel2/game/files/rel/Final/Release" / file)
                    )
                    relSource = open(fullPath, "rb")
                    data = relSource.read()
                    relSource.close()
                    data = libyaz0.compress(data)
                    relNew = open(
                        buildPath / "dolzel2/game/files/rel/Final/Release" / file, "wb"
                    )
                    relNew.write(data)
                    relNew.truncate()
                    relNew.close()
                else:
                    relArcPaths.append(fullPath)

    if os.path.exists(buildPath / "RELS.arc") == False:
        os.mkdir(buildPath / "RELS.arc")
        os.mkdir(buildPath / "RELS.arc/rels")
        os.mkdir(buildPath / "RELS.arc/rels/mmem")
        os.mkdir(buildPath / "RELS.arc/rels/amem")

    filesTxtData = (
        "Folder:rels/amem/\nFolder:rels/mmem/\nFolder:rels/./\nFolder:rels/../\n"
    )
    for i, rel in enumerate(aMemRels.splitlines()):
        filesTxtData = filesTxtData + str(i + 4) + ":rels/amem/" + rel + ":0xa500\n"
    filesTxtData = filesTxtData + "Folder:rels/amem/./\nFolder:rels/amem/../\n"
    for i, rel in enumerate(mMemRels.splitlines()):
        filesTxtData = filesTxtData + str(i + 83) + ":rels/mmem/" + rel + ":0xa500\n"
    filesTxtData = filesTxtData + "Folder:rels/mmem/./\nFolder:rels/mmem/../\n"
    open(buildPath / "RELS.arc/_files.txt", "w").write(filesTxtData)
    for rel in relArcPaths:
        for rel2 in aMemRels.splitlines():
            if str(rel).find(rel2) != -1:
                sourceRel = open(rel, "rb").read()
                open(buildPath / "RELS.arc/rels/amem/" / rel2, "wb").write(
                    libyaz0.compress(sourceRel)
                )
                break
        for rel2 in mMemRels.splitlines():
            if str(rel).find(rel2) != -1:
                sourceRel = open(rel, "rb").read()
                open(buildPath / "RELS.arc/rels/mmem/" / rel2, "wb").write(
                    libyaz0.compress(sourceRel)
                )
                break

    print("Creating RELS.arc")
    open(buildPath / "dolzel2/game/files/RELS.arc", "wb").write(
        libarc.convert_dir_to_arc(buildPath / "RELS.arc", convertEntry)
    )


def main(gamePath, buildPath, copyCode):
    if not gamePath.exists():
        gamePath.mkdir(parents=True, exist_ok=True)

    iso = Path("gz2e01.iso")
    if not iso.exists() or not iso.is_file():
        print("gz2e01.iso doesn't exist in project directory!")
        sys.exit(1)

    if not (gamePath / "files").exists() or not (gamePath / "sys").exists():
        print("ISO is not extracted; extracting...")
        previousDir = os.getcwd()
        os.chdir(str(gamePath.absolute()))
        extract_game_assets.extract("../" + str(iso))
        os.chdir(previousDir)

    print("Copying game files...")
    if os.path.exists(buildPath / "dolzel2") == False:
        os.mkdir(buildPath / "dolzel2")
    if os.path.exists(buildPath / "dolzel2" / "game") == False:
        os.mkdir(buildPath / "dolzel2/game")
    copy(gamePath, Path(buildPath / "dolzel2/game").absolute())

    if copyCode != "noCopyCode":
        print(
            str(buildPath / "dolzel2/main_shift.dol")
            + " -> "
            + str(buildPath / "dolzel2/game/sys/main.dol")
        )
        shutil.copyfile(
            buildPath / "dolzel2/main_shift.dol",
            buildPath / "dolzel2/game/sys/main.dol",
        )

        copyRelFiles(gamePath, buildPath, aMemRels.splitlines(), mMemRels.splitlines())


if __name__ == "__main__":
    pass
    main(Path(sys.argv[1]), Path(sys.argv[2]), sys.argv[3])
