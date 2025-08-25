//
// Door Knob
//

#include "d/dolzel_rel.h"

#include "d/actor/d_a_door_knob00.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_com_inf_game.h"
#include "d/d_msg_object.h"
#include "d/actor/d_a_player.h"
#include "d/d_meter2_info.h"
#include "SSystem/SComponent/c_math.h"
#include "printf.h"

/* 8045E858-8045E864 000078 000C+00 1/1 0/0 0/0 .text getDoorModel__12knob_param_cFP10fopAc_ac_c
 */
u32 knob_param_c::getDoorModel(fopAc_ac_c* i_this) {
    return fopAcM_GetParamBit(i_this, 5, 3);
}

/* 8045E864-8045E870 000084 000C+00 1/1 0/0 0/0 .text
 * getDoorLightInf__12knob_param_cFP10fopAc_ac_c                */
u32 knob_param_c::getDoorLightInf(fopAc_ac_c* i_this) {
    return fopAcM_GetParamBit(i_this, 8, 3);
}

/* 8045E870-8045E87C 000090 000C+00 2/2 0/0 0/0 .text getMsgNo__12knob_param_cFP10fopAc_ac_c */
u16 knob_param_c::getMsgNo(fopAc_ac_c* i_this) {
    return i_this->home.angle.x;
}

/* 8045E87C-8045E888 00009C 000C+00 2/2 0/0 0/0 .text getExitNo__12knob_param_cFP10fopAc_ac_c */
u8 knob_param_c::getExitNo(fopAc_ac_c* i_this) {
    return fopAcM_GetParamBit(i_this, 25, 6);
}

static char* dummyStringFunc() {
    return "door-knob_";
}

/* 8045E888-8045E898 0000A8 0010+00 4/4 0/0 0/0 .text            getAlwaysArcName__10daKnob20_cFv */
char* daKnob20_c::getAlwaysArcName() {
    return "static";
}

/* 8045E898-8045E8A8 0000B8 0010+00 3/3 0/0 0/0 .text            getEvArcName__10daKnob20_cFv */
char* daKnob20_c::getEvArcName() {
    return "DoorK10";
}

/* 8045E8A8-8045E8B8 0000C8 0010+00 1/1 0/0 0/0 .text            getDzb__10daKnob20_cFv */
char* daKnob20_c::getDzb() {
    return "door-knob.dzb";
}

/* 8045E8B8-8045E8C8 0000D8 0010+00 1/1 0/0 0/0 .text            getDummyBmd__10daKnob20_cFv */
char* daKnob20_c::getDummyBmd() {
    return "door-knobDummy.bmd";
}

/* 80460894-80460898 -00001 0004+00 1/1 0/0 0/0 .data            l_bmd_base_name */
static char* l_bmd_base_name = "door-knob_";

/* 80460A98-80460AB8 000000 0020+00 1/1 0/0 0/0 .bss             l_bmdName$3809 */
static char l_bmdName[32];

/* 8045E8C8-8045E91C 0000E8 0054+00 1/1 0/0 0/0 .text            getBmd__10daKnob20_cFv */
char* daKnob20_c::getBmd() {
    sprintf(l_bmdName, "%s%02d.bmd", l_bmd_base_name, knob_param_c::getDoorModel(this));
    return l_bmdName;
}

/* 8045E91C-8045E940 00013C 0024+00 1/1 0/0 0/0 .text            getDoorModelData__10daKnob20_cFv */
J3DModelData* daKnob20_c::getDoorModelData() {
    return (J3DModelData*)dComIfG_getStageRes(getBmd());
}

