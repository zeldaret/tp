//
// Door Shutter
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_door_shutter.h"
#include "d/actor/d_a_obj_Lv5Key.h"
#include "d/actor/d_a_obj_keyhole.h"
#include "d/actor/d_a_midna.h"
#include "d/d_door_param2.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_msg_object.h"
#include "d/d_map_path_dmap.h"
#include "SSystem/SComponent/c_math.h"
#include "printf.h"

/* 80460B38-80460B70 000078 0038+00 1/1 0/0 0/0 .text            getStopBmdName__10daDoor20_cFv */
char* daDoor20_c::getStopBmdName() {
    switch (door_param2_c::getKind(this)) {
        case 3:
        case 11:
        default:
            return "door-stop.bmd";
    }
}

/* 80460B70-80460B94 0000B0 0024+00 1/1 0/0 0/0 .text            getStopModelData__10daDoor20_cFv */
J3DModelData* daDoor20_c::getStopModelData() {
    return (J3DModelData*)dComIfG_getStageRes(getStopBmdName());
}

/* 80460B94-80460BA4 0000D4 0010+00 4/4 0/0 0/0 .text            getAlwaysArcName__10daDoor20_cFv */
char* daDoor20_c::getAlwaysArcName() {
    return "static";
}

/* 80460BA4-80460C40 0000E4 009C+00 9/8 0/0 0/0 .text            getArcName__10daDoor20_cFv */
char* daDoor20_c::getArcName() {
    switch (door_param2_c::getKind(this)) {
    default:
        return "DoorT00";
    case 1:
        return "DoorY00";
    case 9:
        return "DoorK00";
    case 2:
        return "DoorLV8";
    case 12:
        return "DoorLV7";
    case 10:
        return "DoorLV9";
    }
}

/* 80467340-80467360 000000 0020+00 1/1 0/0 0/0 .bss             bmdName$3984 */
static char bmdName[32];

/* 80460C40-80460CF0 000180 00B0+00 1/1 0/0 0/0 .text            getBmdName__10daDoor20_cFv */
char* daDoor20_c::getBmdName() {
    switch(door_param2_c::getKind(this)) {
    case 0:
    case 1:
    case 2:
    case 10:
    case 12:
    default:
        sprintf(bmdName, "door-shutter_%02d.bmd", door_param2_c::getDoorModel(this));
        break;
    case 9:
        sprintf(bmdName, "door-knob_%02d.bmd", door_param2_c::getDoorModel(this));
        break;
    }
    return bmdName;
}

/* 80460CF0-80460D00 000230 0010+00 1/1 0/0 0/0 .text            getBtk__10daDoor20_cFv */
char* daDoor20_c::getBtk() {
    return "door-shutter_00.btk";
}

/* 80460D00-80460D5C 000240 005C+00 1/0 0/0 0/0 .text            getDzbName__10daDoor20_cFv */
char* daDoor20_c::getDzbName() {
    switch(door_param2_c::getKind(this)) {
    case 0:
    case 1:
    case 2:
    case 9:
    case 12:
    default:
        return "door-shutter.dzb";
    case 10:
        return "door-shutterlv9.dzb";
    }
}

/* 80460D5C-80460D80 00029C 0024+00 1/1 0/0 0/0 .text            getModelData__10daDoor20_cFv */
J3DModelData* daDoor20_c::getModelData() {
    return (J3DModelData*)dComIfG_getStageRes(getBmdName());
}

/* 80460D80-80460D8C 0002C0 000C+00 1/1 0/0 0/0 .text            getSize2X__10daDoor20_cFv */
f32 daDoor20_c::getSize2X() {
    return 12100.0f;
}

/* 80460D8C-80460DAC 0002CC 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daDoor20_c*>(i_this)->CreateHeap();
}

/* 80460DAC-80461254 0002EC 04A8+00 2/1 0/0 0/0 .text            CreateHeap__10daDoor20_cFv */
int daDoor20_c::CreateHeap() {
    int kind = door_param2_c::getKind(this);
    J3DModelData* modelData = getModelData();
    JUT_ASSERT(355, modelData != 0);
    int dListFlag = 0x11000084;
    if (kind == 2) {
        dListFlag |= 0x200;
    }
    mModel1 = mDoExt_J3DModel__create(modelData, 0x80000, dListFlag);
    if (mModel1 == NULL) {
        return 0;
    }
    J3DAnmTransform* anm;
    if (kind == 9) {

        if (!field_0x584.init((J3DAnmTransform*)dComIfG_getObjectRes(getAlwaysArcName(), "FDoorA.bck"), 1, 0, 1.0f, 0, -1, false)) {
            return 0;
        }
        field_0x584.entry(mModel1->getModelData());
        mModel1->calc();
        mModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (mModel2 == NULL) {
            return 0;
        }
        J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(getAlwaysArcName(), "FDoorA.bck");
        JUT_ASSERT(394, anm != 0);
        if (!field_0x5a0.init(anm, 1, 0, 1.0f, 0, -1, false)) {
            return 0;
        }
        field_0x5a0.entry(mModel1->getModelData());
        mModel2->calc();
    } else {

        switch (kind) {
        case 0:
        case 3:
        case 4:
        case 5:
        case 11:
        case 12:
        default:
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpD.bck");
            break;
        case 1:
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpC.bck");
            break;
        case 2:
            J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getStageRes(getBtk());
            JUT_ASSERT(421, pbtk != 0);
            field_0x5c0 = new mDoExt_btkAnm();
            if (field_0x5c0 == NULL || !field_0x5c0->init(mModel1->getModelData(), pbtk, 1, 0, 1.0f, 0, -1)) {
                return 0;
            }
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpD.bck");
            break;
        case 10:
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpF.bck");
            break;
        }
        JUT_ASSERT(375, anm != 0);
        if (field_0x584.init(anm, 1, 0, 1.0f, 0, -1, false) == 0) {
            return 0;
        }
        field_0x584.entry(mModel1->getModelData());
        mModel1->calc();
    }
    if (chkMakeStop() && !mDoorStop.create(this)) {
        return 0;
    }
    calcMtx();
    mDoorStop.calcMtx(this);
    mDoMtx_stack_c::transS(home.pos);
    mDoMtx_stack_c::YrotM(home.angle.y);
    if (kind == 9) {
        mDoMtx_stack_c::scaleM(1.0f, 1.4f, 1.0f);
    }
    MTXCopy(mDoMtx_stack_c::get(), field_0x5f4);
    field_0x5c4 = new dBgW();
    if (field_0x5c4 == 0 || field_0x5c4->Set((cBgD_t*)dComIfG_getObjectRes(getAlwaysArcName(), getDzbName()), 1, &field_0x5f4)) {
            return 0;
    }
    return 1;
}

/* 8046129C-804616EC 0007DC 0450+00 1/1 0/0 0/0 .text            setEventPrm__10daDoor20_cFv */
void daDoor20_c::setEventPrm() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    setStop();
    int FRoomNo = door_param2_c::getFRoomNo(this);
    int BRoomNo = door_param2_c::getBRoomNo(this);
    u32 roomNo;
    if (FRoomNo == dComIfGp_roomControl_getStayNo()) {
        roomNo = BRoomNo;
    } else {
        roomNo = FRoomNo;
    }
    if (dComIfGp_roomControl_checkStatusFlag(roomNo, 1)) {
        if (door_param2_c::getKind(this) == 9) {
            if (daPy_py_c::checkNowWolf()) {
                return;
            }
            int iStack_48;
            if (checkOpenMsgDoor(&iStack_48) == 0) {
                field_0x6cb = 18;
            } else {
                cXyz local_38 = player->current.pos - current.pos;
                mDoMtx_stack_c::YrotS(-home.angle.y);
                mDoMtx_stack_c::multVec(&local_38, &local_38);
                if (field_0x68c == 0) {
                    if (local_38.x > 0.0f) {
                        field_0x6cb = 13;
                    } else {
                        field_0x6cb = 12;
                    }
                    if (mDoorStop.field_0xa == 0xff) {
                        mDoorStop.field_0xa = chkStopB();
                    }
                } else {
                    if (local_38.x > 0.0f) {
                        field_0x6cb = 12;
                    } else {
                        field_0x6cb = 13;
                    }
                    if (mDoorStop.field_0xa == 0xff) {
                        mDoorStop.field_0xa = chkStopF();
                    }
                }
            }
        } else {
            if (daPy_py_c::checkNowWolf()) {
                if (!player->checkMidnaRide() || !daMidna_c::checkMidnaRealBody()) {
                    return;
                }
            }
            if (field_0x68c == 0) {
                field_0x6cb = 4;
                if (mDoorStop.field_0xa == 0xff) {
                    mDoorStop.field_0xa = chkStopB();
                }
            } else {
                field_0x6cb = 5;
                if (mDoorStop.field_0xa == 0xff) {
                    mDoorStop.field_0xa = chkStopF();
                }
            }
        }
        if (mDoorStop.field_0x8 == 0) {
            if (mDoorStop.field_0xa == 1) {
                field_0x6cb += 2;
            }
            if (chkMakeKey()) {
                if (field_0x5f0) {
                    if (daPy_py_c::checkNowWolf()) {
                        if (dComIfGs_getKeyNum() == 0) {
                            return;
                        }
                    } else if (dComIfGs_getKeyNum() == 0) {
                        if (door_param2_c::getKind(this) == 9 && field_0x673 != 0) {
                            cXyz local_44 = player->current.pos - current.pos;
                            mDoMtx_stack_c::YrotS(-home.angle.y);
                            mDoMtx_stack_c::multVec(&local_44, &local_44);
                            if (field_0x68c == 0) {
                                if (local_44.x > 0.0f) {
                                    field_0x6cb = 17;
                                } else {
                                    field_0x6cb = 16;
                                }
                            } else if (local_44.x > 0.0f) {
                                field_0x6cb = 16;
                            } else {
                                field_0x6cb = 17;
                            }
                        } else {
                            return;
                        }
                    }
                }
            } else {
                int swBit;
                if (field_0x68c == 0) {
                    swBit = door_param2_c::getSwbit(this);
                } else {
                    swBit = door_param2_c::getSwbit2(this);
                }
                if (swBit != 0xff && !dComIfGs_isSwitch(swBit, 0xffffffff)) {
                    return;
                }
            }
            if (checkArea(getSize2X(), 12100.0f, 62500.0f)) {
                eventInfo.setEventId(field_0x692[field_0x6cb]);
                eventInfo.setMapToolId(field_0x6b8[field_0x6cb]);
                eventInfo.onCondition(4);
            }
        }
    }
}

