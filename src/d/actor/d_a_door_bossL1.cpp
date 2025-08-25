//
// Translation Unit: Boss Door L1
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_door_bossL1.h"
#include "d/actor/d_a_obj_keyhole.h"
#include "d/d_door_param2.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_particle.h"
#include "d/d_meter2_info.h"
#include "SSystem/SComponent/c_math.h"
#include "f_op/f_op_actor_mng.h"

/* 804E4E18-804E4E68 -00001 0050+00 1/1 0/0 0/0 .data            l_stageName$3673 */
static char* l_stageName[20] = {
    "D_MN05",
    "D_MN05A",
    "D_MN04",
    "D_MN04A",
    "D_MN01",
    "D_MN01A",
    "D_MN10",
    "D_MN10A",
    "D_MN11",
    "D_MN11A",
    "D_MN06",
    "D_MN06A",
    "D_MN07",
    "D_MN07A",
    "D_MN08",
    "D_MN08A",
    "D_MN09",
    "D_MN09A",
    "D_MN54",
    "D_MN54A",
};

/* 804E1D98-804E1E2C 000078 0094+00 14/14 0/0 0/0 .text            getNowLevel__Fv */
static int getNowLevel() {
    for (int i = 0; i < 20; i++) {
        if (strcmp(dComIfGp_getStartStageName(), l_stageName[i]) == 0) {
            if ((i == 18) || (i == 19)) {
                i = 2;
            }
            return i / 2 + 1;
        }
    }
    return -1;
}

/* 804E1E2C-804E1EE8 00010C 00BC+00 2/1 0/0 0/0 .text            getDoorEventName__11daBdoorL1_cFv
 */
char* daBdoorL1_c::getDoorEventName() {
    switch (getNowLevel()) {
    case 1:
        return "DEFAULT_BS_SHUTTER_L1_F";
    case 2:
        return "DEFAULT_BS_SHUTTER_L2_F";
    case 4:
        return "DEFAULT_BS_SHUTTER_L4_F";
    case 6:
        return "DEFAULT_BS_SHUTTER_L6_F";
    case 7:
        return "DEFAULT_BS_SHUTTER_L7_F";
    case 8:
        return "DEFAULT_BS_SHUTTER_L8_F";
    case 9:
        return "DEFAULT_BS_SHUTTER_L9_F";
    default:
        return "DEFAULT_BS_SHUTTER_L1_F";
    }
}

/* 804E1EE8-804E1FA4 0001C8 00BC+00 2/1 0/0 0/0 .text            getDoorEventName2__11daBdoorL1_cFv
 */
char* daBdoorL1_c::getDoorEventName2() {
    switch (getNowLevel()) {
    case 1:
        return "DEFAULT_BS_SHUTTER_L1_F_2";
    case 2:
        return "DEFAULT_BS_SHUTTER_L2_F_2";
    case 4:
        return "DEFAULT_BS_SHUTTER_L4_F_2";
    case 6:
        return "DEFAULT_BS_SHUTTER_L6_F_2";
    case 7:
        return "DEFAULT_BS_SHUTTER_L7_F_2";
    case 8:
        return "DEFAULT_BS_SHUTTER_L8_F_2";
    case 9:
        return "DEFAULT_BS_SHUTTER_L9_F_2";
    default:
        // BUG: Shouldn't the default be "DEFAULT_BS_SHUTTER_L1_F_2"?
        return "DEFAULT_BS_SHUTTER_L1_F";
    }
}

/* 804E1FA4-804E2060 000284 00BC+00 6/5 0/0 0/0 .text            getArcName__11daBdoorL1_cFv */
const char* daBdoorL1_c::getArcName() {
    switch (getNowLevel()) {
    case 1:
        return "L1Bdoor";
    case 2:
        return "L2Bdoor";
    case 4:
        return "L4Bdoor";
    case 6:
        return "L6Bdoor";
    case 7:
        return "L7Bdoor";
    case 8:
        return "L8Bdoor";
    case 9:
        return "L9Bdoor";
    default:
        return "L1Bdoor";
    }
}

/* 804E2060-804E20C4 000340 0064+00 5/5 0/0 0/0 .text            getAnmArcName__11daBdoorL1_cFv */
const char* daBdoorL1_c::getAnmArcName() {
    switch(getDoorType()) {
    case DOOR_TYPE_0:
        return "BDoorYAnm";
    case DOOR_TYPE_1:
        return "BDoorTAnm";
    default:
        return "BDoorYAnm";
    }
}

/* 804E20C4-804E2104 0003A4 0040+00 5/5 0/0 0/0 .text            getDoorType__11daBdoorL1_cFv */
int daBdoorL1_c::getDoorType() {
    switch (getNowLevel()) {
    case 1:
    case 2:
        return DOOR_TYPE_0;
    default:
        return DOOR_TYPE_1;
    }
}

/* 804E2104-804E2158 0003E4 0054+00 2/2 0/0 0/0 .text            getOpenAnm__11daBdoorL1_cFv */
int daBdoorL1_c::getOpenAnm() {
    if (getDoorType() == 1) {
        return 5;
    }

    return getDoorType() == 0 ? 5 : -1;
}