/* 8045E940-8045E960 000160 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daKnob20_c*>(i_this)->CreateHeap();
}

/* 8045E960-8045EBA0 000180 0240+00 1/1 0/0 0/0 .text            CreateHeap__10daKnob20_cFv */
int daKnob20_c::CreateHeap() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getObjectRes(getAlwaysArcName(), getDummyBmd());
    JUT_ASSERT(201, modelData != 0);
    mModel1 = mDoExt_J3DModel__create(modelData, 0, 0x11020203);
    if (mModel1 == NULL) {
        return 0;
    }
    mModel1->setBaseScale(scale);
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
    J3DAnmTransform* anm =
        (J3DAnmTransform*)dComIfG_getObjectRes(getAlwaysArcName(), "FDoorA.bck");
    JUT_ASSERT(222, anm != 0);
    if (field_0x57c.init(anm, 1, 0, 1.0f, 0, -1, false) == 0) {
        return 0;
    }
    mJoint = modelData->getJointName()->getIndex("FDoor");
    JUT_ASSERT(227, mJoint >= 0);
    modelData = getDoorModelData();
    JUT_ASSERT(235, modelData != 0);
    mModel2 = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel2 == 0) {
        return 0;
    }
    field_0x5a0 = new dBgW();
    if (field_0x5a0 == NULL) {
        return 0;
    } 
    calcMtx();
    field_0x57c.entry(mModel1->getModelData());
    mModel1->calc();
    cBgD_t* bgd = (cBgD_t*)dComIfG_getObjectRes(getAlwaysArcName(), getDzb());
    JUT_ASSERT(261, bgd != 0);
    if (field_0x5a0->Set(bgd, 1, (Mtx*)mModel1->getAnmMtx(mJoint)) == 1) {
        return 0;
    } else {
        return 1;
    }
}

/* 8045EBA0-8045EC44 0003C0 00A4+00 3/3 0/0 0/0 .text            calcMtx__10daKnob20_cFv */
void daKnob20_c::calcMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::transM(-75.0f, 0.0f, 0.0f);
    mDoMtx_stack_c::YrotM(field_0x612);
    mDoMtx_stack_c::transM(75.0f, 0.0f, 0.0f);
    mModel1->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 8045EC44-8045ED1C 000464 00D8+00 1/1 0/0 0/0 .text            CreateInit__10daKnob20_cFv */
int daKnob20_c::CreateInit() {
    int rt = dComIfG_Bgsp().Regist(field_0x5a0, this);
    JUT_ASSERT(299, rt == 0);
    tevStr.room_no = current.roomNo;
    setAction(ACTION_INIT);
    attention_info.position.y += 150.0f;
    eyePos.y += 150.0f;
    attention_info.flags = 0x20;
    calcMtx();
    fopAcM_SetMtx(this, mModel1->getBaseTRMtx());
    fopAcM_setCullSizeFar(this, 2.0f);
    mModel1->calc();
    field_0x5a0->Move();
    eventInfo.setArchiveName(getEvArcName());
    setEventId();
    tevStr.mLightInf.r = knob_param_c::getDoorLightInf(this);
    return 1;
}

/* 8045ED1C-8045EE14 00053C 00F8+00 1/1 0/0 0/0 .text            create__10daKnob20_cFv */
int daKnob20_c::create() {
    fopAcM_SetupActor(this, daKnob20_c);
    int phase = dComIfG_resLoad(&mPhase2, getAlwaysArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }
    phase = dComIfG_resLoad(&mPhase1, getEvArcName());
    if (phase != 4) {
        return phase;
    }
    if (fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x80003800) == 0) {
        return 5;
    }
    CreateInit();
    return 4;
}

/* 8045EE5C-8045EEE4 00067C 0088+00 1/1 0/0 0/0 .text            checkOpenDoor__10daKnob20_cFPi */
int daKnob20_c::checkOpenDoor(int* param_1) {
    int msgNo = knob_param_c::getMsgNo(this);
    if (msgNo == 0xffff) {
        *param_1 = 0;
        return 1;
    }
    field_0x5c0.init(NULL, msgNo, 0 , NULL);
    int rv = field_0x5c0.checkOpenDoor(this, param_1);
    dMsgObject_endFlowGroup();
    return rv;
}

/* 8045EEE4-8045EFCC 000704 00E8+00 1/1 0/0 0/0 .text            setActionFromFlow__10daKnob20_cFv
 */
void daKnob20_c::setActionFromFlow() {
    if (mAction == ACTION_INIT || mAction == ACTION_DEMO || mAction == ACTION_TALK) {
        return;
    }
    if (dComIfGp_event_runCheck()) {
        return;
    }
    if (dMsgObject_isTalkNowCheck()) {
        if (dMsgObject_getMsgObjectClass()->isPlaceMessage()) {
            return;
        }
    }
    int local_18;
    if (checkOpenDoor(&local_18) != 0) {
        if (local_18 != 0) {
            setAction(ACTION_TALK_OPEN);
        } else {
            setAction(ACTION_WAIT);
        }
    } else {
        if (local_18 != 0) {
            setAction(ACTION_TALK_WAIT);
        } else {
            setAction(ACTION_DEAD);
        }
    }
}

