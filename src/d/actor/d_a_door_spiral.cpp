//
// Door Spiral
//

#include "d/dolzel_rel.h" // IWYU pragma: keep

#include "d/actor/d_a_door_spiral.h"

#if DEBUG

#include "d/d_door_param2.h"
#include "f_op/f_op_actor.h"
#include "d/actor/d_a_player.h"
#include "SSystem/SComponent/c_counter.h"
#include "d/d_s_play.h"
#include "d/d_debug_viewer.h"

static void* searchSpiralSub(void* i_actor, void* i_data) {
    daSpiral_c* actor1 = (daSpiral_c*)i_actor;
    daSpiral_c* actor2 = (daSpiral_c*)i_data;
    if (actor1 != NULL && fopAcM_IsActor(actor1)) {
        if (fopAcM_GetProfName(actor1) == PROC_SPIRAL_DOOR && actor1 != actor2) {
            if (door_param2_c::getBRoomNo(actor1) == door_param2_c::getBRoomNo(actor2)) {
                return actor1;
            }
        }
    }

    return NULL;
}

char* daSpiral_c::getAlwaysArcName() {
    return getBmdArcName();
}

char* daSpiral_c::getSpiralDzbName(int idx) {
    static char* dzb[2] = {
        "door-stepD.dzb",
        "door-stepU.dzb",
    };
    return dzb[idx];
}

char* daSpiral_c::getDzb() {
    return "door-dark.dzb";
}

char* daSpiral_c::getBmdArcName() {
    return "K_step";
}

char* daSpiral_c::getEvArcName() {
    return "DoorEvt";
}

char* daSpiral_c::getBmd(int idx) {
    static char* bmd[2] = {
        "K_stepd.bmd",
        "K_stepu.bmd",
    };
    return bmd[idx];
}

char* daSpiral_c::getBmd2(int idx) {
    static char bmdName;
    if (idx == 0) {
        sprintf(&bmdName, "door-stairSpiralU.bmd");
    } else {
        sprintf(&bmdName, "door-stairSpiralD.bmd");
    }

    return &bmdName;
}

J3DModelData* daSpiral_c::getModelData() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getStageRes(getBmd2(mIdx));
    if (modelData == NULL) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(getBmdArcName(), getBmd(mIdx));
    }

    return modelData;
}

char* daSpiral_c::getStopBmd() {
    return "door-spiralStop.bmd";
}

char* daSpiral_c::getStopBmd2() {
    return "door-stop.bmd";
}

J3DModelData* daSpiral_c::getStopModelData() {
    J3DModelData* modelData = (J3DModelData*)dComIfG_getStageRes(getStopBmd2());
    if (modelData == NULL) {
        modelData = (J3DModelData*)dComIfG_getObjectRes(getBmdArcName(), getStopBmd());
    }

    return modelData;
}

char* daSpiral_c::getStopDzb() {
    return "door-spiralStop.dzb";
}

static int CheckCreateHeap(fopAc_ac_c* a_this) {
    daSpiral_c* i_this = (daSpiral_c*)a_this;
    return i_this->CreateHeap();
}

bool daSpiral_c::debugCheckParam() {
    bool rv = false;

    if (!field_0x6d0) {
        u8 fRoomNo = door_param2_c::getFRoomNo(this);
        if (fRoomNo == 63) {
            OS_REPORT_ERROR("螺旋階段：部屋番号指定がありません！\n"); // Spiral staircase: No room number specified!
            rv = true;
        }

        u8 frontOption = door_param2_c::getFrontOption(this);
        if (frontOption == 2) {
            OS_REPORT_ERROR("螺旋階段：鍵オプションは対応していません！\n"); // Spiral staircase: Key option not supported!
            rv = true;
        }

        field_0x6d0 = true;
    }

    return rv;
}

cPhs__Step daSpiral_c::create() {
    if (debugCheckParam()) {
        return cPhs_ERROR_e;
    }

    cPhs__Step phase = (cPhs__Step)dComIfG_resLoad(&mPhase1, getAlwaysArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    phase = (cPhs__Step)dComIfG_resLoad(&mPhase3, getEvArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    phase = (cPhs__Step)dComIfG_resLoad(&mPhase2, getBmdArcName());
    if (phase != cPhs_COMPLEATE_e) {
        return phase;
    }

    fopAcM_SetRoomNo(this, door_param2_c::getFRoomNo(this));

    u8 backOption = door_param2_c::getBackOption(this);
    switch (backOption) {
        case 4:
            mIdx = 0;
            break;
        
        case 5:
            mIdx = 1;
            break;

        default:
            OS_REPORT_ERROR("螺旋階段の裏オプション設定が正しくありません！<%d>\n", backOption); // Spiral staircase back option setting is incorrect! <%d>
            JUT_ASSERT(300, FALSE);
            break;
    }

    if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0x7000)) {
        return cPhs_ERROR_e;
    }

    CreateInit();

    return cPhs_COMPLEATE_e;
}