/* 804E2158-804E21AC 000438 0054+00 1/1 0/0 0/0 .text            getCloseAnm__11daBdoorL1_cFv */
int daBdoorL1_c::getCloseAnm() {
    if (getDoorType() == 1) {
        return 4;
    }

    return getDoorType() == 0 ? 4 : -1;
}

/* 804E21AC-804E21BC 00048C 0010+00 3/3 0/0 0/0 .text            getAlwaysArcName__11daBdoorL1_cFv
 */
const char* daBdoorL1_c::getAlwaysArcName() {
    return "static";
}

/* 804E21BC-804E21CC 00049C 0010+00 1/1 0/0 0/0 .text            getBmd__11daBdoorL1_cFv */
const char* daBdoorL1_c::getBmd() {
    return "door_shutterBoss.bmd";
}

/* 804E21CC-804E21DC 0004AC 0010+00 1/1 0/0 0/0 .text            getDzb__11daBdoorL1_cFv */
/* 804E21BC-804E21CC 00049C 0010+00 1/1 0/0 0/0 .text            getBmd__11daBdoorL1_cFv */
const char* daBdoorL1_c::getDzb() {
    return "door-shutterBoss.dzb";
}

/* 804E21DC-804E2238 0004BC 005C+00 1/1 0/0 0/0 .text            getDoorModelData__11daBdoorL1_cFv
 */
J3DModelData* daBdoorL1_c::getDoorModelData() {
    J3DModelData* door_model = static_cast<J3DModelData*>(dComIfG_getObjectRes(getArcName(), getBmd()));
    JUT_ASSERT(256, door_model != 0)
    return door_model;
}

/* 804E2238-804E2258 000518 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daBdoorL1_c*>(i_this)->CreateHeap();
}

/* 804E4A14-804E4A24 000000 000D+03 12/12 0/0 0/0 .rodata          l_staff_name */
static char const l_staff_name[13] = "SHUTTER_DOOR";

/* 804E4A24-804E4A50 000010 002C+00 1/1 0/0 0/0 .rodata          l_heap_size */
static u32 const l_heap_size[11] = {
    0x00, 0x1500, 0x2260,
    0x00, 0x2100, 0x00, 0x1500,
    0x1500, 0x1600, 0x1500, 0x2260,
};

/* 804E2258-804E2530 000538 02D8+00 1/1 0/0 0/0 .text            CreateHeap__11daBdoorL1_cFv */
int daBdoorL1_c::CreateHeap() {
    int nowLevel = getNowLevel();
    J3DModelData* modelData = getDoorModelData();
    JUT_ASSERT(313, modelData != 0);
    u32 dlistFlag = 0x11000084;
    if (nowLevel == 8) {
        dlistFlag |= 0x200;
    }
    field_0x580 = mDoExt_J3DModel__create(modelData, 0x80000, dlistFlag);
    if (field_0x580 == NULL) {
        return 0;
    }
    if (getDoorType() == DOOR_TYPE_0) {
        field_0x584 =
            mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
        if (field_0x584 == NULL) {
            return 0;
        }
    } else {
        field_0x584 = NULL;
    }
    if (nowLevel == 8) {
        J3DAnmTextureSRTKey* pbtk = (J3DAnmTextureSRTKey*)dComIfG_getObjectRes(getArcName(), "door_shutterBoss.btk");
        JUT_ASSERT(341, pbtk != 0);
        field_0x58c = new mDoExt_btkAnm();
        if (field_0x58c == NULL || !field_0x58c->init(field_0x580->getModelData(), pbtk, 1, 0, 1.0f, 0, -1)) {
            return 0;
        }
    }
    J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(getAnmArcName(), getOpenAnm());
    JUT_ASSERT(354, anm != 0);
    field_0x588 = new mDoExt_bckAnm();
    if (field_0x588 == NULL || !field_0x588->init(anm, 1, 0, 1.0f, 0, -1,false)) {
        return 0;
    }

    field_0x588->entry(field_0x580->getModelData());
    field_0x580->calc();
    if (field_0x584 != NULL) {
        field_0x584->calc();
    }
    calcMtx();
    field_0x590 = new dBgW();
    if (field_0x590 == NULL || field_0x590->Set((cBgD_t*)dComIfG_getObjectRes(getAlwaysArcName(), getDzb()), 1, &field_0x7ec)) {
        return 0;
    }
    return 1;
}

static char* action_table[18] = {
    "WAIT",
    "SETANGLE",
    "UNLOCK",
    "OPEN",
    "SETGOAL",
    "SETGOAL2",
    "CLOSE",
    "SMOKE",
    "SMOKE_END",
    "END",
    "END_CHECK",
    "CHG_SCENE",
    "STOP_CLOSE",
    "PLY_DISP",
    "PLY_NODISP",
    "SETPOS",
    "LIGHT_ANM",
    "INIT",
};