/* 80460898-804608B4 -00001 001C+00 1/1 0/0 0/0 .data            ev_name_table$4009 */
static char* ev_name_table[7] = {
    "DEFAULT_KNOB_DOOR_F_OPEN",
    "DEFAULT_KNOB_DOOR_B_OPEN",
    "DEFAULT_KNOB_TALK",
    "DEFAULT_KNOB_TALK_B",
    "DEFAULT_KNOB_TALK_F_OPEN",
    "DEFAULT_KNOB_TALK_B_OPEN",
    "DEFAULT_KNOB_TALK",
};

/* 8045EFCC-8045F058 0007EC 008C+00 1/1 0/0 0/0 .text            setEventId__10daKnob20_cFv */
void daKnob20_c::setEventId() {
    for (int i = 0; i < 7; i++) {
        field_0x5b2[i] = 0xff;
        field_0x5a4[i] =
            dComIfGp_getEventManager().getEventIdx(this, ev_name_table[i], field_0x5b2[i]);
    }
}

/* 8045F058-8045F29C 000878 0244+00 1/1 0/0 0/0 .text            checkArea__10daKnob20_cFfff */
int daKnob20_c::checkArea(f32 param_1, f32 param_2, f32 param_3) {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz playerDistance = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&playerDistance, &playerDistance);
    if (playerDistance.abs() > param_3) {
        return 0;
    }
    if (fabsf(playerDistance.x) > param_1) {
        return 0;
    }
    if (fabsf(playerDistance.z) > param_2) {
        return 0;
    }
    s16 sVar7 = current.angle.y;
    if (field_0x60f == 1) {
        sVar7 += 0x7fff;
    }
    s16 angleDiff = sVar7 - player->current.angle.y;
    if (abs(angleDiff) < 0x5000) {
        return 0;
    } else {
        return 1;
    }
}

/* 8045F29C-8045F428 000ABC 018C+00 3/3 0/0 0/0 .text            setEventPrm__10daKnob20_cFv */
void daKnob20_c::setEventPrm() {
    if (knob_param_c::getExitNo(this) == 62) {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP116") == 0) {
            return;
        }
    }
    if (dMsgObject_isTalkNowCheck()) {
        if (dMsgObject_getMsgObjectClass()->isPlaceMessage()) {
            return;
        }
    }
    if (field_0x60f == 0) {
        field_0x5b9 = 0;
    } else {
        field_0x5b9 = 1;
    }
    if (mAction == ACTION_TALK_WAIT) {
        if (field_0x60f == 0) {
            field_0x5b9 = 2;
        } else {
            field_0x5b9 = 3;
        }
    } else if (mAction == ACTION_TALK_OPEN) {
        if (field_0x60f == 0) {
            field_0x5b9 = 4;
        } else {
            field_0x5b9 = 5;
        }
    }
    if (!daPy_py_c::checkNowWolf()) {
        if (!checkArea(80.0f, 110.0f, 250.0f)) {
            offFlag(4);
        } else {
            eventInfo.setEventId(field_0x5a4[field_0x5b9]);
            eventInfo.setMapToolId(field_0x5b2[field_0x5b9]);
            eventInfo.onCondition(4);
        }
    }
}

/* 8045F428-8045F478 000C48 0050+00 1/1 0/0 0/0 .text            releaseBG__10daKnob20_cFv */
int daKnob20_c::releaseBG() {
    if (field_0x5a0->ChkUsed()) {
        dComIfG_Bgsp().Release(field_0x5a0);
    }
    return 1;
}

/* 8045F478-8045F520 000C98 00A8+00 1/1 0/0 0/0 .text            frontCheck__10daKnob20_cFv */
int daKnob20_c::frontCheck() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz playerDist = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&playerDist, &playerDist);
    if (playerDist.z > 0.0f) {
        return 0;
    }
    return 1;
}