static cXyz l_step_offset(0.0f, 0.0f, 150.0f);
static cXyz l_dzb_offset(0.0f, 0.0f, 100.0f);

int daSpiral_c::CreateHeap() {
    /* NONMATCHING */
    bool isSet;
    J3DModelData* modelData = getModelData();

    JUT_ASSERT(338, modelData != NULL);

    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);

    if (mModel == NULL) {
        return 0;
    }

    mpBgW1 = new dBgW();

    if (mpBgW1 == NULL) {
        return 0;
    }

    cBgD_t* bgd = (cBgD_t*)dComIfG_getObjectRes(getAlwaysArcName(), getSpiralDzbName(mIdx));

    JUT_ASSERT(356, bgd != NULL);

    isSet = mpBgW1->Set(bgd, 1, &mMtx1);
    if (isSet == true) {
        return 0;
    }
    
    mpBgW2 = new dBgW();
    if (mpBgW2 == NULL) {
        return 0;
    }

    bgd = (cBgD_t*)dComIfG_getObjectRes(getAlwaysArcName(), getDzb());
    JUT_ASSERT(375, bgd != NULL);

    cXyz offset(l_dzb_offset);
    mDoMtx_stack_c::YrotS(home.angle.y);
    mDoMtx_stack_c::multVec(&offset, &offset);
    mDoMtx_stack_c::transS(current.pos.x + offset.x, current.pos.y + offset.y, current.pos.z + offset.z);
    mDoMtx_stack_c::YrotM(home.angle.y);
    cMtx_copy(mDoMtx_stack_c::get(), mMtx2);

    isSet = mpBgW2->Set(bgd, 1, &mMtx2);
    if (isSet == true) {
        return 0;
    }

    if (checkMakeStop() && !mSpiralStop.create(this)) {
        return 0;
    }

    return 1;
}

int daSpiral_c::CreateInit() {
    int rt = dComIfG_Bgsp().Regist(mpBgW1, this);
    JUT_ASSERT(416, rt == 0);

    rt = dComIfG_Bgsp().Regist(mpBgW2, this);
    JUT_ASSERT(419, rt == 0);

    tevStr.room_no = current.roomNo;
    setAction(0);
    attention_info.position.y += 150.0f;
    eyePos.y += 150.0f;
    attention_info.flags = fopAc_AttnFlag_DOOR_e;
    calcMtx();

    mpBgW1->SetRoomId(door_param2_c::getFRoomNo(this) & 0xFFFF);
    mpBgW2->SetRoomId(door_param2_c::getFRoomNo(this) & 0xFFFF);
    mpBgW1->Move();
    mpBgW2->Move();
    initProc(1);

    return 1;
};

void daSpiral_c::setAction(u8 i_action) {
    mAction = i_action;
}

void daSpiral_c::makeEventId(int param_1) {
    /* NONMATCHING */
    static char* table[8] = {
        "DEFAULT_SPIRAL_DOOR_F",
        "DEFAULT_SPIRAL_DOOR_F",
        "DEFAULT_STOP_OPEN",
        "DEFAULT_STOP_OPEN",
        "DEFAULT_SPIRAL_DOOR_F_STOP",
        "DEFAULT_SPIRAL_DOOR_F_STOP",
        NULL,
        NULL,
    };
    
    for (int i = 0; i < 8; i++) {
        mEventIDs[i] = dComIfGp_getEventManager().getEventIdx(this, table[i], 0xFF);
        mMapToolIDs[i] = 0xFF;
    }
}

void daSpiral_c::setEventPrm() {
    /* NONMATCHING */
    field_0x614 = 0;

    daSpiral_c* actor = (daSpiral_c*)fopAcM_Search(searchSpiralSub, this);
    if (actor == NULL) {
        OS_REPORT_ERROR("螺旋階段：対になる螺旋階段がありません！\n"); // Spiral staircase: There is no matching spiral staircase!
        JUT_ASSERT(488, FALSE);
    }

    if (actor->mSpiralStop.field_0x70 == 1) {
        field_0x614 = 4;
    } else {
        field_0x614 = 0;
    }

    if (checkArea()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        eventInfo.setEventId(mEventIDs[field_0x614]);
        eventInfo.setMapToolId(mMapToolIDs[field_0x614]);
        eventInfo.onCondition(fopAcCnd_NODRAW_e);
        fopAcM_orderOtherEventId(this, mEventIDs[field_0x614], 0xFF, 0xFFFF, 0, 1);
        field_0x630 = player->current.pos;
    }
}