/* 804E2578-804E2754 000858 01DC+00 2/2 0/0 0/0 .text            calcMtx__11daBdoorL1_cFv */
void daBdoorL1_c::calcMtx() {
    cXyz cStack_1c(0.0f, 0.0f, field_0x5a8);
    cXyz cStack_28(0.0f, 0.0f, 20.0f);
    switch(getDoorType()) {
    case 0:
        mDoMtx_stack_c::YrotS(home.angle.y);
        mDoMtx_stack_c::multVec(&cStack_1c, &cStack_1c);
        mDoMtx_stack_c::transS(current.pos);
        if (!checkFront()) {
            mDoMtx_stack_c::transM(cStack_1c);
        }
        mDoMtx_stack_c::YrotM(home.angle.y + 0x7fff);
        field_0x580->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoMtx_stack_c::transS(current.pos);
        if (checkFront()) {
            mDoMtx_stack_c::transM(cStack_1c);
        }
        mDoMtx_stack_c::YrotM(home.angle.y);
        field_0x584->setBaseTRMtx(mDoMtx_stack_c::get());
        if (checkFront()) {
            MTXCopy(field_0x580->getBaseTRMtx(), field_0x7ec);
        } else {
            MTXCopy(field_0x584->getBaseTRMtx(), field_0x7ec);
        }
        break;
    case 1:
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::YrotM(home.angle.y);
        field_0x580->setBaseTRMtx(mDoMtx_stack_c::get());
        mDoMtx_stack_c::YrotS(home.angle.y);
        mDoMtx_stack_c::multVec(&cStack_28, &cStack_28);
        mDoMtx_stack_c::transS(current.pos);
        mDoMtx_stack_c::transM(cStack_28);
        mDoMtx_stack_c::YrotM(home.angle.y);
        MTXCopy(mDoMtx_stack_c::get(), field_0x7ec);
        break;
    default:
        JUT_ASSERT(442, 0);
        break;
    }
}

/* 804E2754-804E28E4 000A34 0190+00 1/1 0/0 0/0 .text            CreateInit__11daBdoorL1_cFv */
int daBdoorL1_c::CreateInit() {
    field_0x7c4 = current.pos;
    field_0x7d0 = field_0x7c4;
    field_0x5ac.Set(&field_0x7c4, &field_0x7d0, this, 1, &field_0x784, fopAcM_GetSpeed_p(this),
                    NULL, NULL);
    bool rt = dComIfG_Bgsp().Regist(field_0x590, this);
    JUT_ASSERT(464, rt == 0);
    setAction(ACTION_CLOSE_WAIT);
    attention_info.position.y += 250.0f;
    eyePos.y += 250.0f;
    attention_info.flags = 0x20;
    if (checkFront()) {
        field_0x5a8 = -60.0f;
    } else {
        field_0x5a8 = 60.0f;
    }
    calcMtx();
    field_0x590->Move();
    u32 swBit = door_param2_c::getSwbit(this);
    eventInfo.setArchiveName((char*)getArcName());
    if (dComIfGs_isSwitch(swBit, fopAcM_GetRoomNo(this)) == 0) {
        field_0x59e = dComIfGp_getEventManager().getEventIdx(this, getDoorEventName(), 0xff);
    } else {
        field_0x59e = dComIfGp_getEventManager().getEventIdx(this, getDoorEventName2(), 0xff);
    }
    return 1;
}

/* 804E28E4-804E2A98 000BC4 01B4+00 1/1 0/0 0/0 .text            create__11daBdoorL1_cFv */
int daBdoorL1_c::create() {
    fopAcM_SetupActor(this, daBdoorL1_c);
    int rv = dComIfG_resLoad(&mPhase1, getArcName());
    if (rv != cPhs_COMPLEATE_e) {
        return rv;
    }
    rv = dComIfG_resLoad(&mPhase3, getAnmArcName());
    if (rv != cPhs_COMPLEATE_e) {
        return rv;
    }
    rv = dComIfG_resLoad(&mPhase2, getAlwaysArcName());
    if (rv != cPhs_COMPLEATE_e) {
        return rv;
    }
    shape_angle.z = 0;
    shape_angle.x = 0;
    current.angle.z = 0;
    current.angle.x = 0;
    if (!dComIfGs_isSwitch(door_param2_c::getSwbit(this), fopAcM_GetRoomNo(this))
                            && dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) != 3) {
        createKey();
    } else {
        mKeyHoleId = -1;
    }
    if (fopAcM_entrySolidHeap(this, CheckCreateHeap, l_heap_size[getNowLevel()]) == 0) {
        return cPhs_ERROR_e;
    } 
    if (CreateInit() != 0) {
        return cPhs_COMPLEATE_e;
    }
    return cPhs_ERROR_e;
}

/* 804E2B78-804E2BC0 000E58 0048+00 1/1 0/0 0/0 .text            getDemoAction__11daBdoorL1_cFv */
int daBdoorL1_c::getDemoAction() {
    return dComIfGp_evmng_getMyActIdx(field_0x5a0, action_table, 18, 0, 0);
}