/* 804616EC-8046178C 000C2C 00A0+00 1/1 0/0 0/0 .text            checkOpenMsgDoor__10daDoor20_cFPi
 */
int daDoor20_c::checkOpenMsgDoor(int* param_1) {
    if (!door_param2_c::isMsgDoor(this)) {
        return 1;
    }
    int msgNo = door_param2_c::getMsgNo(this);
    if (msgNo == 0xffff) {
        *param_1 = 0;
        return 1;
    }
    field_0x624.init(NULL, msgNo, NULL, NULL);
    int rv = field_0x624.checkOpenDoor(this, param_1);
    dMsgObject_endFlowGroup();
    return rv;
}

/* 8046178C-80461874 000CCC 00E8+00 1/1 0/0 0/0 .text            adjustmentAngle__10daDoor20_cFv */
int daDoor20_c::adjustmentAngle() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz playerPos;
    playerPos = player->current.pos;
    s16 angle = player->shape_angle.y;
    cLib_addCalcAngleS2(&angle, shape_angle.y + 0x7fff, 5,
                                     3000);
    if (field_0x6dc > 0) {
        player->setPlayerPosAndAngle(&playerPos, angle, 0);
        field_0x6dc--;
    } else {
        player->setPlayerPosAndAngle(&playerPos, shape_angle.y + 0x7fff, 0);
        return 1;
    }
    return 0;
}

/* 80461874-80461A44 000DB4 01D0+00 1/1 0/0 0/0 .text            adjustmentProc__10daDoor20_cFv */
int daDoor20_c::adjustmentProc() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz local_2c;
    cXyz local_38;
    local_38 = player->current.pos;
    s16 angle = shape_angle.y + 0x7fff;
    local_38 = player->current.pos;
    local_2c.z = 0.0f;
    local_2c.y = 0.0f;
    if (field_0x6cb == 12 || field_0x6cb == 14 || field_0x6cb == 16) {
        local_2c.x = 75.0f;
    } else {
        local_2c.x = -75.0f;
    }
    s16 sVar3 = home.angle.y;
    if (field_0x68c == 0) {
        sVar3 += 0x7fff;
    }
    mDoMtx_stack_c::YrotS(sVar3);
    mDoMtx_stack_c::multVec(&local_2c, &local_2c);
    local_2c += current.pos;
    local_2c.x += cM_ssin(angle) * -70.0f;
    local_2c.z += cM_scos(angle) * -65.0f;
    if (field_0x6dc > 0) {
        local_38.x = local_38.x * 0.8f + local_2c.x * 0.2f;
        local_38.z = local_38.z * 0.8f + local_2c.z * 0.2f;
        player->setPlayerPosAndAngle(&local_38, player->current.angle.y, 0);
        field_0x6dc--;
    } else {
        player->setPlayerPosAndAngle(&local_2c, player->current.angle.y, 0);
        return 1;
    }
    return 0;
}

/* 80461A44-80461A60 000F84 001C+00 1/1 0/0 0/0 .text            setAngle__10daDoor20_cFv */
void daDoor20_c::setAngle() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    player->changeDemoMoveAngle(shape_angle.y + 0x7fff);
}

/* 8046684C-80466858 00002C 000A+02 0/1 0/0 0/0 .rodata          l_eff_id_lv3$4376 */
static u16 const l_eff_id_lv3[5] = {
    0x8762,
    0x8763,
    0x8764,
    0x8765,
    0x8766,
};

/* 80466858-80466864 000038 000A+02 0/1 0/0 0/0 .rodata          l_eff_id_lv4$4377 */
static u16 const l_eff_id_lv4[5] = {
    0x8AEB,
    0x8AEC,
    0x8AED,
    0x8AEE,
    0x8AEF,
};

/* 80461A60-80461D24 000FA0 02C4+00 1/1 0/0 0/0 .text            openInit_0__10daDoor20_cFv */
void daDoor20_c::openInit_0() {
    J3DAnmTransform* anm;
    if (daPy_py_c::checkNowWolf()) {
        if (door_param2_c::getKind(this) == 10) {
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "md_oj_DoorOpF.bck");
        } else {
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "md_oj_DoorOpD.bck");
        }
    } else {
        if (door_param2_c::getKind(this) == 10) {
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpF.bck");
        } else {
            anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpD.bck");
        }
    }
    JUT_ASSERT(832, anm != 0);
    int rt = field_0x584.init(anm, 1, 0, 1.0f, 0, -1, true);
    JUT_ASSERT(835, rt == 0);
    daPy_py_c* player = daPy_getPlayerActorClass();
    field_0x584.setPlaySpeed(player->getBaseAnimeFrameRate());
    u8 bVar5 = door_param2_c::getSwbit3(this);
    if (bVar5 != 0xff && !fopAcM_isSwitch(this, bVar5)) {
        csXyz acStack_2c(0, field_0x670, 0);
        for (u32 i = 0; i < 5; i++) {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN10") == 0) {
                dComIfGp_particle_set(l_eff_id_lv4[i], &current.pos, &acStack_2c, NULL, 0xff, NULL,
                                      fopAcM_GetRoomNo(this), NULL, NULL, NULL);
            } else {
                dComIfGp_particle_set(l_eff_id_lv3[i], &current.pos, &acStack_2c, NULL, 0xff, NULL,
                                      fopAcM_GetRoomNo(this), NULL, NULL, NULL);
            }
        }
        fopAcM_onSwitch(this, bVar5);
        field_0x672 = true;
    } else {
        field_0x672 = false;
    }
}

/* 80461D24-80461EC4 001264 01A0+00 1/1 0/0 0/0 .text            openInit_1__10daDoor20_cFv */
void daDoor20_c::openInit_1() {
    J3DAnmTransform* anm;
    if (daPy_py_c::checkNowWolf()) {
        anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "md_oj_DoorOpC.bck");
    } else {
        anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorOpC.bck");
    }
    JUT_ASSERT(915, anm != 0);
    int rt = field_0x584.init(anm, 1, 0, 1.0f, 0, -1, true);
    JUT_ASSERT(918, rt == 0);
    u8 bVar5 = door_param2_c::getSwbit3(this);
    if (bVar5 != 0xff && !fopAcM_isSwitch(this, bVar5)) {
        static u16 const l_eff_id[2] = {0x8295, 0x8296};
        for (int i = 0; i < 2; i++) {
            dComIfGp_particle_set(l_eff_id[i], &current.pos, &shape_angle, NULL, 0xff, NULL,
                                  fopAcM_GetRoomNo(this), NULL, NULL, NULL);
        }
        fopAcM_onSwitch(this, bVar5);
        field_0x672 = true;
    } else {
        field_0x672 = false;
    }
}

/* 80461EC4-80461F60 001404 009C+00 2/1 0/0 0/0 .text            openInit__10daDoor20_cFi */
int daDoor20_c::openInit(int param_1) {
    openInitCom(1);
    dMapInfo_c::setNextRoomNoForMapPat0(field_0x67f);
    onFlag(1);
    dComIfG_Bgsp().Release(field_0x5c4);
    switch (door_param2_c::getKind(this)) {
    case 0:
    case 3:
    case 4:
    case 9:
    case 11:
    case 12:
    default:
        openInit_0();
        break;
    case 1:
        openInit_1();
        break;
    }
    return 1;
}