/* 804608B4-804608F4 -00001 0040+00 1/1 0/0 0/0 .data            action_table$4177 */
static char* action_table[16] = {
    "WAIT",
    "SETSTART",
    "SETANGLE",
    "ADJUSTMENT",
    "OPEN_PUSH",
    "OPEN_PULL",
    "OPEN_PUSH2",
    "OPEN_PULL2",
    "OPEN_PUSH_STOP",
    "OPEN_PULL_STOP",
    "TALK",
    "TALK_END",
    "SETSTART_PUSH",
    "SETSTART_PULL",
    "DEMO_OPEN",
    "DEMO_CLOSE",
};

/* 8045F520-8045F568 000D40 0048+00 1/1 0/0 0/0 .text            getDemoAction__10daKnob20_cFv */
int daKnob20_c::getDemoAction() {
    return dComIfGp_evmng_getMyActIdx(field_0x5bc, action_table, 16, 0, 0);
}

/* 8045F568-8045F8A4 000D88 033C+00 9/7 0/0 0/0 .text            demoProc__10daKnob20_cFv */
int daKnob20_c::demoProc() {
    int demoAction;
    int rv = 0;
    demoAction = getDemoAction();
    if (dComIfGp_evmng_getIsAddvance(field_0x5bc) != 0) {
        switch (demoAction) {
        case 1:
            setStart(0.0f, -70.0f);
            break;
        case 12:
            setStart(0.0f, -70.0f);
            releaseBG();
            break;
        case 13:
            setStart(0.0, -70.0f);
            releaseBG();
            break;
        case 4:
            openInit(0);
            break;
        case 5:
            openInit(1);
            break;
        case 6:
            openInit(2);
            break;
        case 7:
            openInit(3);
            break;
        case 2:
            setAngle();
            break;
        case 3:
            field_0x610 = 10;
            break;
        case 10:
            int msgNo = knob_param_c::getMsgNo(this);
            if (msgNo != 0xffff) {
                field_0x5c0.init(this, msgNo, 0, NULL);
            }
            break;
        case 0xe:
            field_0x612 = 0;
            field_0x614 = 1000;
            fopAcM_seStart(this, Z2SE_OBJ_IMPAL_DOOR_OP, 0);
            break;
        case 15:
            field_0x612 = 0;
            field_0x614 = 0;
            break;
        }
    }
    switch (demoAction) {
    case 4:
    case 5:
    case 6:
    case 7:
        if (checkFlag(1)) {
            if (openProc(demoAction) != 0) {
                openEnd(0);
                dComIfGp_evmng_cutEnd(field_0x5bc);
            }
        } else {
            dComIfGp_evmng_cutEnd(field_0x5bc);
        }
        break;
    case 3:
        if (adjustmentProc()) {
            dComIfGp_evmng_cutEnd(field_0x5bc);
        }
        break;
    case 10:
        dComIfGp_event_offHindFlag(1);
        if (field_0x5c0.doFlow(this, NULL, 0) != 0) {
            int msgNo = knob_param_c::getMsgNo(this);
            if (msgNo != 0xffff) {
                field_0x5c0.init(this, msgNo, 0, NULL);
            }
            dComIfGp_evmng_cutEnd(field_0x5bc);
        }
        break;
    case 11:
        dComIfGp_evmng_cutEnd(field_0x5bc);
        rv = 1;
        break;
    case 8:
    case 9:
        dComIfGp_evmng_cutEnd(field_0x5bc);
        break;
    case 14:
        if (cLib_addCalcAngleS(&field_0x612, -0x2800, 20, 500, 10) == 0) {
            dComIfGp_evmng_cutEnd(field_0x5bc);
        }
        calcMtx();
        break;
    case 15:
        dComIfGp_evmng_cutEnd(field_0x5bc);
        calcMtx();
        break;
    default:
        dComIfGp_evmng_cutEnd(field_0x5bc);
        break;
    }
    return rv;
}

/* 8045F8A4-8045F94C 0010C4 00A8+00 1/1 0/0 0/0 .text            setStart__10daKnob20_cFff */
void daKnob20_c::setStart(f32 param_1, f32 param_2) {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz pos(current.pos);
    s16 angle = shape_angle.y + 0x7fff;
    pos.x += (param_2 * cM_ssin(angle)) - (param_1 * cM_scos(angle));
    pos.z += (param_2 * cM_scos(angle)) + (param_1 * cM_ssin(angle));
    player->setPlayerPosAndAngle(&pos, player->shape_angle.y, 0);
}