void daSpiral_c::settingStartRoom() {
    if (field_0x61d != field_0x61e && field_0x61d != 63 && field_0x61e != 63) {
        dComIfGp_roomControl_onStatusFlag(field_0x61d, 8);
    }
}

void daSpiral_c::settingEndRoom() {
    fopAc_ac_c* actor = dComIfGp_event_getDoorPartner();
    field_0x61d = door_param2_c::getFRoomNo(this) & 0xFF;
    field_0x61e = door_param2_c::getFRoomNo(actor) & 0xFF;

    if (field_0x61d != field_0x61e && field_0x61d != 63 && field_0x61e != 63) {
        dComIfGp_roomControl_offStatusFlag(field_0x61e, 8);
    }

    dStage_roomControl_c::setNextStayNo(field_0x61e);
}

void daSpiral_c::EndCommon() {
    /* NONMATCHING */
    fopAc_ac_c* player = dComIfGp_getPlayer(0);
    cXyz pos_delta = player->current.pos - current.pos;
    f32 fVar1 = pos_delta.inprodXZ(field_0x620);
    f32 fVar2 = fVar1 < 0.0f ? 180.0f : -180.0f;

    cXyz pos(current.pos.x - fVar2 * field_0x620.x, current.pos.y, current.pos.z - fVar2 * field_0x620.z);
    s16 angle = fVar1 > 0.0f ? current.angle.y : current.angle.y + 0x8000;

    dComIfGs_setRestartRoom(pos, angle, fopAcM_GetRoomNo(player));
}

BOOL daSpiral_c::checkArea() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz pos = player->current.pos - current.pos;
    s16 angle = current.angle.y;

    if (mFrontCheck == 1) {
        angle += (s16)0x7FFF;
    }

    mDoMtx_stack_c::YrotS(-angle);
    mDoMtx_stack_c::multVec(&pos, &pos);

    f32 fabsValX = std::fabs(pos.x);
    if (fabsValX > 225.0f) {
        return FALSE;
    }

    f32 fabsValY = std::fabs(pos.y);
    if (fabsValY > 300.0f) {
        return FALSE;
    }

    f32 posZ = pos.z;
    if (posZ < 0.0f && posZ > -450.0f) {
        return TRUE;
    }

    return FALSE;
}

void daSpiral_c::calcMtx() {
    cXyz offset(l_step_offset);

    mDoMtx_stack_c::YrotS(home.angle.y);
    mDoMtx_stack_c::multVec(&offset, &offset);
    mDoMtx_stack_c::transS(current.pos.x + offset.x, current.pos.y + offset.y, current.pos.z + offset.z);
    mDoMtx_stack_c::YrotM(home.angle.y);
    cMtx_copy(mDoMtx_stack_c::get(), mMtx1);
    mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mpBgW1->Move();
    field_0x5f5 = dComIfGp_roomControl_getStayNo();
}

void daSpiral_c::initProc(int param_1) {
    field_0x620.set(cM_ssin(home.angle.y), 0.0f, cM_scos(home.angle.y));
    eventInfo.setArchiveName(getEvArcName());
    makeEventId(param_1);
}

void daSpiral_c::initOpenDemo(int param_1) {
    shape_angle.y = current.angle.y;

    if (mFrontCheck == 1) {
        shape_angle.y += (s16)0x7FFF;
    }

    mStaffId = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", NULL, 0);

    if (param_1 != 0) {
        dComIfGp_event_onEventFlag(2);
    }

    dComIfGp_event_onEventFlag(0x40);
}

int daSpiral_c::getDemoAction() {
    static char* action_table[12] = {
        "WAIT",
        "START",
        "SETGOAL",
        "SETSTART",
        "SETPOS",
        "L_SET",
        "SETROOM",
        "SETROOM2",
        "RUN",
        "STOP_OPEN",
        "STOP_CLOSE",
        "END_CHECK",
    };

    return dComIfGp_evmng_getMyActIdx(mStaffId, action_table, 12, FALSE, FALSE);
}

static cXyz l_spiral_path_point_d[9] = {
    cXyz(360.0f, 0.0f, -600.0f) + l_step_offset,
    cXyz(250.0f, 0.0f, -600.0f) + l_step_offset,
    cXyz(150.0f, 0.0f, -600.0f) + l_step_offset,
    cXyz(82.0f, 0.0f, -560.0f) + l_step_offset,
    cXyz(10.0f, 0.0f, -500.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, -400.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, -300.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, -150.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, 270.0f) + l_step_offset,
};