/* 804E2BC0-804E3180 000EA0 05C0+00 5/3 0/0 0/0 .text            demoProc__11daBdoorL1_cFv */
void daBdoorL1_c::demoProc() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    int demoAction = getDemoAction();
    cXyz cStack_38;
    if (dComIfGp_evmng_getIsAddvance(field_0x5a0)) {
        switch (demoAction) {
        case 0: {
            int* puVar3 = dComIfGp_evmng_getMyIntegerP(field_0x5a0, "Timer");
            if (puVar3 == NULL) {
                field_0x5a4 = 1;
            } else {
                field_0x5a4 = *puVar3;
            }
            break;
        }
        case 1:
            field_0x59a = 5;
            break;
        case 2:
            unlockInit();
            break;
        case 3:
            openInit();
            break;
        case 4:
            calcGoal(&cStack_38, 0);
            dComIfGp_evmng_setGoal(&cStack_38);
            break;
        case 5:
            calcGoal(&cStack_38, 1);
            dComIfGp_evmng_setGoal(&cStack_38);
            break;
        case 6:
            closeInit();
            break;
        case 7:
            smokeInit();
            break;
        case 11:
            field_0x59c = 0;
            break;
        case 13:
            player->offPlayerNoDraw();
            player->offPlayerShadowNoDraw();
            break;
        case 14:
            player->onPlayerNoDraw();
            player->onPlayerShadowNoDraw();
            break;
        case 0xf:
            dComIfG_Bgsp().Release(field_0x590);
            setPos();
            break;
        case 17:
            if (getNowLevel() == 8) {
                fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CREST_ON, 0);
                field_0x58c->setFrame(0.0f);
                field_0x58c->setPlaySpeed(1.0f);
            }
            if (dComIfGs_isSwitch(door_param2_c::getSwbit(this), fopAcM_GetRoomNo(this))) {
                field_0x59b = 0;
            } else {
                field_0x59b = 1;
            }
            dComIfGs_onSwitch(door_param2_c::getSwbit(this), fopAcM_GetRoomNo(this));
            break;
        case 16:
            fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CREST_ON, 0);
            field_0x58c->setPlaySpeed(1.0f);
            break;
        }
    }
    switch (demoAction) {
    case 0:
        if (cLib_calcTimer(&field_0x5a4) == 0) {
            dComIfGp_evmng_cutEnd(field_0x5a0);
        }
        break;
    case 1:
        if (setAngle() != 0) {
            dComIfGp_evmng_cutEnd(field_0x5a0);
        }
        break;
    case 2: {
        obj_keyhole_class* keyhole = (obj_keyhole_class*)fopAcM_SearchByID(mKeyHoleId);
        if ((keyhole != NULL && keyhole->checkOpenEnd()) || mKeyHoleId == -1) {
            dComIfGp_evmng_cutEnd(field_0x5a0);
        }
        break;
    }
    case 3:
        if (openProc() != 0) {
            openEnd();
            dComIfGp_evmng_cutEnd(field_0x5a0);
        }
        break;
    case 4:
        dComIfGp_evmng_cutEnd(field_0x5a0);
        break;
    case 5:
        dComIfGp_evmng_cutEnd(field_0x5a0);
        break;
    case 6:
        if (getNowLevel() == 8) {
            if (closeProc() != 0) {
                if (field_0x58c->getPlaySpeed() == 0.0f) {
                    fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CREST_OFF, 0);
                    openEnd();
                }
                field_0x58c->setPlaySpeed(-1.0f);
                if (field_0x58c->play() != 0) {
                    dComIfGp_evmng_cutEnd(field_0x5a0);
                }
            }
        } else {
            if (closeProc() != 0) {
                closeEnd();
                dComIfGp_evmng_cutEnd(field_0x5a0);
            }
        }
        break;
    case 7:
        dComIfGp_evmng_cutEnd(field_0x5a0);
        break;
    case 9:
        break;
    case 10:
        setAction(ACTION_END);
        dComIfGp_evmng_cutEnd(field_0x5a0);
        break;
    case 11:
        if (field_0x59c == 0) {
            daPy_py_c* player = daPy_getPlayerActorClass();
            player->onSceneChangeArea(door_param2_c::getExitNo(this), 0xff, NULL);
        }
        field_0x59c--;
        break;
    case 16:
        if (field_0x58c->play() != 0) {
            dComIfGp_evmng_cutEnd(field_0x5a0);
        }
        break;
    case 17:
        if (getNowLevel() == 8) {
            if (field_0x58c->play() != 0) {
                dComIfGp_evmng_cutEnd(field_0x5a0);
            }
        } else {
            dComIfGp_evmng_cutEnd(field_0x5a0);
        }
        break;
     default:
        dComIfGp_evmng_cutEnd(field_0x5a0);
        break;
    }
    for (int i = 0; i < 2; i++) {
        if (field_0x7e4[i] != NULL && field_0x580 != NULL) {
            field_0x7e4[i]->setGlobalRTMatrix(field_0x580->getAnmMtx(0));
        }
    }
}