/* 8045F94C-8045F968 00116C 001C+00 1/1 0/0 0/0 .text            setAngle__10daKnob20_cFv */
void daKnob20_c::setAngle() {
  static_cast<daPy_py_c*>(dComIfGp_getPlayer(0))->changeDemoMoveAngle(shape_angle.y + 0x7fff);
}

/* 8045F968-8045FA98 001188 0130+00 1/1 0/0 0/0 .text            adjustmentProc__10daKnob20_cFv */
int daKnob20_c::adjustmentProc() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    cXyz local_1c;
    cXyz local_28;
    int sVar1 = shape_angle.y + 0x7fff;
    local_28 = player->current.pos;
    local_1c = current.pos;
    local_1c.x += cM_ssin(sVar1) * -70.0f;
    local_1c.z += cM_scos(sVar1) * -70.0f;
    if (field_0x610 > 0) {
        local_28.x = local_28.x * 0.8f + local_1c.x * 0.2f;
        local_28.z = local_28.z * 0.8f + local_1c.z * 0.2f;
        player->setPlayerPosAndAngle(&local_28, player->current.angle.y, 0);
        field_0x610--;
    } else {
        player->setPlayerPosAndAngle(&local_1c, player->current.angle.y, 0);
        return 1;
    }
    return 0;
}

/* 80460968-80460978 -00001 0010+00 1/1 0/0 0/0 .data            bck_table$4335 */
static char* bck_table[4] = {
    "FDoorA.bck",
    "FDoorB.bck",
    "FDoorA.bck",
    "FDoorB.bck",
};

/* 8045FA98-8045FBF8 0012B8 0160+00 1/1 0/0 0/0 .text            openInit__10daKnob20_cFi */
int daKnob20_c::openInit(int param_1) {
    J3DAnmTransform* anm =
        (J3DAnmTransform*)dComIfG_getObjectRes(getAlwaysArcName(), bck_table[param_1]);
    JUT_ASSERT(937, anm != 0);
    field_0x57c.init(anm, 1, 0, 1.0f, 0, -1, true);
    onFlag(1);
    if (param_1 >= 2) {
        field_0x57c.setFrame(38.0f);
        fopAcM_seStart(this, Z2SE_OBJ_KNOB_DOOR_CLOSE, 0);
    } else {
        dComIfG_Bgsp().Release(field_0x5a0);
        fopAcM_seStart(this, Z2SE_OBJ_KNOB_DOOR_OPEN, 0);
    }
    return 1;
}

/* 8045FBF8-8045FCA4 001418 00AC+00 1/1 0/0 0/0 .text            openProc__10daKnob20_cFi */
int daKnob20_c::openProc(int param_1) {
    if (field_0x57c.play() != 0) {
        return 1;
    }
    if ((param_1 == 4 || param_1 == 5) && field_0x57c.checkFrame(15.0f)) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        player->onSceneChangeArea(knob_param_c::getExitNo(this), 0xff, NULL);
    }
    return 0;
}

/* 8045FCA4-8045FDF8 0014C4 0154+00 1/1 0/0 0/0 .text            openEnd__10daKnob20_cFi */
int daKnob20_c::openEnd(int param_1) {
    offFlag(1);
    int rt = dComIfG_Bgsp().Regist(field_0x5a0, this);
    JUT_ASSERT(1017, !rt);
    cXyz local_70(cM_ssin(home.angle.y), 0.0f, cM_scos(home.angle.y));
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz cStack_7c = player->current.pos - current.pos;
    f32 dVar11 = cStack_7c.inprodXZ(local_70);
    f32 fVar1 = dVar11 < 0.0f ? 180.0f : -180.0f;
    cXyz cStack_88(current.pos.x - fVar1 * local_70.x, current.pos.y,
                 current.pos.z - fVar1 * local_70.z);
    s16 angle;
    s32 roomNo = fopAcM_GetRoomNo(player);
    if (dVar11 > 0.0f) {
        angle = current.angle.y;
    } else {
        angle = current.angle.y + 0x8000;
    }
    dComIfGs_setRestartRoom(cStack_88, angle, roomNo);
    return 1;
}