/* 80461F60-804622A8 0014A0 0348+00 2/1 0/0 0/0 .text            openProc__10daDoor20_cFi */
int daDoor20_c::openProc(int param_1) {
    u32 sfx;
    f32 frame = field_0x584.getFrame();
    int rv = field_0x584.play();
    switch (door_param2_c::getKind(this)) {
    case 1:
        if (field_0x584.getFrame() == 17.0f) {
            dComIfGp_getVibration().StartShock(4, 15, cXyz(0.0f, 1.0f, 0.0f));
        } else {
            if (field_0x584.getFrame() == 18.0f) {
                if (daPy_py_c::checkNowWolf()) {
                    u32 mdnfx;
                    if (field_0x672) {
                        mdnfx = Z2SE_OBJ_WOOD_DR_OP_MDN_FX;
                    } else {
                        mdnfx = Z2SE_OBJ_WOOD_DR_OP_MDN;
                    }
                    sfx = mdnfx;
                } else {
                    sfx =
                        field_0x672 ? Z2SE_OBJ_WOOD_DOOR_ROLLOPEN : Z2SE_OBJ_WOOD_DOOR_ROLLOPEN2;
                }
                mDoAud_seStart(sfx, &field_0x5e0, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            }
        }
        break;
    case 0:
    case 3:
    case 4:
    case 9:
    case 11:
    case 12:
    default:
        if ((door_param2_c::getKind(this) == 0 || door_param2_c::getKind(this) == 10) &&
            field_0x584.getFrame() == 17.0f)
        {
            dComIfGp_getVibration().StartShock(4, 15, cXyz(0.0f, 1.0f, 0.0f));
        }
        if (daPy_py_c::checkNowWolf()) {
            if (field_0x584.getFrame() == 20.0f) {
                if (door_param2_c::getKind(this) == 2) {
                    sfx = Z2SE_OBJ_L8_SHTR_OP;
                } else {
                    if (door_param2_c::getKind(this) == 10) {
                        sfx = Z2SE_OBJ_LV9_SHTR_OP;
                    } else {
                        sfx = field_0x672 ? Z2SE_OBJ_LV3_SHTR_OP_FX : Z2SE_OBJ_LV3_SHTR_OP_MDN;
                    }
                }
                fopAcM_seStart(this, sfx, 0);
            }
        } else {
            if (field_0x584.getFrame() == 20.0f || (frame < 20.0f && field_0x584.getFrame() >= 20.0f))
            {
                if (door_param2_c::getKind(this) == 2) {
                    sfx = Z2SE_OBJ_L8_SHTR_OP;
                } else {
                    if (door_param2_c::getKind(this) == 10) {
                        sfx = Z2SE_OBJ_LV9_SHTR_OP;
                    } else {
                        sfx = field_0x672 ? Z2SE_OBJ_LV3_SHTR_OP_FX : Z2SE_OBJ_LV3_SHTR_OP;
                    }
                }
                fopAcM_seStart(this, sfx, 0);
            }
        }
        break;
    }
    return rv;
}

/* 804622A8-804622AC 0017E8 0004+00 1/1 0/0 0/0 .text            openEnd_0__10daDoor20_cFv */
void daDoor20_c::openEnd_0() {
}

/* 804622AC-80462328 0017EC 007C+00 1/1 0/0 0/0 .text            openEnd_1__10daDoor20_cFv */
void daDoor20_c::openEnd_1() {
    mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_OPEN_STOP, &field_0x5e0, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80462328-80462398 001868 0070+00 2/1 0/0 0/0 .text            openEnd__10daDoor20_cFi */
int daDoor20_c::openEnd(int param_1) {
    offFlag(1);
    switch (door_param2_c::getKind(this)) {
    case 0:
    case 3:
    case 4:
    case 9:
    case 11:
    case 12:
    default:
        openEnd_0();
        break;
    case 1:
        openEnd_1();
        break;
    }
    return 1;
}

/* 80462398-8046266C 0018D8 02D4+00 1/1 0/0 0/0 .text            closeInit_0__10daDoor20_cFv */
void daDoor20_c::closeInit_0() {
    J3DAnmTransform* anm;
    if (door_param2_c::getKind(this) == 10) {
        anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorCloseF.bck");
    } else {
        anm = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorCloseD.bck");
    }
    JUT_ASSERT(1178, anm != 0);
    int rt = field_0x584.init(anm, 1, 0, 1.0f, 0, -1, true);
    JUT_ASSERT(1181, rt == 0);
    cXyz acStack_40(home.pos.x, home.pos.y + 200.0f, home.pos.z);
    bool waterCheck = fopAcM_wt_c::waterCheck(&acStack_40);
    fopAcM_gc_c::gndCheck(&acStack_40);
    if (waterCheck != 0 && fopAcM_wt_c::getWaterY() > fopAcM_gc_c::getGroundY()) {
        fopAcM_seStart(this, Z2SE_OBJ_LV3_SHTR_CL_WTR, 0);
    } else {
        if (door_param2_c::getKind(this) == 2) {
            fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CL, 0);
        } else {
            if (door_param2_c::getKind(this) == 10) {
                fopAcM_seStart(this, Z2SE_OBJ_LV9_SHTR_CL, 0);
            } else {
                fopAcM_seStart(this, Z2SE_OBJ_LV3_SHTR_CL, 0);
            }
        }
    }
    if (door_param2_c::getKind(this) != 10) {
        dComIfGp_particle_setPolyColor(0x8c50, field_0x6de.m_gnd, &current.pos, &tevStr,
                                                  &shape_angle, NULL, 0, NULL, dComIfGp_roomControl_getStayNo(), 0);
    }
}

/* 8046266C-80462738 001BAC 00CC+00 1/1 0/0 0/0 .text            closeInit_1__10daDoor20_cFv */
void daDoor20_c::closeInit_1() {
    J3DAnmTransform* anm =
        (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "oj_DoorCloseC.bck");
    JUT_ASSERT(1236, anm != 0);
    int rt = field_0x584.init(anm, 1, 0, 1.0f, 0, -1, true);
    JUT_ASSERT(1239, rt == 0);
    mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_ROLLCLOSE, &current.pos, 0,
                   dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80462738-804627C4 001C78 008C+00 1/1 0/0 0/0 .text            closeInit__10daDoor20_cFi */
int daDoor20_c::closeInit(int param_1) {
    onFlag(2);
    int rt = dComIfG_Bgsp().Regist(field_0x5c4, this);
    JUT_ASSERT(1264, !rt);
    switch(door_param2_c::getKind(this)) {
    case 0:
    case 2:
    case 10:
    default:
        closeInit_0();
        break;
    case 1:
        closeInit_1();
        break;
    }
    return 1;
}

/* 804627C4-804627E8 001D04 0024+00 1/1 0/0 0/0 .text            closeProc__10daDoor20_cFi */
int daDoor20_c::closeProc(int param_0) {
    return field_0x584.play();
}

/* 804627E8-804627EC 001D28 0004+00 1/1 0/0 0/0 .text            closeEnd_0__10daDoor20_cFv */
void daDoor20_c::closeEnd_0() {
}

/* 804627EC-80462868 001D2C 007C+00 1/1 0/0 0/0 .text            closeEnd_1__10daDoor20_cFv */
void daDoor20_c::closeEnd_1() {
    mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_CLOSE_STOP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
}

/* 80462868-80462928 001DA8 00C0+00 2/1 0/0 0/0 .text            closeEnd__10daDoor20_cFi */
int daDoor20_c::closeEnd(int param_0) {
    offFlag(2);
    closeEndCom();
    dComIfGp_getVibration().StartShock(4, 31, cXyz(0.0f, 1.0f, 0.0f));
    switch (door_param2_c::getKind(this)) {
    case 0:
    case 3:
    case 4:
    case 9:
    case 11:
    case 12:
    default:
        closeEnd_0();
        break;
    case 1:
        closeEnd_1();
        break;
    }
    deleteKey();
    setDoorAngleSpec();
    return 1;
}

/* 80462928-80462A1C 001E68 00F4+00 1/1 0/0 0/0 .text            openInit2__10daDoor20_cFv */
void daDoor20_c::openInit2() {
    field_0x5f1 = field_0x68c;
    field_0x584.setFrame(0.0f);
    field_0x584.setPlaySpeed(1.0f);
    field_0x5a0.setFrame(0.0f);
    field_0x5a0.setPlaySpeed(1.0f);
    openInitCom(1);
    dMapInfo_c::setNextRoomNoForMapPat0(field_0x67f);
    onFlag(1);
    dComIfG_Bgsp().Release(field_0x5c4);
    if (field_0x5f1 == 0) {
        field_0x5bc = mModel2;
    } else {
        field_0x5bc = mModel1;
    }
    mDoMtx_stack_c::copy(field_0x5bc->getAnmMtx(0));
    mDoMtx_stack_c::multVecZero(&field_0x5e0);
    field_0x5e0.y += 100.0f;
}

/* 80462A1C-80462A5C 001F5C 0040+00 1/1 0/0 0/0 .text            closeEnd2__10daDoor20_cFv */
void daDoor20_c::closeEnd2() {
    offFlag(1);
    closeEndCom();
    deleteKey();
}

/* 80462A5C-80462B58 001F9C 00FC+00 1/1 0/0 0/0 .text            calcMtx_2__10daDoor20_cFv */
void daDoor20_c::calcMtx_2() {
    cXyz cStack_1c(220.0f, 0.0f, 0.0f);
    cXyz cStack_28(-220.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotS(home.angle.y);
    mDoMtx_stack_c::multVec(&cStack_1c, &cStack_1c);
    mDoMtx_stack_c::multVec(&cStack_28, &cStack_28);
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(cStack_1c);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::transS(current.pos);
    mDoMtx_stack_c::transM(cStack_28);
    mDoMtx_stack_c::YrotM(home.angle.y + 0x7fff);
    mModel2->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 80462B58-80462C2C 002098 00D4+00 4/3 0/0 0/0 .text            calcMtx__10daDoor20_cFv */
void daDoor20_c::calcMtx() {
    switch (door_param2_c::getKind(this)) {
    case 9:
        calcMtx_2();
        break;
    case 1:
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x670);
        mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoMtx_stack_c::multVecZero(&field_0x5e0);
        break;
    case 0:
    case 3:
    case 4:
    case 11:
    case 12:
    default:
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(field_0x670);
        mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
        break;
    }
}

/* 80462C2C-80462EB4 00216C 0288+00 2/1 0/0 0/0 .text            CreateInit__10daDoor20_cFv */
int daDoor20_c::CreateInit() {
    shape_angle.z = 0;
    shape_angle.x = 0;
    current.angle.z = 0;
    current.angle.x = 0;
    field_0x8b8.SetWall(30.0f, 30.0f);
    field_0x6de.Set(fopAcM_GetPosition_p(this), fopAcM_GetOldPosition_p(this), this, 1,
                     &field_0x8b8, fopAcM_GetSpeed_p(this), NULL, NULL);
    int rt = dComIfG_Bgsp().Regist(field_0x5c4, this);
    JUT_ASSERT(1512, !rt);
    tevStr.room_no = current.roomNo;
    setAction(ACTION_INIT);
    attention_info.position.y += 150.0f;
    eyePos.y += 150.0f;
    attention_info.flags = 0x20;
    fopAcM_SetMtx(this, field_0x5f4);
    if (door_param2_c::getKind(this) == 10) {
        fopAcM_setCullSizeBox(this, -300.0f, 0, -50.0f, 300.0f, 700.0f, 50.0f);
    } else {
        fopAcM_setCullSizeBox(this, -200.0f, 0, -50.0f, 200.0f, 500.0f, 50.0f);
    }
    fopAcM_setCullSizeFar(this, 10.0f);
    setKey();
    field_0x5ec = -1;
    if (door_param2_c::getKind(this) == 9 && strcmp(dComIfGp_getStartStageName(), "D_MN09") != 0) {
        field_0x673 = 1;
    } else {
        field_0x673 = 0;
    }
    if (door_param2_c::getFRoomNo(this) == dComIfGp_getStartStageRoomNo() || door_param2_c::getBRoomNo(this) == dComIfGp_getStartStageRoomNo()) {
        createKey();
    }
    calcMtx();
    field_0x5c4->Move();
    field_0x5c4->SetRoomId(door_param2_c::getFRoomNo(this));
    switch (door_param2_c::getKind(this)) {
    case 1:
        field_0x691 = 3;
        break;
    default:
        field_0x691 = 1;
        break;
    case 2:
        field_0x691 = 2;
        break;
    case 9:
        field_0x691 = 4;
        break;
    case 12:
        field_0x691 = 5;
        break;
    case 10:
        field_0x691 = 6;
        break;
    }
    eventInfo.setArchiveName(getArcName());
    initProc();
    field_0x68d = 65;
    field_0x5c8 = -1;
    return 1;
}

/* 80462EB4-80462F2C 0023F4 0078+00 1/1 0/0 0/0 .text            setKey__10daDoor20_cFv */
void daDoor20_c::setKey() {
    int swBit = door_param2_c::getSwbit(this);
    if (chkMakeKey() == 1 && !dComIfGs_isSwitch(swBit, 0xffffffff)) {
        field_0x5f0 = true;
    } else {
        field_0x5f0 = false;
    }
}

/* 80462F2C-80462FE0 00246C 00B4+00 1/1 0/0 0/0 .text            create__10daDoor20_cFv */
int daDoor20_c::create() {
    int rv = dComIfG_resLoad(&mPhase1, getAlwaysArcName());
    if (rv != cPhs_COMPLEATE_e) {
        return rv;
    }
    if (getArcName() != NULL) {
        rv = dComIfG_resLoad(&mPhase2, getArcName());
        if (rv != cPhs_COMPLEATE_e) {
            return rv;
        }
    }
    fopAcM_SetRoomNo(this, door_param2_c::getFRoomNo(this));
    if (fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x80003800) == 0) {
        rv = cPhs_ERROR_e;
    } else {
        CreateInit();
        rv = cPhs_COMPLEATE_e;
    }
    return rv;
}

/* 80462FE0-80463E30 002520 0E50+00 5/3 0/0 0/0 .text            demoProc__10daDoor20_cFv */
int daDoor20_c::demoProc() {
    field_0x6cc = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", 0, 0);
    int demoAction = getDemoAction();
    if (dComIfGp_evmng_getIsAddvance(field_0x6cc)) {
        switch (demoAction) {
        case 0:
            int* pTimer = dComIfGp_evmng_getMyIntegerP(
                field_0x6cc, "Timer");
            if (pTimer == NULL) {
                field_0x5dd = 1;
            } else {
                field_0x5dd = *pTimer;
            }
            break;
        case 3:
            openInit(0);
            break;
        case 4:
            closeInit(0);
            break;
        case 7:
            setGoal();
            break;
        case 8:
            if (field_0x673 == 1) {
                daObjLv5Key_c* lv5Key =
                    (daObjLv5Key_c*)fopAcM_SearchByID(field_0x5ec);
                if (lv5Key != NULL) {
                    lv5Key->keylock_open_start();
                }
            } else {
                obj_keyhole_class* keyhole = (obj_keyhole_class*)fopAcM_SearchByID(
                    field_0x5ec);
                if (keyhole != NULL) {
                    keyhole->setOpen();
                }
            }
            int swBit = door_param2_c::getSwbit(this);
            if (swBit != 0xff &&
                 !dComIfGs_isSwitch(swBit, 0xffffffff) &&
                (door_param2_c::getFrontOption(this) == 2 || door_param2_c::getBackOption(this) == 2))
            {
                dComIfGs_onSwitch(swBit, 0xffffffff);
                dComIfGp_setItemKeyNumCount(0xffffffff);
                if (field_0x673 == 1) {
                    fopAcM_seStart(this, Z2SE_OBJ_DOOR_LOCK_OPEN, 0);
                } else {
                    fopAcM_seStart(this, Z2SE_OBJ_DOOR_CHAIN_LOCK_OPEN, 0);
                }
            }
            break;
        case 2:
            setStop();
            if (mDoorStop.field_0x8 != 0) {
                mDoorStop.closeInit(this);
            }
            break;
        case 1:
            mDoorStop.openInit(this);
            break;
        case 11:
            field_0x6dc = 5;
            break;
        case 24:
             field_0x6dc = 5;
             setAngle();
             break;
        case 13:
            J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(
                getAlwaysArcName(), "FDoorB.bck");
            JUT_ASSERT(1796, anm != 0);
            if (!field_0x584.init(anm, 1, 0, 1.0f, 0, -1, true) || !field_0x5a0.init(anm,
                                                             1, 0, 1.0f, 0, -1, true))
            {
                JUT_PANIC(1799, 0);
            }
            field_0x67c = 0;
            openInit2();
            break;
        case 12:
            anm =
                (J3DAnmTransform*)dComIfG_getObjectRes(getAlwaysArcName(), "FDoorA.bck");
            JUT_ASSERT(1809, anm != 0);
            if (!field_0x584.init(anm, 1, 0, 1.0f, 0, -1, true) || !field_0x5a0.init(anm,
                                                             1, 0, 1.0f, 0, -1, true))
            {
                JUT_PANIC(1812, 0);
            }
            field_0x67c = 0;
            openInit2();
            break;
         case 26:
             if (door_param2_c::isMsgDoor(this)) {
                int msgNo = door_param2_c::getMsgNo(this);
                if (msgNo != 0xffff) {
                    field_0x624.init(this, msgNo, 0, NULL);
                }
             }
             break;
         case 25:
             if (field_0x673 == 1) {
                 daObjLv5Key_c* lv5Key = (daObjLv5Key_c*)fopAcM_SearchByID(field_0x5ec);
                 if (lv5Key != NULL) {
                     lv5Key->keylock_shake_start();
                     mDoAud_seStart(Z2SE_OBJ_KNOB_DOOR_LOCKED, &field_0x5e0, 0, 0);
                 }
             }
             break;
         case 27:
             fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CREST_ON, 0);
             field_0x5c0->setPlaySpeed(1.0f);
             break;
         case 28:
             fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CREST_OFF, 0);
             field_0x5c0->setPlaySpeed(-1.0f);
            break;
        }
    }
    switch (demoAction) {
    case 0:
        if (cLib_calcTimer(&field_0x5dd) == 0) {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    case 3:
        if (checkFlag(1)) {
            if (openProc(0)) {
                openEnd(0);
                dComIfGp_evmng_cutEnd(field_0x6cc);
            }
        } else {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    case 4:
        if (checkFlag(2)) {
            if (closeProc(0)) {
                closeEnd(0);
                dComIfGp_evmng_cutEnd(field_0x6cc);
            }
        } else {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    case 8:
        if (field_0x673 == 1) {
            daObjLv5Key_c* lv5Key = (daObjLv5Key_c*)fopAcM_SearchByID(field_0x5ec);
            if ((lv5Key != NULL && lv5Key->is_open()) || !field_0x5f0) {
                field_0x5f0 = false;
                dComIfGp_evmng_cutEnd(field_0x6cc);
            }
        } else if (field_0x673 == 0) {
            obj_keyhole_class* keyhole = (obj_keyhole_class*)fopAcM_SearchByID(field_0x5ec);
            if ((keyhole != NULL && keyhole->checkOpenEnd()) || !field_0x5f0) {
                field_0x5f0 = false;
                dComIfGp_evmng_cutEnd(field_0x6cc);
            }
        }
        break;
    case 2:
        if (mDoorStop.closeProc(this)) {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        mDoorStop.calcMtx(this);
        break;
    case 1:
        if (mDoorStop.openProc(this)) {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        mDoorStop.calcMtx(this);
        break;
    case 19:
        field_0x5c4->Move();
        field_0x5c8 = dComIfGp_roomControl_getStayNo();
        dComIfGp_evmng_cutEnd(field_0x6cc);
        break;
    case 11:
        if (adjustmentAngle()) {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
     case 24:
        if (adjustmentProc()) {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    
    
    case 12:
        int local_48;
        f32 dVar19;
        if (field_0x5f1 == 0) {
            local_48 = field_0x584.play();
            dVar19 = field_0x584.getFrame();
        } else {
            local_48 = field_0x5a0.play();
            dVar19 = field_0x5a0.getFrame();
        }
        if (dVar19 == 24.0f) {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN01") == 0) {
                mDoAud_seStart(Z2SE_OBJ_LV3_KNOB_DR_OP, &field_0x5e0, 0, 0);
            } else if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 ||
                       strcmp(dComIfGp_getStartStageName(), "D_MN11B") == 0 ||
                       strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0)
            {
                mDoAud_seStart(Z2SE_OBJ_KNOB_DOOR_LV5_OP, &field_0x5e0, 0, 0);
            }
        } else if (dVar19 == 75.0f) {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 ||
                strcmp(dComIfGp_getStartStageName(), "D_MN11B") == 0 ||
                strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0)
            {
                mDoAud_seStart(Z2SE_OBJ_KNOB_DOOR_LV5_CL, 0, 0, 0);
            } else if (strcmp(dComIfGp_getStartStageName(), "D_MN01") == 0) {
                mDoAud_seStart(Z2SE_OBJ_LV3_KNOB_DR_CL, &field_0x5e0, 0, 0);
            }
        }
        field_0x678 = dComIfGp_evmng_getMyStaffId("CAMERA", 0, 0);
        if (field_0x67c != 0 ||
            dComIfGp_evmng_getIsAddvance(field_0x678))
        {
            field_0x674 = field_0x67f;
            field_0x67c = 1;
        } else {
            field_0x674 = field_0x67e;
        }
        if (local_48 != 0) {
            closeEnd2();
            if (!field_0x5c4->ChkUsed()) {
                dComIfG_Bgsp().Regist(field_0x5c4, this);
            }
            shape_angle.y = current.angle.y;
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    case 13:
        if (field_0x5f1 == 0) {
            local_48 = field_0x5a0.play();
            dVar19 = field_0x5a0.getFrame();
        } else {
            local_48 = field_0x584.play();
            dVar19 = field_0x584.getFrame();
        }
        if (dVar19 == 19.0f) {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN01") == 0) {
                mDoAud_seStart(Z2SE_OBJ_LV3_KNOB_DR_OP, &field_0x5e0, 0, 0);
            } else {
                if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 ||
                    strcmp(dComIfGp_getStartStageName(), "D_MN11B") == 0 ||
                    strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0)
                {
                    mDoAud_seStart(Z2SE_OBJ_KNOB_DOOR_LV5_OP, &field_0x5e0, 0, 0);
                }
            }
        } else if (dVar19 == 76.0f) {
            if (strcmp(dComIfGp_getStartStageName(), "D_MN11") == 0 ||
                strcmp(dComIfGp_getStartStageName(), "D_MN11B") == 0 ||
                strcmp(dComIfGp_getStartStageName(), "D_MN09") == 0) {
                    mDoAud_seStart(Z2SE_OBJ_KNOB_DOOR_LV5_CL, 0, 0, 0);

            } else if (strcmp(dComIfGp_getStartStageName(), "D_MN01") == 0) {
                mDoAud_seStart(Z2SE_OBJ_LV3_KNOB_DR_CL, &field_0x5e0, 0, 0);
            }
        }
        field_0x678 = dComIfGp_evmng_getMyStaffId("CAMERA", 0, 0);
        if (field_0x67c != 0 || dComIfGp_evmng_getIsAddvance(field_0x678)) {
            field_0x674 = field_0x67f;
            field_0x67c = 1;
        } else {
            field_0x674 = field_0x67e;
        }
        if (local_48 != 0) {
            closeEnd2();
            if (!field_0x5c4->ChkUsed()) {
                dComIfG_Bgsp().Regist(field_0x5c4, this);
            }
            shape_angle.y = current.angle.y;
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    case 16:
        break;
    case 25:
        dComIfGp_evmng_cutEnd(field_0x6cc);
        break;
    case 26:
        int msgNo = door_param2_c::getMsgNo(this);
        if (door_param2_c::isMsgDoor(this) && msgNo != 0xffff) {
            dComIfGp_event_offHindFlag(1);
            if (field_0x624.doFlow(this, NULL, 0)) {
                dComIfGp_evmng_cutEnd(field_0x6cc);
            }
        } else {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    case 27:
    case 28:
        if (field_0x5c0->play()) {
            dComIfGp_evmng_cutEnd(field_0x6cc);
        }
        break;
    default:
        dComIfGp_evmng_cutEnd(field_0x6cc);
        break;
    }
    return 0;
}

/* 80463E30-80463FBC 003370 018C+00 1/1 0/0 0/0 .text            orderStopEvent__10daDoor20_cFv */
int daDoor20_c::orderStopEvent() {
    if (field_0x68c == 0) {
        if ((door_param2_c::getFrontOption(this) == 3 ||
             door_param2_c::getFrontOption(this) == 1) &&
            !door_param2_c::isMsgDoor(this) && door_param2_c::getEventNo(this) != 0xff)
        {
            field_0x6b8[field_0x6cb] = door_param2_c::getEventNo(this);
            field_0x692[field_0x6cb] =
                dComIfGp_getEventManager().getEventIdx(this, field_0x6b8[field_0x6cb]);
        }
    } else if (field_0x68c == 1 &&
               (door_param2_c::getBackOption(this) == 3 ||
                door_param2_c::getBackOption(this) == 1) &&
               !door_param2_c::isMsgDoor(this) && door_param2_c::getEventNo2(this) != 0xff)
    {
        field_0x6b8[field_0x6cb] = door_param2_c::getEventNo2(this);
        field_0x692[field_0x6cb] =
            dComIfGp_getEventManager().getEventIdx(this, field_0x6b8[field_0x6cb]);
    }
    fopAcM_orderOtherEventId(this, field_0x692[field_0x6cb], field_0x6b8[field_0x6cb], 0xffff, 0,
                             1);
    return 1;
}

/* 80463FBC-80464118 0034FC 015C+00 2/2 0/0 0/0 .text            actionWait__10daDoor20_cFv */
int daDoor20_c::actionWait() {
    if (eventInfo.checkCommandDoor()) {
        initOpenDemo(1);
        setAction(ACTION_DEMO);
        demoProc();
    } else {
        if (mDoorStop.field_0x8 != 0) {
            if (eventInfo.checkCommandDemoAccrpt()) {
                field_0x6cc = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", 0, 0);
                shape_angle.y = current.angle.y;
                if (field_0x68c == 1) {
                    shape_angle.y += 0x7fff;
                }
                setAction(ACTION_DEMO);
                demoProc();
                return 1;
            }
            if (chkStopOpen()) {
                setStopDemo();
                if (orderStopEvent()) {
                    return 1;
                }
            }
        }
        if (mDoorStop.field_0x8 == 0 && chkStopClose()) {
            mDoorStop.field_0x8 = 1;
            mDoorStop.closeInit(this);
            mDoorStop.calcMtx(this);
            setAction(ACTION_STOP_CLOSE);
            return 1;
        } else if (mDoorStop.field_0x8 == 0) {
            makeEventId();
            setEventPrm();
        }
    }
    return 1;
}

/* 80464118-8046416C 003658 0054+00 1/1 0/0 0/0 .text            actionStopClose__10daDoor20_cFv */
int daDoor20_c::actionStopClose() {
    if (mDoorStop.closeProc(this)) {
        setAction(ACTION_WAIT);
    }
    mDoorStop.calcMtx(this);
    return 1;
}

/* 8046416C-804641EC 0036AC 0080+00 1/1 0/0 0/0 .text             */
int daDoor20_c::actionDemo() {
    if (dComIfGp_evmng_endCheck(field_0x692[field_0x6cb])) {
        setAction(ACTION_WAIT);
        dComIfGp_event_reset();
        shape_angle.y = current.angle.y;
    } else {
        demoProc();
    }
    return 1;
}

/* 804641EC-80464240 00372C 0054+00 1/1 0/0 0/0 .text            actionInit__10daDoor20_cFv */
int daDoor20_c::actionInit() {
    setDoorAngleSpec();
    setStop();
    mDoorStop.calcMtx(this);
    actionWait();
    setAction(ACTION_WAIT);
    return 1;
}

/* 80464240-804643B0 003780 0170+00 1/1 0/0 0/0 .text            execute__10daDoor20_cFv */
int daDoor20_c::execute() {
    field_0x678 = -1;
    switch(checkExecute()) {
    case 0:
        setAction(ACTION_INIT);
        break;
    case 2:
        switch(mAction) {
            case ACTION_INIT:
                actionInit();
                break;
            case ACTION_WAIT:
                actionWait();
                break;
            case ACTION_STOP_CLOSE:
                actionStopClose();
                break;
            case ACTION_DEMO:
                actionDemo();
                break;
        }
        break;
    case 1:
        startDemoProc();
        demoProc();
        break;
    }
    field_0x67d = dComIfGp_roomControl_getStayNo();
    u32 lightInf;
    if (dComIfGp_roomControl_getStayNo() == door_param2_c::getFRoomNo(this)) {
        lightInf = door_param2_c::getFLightInf(this);
    } else {
        lightInf = door_param2_c::getBLightInf(this);
    }
    tevStr.mLightInf.r = lightInf;
    if (strcmp(dComIfGp_getStartStageName(), "D_MN05") != 0 && strcmp(dComIfGp_getStartStageName(), "D_MN04") != 0) {
        field_0x6de.CrrPos(dComIfG_Bgsp());
    }
    return 1;
}

/* 804643B0-80464638 0038F0 0288+00 1/1 0/0 0/0 .text            draw__10daDoor20_cFv */
int daDoor20_c::draw() {
    if (!drawCheck(0)) {
        if (field_0x5c9 == false) {
            field_0x5c9 = true;
            dComIfG_Bgsp().Release(field_0x5c4);
        }
        deleteKey();
        return 1;
    }
    if (field_0x5c9) {
        field_0x5c9 = false;
        if (dComIfGp_event_getDoorPartner() != this) {
            int rt = dComIfG_Bgsp().Regist(field_0x5c4, this);
            JUT_ASSERT(2407, !rt);
        }
        createKey();
        setDoorAngleSpec();
    }
    if (fopAcM_cullingCheck(this)) {
        return 1;
    }
    calcMtx();
    if (!eventInfo.checkCommandDoor() && field_0x5c8 != dComIfGp_roomControl_getStayNo()) {
        field_0x5c4->Move();
        field_0x5c8 = dComIfGp_roomControl_getStayNo();
    }
    g_env_light.settingTevStruct(20, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel1, &tevStr);
    dComIfGd_setListBG();
    if (door_param2_c::getKind(this) == 9) {
        field_0x584.entry(mModel1->getModelData());
        mDoExt_modelUpdateDL(mModel1);
        mDoExt_bckAnmRemove(mModel1->getModelData());
        field_0x5a0.entry(mModel2->getModelData());
        mDoExt_modelUpdateDL(mModel2);
        mDoExt_bckAnmRemove(mModel2->getModelData());
    } else {
        if (field_0x5c0 != 0) {
            field_0x5c0->entry(mModel1->getModelData());
        }
        field_0x584.entry(mModel1->getModelData());
        mDoExt_modelUpdateDL(mModel1);
        mDoExt_bckAnmRemove(mModel1->getModelData());
        mDoExt_btkAnmRemove(mModel1->getModelData());
    }
    dComIfGd_setList();
    if (mDoorStop.field_0x8 != 0) {
        mDoorStop.draw(this);
    }
    return 1;
}

/* 80464638-804647BC 003B78 0184+00 3/3 0/0 0/0 .text            setDoorAngleSpec__10daDoor20_cFv */
void daDoor20_c::setDoorAngleSpec() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz cStack_1c;
    switch(door_param2_c::getKind(this)) {
    case 1:
        if (strcmp(dComIfGp_getStartStageName(), "F_SP115") == 0) {
            cStack_1c = player->current.pos - current.pos;
            mDoMtx_stack_c::YrotS(-home.angle.y);
            mDoMtx_stack_c::multVec(&cStack_1c, &cStack_1c);
            if (cStack_1c.z > 0.0f) {
                field_0x670 = current.angle.y + 0x7fff;
            } else {
                field_0x670 = current.angle.y;
            }
        } else {
            if (door_param2_c::getFRoomNo(this) == dComIfGp_roomControl_getStayNo()) {
                field_0x670 = current.angle.y + 0x7fff;
            } else {
                field_0x670 = current.angle.y;
            }
        }
        break;
    case 0:
    case 2:
    case 12:
    default:
        if (door_param2_c::getFRoomNo(this) == dComIfGp_roomControl_getStayNo()) {
            field_0x670 = current.angle.y;
        } else {
            field_0x670 = current.angle.y + 0x7fff;
        }
    }
}

/* 804647BC-80464858 003CFC 009C+00 1/1 0/0 0/0 .text            _delete__10daDoor20_cFv */
int daDoor20_c::_delete() {
    if (heap != NULL &&
        field_0x5c4->ChkUsed())
    {
        dComIfG_Bgsp().Release(field_0x5c4);
    }
    deleteKey();
    dComIfG_resDelete(&mPhase1, getAlwaysArcName());
    if (getArcName() != NULL) {
        dComIfG_resDelete(&mPhase2, getArcName());
    }
    return 1;
}

/* 80464858-80464AE4 003D98 028C+00 2/2 0/0 0/0 .text            createKey__10daDoor20_cFv */
int daDoor20_c::createKey() {
    if (chkMakeKey() == 1 && field_0x5f0 && field_0x5ec == -1) {
        cXyz prevPos(current.pos);
        current.pos = home.pos;
        csXyz cStack_30(0, 0, 0);
        cXyz cStack_28;
        int roomNo;
        switch (field_0x673) {
        case 1:
            if (door_param2_c::getFrontOption(this) == 2) {
                cStack_28.set(0.0f, 107.0f, 17.0f);
                cStack_30.y = 0;
                roomNo = door_param2_c::getFRoomNo(this);
            } else if (door_param2_c::getBackOption(this) == 2) {
                cStack_28.set(0.0f, 107.0f, -17.0f);
                cStack_30.y = 0x7fff;
                roomNo = door_param2_c::getBRoomNo(this);
            }
            field_0x5ec =
                fopAcM_createChildFromOffset(PROC_Obj_Lv5Key, fopAcM_GetID(this), 0xffffffff,
                                             &cStack_28, roomNo, &cStack_30, &scale, 0xffffffff, 0);
            break;
        default:
            OSReport_Error("シャッタードア：鍵タイプが不明です\n"); // Shutter door: key type unknown
            // fallthrough
        case 0:
            if (door_param2_c::getFrontOption(this) == 2) {
                cStack_28.set(0.0f, 0.0f, 35.0f);
                cStack_30.y = 0;
                roomNo = door_param2_c::getFRoomNo(this);
            } else {
                if (door_param2_c::getBackOption(this) == 2) {
                    cStack_28.set(0.0f, 0.0f, -35.0f);
                    cStack_30.y = 0x7fff;
                    roomNo = door_param2_c::getBRoomNo(this);
                }
            }
            field_0x5ec =
                fopAcM_createChildFromOffset(PROC_OBJ_KEYHOLE, fopAcM_GetID(this), 0xffffffff,
                                             &cStack_28, roomNo, &cStack_30, &scale, 0xffffffff, 0);
        }

        current.pos = prevPos;
        if (field_0x5ec == -1) {
            return 0;
        }
    }
    return 1;
}

/* 80464AE4-80464B3C 004024 0058+00 4/4 0/0 0/0 .text            deleteKey__10daDoor20_cFv */
int daDoor20_c::deleteKey() {
    if (field_0x5ec != -1 && !fpcM_IsCreating(field_0x5ec)) {
        fopAcM_delete(field_0x5ec);
        field_0x5ec = -1;
    }
    return 1;
}

/* 80464B3C-80464BD8 00407C 009C+00 2/2 0/0 0/0 .text            adjoinPlayer__10daDoor20_cFv */
int daDoor20_c::adjoinPlayer() {
    int fRoomNo = door_param2_c::getFRoomNo(this);
    int bRoomNo = door_param2_c::getBRoomNo(this);
    if (fRoomNo == 63 || bRoomNo == 63) {
        return 1;
    }
    if (dComIfGp_roomControl_checkRoomDisp(fRoomNo) || dComIfGp_roomControl_checkRoomDisp(bRoomNo))
    {
        return 1;
    } else {
        return 0;
    }
}

/* 80464BD8-80464C68 004118 0090+00 1/1 0/0 0/0 .text            frontCheckOld__10daDoor20_cFv */
int daDoor20_c::frontCheckOld() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cSGlobe acStack_30(player->current.pos - current.pos);
    cSAngle acStack_34;
    acStack_34 =  acStack_30.U() - current.angle.y;
    s16 sVar3 = acStack_34.Abs();
    if (sVar3 < 0x4000 && sVar3 >= 0) {
        return 0;
    } else {
        return 1;
    }
}

/* 80464C68-80464CEC 0041A8 0084+00 1/1 0/0 0/0 .text            frontCheck__10daDoor20_cFv */
int daDoor20_c::frontCheck() {
    int stayno = dComIfGp_roomControl_getStayNo();
    int fRoomNo = door_param2_c::getFRoomNo(this);
    int bRoomNo = door_param2_c::getBRoomNo(this);
    if (fRoomNo == bRoomNo) {
        return frontCheckOld();
    } else if (stayno == fRoomNo) {
        return 0;
    } else if (stayno == bRoomNo) {
        return 1;
    } else {
        return 2;
    }
}

/* 80464CEC-80464E18 00422C 012C+00 1/1 0/0 0/0 .text            drawCheck__10daDoor20_cFi */
int daDoor20_c::drawCheck(int param_1) {
    if (!adjoinPlayer() && !eventInfo.checkCommandDemoAccrpt() && !eventInfo.checkCommandDoor())
    {
        return 0;
    }
    int fRoomNo = door_param2_c::getFRoomNo(this);
    int bRoomNo = door_param2_c::getBRoomNo(this);
    door_param2_c::getFrontOption(this);
    door_param2_c::getBackOption(this);
    int stayNo = dComIfGp_roomControl_getStayNo();
    if (fRoomNo == stayNo || bRoomNo == stayNo) {
        tevStr.room_no = stayNo;
    } else {
        if (dComIfGp_roomControl_checkRoomDisp(fRoomNo)) {
            tevStr.room_no = fRoomNo;
        } else if (dComIfGp_roomControl_checkRoomDisp(bRoomNo)) {
            tevStr.room_no = bRoomNo;
        }
    }
    if (field_0x678 != -1) {
        tevStr.room_no = field_0x674;
    }
    fopAcM_SetRoomNo(this, tevStr.room_no);
    if (!dComIfGp_roomControl_checkRoomDisp(tevStr.room_no)) {
        return 1;
    } else {
        return 1;
    }
}

/* 80464E18-80464EC4 004358 00AC+00 1/1 0/0 0/0 .text            checkExecute__10daDoor20_cFv */
int daDoor20_c::checkExecute() {
    field_0x68c = frontCheck();
    if (fopAcM_checkStatus(this, 0x1000)) {
        return 1;
    }
    if (eventInfo.checkCommandDemoAccrpt() || eventInfo.checkCommandDoor()) {
        return 2;
    }
    if (field_0x67d != dComIfGp_roomControl_getStayNo()) {
        return 0;
    }
    if (field_0x68c != 2 && adjoinPlayer()) {
        return 2;
    } else {
        return 0;
    }
}

/* 80464EC4-80464F64 004404 00A0+00 1/1 0/0 0/0 .text            startDemoProc__10daDoor20_cFv */
void daDoor20_c::startDemoProc() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    field_0x6cc = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", 0, 0);
    shape_angle.y = current.angle.y;
    JUT_ASSERT(2860, player);
    s16 angleDiff = player->home.angle.y - home.angle.y;
    if (angleDiff < 0) {
        angleDiff = -angleDiff;
    }

    // !@bug should probably be -0x1000
    if (angleDiff < 0x1000 && angleDiff > -1000) {
        shape_angle.y += 0x7fff;
    }
}

static char* table[19] = {
    "DEFAULT_STOP_OPEN",
    "DEFAULT_STOP_OPEN",
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
    NULL,
};

/* 80467170-80467180 -00001 0010+00 0/1 0/0 0/0 .data            tate_table$5815 */
static char* tate_table[4] = {
    "DEFAULT_SHUTTER_DOOR_10",
    "DEFAULT_SHUTTER_DOOR_10",
    "DEFAULT_SHUTTER_DOOR_F_STOP",
    "DEFAULT_SHUTTER_DOOR_F_STOP",
};

/* 80467180-80467190 -00001 0010+00 0/1 0/0 0/0 .data            tate_w_table$5816 */
static char* tate_w_table[4] = {
    "WOLF_SHUTTER_DOOR_10",
    "WOLF_SHUTTER_DOOR_10",
    "WOLF_SHUTTER_DOOR_F_STOP",
    "WOLF_SHUTTER_DOOR_F_STOP",
};

/* 80467190-804671A0 -00001 0010+00 0/1 0/0 0/0 .data            yoko_table$5817 */
static char* yoko_table[4] = {
    "DEFAULT_SHUTTER_DOOR_14",
    "DEFAULT_SHUTTER_DOOR_14",
    "DEFAULT_SHUTTER_DOOR_F_STOP_14",
    "DEFAULT_SHUTTER_DOOR_F_STOP_14",
};

/* 804671A0-804671B0 -00001 0010+00 0/1 0/0 0/0 .data            yoko_w_table$5818 */
static char* yoko_w_table[4] = {
    "WOLF_SHUTTER_DOOR_14",
    "WOLF_SHUTTER_DOOR_14",
    "WOLF_SHUTTER_DOOR_F_STOP_14",
    "WOLF_SHUTTER_DOOR_F_STOP_14",
};

/* 804671B0-804671C0 -00001 0010+00 0/1 0/0 0/0 .data            lv8_table$5819 */
static char* lv8_table[4] = {
    "DEFAULT_SHUTTER_DOOR_18",
    "DEFAULT_SHUTTER_DOOR_18",
    "DEFAULT_SHUTTER_DOOR_F_STOP_18",
    "DEFAULT_SHUTTER_DOOR_F_STOP_18",
};

/* 804671C0-804671D0 -00001 0010+00 0/1 0/0 0/0 .data            lv8_w_table$5820 */
static char* lv8_w_table[4] = {
    "WOLF_SHUTTER_DOOR_18",
    "WOLF_SHUTTER_DOOR_18",
    "WOLF_SHUTTER_DOOR_F_STOP_18",
    "WOLF_SHUTTER_DOOR_F_STOP_18",
};

/* 804671D0-804671EC -00001 001C+00 0/1 0/0 0/0 .data            knob_table$5821 */
static char* knob_table[7] = {
    "DEFAULT_KNOB_DOOR_F",
    "DEFAULT_KNOB_DOOR_B",
    "DEFAULT_KNOB_DOOR_F_STOP",
    "DEFAULT_KNOB_DOOR_B_STOP",
    "DEFAULT_KNOB_DOOR_NOTOPEN_F",
    "DEFAULT_KNOB_DOOR_NOTOPEN_B",
    "DEFAULT_KNOB_DOOR_TALK_NOTOPEN_F",
};

/* 804671EC-804671FC -00001 0010+00 0/1 0/0 0/0 .data            lv7_table$5822 */
static char* lv7_table[4] = {
    "DEFAULT_SHUTTER_DOOR_20",
    "DEFAULT_SHUTTER_DOOR_20",
    "DEFAULT_SHUTTER_DOOR_F_STOP_20",
    "DEFAULT_SHUTTER_DOOR_F_STOP_20",
};

/* 804671FC-8046720C -00001 0010+00 0/1 0/0 0/0 .data            lv7_w_table$5823 */
static char* lv7_w_table[4] = {
    "WOLF_SHUTTER_DOOR_20",
    "WOLF_SHUTTER_DOOR_20",
    "WOLF_SHUTTER_DOOR_F_STOP_20",
    "WOLF_SHUTTER_DOOR_F_STOP_20",
};

/* 8046720C-8046721C -00001 0010+00 0/1 0/0 0/0 .data            lv9_table$5824 */
static char* lv9_table[4] = {
    "DEFAULT_SHUTTER_DOOR_22",
    "DEFAULT_SHUTTER_DOOR_22",
    "DEFAULT_SHUTTER_DOOR_F_STOP_22",
    "DEFAULT_SHUTTER_DOOR_F_STOP_22",
};

/* 8046721C-8046722C -00001 0010+00 0/1 0/0 0/0 .data            lv9_w_table$5825 */
static char* lv9_w_table[4] = {
    "WOLF_SHUTTER_DOOR_22",
    "WOLF_SHUTTER_DOOR_22",
    "WOLF_SHUTTER_DOOR_F_STOP_22",
    "WOLF_SHUTTER_DOOR_F_STOP_22",
};


/* 80464F64-804653B0 0044A4 044C+00 2/2 0/0 0/0 .text            makeEventId__10daDoor20_cFv */
void daDoor20_c::makeEventId() {
    for (int i = 0; i < 19; i++) {
        field_0x692[i] = dComIfGp_getEventManager().getEventIdx(this, table[i], 0xff);
        field_0x6b8[i] = 0xff;
    }
    daPy_py_c* player = dComIfGp_getLinkPlayer();
    int i;
    switch (field_0x691) {
    case 1:
        if (player != NULL && player->checkNowWolf()) {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, tate_w_table[j], field_0x6b8[i]);
            }
        } else {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, tate_table[j], field_0x6b8[i]);
            }
        }
        break;
    case 3:
        if (player != NULL && player->checkNowWolf()) {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, yoko_w_table[j], field_0x6b8[i]);
            }
        } else {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, yoko_table[j], field_0x6b8[i]);
            }
        }
        break;
    case 2:
        if (player != NULL && player->checkNowWolf()) {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, lv8_w_table[j], field_0x6b8[i]);
            }
        } else {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, lv8_table[j], field_0x6b8[i]);
            }
        }
        break;
    case 4:
        int j = 0;
        for (i = 12; i < 19; i++, j++) {
            field_0x692[i] =
                dComIfGp_getEventManager().getEventIdx(this, knob_table[j], field_0x6b8[i]);
        }
        break;
    case 5:
        if (player != NULL && player->checkNowWolf()) {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, lv7_w_table[j], field_0x6b8[i]);
            }
        } else {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, lv7_table[j], field_0x6b8[i]);
            }
        }
        break;
    case 6:
        if (player != NULL && player->checkNowWolf()) {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, lv9_w_table[j], field_0x6b8[i]);
            }
        } else {
            int j = 0;
            for (i = 4; i < 8; i++, j++) {
                field_0x692[i] =
                    dComIfGp_getEventManager().getEventIdx(this, lv9_table[j], field_0x6b8[i]);
            }
        }
        break;
    }
}