/* 804E3180-804E357C 001460 03FC+00 1/1 0/0 0/0 .text            openInit__11daBdoorL1_cFv */
int daBdoorL1_c::openInit() {
    static u16 const l_lv1_eff[3] = {0x8C42, 0x8C43, 0x8C44};
    static u16 const l_lv2_eff[3] = {0x8C45, 0x8C46, 0x8C47};
    static u16 const l_lv4_eff_a[2] = {0x8C48, 0x8C49};
    static u16 const l_lv4_eff_b[2] = {0x8C4A, 0x8C4B};
    static u16 const l_lv6_eff_a[2] = {0x8C4C, 0x8C4D};
    static u16 const l_lv6_eff_b[2] = {0x8C4E, 0x8C4F};

    u32 i;
    if (field_0x590->ChkUsed()) {
        dComIfG_Bgsp().Release(field_0x590);
    }
    J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(getAnmArcName(), getOpenAnm());
    JUT_ASSERT(811, anm != 0);
    int rt = field_0x588->init(anm, 1, 0, 1.0f, 0, -1, true);
    JUT_ASSERT(813, rt == 0);
    if (field_0x59b != 0) {
        field_0x7dc = shape_angle;
        ;
        if (dStage_stagInfo_GetSTType(dComIfGp_getStage()->getStagInfo()) == 3) {
            field_0x7dc.y += 0x7fff;
        }
        switch (getNowLevel()) {
        case 1:
            for (u32 i = 0; i < 3; i++) {
                dComIfGp_particle_set(l_lv1_eff[i], &current.pos, &field_0x7dc, &scale, 0xff, 0, -1,
                                      NULL, NULL, NULL);
            }
            break;
        case 2:
            for (u32 i = 0; i < 3; i++) {
                dComIfGp_particle_set(l_lv2_eff[i], &current.pos, &field_0x7dc, &scale, 0xff, 0, -1,
                                      NULL, NULL, NULL);
            }
            break;
        case 4:
            for (u32 i = 0; i < 2; i++) {
                dComIfGp_particle_set(l_lv4_eff_a[i], &current.pos, &field_0x7dc, &scale, 0xff, 0,
                                      -1, NULL, NULL, NULL);
            }
            u32 i;
            for (i = 0; i < 2; i++) {
                field_0x7e4[i] = dComIfGp_particle_set(l_lv4_eff_b[i], &current.pos, &field_0x7dc,
                                                       &scale, 0xff, 0, -1, NULL, NULL, NULL);
                if (field_0x7e4[i] != NULL) {
                    field_0x7e4[i]->becomeImmortalEmitter();
                }
            }
            break;
        case 6:
            for (i = 0; i < 2; i++) {
                dComIfGp_particle_set(l_lv6_eff_a[i], &current.pos, &field_0x7dc, &scale, 0xff, 0,
                                      -1, NULL, NULL, NULL);
            }
            for (u32 i = 0; i < 2; i++) {
                field_0x7e4[i] = dComIfGp_particle_set(l_lv6_eff_b[i], &current.pos, &field_0x7dc,
                                                       &scale, 0xff, 0, -1, NULL, NULL, NULL);
                if (field_0x7e4[i] != NULL) {
                    field_0x7e4[i]->becomeImmortalEmitter();
                }
            }
            break;
        }
    }
    return 1;
}