static cXyz l_spiral_path_point_u[9] = {
    cXyz(-360.0f, 0.0f, -600.0f) + l_step_offset,
    cXyz(-250.0f, 0.0f, -600.0f) + l_step_offset,
    cXyz(-150.0f, 0.0f, -600.0f) + l_step_offset,
    cXyz(-82.0f, 0.0f, -560.0f) + l_step_offset,
    cXyz(-10.0f, 0.0f, -500.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, -400.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, -300.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, -150.0f) + l_step_offset,
    cXyz(0.0f, 0.0f, 270.0f) + l_step_offset,
};

int daSpiral_c::demoProc() {
    daSpiral_c* actor = (daSpiral_c*)dComIfGp_event_getDoorPartner();
    if (actor == this) {
        mStaffId = dComIfGp_evmng_getMyStaffId("PARTNER_DOOR", NULL, 0);
    } else {
        mStaffId = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", NULL, 0);
    }

    int demoAction = getDemoAction();
    int rv = 0;
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz pos;

    if (dComIfGp_evmng_getIsAddvance(mStaffId)) {
        switch (demoAction) {
            case 1:
                setPartner();
                break;

            case 2:
                setGoal();
                break;

            case 8:
                field_0x6b4 = 1;

                cXyz* path_point;
                if (mIdx == 0) {
                    path_point = l_spiral_path_point_d;
                } else {
                    path_point = l_spiral_path_point_u;
                }

                pos = path_point[field_0x6b4];
                mDoMtx_stack_c::YrotS(home.angle.y);
                mDoMtx_stack_c::multVec(&pos, &pos);
                pos += current.pos;
                dComIfGp_evmng_setGoal(&pos);
                break;

            case 6:
                settingEndRoom();
                break;

            case 7:
                settingStartRoom();
                break;

            case 4:
                setNextSpiral();
                OS_REPORT("\x1b[33m螺旋階段：プレイヤー強制移動！<%d>\n\x1b[m", g_Counter.mCounter0);
                field_0x62d = 10;
                break;

            case 9:
                mSpiralStop.openInit(this);
                break;

            case 10:
                setStop();

                if (mSpiralStop.field_0x70 != 0) {
                    mSpiralStop.closeInit(this);
                    mSpiralStop.regist(this);
                }
                break;

            case 5:
                field_0x62d = 2;
                break;

            case 11:
                clrPartner();
                EndCommon();
        }
    }

    switch (demoAction) {
        case 11:
            shape_angle.y = current.angle.y;
            setAction(1);
            dComIfGp_evmng_cutEnd(mStaffId);
            break;

        case 9:
            if (mSpiralStop.openProc(this)) {
                mSpiralStop.release(this);
                dComIfGp_evmng_cutEnd(mStaffId);
            }

            mSpiralStop.calcMtx(this);
            break;

        case 10:
            if (mSpiralStop.closeProc(this)) {
                dComIfGp_evmng_cutEnd(mStaffId);
            }

            mSpiralStop.calcMtx(this);
            break;

        case 6:
            if (RunPlayerSpiral()) {
                dComIfGp_evmng_cutEnd(mStaffId);
            }
            break;

        case 5:
            if (cLib_calcTimer<u8>(&field_0x62d) == 0) {
                dComIfGp_evmng_cutEnd(mStaffId);
            }
            break;

        default:
            dComIfGp_evmng_cutEnd(mStaffId);
            break;
    }

    return rv;
}

int daSpiral_c::actionWait() {
    fopAc_ac_c* door = dComIfGp_event_getDoorPartner();
    if (door == this) {
        shape_angle.y = current.angle.y;
        shape_angle.y += (s16)0x7FFF;
        mStaffId = dComIfGp_evmng_getMyStaffId("PARTNER_DOOR", NULL, 0);
        setAction(2);
        eventInfo.setEventId(mEventIDs[field_0x614]);
        eventInfo.setMapToolId(mMapToolIDs[field_0x614]);
        eventInfo.onCondition(fopAcCnd_NODRAW_e);
        return 1;
    }

    if (mSpiralStop.field_0x70 != 0) {
        if (eventInfo.checkCommandDemoAccrpt()) {
            mStaffId = dComIfGp_evmng_getMyStaffId("SHUTTER_DOOR", NULL, 0);
            shape_angle.y = current.angle.y;

            if (mFrontCheck == 1) {
                shape_angle.y += (s16)0x7FFF;
            }

            setAction(2);
            demoProc();
        } else if (checkStopOpen()) {
            setStopDemo();
            fopAcM_orderOtherEventId(this, mEventIDs[field_0x614], mMapToolIDs[field_0x614], 0xFFFF, 0, 1);
        }
    } else if (eventInfo.checkCommandDemoAccrpt()) {
        initOpenDemo(0);
        setAction(2);
        demoProc();
    } else {
        if (checkStopClose()) {
            mSpiralStop.field_0x70 = 1;
            mSpiralStop.regist(this);
            mSpiralStop.closeInit(this);
            mSpiralStop.calcMtx(this);
            setAction(3);
            return 1;
        }
        
        makeEventId(1);
        setEventPrm();
    }

    return 1;
}