/* 804653B0-80465400 0048F0 0050+00 1/1 0/0 0/0 .text            initProc__10daDoor20_cFv */
void daDoor20_c::initProc() {
    field_0x680.set(cM_ssin(home.angle.y), 0.0f, cM_scos(home.angle.y));
    makeEventId();
}

/* 80465400-80465490 004940 0090+00 1/1 0/0 0/0 .text            initOpenDemo__10daDoor20_cFi */
void daDoor20_c::initOpenDemo(int param_1) {
    shape_angle.y = current.angle.y;
    if (field_0x68c == 1) {
        shape_angle.y += 0x7fff;
    }
    field_0x6cc = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", 0, 0);
    if (param_1 != 0) {
        dComIfGp_event_onEventFlag(2);
    }
}

/* 80465490-80465620 0049D0 0190+00 1/1 0/0 0/0 .text            checkArea__10daDoor20_cFfff */
int daDoor20_c::checkArea(f32 param_1, f32 param_2, f32 param_3) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz acStack_68;
    cXyz cStack_74(player->attention_info.position);
    cStack_74.y = player->current.pos.y;
    acStack_68 = cStack_74 - current.pos;
    f32 dVar10 = acStack_68.abs2XZ();
    if (dVar10 > param_3) {
        return 0;
    }
    acStack_68.normalize();
    f32 dVar11 = acStack_68.inprodXZ(field_0x680);
    dVar11 = (dVar11 * (dVar10 * dVar11));
    if (dVar11 > param_2) {
        return 0;
    }
    if (dVar10 - dVar11 > param_1) {
        return 0;
    }
    s16 sVar8 = current.angle.y;
    if (field_0x68c == 1) {
        sVar8 += 0x7fff;
    }
    if (abs((s16)(sVar8 - player->current.angle.y)) < 0x5000) {
        return 0;
    } else {
        return 1;
    }
}