/* 804E357C-804E3794 00185C 0218+00 1/1 0/0 0/0 .text            openProc__11daBdoorL1_cFv */
int daBdoorL1_c::openProc() {
    int rv = field_0x588->play();
    f32 frame = field_0x588->getFrame();
    if (frame == 12.0f) {
        dComIfGp_getVibration().StartQuake(4, 15, cXyz(0.0f, 1.0f, 0.0f));
    } else if (frame == 18.0f) {

        switch(getNowLevel()) {
        case 8:
            fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_OP, 0);
            break;
        case 4:
        case 6:
        case 7:
        case 9:
            if (field_0x59b != 0) {
                mDoAud_seStart(Z2SE_OBJ_LV3_SHTR_OP_FX, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            } else {
                mDoAud_seStart(Z2SE_OBJ_LV3_SHTR_OP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            }
            break;
        default:
            mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_ROLLOPEN, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            break;
        }
    }
    
    return rv;
}

/* 804E3794-804E3850 001A74 00BC+00 1/1 0/0 0/0 .text            openEnd__11daBdoorL1_cFv */
int daBdoorL1_c::openEnd() {
    switch(getNowLevel()) {
    case 4:
    case 6:
    case 7:
    case 8:
    case 9:
        break;
    default:
        mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_OPEN_STOP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        break;
    }
    dComIfGp_getVibration().StopQuake(31);
    return 1;
}

/* 804E3850-804E3A2C 001B30 01DC+00 1/1 0/0 0/0 .text            closeInit__11daBdoorL1_cFv */
int daBdoorL1_c::closeInit() {
    J3DAnmTransform* anm = (J3DAnmTransform*)dComIfG_getObjectRes(getAnmArcName(), getCloseAnm());
    JUT_ASSERT(1020, anm != 0);
    int rt = field_0x588->init(anm, 1, 0, 1.0f, 0, -1, true);
    JUT_ASSERT(1022, rt == 0);
    switch(getNowLevel()) {
    case 8:
        fopAcM_seStart(this, Z2SE_OBJ_L8_SHTR_CL, 0);
        break;
    case 4:
    case 6:
    case 7:
    case 9:
        mDoAud_seStart(Z2SE_OBJ_LV3_SHTR_CL, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        break;
    default:
        mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_ROLLCLOSE, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
        break;
    }

    dComIfGp_getVibration().StartQuake(4, 15, cXyz(0.0f, 1.0f, 0.0f));
    return 1;
}

/* 804E3A2C-804E3C0C 001D0C 01E0+00 1/1 0/0 0/0 .text            closeProc__11daBdoorL1_cFv */
int daBdoorL1_c::closeProc() {
    int rv = field_0x588->play();
    f32 frame = field_0x588->getFrame();
    if (frame == 11.0f) {
        dComIfGp_getVibration().StopQuake(31);
    } else if (frame == 12.0f) {
        ;
        dComIfGp_getVibration().StartShock(8, 15, cXyz(0.0f, 1.0f, 0.0f));
        switch(getNowLevel()) {
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
            break;
        default:
            mDoAud_seStart(Z2SE_OBJ_WOOD_DOOR_CLOSE_STOP, &current.pos, 0, dComIfGp_getReverb(fopAcM_GetRoomNo(this)));
            break;
        }
    } else if (frame == 4.0f) {
        switch(getNowLevel()) {
        case 4:
        case 6:
        case 7:
        case 8:
        case 9:
            field_0x7c4.y -= 10.0f;
            field_0x7d0.y += 10.0f;
            field_0x5ac.CrrPos(dComIfG_Bgsp());
            cXyz cStack_34(1.65f, 1.65f, 1.65f);
            dComIfGp_particle_setPolyColor(0x8c50, field_0x5ac.m_gnd, &current.pos, &tevStr,
                                           &shape_angle, &cStack_34, 0, 0, fopAcM_GetRoomNo(this),
                                           0);
            break;
        }
    }
    return rv;
}

/* 804E3C0C-804E3C14 001EEC 0008+00 1/1 0/0 0/0 .text            closeEnd__11daBdoorL1_cFv */
int daBdoorL1_c::closeEnd() {
    return 1;
}

/* 804E3C14-804E3CCC 001EF4 00B8+00 1/1 0/0 0/0 .text            unlockInit__11daBdoorL1_cFv */
int daBdoorL1_c::unlockInit() {
    if (mKeyHoleId == -1) {
        return 1;
    }
    obj_keyhole_class* keyhole = (obj_keyhole_class*)fopAcM_SearchByID(mKeyHoleId);
    if (keyhole != NULL) {
        keyhole->setOpen();
        mDoAud_seStart(Z2SE_OBJ_BOSS_LOCK_OPEN, &keyhole->actor.current.pos, 0, 0);
    }
    field_0x59b = 1;
    return 1;
}

/* 804E3CCC-804E3DE8 001FAC 011C+00 1/1 0/0 0/0 .text            setPos__11daBdoorL1_cFv */
void daBdoorL1_c::setPos() {
    cXyz local_1c;
    cXyz local_28 = dComIfGp_getPlayer(0)->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-shape_angle.y);
    mDoMtx_stack_c::multVec(&local_28, &local_28);
    local_1c.x = local_28.x;
    if (local_28.x > 100.0f) {
        local_1c.x = 100.0f;
    }
    if (local_1c.x < -100.0f) {
        local_1c.x = -100.0f;
    }
    local_1c.y = 0.0f;
    local_1c.z = 70.0f;
    mDoMtx_stack_c::YrotS(home.angle.y);
    mDoMtx_stack_c::multVec(&local_1c, &local_1c);
    local_1c += current.pos;
    dComIfGp_evmng_setGoal(&local_1c);
}

/* 804E3DE8-804E3F10 0020C8 0128+00 1/1 0/0 0/0 .text            calcGoal__11daBdoorL1_cFP4cXyzi */
void daBdoorL1_c::calcGoal(cXyz* param_1, int param_2) {
    cXyz local_24 = dComIfGp_getPlayer(0)->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&local_24, &local_24);
    local_24.x = local_24.x * 0.5f;
    local_24.y = 0.0f;
    if (param_2 == 0) {
        local_24.z = -1000.0f;
    } else {
        local_24.z = -240.0f;
    }
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&local_24, &local_24);
    param_1->x = local_24.x;
    param_1->y = 0.0f;
    param_1->z = local_24.z;
}

/* 804E3F10-804E3FF8 0021F0 00E8+00 1/1 0/0 0/0 .text            setAngle__11daBdoorL1_cFv */
int daBdoorL1_c::setAngle() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz playerPos = player->current.pos;
    s16 playerAngle = player->shape_angle.y;
    cLib_addCalcAngleS2(&playerAngle, shape_angle.y + 0x7fff, 5, 3000);
    if (field_0x59a != 0) {
        player->setPlayerPosAndAngle(&playerPos, playerAngle, 0);
        field_0x59a--;
    } else {
        player->setPlayerPosAndAngle(&playerPos, shape_angle.y + 0x7fff, 0);
        return 1;
    }
    return 0;
}