/* 8045FDF8-8045FE68 001618 0070+00 3/3 0/0 0/0 .text            initOpenDemo__10daKnob20_cFv */
void daKnob20_c::initOpenDemo() {
    shape_angle.y = current.angle.y;
    if (field_0x60f == 1) {
        shape_angle.y += 0x7fff;
    }
    field_0x5bc = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", 0, 0);
}

/* 8045FE68-8045FF08 001688 00A0+00 1/1 0/0 0/0 .text            startDemoProc__10daKnob20_cFv */
void daKnob20_c::startDemoProc() {
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    field_0x5bc = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", 0, 0);
    shape_angle.y = current.angle.y;
    JUT_ASSERT(1071, player);
    s16 homeDist = player->home.angle.y - home.angle.y;
    if (homeDist < 0) {
        homeDist = -homeDist;
    }
    // !@bug Seems like -1000 should be -0x1000
    if (homeDist < 0x1000 && -1000 < homeDist) {
        shape_angle.y += 0x7fff;
    }
}

/* 8045FF08-8045FFB0 001728 00A8+00 1/0 0/0 0/0 .text            actionWait__10daKnob20_cFv */
int daKnob20_c::actionWait() {
    if (eventInfo.checkCommandDoor()) {
        initOpenDemo();
        setAction(ACTION_DEMO);
        demoProc();
    } else if (dComIfGp_event_runCheck()) {
        field_0x5bc = dComIfGp_evmng_getMyStaffId("kdoor", 0, 0);
        if (field_0x5bc != -1) {
            setAction(ACTION_SPECIAL_DEMO);
            demoProc();
        }
    } else {
        setEventPrm();
    }
    return 1;
}

/* 8045FFB0-8046002C 0017D0 007C+00 1/0 0/0 0/0 .text            actionSpecialDemo__10daKnob20_cFv
 */
int daKnob20_c::actionSpecialDemo() {
    field_0x5bc = dComIfGp_evmng_getMyStaffId("kdoor", 0, 0);
    if (field_0x5bc == -1) {
        shape_angle.y = current.angle.y;
        setAction(ACTION_WAIT);
    } else {
        demoProc();
    }
    return 1;
}

/* 8046002C-804600C0 00184C 0094+00 1/0 0/0 0/0 .text            actionDemo__10daKnob20_cFv */
int daKnob20_c::actionDemo() {
    if ( dComIfGp_evmng_endCheck(field_0x5a4[field_0x5b9])) {
        setAction(ACTION_WAIT);
        dComIfGp_event_reset();
        shape_angle.y = current.angle.y;
    } else {
        demoProc();
        dMeter2Info_onGameStatus(2);
    }
    return 1;
}

/* 804600C0-8046012C 0018E0 006C+00 1/0 0/0 0/0 .text            actionTalk__10daKnob20_cFv */
int daKnob20_c::actionTalk() {
    dMeter2Info_onGameStatus(2);
    if (demoProc()) {
        setAction(ACTION_DEAD);
        dComIfGp_event_reset();
        shape_angle.y = current.angle.y;
    }
    return 1;
}

/* 8046012C-804601D4 00194C 00A8+00 1/0 0/0 0/0 .text            actionTalkWait__10daKnob20_cFv */
int daKnob20_c::actionTalkWait() {
    if (eventInfo.checkCommandDoor()) {
        initOpenDemo();
        setAction(ACTION_TALK);
        demoProc();
    } else if (dComIfGp_event_runCheck()) {
        field_0x5bc = dComIfGp_evmng_getMyStaffId("kdoor", 0, 0);
        if (field_0x5bc != -1) {
            setAction(ACTION_SPECIAL_DEMO);
            demoProc();
        }
    } else {
        setEventPrm();
    }
    return 1;
}

/* 804601D4-8046027C 0019F4 00A8+00 1/0 0/0 0/0 .text            actionTalkOpen__10daKnob20_cFv */
int daKnob20_c::actionTalkOpen() {
    if (eventInfo.checkCommandDoor()) {
        initOpenDemo();
        setAction(ACTION_DEMO);
        demoProc();
    } else if (dComIfGp_event_runCheck()) {
        field_0x5bc = dComIfGp_evmng_getMyStaffId("kdoor", 0, 0);
        if (field_0x5bc != -1) {
            setAction(ACTION_SPECIAL_DEMO);
            demoProc();
        }
    } else {
        setEventPrm();
    }
    return 1;
}