/* 80465620-804656F0 004B60 00D0+00 2/2 0/0 0/0 .text            openInitCom__10daDoor20_cFi */
void daDoor20_c::openInitCom(int param_1) {
    dComIfGp_getPlayer(0);
    u8 fRoomNo = door_param2_c::getFRoomNo(this);
    u8 bRoomNo = door_param2_c::getBRoomNo(this);
    if (field_0x68c == 0) {
        field_0x67e = fRoomNo;
        field_0x67f = bRoomNo;
    } else {
        field_0x67e = bRoomNo;
        field_0x67f = fRoomNo;
    }
    if (field_0x67e != field_0x67f && field_0x67e != 63 && field_0x67f != 63) {
        dComIfGp_roomControl_offStatusFlag(field_0x67f, 8);
        dComIfGp_roomControl_onStatusFlag(field_0x67e, 0x20);
    }
    dStage_roomControl_c::setNextStayNo(field_0x67f);
    Z2GetAudioMgr()->setSceneExist(false);
}

/* 804656F0-8046581C 004C30 012C+00 2/2 0/0 0/0 .text            closeEndCom__10daDoor20_cFv */
void daDoor20_c::closeEndCom() {
    if (field_0x67e != field_0x67f && field_0x67e != 63 &&
        field_0x67f != 63)
    {
        dComIfGp_roomControl_onStatusFlag(field_0x67e, 8);
    }
    cXyz cStack_2c;
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz cStack_38 = player->current.pos - current.pos;
    f32 dVar8 = cStack_38.inprodXZ(field_0x680);
    getRestartPos(&cStack_2c);
    s32 roomNo = fopAcM_GetRoomNo(player);
    s16 angle;
    if (dVar8 > 0.0f) {
        angle = current.angle.y;
    } else {
        angle = current.angle.y + 0x8000;
    }
    dComIfGs_setRestartRoom(cStack_2c, angle, roomNo);
    Z2GetAudioMgr()->setSceneExist(true);
}