int daSpiral_c::actionDemo() {
    fopAc_ac_c* door = dComIfGp_event_getDoorPartner();
    if (door == this) {
        demoProc();
    } else if (dComIfGp_evmng_endCheck(mEventIDs[field_0x614])) {
        setAction(1);
        dComIfGp_event_reset();
        shape_angle.y = current.angle.y;
    } else {
        demoProc();
    }

    return 1;
}

int daSpiral_c::actionStopClose() {
    if (mSpiralStop.closeProc(this)) {
        setAction(1);
    }

    mSpiralStop.calcMtx(this);
    return 1;
}

int daSpiral_c::actionInit() {
    actionWait();
    setAction(1);
    setStop();
    mSpiralStop.calcMtx(this);
    return 1;
}

void daSpiral_c::setPartner() {
    fopAc_ac_c* actor = fopAcM_Search(searchSpiralSub, this);
    JUT_ASSERT(1065, actor);

    dComIfGp_event_setDoorPartner(actor);
    fopAcM_OnStatus(actor, fopAcM_STATUS_UNK_0x8000);
}

void daSpiral_c::clrPartner() {
    dComIfGp_event_setDoorPartner(NULL);
}

void daSpiral_c::setGoal() {
    BOOL bVar1 = (int)daPy_getPlayerActorClass();
    cXyz pos(current.pos);
    f32 fVar1 = 450.0f;
    s16 angle = shape_angle.y + 0x7FFF;
    bVar1 = this == dComIfGp_event_getDoorPartner();

    pos.x += cM_ssin(angle) * fVar1;
    pos.y = current.pos.y;
    pos.z += cM_scos(angle) * fVar1;
    dComIfGp_evmng_setGoal(&pos);
}

void daSpiral_c::setNextSpiral() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);
    fopAc_ac_c* door = dComIfGp_event_getDoorPartner();
    JUT_ASSERT(1121, door != NULL);
    
    cXyz pos;
    s16 angle = (s16)door->current.angle.y;

    if (mIdx == 0) {
        pos = l_spiral_path_point_u[0];
        angle += (s16)0x4000;
    } else {
        pos = l_spiral_path_point_d[0];
        angle -= (s16)0x4000;
    }

    mDoMtx_stack_c::transS(door->current.pos.x, door->current.pos.y, door->current.pos.z);
    mDoMtx_stack_c::YrotM(door->current.angle.y);
    mDoMtx_stack_c::multVec(&pos, &pos);

    if (mIdx == 0) {
        pos.y += 200.0f;
    }

    player->setPlayerPosAndAngle(&pos, angle, 0);
}

BOOL daSpiral_c::RunPlayerSpiral() {
    daPy_py_c* player = (daPy_py_c*)dComIfGp_getPlayer(0);

    cXyz* path_point;
    if (mIdx == 0) {
        path_point = l_spiral_path_point_d;
    } else {
        path_point = l_spiral_path_point_u;
    }

    cXyz& goal = *dComIfGp_evmng_getGoal();
    if (goal.absXZ(player->current.pos) < KREG_F(4) + 80.0f) {
        field_0x6b4++;
        if (field_0x6b4 == 9) {
            return TRUE;
        }

        cXyz pos(path_point[field_0x6b4]);
        mDoMtx_stack_c::YrotS(home.angle.y);
        mDoMtx_stack_c::multVec(&pos, &pos);
        pos += current.pos;
        dComIfGp_evmng_setGoal(&pos);
    }

    return FALSE;
}

u8 daSpiral_c::frontCheck() {
    int stayNo = dComIfGp_roomControl_getStayNo();
    int fRoomNo = door_param2_c::getFRoomNo(this);

    if (stayNo == fRoomNo) {
        return 0;
    }

    return 1;
}

int daSpiral_c::checkExecute() {
    mFrontCheck = frontCheck();

    if (eventInfo.checkCommandDemoAccrpt() || eventInfo.checkCommandDoor()) {
        return 2;
    }

    fopAc_ac_c* door = dComIfGp_event_getDoorPartner();
    if (door == this) {
        return 2;
    }

    if (field_0x61c != dComIfGp_roomControl_getStayNo()) {
        return 0;
    }

    if (mFrontCheck != 2 && adjoinPlayer()) {
        return 2;
    }

    return 0;
}