/* 804E3FF8-804E4100 0022D8 0108+00 1/1 0/0 0/0 .text            createKey__11daBdoorL1_cFv */
int daBdoorL1_c::createKey() {
    if (field_0x598 == 0) {
        cXyz cStack_24(current.pos);
        current.pos = home.pos;
        cXyz cStack_30(0.0f, 0.0f, 50.0f);
        int actorParams = getNowLevel();
        int flags = ~0xFF;
        flags |= actorParams;
        mKeyHoleId = fopAcM_createChildFromOffset(PROC_OBJ_KEYHOLE, fopAcM_GetID(this), flags,
                                                             &cStack_30, fopAcM_GetRoomNo(this), 0,
                                                             &scale, -1, 0);
        current.pos = cStack_24;
        if (mKeyHoleId == -1) {
            return 0;
        }
        field_0x598 = 1;
    }
    return 1;
}

/* 804E4100-804E4104 0023E0 0004+00 1/1 0/0 0/0 .text            smokeInit__11daBdoorL1_cFv */
void daBdoorL1_c::smokeInit() {
    /* empty function */
}

/* 804E4104-804E4158 0023E4 0054+00 1/1 0/0 0/0 .text            deleteEmitter__11daBdoorL1_cFv */
void daBdoorL1_c::deleteEmitter() {
    for (int i = 0; i < 2; i++) {
        if (field_0x7e4[i] != NULL) {
            field_0x7e4[i]->becomeInvalidEmitter();
            field_0x7e4[i]->quitImmortalEmitter();
            field_0x7e4[i] = NULL;
        }
    }
}

/* 804E4158-804E432C 002438 01D4+00 1/1 0/0 0/0 .text            checkArea__11daBdoorL1_cFv */
int daBdoorL1_c::checkArea() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz local_48;
    cXyz local_54;
    // Fake Match. Not the first time this solves this. Something is up with the check wolf (maybe only in REL).
    if (dComIfGp_getLinkPlayer()->mNoResetFlg1 & daPy_py_c::FLG1_IS_WOLF) {
        local_48 = player->attention_info.position - current.pos;
        local_54 = player->current.pos - current.pos;
    } else {
        local_48 = player->current.pos - current.pos;
    }
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&local_48, &local_48);
    if (fabsf(local_48.x) > 200.0f) {
        return 0;
    }
    if (dComIfGp_getLinkPlayer()->mNoResetFlg1 & daPy_py_c::FLG1_IS_WOLF) {
        mDoMtx_stack_c::multVec(&local_54, &local_54);
        if (fabsf(local_54.x) > 130.0f) {
            return 0;
        }
    }
    if (fabsf(local_48.z) > 100.0f) {
        return 0;
    }
    if ((s16)fabs(current.angle.y - 0x7fff - player->current.angle.y) <= 0x4000) {
        return 1;
    } else {
        return 0;
    }
}

/* 804E432C-804E43A0 00260C 0074+00 3/3 0/0 0/0 .text            checkFront__11daBdoorL1_cFv */
int daBdoorL1_c::checkFront() {
    if (strcmp(dComIfGp_getStartStageName(), "D_MN08A") == 0) {
        if (dComIfGp_roomControl_getStayNo() == 10) {
            return 0;
        }
    } else if (dComIfGp_roomControl_getStayNo() == 50) {
        return 0;
    }
    return 1;
}

/* 804E43A0-804E4414 002680 0074+00 1/1 0/0 0/0 .text            checkOpen__11daBdoorL1_cFv */
int daBdoorL1_c::checkOpen() {
    if (!dComIfGs_isDungeonItemBossKey()) {
        return 0;
    } 
    if (!checkFront()) {
        return 0;
    }
    if (checkArea()) {
        return 1;
    } else {
        return 0;
    }
}

/* 804E4414-804E441C 0026F4 0008+00 1/0 0/0 0/0 .text            actionWait__11daBdoorL1_cFv */
int daBdoorL1_c::actionWait() {
    return 1;
}

/* 804E441C-804E44B4 0026FC 0098+00 1/0 0/0 0/0 .text            actionCloseWait__11daBdoorL1_cFv */
int daBdoorL1_c::actionCloseWait() {
    if (eventInfo.checkCommandDoor()) {
        field_0x5a0 = dComIfGp_evmng_getMyStaffId(l_staff_name, 0, 0);
        demoProc();
        setAction(ACTION_OPEN);
    } else if (checkOpen()) {
        eventInfo.setEventId(field_0x59e);
        eventInfo.setMapToolId(0xff);
        eventInfo.onCondition(4);
    }
    return 1;
}

/* 804E44B4-804E44EC 002794 0038+00 1/0 0/0 0/0 .text            actionOpen__11daBdoorL1_cFv */
int daBdoorL1_c::actionOpen() {
    demoProc();
    dMeter2Info_onGameStatus(2);
    return 1;
}