/* 8046581C-80465918 004D5C 00FC+00 1/1 0/0 0/0 .text            getRestartPos__10daDoor20_cFP4cXyz
 */
void daDoor20_c::getRestartPos(cXyz* param_1) {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz acStack_78 = player->current.pos - current.pos;
    f32 dVar9 = acStack_78.inprodXZ(field_0x680);
    f32 fVar1;
    if (daPy_py_c::checkNowWolf()) {
        if (dVar9 < 0.0f) {
            fVar1 = 300.0f;
        } else {
            fVar1 = -300.0f;
        }
    } else {
        if (dVar9 < 0.0f) {
            fVar1 = 200.0f;
        } else {
            fVar1 = -200.0f;
        }
    }
    param_1->x = current.pos.x - fVar1 * field_0x680.x;
    param_1->y = current.pos.y;
    param_1->z = current.pos.z - fVar1 * field_0x680.z;
}

/* 8046722C-804672A0 -00001 0074+00 1/1 0/0 0/0 .data            action_table$6155 */
static char* action_table[29] = {
    "WAIT",
    "STOP_OPEN",
    "STOP_CLOSE",
    "OPEN",
    "CLOSE",
    "SMOKE",
    "SMOKE_END",
    "SETGOAL",
    "UNLOCK",
    "SETSTART",
    "SETANGLE",
    "ADJUSTMENT",
    "OPEN_PUSH",
    "OPEN_PULL",
    "OPEN_PUSH2",
    "OPEN_PULL2",
    "TALK",
    "SETSTART_PUSH",
    "SETSTART_PULL",
    "END_CHECK",
    "DROP_BF",
    "DROP_AF",
    "DELETE_LOCK",
    "OPEN_INIT",
    "ADJUSTMENT2",
    "NOT_OPEN",
    "MESSAGE",
    "LIGHT_ANM",
    "LIGHT_ANM2",
};