int daSpiral_c::execute() {
    int executeNo = checkExecute();
    switch (executeNo) {
        case 0:
            setAction(0);
            break;

        case 2:
            switch (mAction) {
                case 0:
                    actionInit();
                    break;

                case 1:
                    actionWait();
                    break;
                
                case 2:
                    actionDemo();
                    break;

                case 3:
                    actionStopClose();
                    break;
            }
            break;

        default:
            JUT_ASSERT(1364, FALSE);
            break;
    }

    field_0x61c = dComIfGp_roomControl_getStayNo();
    return 1;
};

BOOL daSpiral_c::adjoinPlayer() {
    int fRoomNo = door_param2_c::getFRoomNo(this);
    if (dComIfGp_roomControl_checkRoomDisp(fRoomNo)) {
        return TRUE;
    }

    return FALSE;
}

BOOL daSpiral_c::drawCheck_local() {
    if (!adjoinPlayer()) {
        return FALSE;
    }

    return TRUE;
}

BOOL daSpiral_c::drawCheck(int param_1) {
    /* NONMATCHING */
    BOOL drawCheckLocal = drawCheck_local();
    if (drawCheckLocal) {
        fopAcM_SetStatusMap(this, 9);
    } else {
        fopAcM_OffStatus(this, 0);
    }

    return drawCheckLocal;
}

void daSpiral_c::debugDraw() {
    GXColor color = {0xFF, 0xFF, 0xFF, 0xFF};
    GXColor* pcVar1 = &color;
    GXColor* pcVar2 = &color;
    cXyz sp78[4], spa8[4];
    f32 fVar1 = 225.0f;
    f32 fVar2 = 0.0f;
    sp78[0] = sp78[1] = sp78[2] = sp78[3] = current.pos;

    spa8[0].x = spa8[1].x = fVar1;
    spa8[2].x = spa8[3].x = -fVar1;
    spa8[0].y = spa8[1].y = spa8[2].y = spa8[3].y = 5.0f;
    spa8[0].z = spa8[3].z = -450.0f;
    spa8[1].z = spa8[2].z = fVar2;

    s16 angle = current.angle.y;
    if (mFrontCheck == 1) {
        angle += (s16)0x7FFF;
    }

    mDoMtx_stack_c::YrotS(angle);

    for (int i = 0; i < 4; i++) {
        mDoMtx_stack_c::multVec(&spa8[i], &spa8[i]);
    }

    for (int i = 0; i < 4; i++) {
        sp78[i] = (sp78[i] + spa8[i]);
    }

    if (KREG_S(9) == 1000) {
        dDbVw_drawQuadOpa(sp78, color, 1);
        dDbVw_drawSphereXlu(current.pos, 30.0f, color, 1);
    }

    if (KREG_S(9) == 2000) {
        cXyz* path_point = l_spiral_path_point_d;
        if (mIdx == 1) {
            path_point = l_spiral_path_point_u;
        }

        mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
        mDoMtx_stack_c::YrotM(home.angle.y);

        cXyz start, end;
        for (int i = 0; i < 8; i++) {
            start = path_point[0];
            end = path_point[1];
            mDoMtx_stack_c::multVec(&start, &start);
            mDoMtx_stack_c::multVec(&end, &end);
            dDbVw_drawLineXlu(start, end, color, 1, 12);
            path_point++;
        }
    }
}

int daSpiral_c::draw() {
    BOOL isDraw = drawCheck(0);
    if (!isDraw) {
        if (field_0x5f6 == 0) {
            field_0x5f6 = 1;
            dComIfG_Bgsp().Release(mpBgW1);
            dComIfG_Bgsp().Release(mpBgW2);
            mSpiralStop.release(this);
        }

        return 1;
    }

    if (field_0x5f6 != 0) {
        field_0x5f6 = 0;
        bool rt = dComIfG_Bgsp().Regist(mpBgW1, this);
        JUT_ASSERT(1544, !rt);
        rt = dComIfG_Bgsp().Regist(mpBgW2, this);
        JUT_ASSERT(1546, !rt);

        if (mSpiralStop.field_0x70 != 0) {
            mSpiralStop.regist(this);
        }
    }

    g_env_light.settingTevStruct(16, &current.pos, &tevStr);
    g_env_light.setLightTevColorType_MAJI(mModel, &tevStr);
    dComIfGd_setListBG();
    mDoExt_modelUpdateDL(mModel);
    dComIfGd_setList();

    if (mSpiralStop.field_0x70 != 0) {
        mSpiralStop.draw(this);
    }

    debugDraw();

    return 1;
}

int daSpiral_c::Delete() {
    if (heap != NULL) {
        if (mpBgW1->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW1);
        }

        if (mpBgW2->ChkUsed()) {
            dComIfG_Bgsp().Release(mpBgW2);
        }
    }

    mSpiralStop.remove(this);
    dComIfG_resDelete(&mPhase1, getAlwaysArcName());
    dComIfG_resDelete(&mPhase3, getEvArcName());
    dComIfG_resDelete(&mPhase2, getBmdArcName());

    return 1;
}