/* 804E44EC-804E464C 0027CC 0160+00 1/0 0/0 0/0 .text            actionEnd__11daBdoorL1_cFv */
int daBdoorL1_c::actionEnd() {
    if (!field_0x590->ChkUsed()) {
        bool rt = dComIfG_Bgsp().Regist(field_0x590, this);
        JUT_ASSERT(1583, rt != 0);
    }
    setAction(0);
    cXyz local_70(cM_ssin(home.angle.y), 0.0f, cM_scos(home.angle.y));
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz cStack_7c = player->current.pos - current.pos;
    f32 fVar1;
    f32 dVar12 = cStack_7c.inprodXZ(local_70);
    fVar1 = dVar12 < 0.0f ? 180.0f : -180.0f;
    cXyz cStack_88(current.pos.x - fVar1 * local_70.x, current.pos.y,
                   current.pos.z - fVar1 * local_70.z);
    s32 roomNo = fopAcM_GetRoomNo(player);
    s16 angle;
    if (dVar12 > 0.0f) {
        angle = current.angle.y;
    } else {
        angle = current.angle.y + 0x8000;
    }
    dComIfGs_setRestartRoom(cStack_88, angle, roomNo);
    return 1;
}

/* 804E464C-804E476C 00292C 0120+00 1/1 0/0 0/0 .text            execute__11daBdoorL1_cFv */
int daBdoorL1_c::execute() {
    static actionFunc l_action[4] = {&daBdoorL1_c::actionWait, &daBdoorL1_c::actionCloseWait, &daBdoorL1_c::actionOpen, &daBdoorL1_c::actionEnd};
    if (fopAcM_checkStatus(this, 0x1000)) {
        field_0x5a0 = dComIfGp_evmng_getMyStaffId(l_staff_name, 0, 0);
        dMeter2Info_onGameStatus(2);
        demoProc();
    } else {
        (this->*(((actionFunc*)l_action)[mAction]))();
    }
    return 1;
}

/* 804E476C-804E48BC 002A4C 0150+00 1/1 0/0 0/0 .text            draw__11daBdoorL1_cFv */
int daBdoorL1_c::draw() {
    g_env_light.settingTevStruct( 0x10, &current.pos, &tevStr);
    dComIfGd_setListBG();
    if (getNowLevel() == 8 && field_0x58c != NULL) {
        field_0x58c->entry(field_0x580->getModelData());
    }
    g_env_light.setLightTevColorType_MAJI(field_0x580, &tevStr);
    field_0x588->entry(field_0x580->getModelData());
    mDoExt_modelUpdateDL(field_0x580);
    mDoExt_bckAnmRemove(field_0x580->getModelData());
    if (field_0x584 != NULL) {
        g_env_light.setLightTevColorType_MAJI(
                                                      field_0x584,
                                                      &tevStr);
        field_0x588->entry(field_0x584->getModelData());
        mDoExt_modelUpdateDL(field_0x584);
        mDoExt_bckAnmRemove(field_0x584->getModelData());
    }
    dComIfGd_setList();
    return 1;
}

/* 804E48BC-804E4958 002B9C 009C+00 1/1 0/0 0/0 .text            Delete__11daBdoorL1_cFv */
int daBdoorL1_c::Delete() {
    deleteEmitter();
    if (heap != NULL && field_0x590->ChkUsed()) {
        dComIfG_Bgsp().Release(field_0x590);
    }
    dComIfG_resDelete(&mPhase1, getArcName());
    dComIfG_resDelete(&mPhase2, getAlwaysArcName());
    dComIfG_resDelete(&mPhase3, getAnmArcName());
    return 1;
}

/* 804E4958-804E4978 002C38 0020+00 1/0 0/0 0/0 .text            daBdoorL1_Draw__FP11daBdoorL1_c */
static int daBdoorL1_Draw(daBdoorL1_c* i_this) {
    return i_this->draw();
}

/* 804E4978-804E499C 002C58 0024+00 1/0 0/0 0/0 .text            daBdoorL1_Execute__FP11daBdoorL1_c
 */
static int daBdoorL1_Execute(daBdoorL1_c* i_this) {
    i_this->execute();
    return 1;
}

/* 804E499C-804E49C0 002C7C 0024+00 1/0 0/0 0/0 .text            daBdoorL1_Delete__FP11daBdoorL1_c
 */
static int daBdoorL1_Delete(daBdoorL1_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 804E49C0-804E49E0 002CA0 0020+00 1/0 0/0 0/0 .text            daBdoorL1_Create__FP10fopAc_ac_c */
static int daBdoorL1_Create(fopAc_ac_c* i_this) {
    return static_cast<daBdoorL1_c*>(i_this)->create();
}

/* 804E5018-804E5038 -00001 0020+00 1/0 0/0 0/0 .data            l_daBdoorL1_Method */
static actor_method_class l_daBdoorL1_Method = {
    (process_method_func)daBdoorL1_Create,
    (process_method_func)daBdoorL1_Delete,
    (process_method_func)daBdoorL1_Execute,
    (process_method_func)NULL,
    (process_method_func)daBdoorL1_Draw,
};

/* 804E5038-804E5068 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_L1BOSS_DOOR */
extern actor_process_profile_definition g_profile_L1BOSS_DOOR = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_L1BOSS_DOOR,
    &g_fpcLf_Method.base,
    sizeof(daBdoorL1_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x12A,
    &l_daBdoorL1_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_6_e,
};