/* 80465918-80465960 004E58 0048+00 1/0 0/0 0/0 .text            getDemoAction__10daDoor20_cFv */
int daDoor20_c::getDemoAction() {
    return dComIfGp_evmng_getMyActIdx(field_0x6cc, action_table, 29, 0, 0);
}

/* 80465960-80465AC0 004EA0 0160+00 1/1 0/0 0/0 .text            setGoal__10daDoor20_cFv */
void daDoor20_c::setGoal() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz local_1c = player->current.pos - current.pos;
    cXyz local_28;
    s16 homeY = home.angle.y;
    mDoMtx_stack_c::YrotS(-home.angle.y);
    mDoMtx_stack_c::multVec(&local_1c, &local_1c);
    local_1c.x = local_1c.x * 0.8f;
    local_1c.y = 0.0f;
    if (daPy_py_c::checkNowWolf()) {
        local_1c.z = -300.0f;
    } else {
        local_1c.z = -200.0f;
    }
    if (field_0x68c == 1) {
        local_1c.z = -local_1c.z;
    }
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(homeY);
    mDoMtx_stack_c::multVec(&local_1c, &local_1c);
    local_28.x = local_1c.x;
    local_28.y = 0.0f;
    local_28.z = local_1c.z;
    dComIfGp_evmng_setGoal(&local_28);
}

/* 80465AC0-80465B34 005000 0074+00 2/2 0/0 0/0 .text            chkMakeStop__10daDoor20_cFv */
int daDoor20_c::chkMakeStop() {
    u8 frontOption = door_param2_c::getFrontOption(this);
    u8 backOption = door_param2_c::getBackOption(this);
    if (frontOption == 1 || frontOption == 3 || backOption == 1 || backOption == 3) {
        return 1;
    } else {
        return 0;
    }
}

/* 80465B34-80465C04 005074 00D0+00 2/2 0/0 0/0 .text            chkStopF__10daDoor20_cFv */
int daDoor20_c::chkStopF() {
    int fRoomNo = door_param2_c::getFRoomNo(this);
    u8 frontOption = door_param2_c::getFrontOption(this);
    u8 swBit = door_param2_c::getSwbit(this);
    if (swBit == 0xff) {
        return 0;
    }
    switch (frontOption) {
    case 1:
    case 3:
        if (!dComIfGp_roomControl_checkStatusFlag(fRoomNo, 1)) {
            return -1;
        }
        return dComIfGs_isSwitch(swBit, fRoomNo) == 0;
    }
    return 0;
}

/* 80465C04-80465CC0 005144 00BC+00 2/2 0/0 0/0 .text            chkStopB__10daDoor20_cFv */
int daDoor20_c::chkStopB() {
    u8 swBit = door_param2_c::getSwbit2(this);
    int bRoomNo = door_param2_c::getBRoomNo(this);
    u8 backOption = door_param2_c::getBackOption(this);
    if (swBit == 0xff) {
        return 0;
    }
    if (backOption != 1 && backOption != 3) {
        return 0;
    }
    if (!dComIfGp_roomControl_checkStatusFlag(bRoomNo, 1)) {
        return -1;
    }
    return dComIfGs_isSwitch(swBit, bRoomNo) == 0;
}