BOOL daSpiral_c::checkMakeStop() {
    u8 frontOption = door_param2_c::getFrontOption(this);
    if (frontOption == 1 || frontOption == 3) {
        return TRUE;
    }

    return FALSE;
}

int daSpiral_c::checkStopF() {
    int fRoomNo = door_param2_c::getFRoomNo(this);
    u8 frontOption = door_param2_c::getFrontOption(this);
    u8 swBit = door_param2_c::getSwbit(this);

    if (swBit == 0xFF) {
        return 0;
    }

    if (frontOption != 1 && frontOption != 3) {
        return 0;
    }

    if (!dComIfGp_roomControl_checkStatusFlag(fRoomNo, 1)) {
        return -1;
    }

    return !dComIfGs_isSwitch(swBit, fRoomNo);
}

void daSpiral_c::setStopDemo() {
    u8 frontOption = door_param2_c::getFrontOption(this);
    int isMsgDoor  = door_param2_c::isMsgDoor(this);
    u8 eventNo = door_param2_c::getEventNo(this);

    if (mFrontCheck == 0) {
        if ((frontOption == 3 || frontOption == 1) && isMsgDoor == 0 && eventNo != 0xFF) {
            field_0x614 = 6;
            mMapToolIDs[field_0x614] = door_param2_c::getEventNo(this);
            mEventIDs[field_0x614] = dComIfGp_getEventManager().getEventIdx(this, mMapToolIDs[field_0x614]);
        } else {
            field_0x614 = 2;
        }
    }
}

BOOL daSpiral_c::checkStopClose() {
    /* NONMATCHING */
    u8 swBit = 0xFF;
    u8 fRoomNo = door_param2_c::getFRoomNo(this);

    if (mSpiralStop.mModel == NULL) {
        return FALSE;
    }

    u8 frontOption = door_param2_c::getFrontOption(this) & 0xFF;

    if (mFrontCheck == 0) {
        if (fRoomNo == 3) {
            return FALSE;
        }

        swBit = door_param2_c::getSwbit(this);
        fRoomNo = door_param2_c::getFRoomNo(this);
    }

    if (swBit == 0xFF) {
        return FALSE;
    }

    if (!dComIfGs_isSwitch(swBit, fRoomNo)) {
        return 1;
    }

    return 0;
}

void daSpiral_c::setStop() {
    if (checkMakeStop() && mSpiralStop.mModel != NULL) {
        mSpiralStop.field_0x72 = mFrontCheck;
        mSpiralStop.field_0x70 = checkStopF();
        mSpiralStop.field_0x68 = 0.0f;
    }
}

BOOL daSpiral_c::checkStopOpen() {
    u8 frontOption = door_param2_c::getFrontOption(this);
    u8 swBit = door_param2_c::getSwbit(this);
    u8 fRoomNo = door_param2_c::getFRoomNo(this);

    if (mFrontCheck == 0 && frontOption == 3) {
        if (!dComIfGp_event_runCheck() || field_0x5f8 == 0) {
            if (dComIfGp_roomControl_checkRoomDisp(fRoomNo) && fopAcM_myRoomSearchEnemy(fRoomNo) == NULL) {
                if (field_0x5f8 > 0) {
                    field_0x5f8--;
                    return FALSE;
                }

                if (swBit != 0xFF) {
                    dComIfGs_onSwitch(swBit, fRoomNo);
                }

                return TRUE;
            }

            field_0x5f8 = 65;
        }
    } else if (swBit != 0xFF && dComIfGs_isSwitch(swBit, fRoomNo)) {
        return TRUE;
    }

    return FALSE;
}

BOOL dSpiral_stop_c::create(daSpiral_c* i_this) {
    /* NONMATCHING */
    J3DModelData* modelData = i_this->getStopModelData();
    JUT_ASSERT(1830, modelData != NULL);

    mModel = mDoExt_J3DModel__create(modelData, 0x80000, 0x11000084);
    if (mModel == NULL) {
        return FALSE;
    }

    mpBgW = new dBgW();
    if (mpBgW == NULL) {
        return FALSE;
    }

    cBgD_t* bgd = (cBgD_t*)dComIfG_getObjectRes(i_this->getAlwaysArcName(), i_this->getStopDzb());
    JUT_ASSERT(1849, bgd != NULL);

    bool isSet = mpBgW->Set(bgd, 1, &mMtx);
    if (isSet == true) {
        return FALSE;
    }

    return TRUE;
}

int dSpiral_stop_c::remove(daSpiral_c* i_this) {
    release(i_this);
    field_0x70 = 0;
    return 1;
}