/* 8046027C-804602D8 001A9C 005C+00 1/0 0/0 0/0 .text            actionInit__10daKnob20_cFv */
int daKnob20_c::actionInit() {
    if (!field_0x5a0->ChkUsed()) {
        dComIfG_Bgsp().Regist(field_0x5a0, this);
    }
    setAction(ACTION_WAIT);
    return 1;
}

/* 804602D8-804602E0 001AF8 0008+00 1/0 0/0 0/0 .text            actionDead__10daKnob20_cFv */
int daKnob20_c::actionDead() {
    return 1;
}

/* 804602E0-8046045C 001B00 017C+00 1/1 0/0 0/0 .text            execute__10daKnob20_cFv */
int daKnob20_c::execute() {
    static actionFunc l_action[8] = {
        &daKnob20_c::actionInit, &daKnob20_c::actionWait,        &daKnob20_c::actionDemo,
        &daKnob20_c::actionTalk, &daKnob20_c::actionTalkWait,    &daKnob20_c::actionTalkOpen,
        &daKnob20_c::actionDead, &daKnob20_c::actionSpecialDemo,
    };

    setActionFromFlow();
    field_0x60f = frontCheck();
    if (fopAcM_checkStatus(this, 0x1000)) {
        startDemoProc();
        demoProc();
        dMeter2Info_onGameStatus(2);
    } else {
        (this->*l_action[mAction])();
    }
    return 1;
}

/* 8046045C-80460550 001C7C 00F4+00 1/1 0/0 0/0 .text            draw__10daKnob20_cFv */
int daKnob20_c::draw() {
    g_env_light.settingTevStruct(0x14, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel2, &tevStr);
    field_0x57c.entry(mModel1->getModelData());
    mModel1->calc();
    dComIfGd_setListBG();
    mModel2->setBaseTRMtx(mModel1->getAnmMtx(mJoint));
    mDoExt_modelUpdateDL(mModel2);
    dComIfGd_setList();
    return 1;
}

/* 80460550-804605DC 001D70 008C+00 1/1 0/0 0/0 .text            Delete__10daKnob20_cFv */
int daKnob20_c::Delete() {
    if (heap != NULL && field_0x5a0 != NULL && field_0x5a0->ChkUsed()) {
        dComIfG_Bgsp().Release(field_0x5a0);
    }
    dComIfG_resDelete(&mPhase2, getAlwaysArcName());
    dComIfG_resDelete(&mPhase1, getEvArcName());
    return 1;
}

/* 804605DC-804605FC 001DFC 0020+00 1/0 0/0 0/0 .text            daKnob20_Draw__FP10daKnob20_c */
static int daKnob20_Draw(daKnob20_c* i_this) {
    return i_this->draw();
}

/* 804605FC-80460620 001E1C 0024+00 1/0 0/0 0/0 .text            daKnob20_Execute__FP10daKnob20_c */
static int daKnob20_Execute(daKnob20_c* i_this) {
    i_this->execute();
    return 1;
}

/* 80460620-80460640 001E40 0020+00 1/0 0/0 0/0 .text            daKnob20_Delete__FP10daKnob20_c */
static int daKnob20_Delete(daKnob20_c* i_this) {
    return i_this->Delete();
}

/* 80460640-80460660 001E60 0020+00 1/0 0/0 0/0 .text            daKnob20_Create__FP10fopAc_ac_c */
static int daKnob20_Create(fopAc_ac_c* i_this) {
    return static_cast<daKnob20_c*>(i_this)->create();
}

/* 80460A38-80460A58 -00001 0020+00 1/0 0/0 0/0 .data            l_daKnob20_Method */
static actor_method_class l_daKnob20_Method = {
    (process_method_func)daKnob20_Create,  (process_method_func)daKnob20_Delete,
    (process_method_func)daKnob20_Execute, (process_method_func)NULL,
    (process_method_func)daKnob20_Draw,
};

/* 80460A58-80460A88 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KNOB20 */
extern actor_process_profile_definition g_profile_KNOB20 = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_KNOB20,            // mProcName
    &g_fpcLf_Method.base,  // sub_method
    sizeof(daKnob20_c),     // mSize
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    293,                    // mPriority
    &l_daKnob20_Method,     // sub_method
    0x44100,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};