/* 80465CC0-80465DA8 005200 00E8+00 1/1 0/0 0/0 .text            setStopDemo__10daDoor20_cFv */
void daDoor20_c::setStopDemo() {
    u8 frontOption = door_param2_c::getFrontOption(this);
    u8 backOption = door_param2_c::getBackOption(this);
    int isMsgDoor = door_param2_c::isMsgDoor(this);
    if (field_0x68c == 0) {
        if (frontOption == 3 || frontOption == 1) {
            u8 eventNo = door_param2_c::getEventNo(this);
            if (isMsgDoor == 0 && eventNo != 0xff) {
                field_0x6cb = 2;
            } else {
                field_0x6cb = 0;
            }
        }
    } else if (backOption == 3 || backOption == 1) {
        u8 eventNo = door_param2_c::getEventNo2(this);
        if (isMsgDoor == 0 && eventNo != 0xff) {
            field_0x6cb = 3;
        } else {
            field_0x6cb = 1;
        }
    }
}

/* 80465DA8-80465E8C 0052E8 00E4+00 1/1 0/0 0/0 .text            chkStopClose__10daDoor20_cFv */
int daDoor20_c::chkStopClose() {
    if (mDoorStop.field_0x0 == 0) {
        return 0;
    } 
    int frontOption = door_param2_c::getFrontOption(this);
    int backOption = door_param2_c::getBackOption(this);
    u8 swBit;
    u8 roomNo;
    if (field_0x68c == 0) {
        if (frontOption != 1) {
            return 0;
        }
        swBit = door_param2_c::getSwbit(this);
        roomNo = door_param2_c::getFRoomNo(this);
    } else {
        if (backOption != 1) {
            return 0;
        }
        swBit = door_param2_c::getSwbit2(this);
        roomNo = door_param2_c::getBRoomNo(this);
    }
    if (swBit == 0xff) {
        return 0;
    }
    if (dComIfGs_isSwitch(swBit, roomNo)) {
        return 0;
    } else {
        return 1;
    }
}

/* 80465E8C-80465F20 0053CC 0094+00 3/3 0/0 0/0 .text            setStop__10daDoor20_cFv */
void daDoor20_c::setStop() {
    if (chkMakeStop() && mDoorStop.field_0x0 != 0) {
        mDoorStop.field_0x9 = field_0x68c;
        if (field_0x68c == 0) {
            mDoorStop.field_0x8 = chkStopF();
            mDoorStop.field_0xa = chkStopB();
        } else {
            mDoorStop.field_0x8 = chkStopB();
            mDoorStop.field_0xa = chkStopF();
        }
        mDoorStop.field_0x4 = 0.0f;
    }
}

/* 80465F20-8046609C 005460 017C+00 1/1 0/0 0/0 .text            chkStopOpen__10daDoor20_cFv */
int daDoor20_c::chkStopOpen() {
    u8 frontOption = door_param2_c::getFrontOption(this);
    u8 backOption = door_param2_c::getBackOption(this);
    u8 swBit;
    u8 roomNo;
    if (field_0x68c == 0) {
        swBit = door_param2_c::getSwbit(this);
        roomNo = door_param2_c::getFRoomNo(this);
    } else {
        swBit = door_param2_c::getSwbit2(this);
        roomNo = door_param2_c::getBRoomNo(this);
    }
    if ((field_0x68c == 0 && frontOption == 3) || (field_0x68c == 1 && backOption == 3)) {
        if (dComIfGp_event_runCheck() == 0 || (field_0x68d == 0)) {
            if (dComIfGp_roomControl_checkRoomDisp(roomNo) &&
                fopAcM_myRoomSearchEnemy(roomNo) == NULL)
            {
                if (field_0x68d != 0) {
                    field_0x68d--;
                    return 0;
                }
                if (swBit != 0xff) {
                    g_dComIfG_gameInfo.info.onSwitch(swBit, roomNo);
                }
                return 1;
            }
            field_0x68d = 65;
        }
    } else if (swBit != 0xff && dComIfGs_isSwitch(swBit, roomNo)) {
        return 1;
    }
    return 0;
}

/* 8046609C-804660F4 0055DC 0058+00 3/3 0/0 0/0 .text            chkMakeKey__10daDoor20_cFv */
int daDoor20_c::chkMakeKey() {
    if (door_param2_c::getFrontOption(this) == 2 || door_param2_c::getBackOption(this) == 2) {
        return 1;
    } else {
        return 0;
    }
}

/* 804660F4-804661B0 005634 00BC+00 5/5 0/0 0/0 .text calcMtx__12dDoor_stop_cFP10daDoor20_c */
void dDoor_stop_c::calcMtx(daDoor20_c* i_this) {
    if (field_0x8 == 0 || field_0x0 == NULL) {
        return;
    }
    cXyz local_18(i_this->current.pos);
    mDoMtx_stack_c::transS(local_18.x, local_18.y + field_0x4, local_18.z);
    mDoMtx_stack_c::YrotM(i_this->current.angle.y);
    if (field_0x9 == 1) {
        mDoMtx_stack_c::YrotM(0x7fff);
    }
    field_0x0->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 804661B0-804662C0 0056F0 0110+00 2/2 0/0 0/0 .text closeInit__12dDoor_stop_cFP10daDoor20_c */
void dDoor_stop_c::closeInit(daDoor20_c* i_this) {
    field_0x4 = 300.0f;
    i_this->speedF = 0;
    field_0xb = 1;
    if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0) {
        fopAcM_seStart(i_this, Z2SE_OBJ_DOOR_WOOD_BAR_CL, 0);
    } else {
        fopAcM_seStart(i_this, Z2SE_OBJ_DOOR_STEEL_BAR_CL, 0);
    }
}

/* 804662C0-8046634C 005800 008C+00 2/2 0/0 0/0 .text closeProc__12dDoor_stop_cFP10daDoor20_c */
int dDoor_stop_c::closeProc(daDoor20_c* i_this) {
    if (field_0xb == 0) {
        return 1;
    }
    cLib_chaseF(&i_this->speedF, 60.0f, 6.0f);
    if (cLib_chaseF(&field_0x4, 0.0f, i_this->speedF)) {
        field_0xb = 0;
        return 2;
    } 
    return 0;
}

/* 8046634C-80466458 00588C 010C+00 1/1 0/0 0/0 .text openInit__12dDoor_stop_cFP10daDoor20_c */
void dDoor_stop_c::openInit(daDoor20_c* i_this) {
    field_0x4 = 0.0f;
    i_this->speedF = 0;
    field_0xb = 1;
    if (strcmp(dComIfGp_getStartStageName(), "D_MN05") == 0) {
        fopAcM_seStart(i_this, Z2SE_OBJ_DOOR_WOOD_BAR_OP, 0);
    } else {
        fopAcM_seStart(i_this, Z2SE_OBJ_DOOR_STEEL_BAR, 0);
    }
}

/* 80466458-804664E8 005998 0090+00 1/1 0/0 0/0 .text openProc__12dDoor_stop_cFP10daDoor20_c */
int dDoor_stop_c::openProc(daDoor20_c* i_this) {
    if (field_0xb == 0) {
        return 1;
    }
    cLib_chaseF(&i_this->speedF, 30.0f, 4.0f);
        ;
    if (cLib_chaseF(&field_0x4, 300.0f, i_this->speedF)) {
        field_0xb = 0;
        field_0x8 = 0;
        return 2;
    }
    return 0;
}

/* 804664E8-80466538 005A28 0050+00 1/1 0/0 0/0 .text create__12dDoor_stop_cFP10daDoor20_c */
int dDoor_stop_c::create(daDoor20_c* i_this) {
    J3DModelData* stopModelData = i_this->getStopModelData();
    JUT_ASSERT(3923, stopModelData != 0);
    field_0x0 = mDoExt_J3DModel__create(stopModelData, 0x80000, 0x11000084);
    return field_0x0 != NULL ? 1 : 0;
}

/* 80466538-804665B0 005A78 0078+00 1/1 0/0 0/0 .text            draw__12dDoor_stop_cFP10daDoor20_c
 */
void dDoor_stop_c::draw(daDoor20_c* i_this) {
    if (field_0x0 != NULL) {
        g_env_light.settingTevStruct(16, &i_this->current.pos, &i_this->tevStr);
        g_env_light.setLightTevColorType_MAJI(field_0x0, &i_this->tevStr);
        mDoExt_modelUpdateDL(field_0x0);
    }
}

/* 804665B0-804665D0 005AF0 0020+00 1/0 0/0 0/0 .text            daDoor20_Draw__FP10daDoor20_c */
static int daDoor20_Draw(daDoor20_c* i_this) {
    return i_this->draw();
}

/* 804665D0-804665F4 005B10 0024+00 1/0 0/0 0/0 .text            daDoor20_Execute__FP10daDoor20_c */
static int daDoor20_Execute(daDoor20_c* i_this) {
    i_this->execute();
    return 1;
}

/* 804665F4-80466618 005B34 0024+00 1/0 0/0 0/0 .text            daDoor20_Delete__FP10daDoor20_c */
static int daDoor20_Delete(daDoor20_c* i_this) {
    i_this->_delete();
    return 1;
}

/* 80466618-8046670C 005B58 00F4+00 1/0 0/0 0/0 .text            daDoor20_Create__FP10fopAc_ac_c */
static int daDoor20_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, daDoor20_c);
    return static_cast<daDoor20_c*>(i_this)->create();
}

/* 804668D8-804668D8 0000B8 0000+00 0/0 0/0 0/0 .rodata          @stringBase0 */

/* 804672A0-804672C0 -00001 0020+00 1/0 0/0 0/0 .data            l_daDoor20_Method */
static actor_method_class l_daDoor20_Method = {
    (process_method_func)daDoor20_Create,  (process_method_func)daDoor20_Delete,
    (process_method_func)daDoor20_Execute, (process_method_func)NULL,
    (process_method_func)daDoor20_Draw,
};

/* 804672C0-804672F0 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_DOOR20 */
extern actor_process_profile_definition g_profile_DOOR20 = {
    fpcLy_CURRENT_e,        // mLayerID
    3,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_DOOR20,            // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daDoor20_c),     // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    294,                    // mPriority
    &l_daDoor20_Method,     // sub_method
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_CUSTOM_e, // cullType
};