void dSpiral_stop_c::calcMtx(daSpiral_c* i_this) {
    f32 fVar1 = -40.0f;
    cXyz offset(i_this->current.pos);
    cXyz pos;
    pos.set(0.0f, 0.0f, 100.0f);
    if (field_0x72 == 1) {
        pos.set(0.0f, 0.0f, -100.0f);
    }

    cLib_offsetPos(&offset, &i_this->home.pos, i_this->home.angle.y, &pos);

    s16 angle = i_this->current.angle.y;
    if (field_0x72 == 1) {
        angle += (s16)0x7FFF;
    }

    mDoMtx_stack_c::transS(offset.x, offset.y, offset.z);
    mDoMtx_stack_c::YrotM(angle);
    mDoMtx_stack_c::transM(0.0f, field_0x68, 0.0f);
    cMtx_copy(mDoMtx_stack_c::get(), mMtx);

    if (mpBgW != NULL) {
        mpBgW->Move();
    }

    if (mModel != NULL) {
        mModel->setBaseTRMtx(mDoMtx_stack_c::get());
    }
}

void dSpiral_stop_c::openInit(daSpiral_c* i_this) {
    field_0x68 = 0.0f;
    field_0x6c = 0.0f;
}

bool dSpiral_stop_c::openProc(daSpiral_c* i_this) {
    cLib_chaseF(&field_0x6c, 30.0f, 4.0f);
    if (cLib_chaseF(&field_0x68, 300.0f, field_0x6c) != 0) {
        field_0x70 = 0;
        return true;
    }

    return false;
}

void dSpiral_stop_c::closeInit(daSpiral_c* i_this) {
    field_0x68 = 300.0f;
    field_0x6c = 0.0f;
}

bool dSpiral_stop_c::closeProc(daSpiral_c* i_this) {
    cLib_chaseF(&field_0x6c, 60.0f, 6.0f);
    if (cLib_chaseF(&field_0x68, 0.0f, field_0x6c) != 0) {
        return true;
    }

    return false;
}

void dSpiral_stop_c::draw(daSpiral_c* i_this) {
    if (mModel != NULL) {
        g_env_light.settingTevStruct(16, &i_this->current.pos, &i_this->tevStr);
        g_env_light.setLightTevColorType_MAJI(mModel, &i_this->tevStr);
        mDoExt_modelUpdateDL(mModel);
    }
}

BOOL dSpiral_stop_c::regist(daSpiral_c* i_this) {
    if (mpBgW != NULL) {
        bool rt = dComIfG_Bgsp().Regist(mpBgW, i_this);
        if (!rt) {
            return TRUE;
        }
    }

    return FALSE;
}

BOOL dSpiral_stop_c::release(daSpiral_c* i_this) {
    if (mpBgW != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }

    return TRUE;
}

static int daSpiral_Draw(daSpiral_c* i_this) {
    return i_this->draw();
}

static int daSpiral_Execute(daSpiral_c* i_this) {
    i_this->execute();
    return 1;
}

static int daSpiral_Delete(daSpiral_c* i_this) {
    fpc_ProcID id = fopAcM_GetID(i_this);
    i_this->Delete();
    i_this->~daSpiral_c();
    return 1;
}

static int daSpiral_Create(fopAc_ac_c* a_this) {
    daSpiral_c* i_this = (daSpiral_c*)a_this;
    fpc_ProcID id = fopAcM_GetID(a_this);
    fopAcM_ct(i_this, daSpiral_c);
    return static_cast<daSpiral_c*>(i_this)->create();
}

static actor_method_class l_daSpiral_Method = {
    (process_method_func)daSpiral_Create,
    (process_method_func)daSpiral_Delete,
    (process_method_func)daSpiral_Execute,
    (process_method_func)NULL,
    (process_method_func)daSpiral_Draw,
};

#endif

extern actor_process_profile_definition g_profile_SPIRAL_DOOR = {
    fpcLy_CURRENT_e,        // mLayerID
    7,                      // mListID
    fpcPi_CURRENT_e,        // mListPrio
    PROC_SPIRAL_DOOR,       // mProcName
    &g_fpcLf_Method.base,  // sub_method
    #if DEBUG
    0x6D4,              // mSize
    #else
    0x6B0,                  // mSize
    #endif
    0,                      // mSizeOther
    0,                      // mParameters
    &g_fopAc_Method.base,   // sub_method
    301,                    // mPriority
    #if DEBUG
    &l_daSpiral_Method,     // sub_method
    #else
    NULL,     // sub_method
    #endif
    0x44000,                // mStatus
    fopAc_ACTOR_e,          // mActorType
    fopAc_CULLBOX_6_e,      // cullType
};
