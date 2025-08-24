/**
 * d_a_door_boss.cpp
 * Boss Door
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_door_boss.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_procname.h"
#include "d/d_door_param2.h"
#include "SSystem/SComponent/c_math.h"

/* 8066F418-8066F424 000078 000C+00 4/4 0/0 0/0 .text            getArcName__9daBdoor_cFv */
char* daBdoor_c::getArcName() {
    return "Z_bdor00";
}

/* 8066F424-8066F434 000084 0010+00 1/1 0/0 0/0 .text            getBmd__9daBdoor_cFv */
char* daBdoor_c::getBmd() {
    return "Z_bdor00.bmd";
}

/* 8066F434-8066F444 000094 0010+00 1/1 0/0 0/0 .text            getDzb__9daBdoor_cFv */
char* daBdoor_c::getDzb() {
    return "door30.dzb";
}

/* 8066F444-8066F454 0000A4 0010+00 1/1 0/0 0/0 .text            getBmd2__9daBdoor_cFv */
char* daBdoor_c::getBmd2() {
    return "door_shutterBoss.bmd";
}

/* 8066F454-8066F4C4 0000B4 0070+00 1/1 0/0 0/0 .text            getDoorModelData__9daBdoor_cFv */
J3DModelData* daBdoor_c::getDoorModelData() {
    J3DModelData* model_data = (J3DModelData*)dComIfG_getStageRes(getBmd2());
    if (model_data == NULL) {
        model_data = (J3DModelData*)dComIfG_getObjectRes(getArcName(), getBmd());
    }
    return model_data;
}

/* 8066F4C4-8066F4E4 000124 0020+00 1/1 0/0 0/0 .text            CheckCreateHeap__FP10fopAc_ac_c */
static int CheckCreateHeap(fopAc_ac_c* i_this) {
    return static_cast<daBdoor_c*>(i_this)->CreateHeap();
}

/* 8066F4E4-8066F6F0 000144 020C+00 1/1 0/0 0/0 .text            CreateHeap__9daBdoor_cFv */
int daBdoor_c::CreateHeap() {
    J3DModelData* door_model_data = getDoorModelData();
    mpDoorModel = mDoExt_J3DModel__create(door_model_data, 0x80000, 0x11000084);
    if (mpDoorModel == NULL) {
        return 0;
    }

    J3DModelData* lock_model_data = (J3DModelData*)dComIfG_getObjectRes(getArcName(), "VlockB.bmd");
    mpLockModel = mDoExt_J3DModel__create(lock_model_data, 0x80000, 0x11000084);
    if (mpLockModel == NULL) {
        return 0;
    }

    J3DAnmTransform* lock_bck = (J3DAnmTransform*)dComIfG_getObjectRes(getArcName(), "VlockB.bck");
    mpLockAnm = new mDoExt_bckAnm();
    if (mpLockAnm == NULL || !mpLockAnm->init(lock_bck, 1, 0, 1.0f, 0, -1, false)) {
        return 0;
    }

    J3DSkinDeform* deform = new J3DSkinDeform();
    if (deform == NULL) {
        return 0;
    }
    if (mpLockModel->setSkinDeform(deform, 1) == 4) {
        return 0;
    }

    mpBgW = new dBgW();
    cBgD_t* dzb = (cBgD_t*)dComIfG_getObjectRes(getArcName(), getDzb());
    if (dzb == NULL) {
        return 0;
    }
    calcMtx();
    return mpBgW->Set(dzb, 1, &mpDoorModel->getBaseTRMtx()) == 1 ? 0 : 1;
}

/* 8066F738-8066F7EC 000398 00B4+00 3/3 0/0 0/0 .text            calcMtx__9daBdoor_cFv */
void daBdoor_c::calcMtx() {
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + mOffsetY, current.pos.z);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mpDoorModel->setBaseTRMtx(mDoMtx_stack_c::get());
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y + 300.0f, current.pos.z);
    mDoMtx_stack_c::YrotM(home.angle.y);
    mpLockModel->setBaseTRMtx(mDoMtx_stack_c::get());
}

/* 8066F7EC-8066F8E4 00044C 00F8+00 1/1 0/0 0/0 .text            CreateInit__9daBdoor_cFv */
int daBdoor_c::CreateInit() {
    mAcch.Set(&current.pos, &old.pos, this, 1, &mAcchCir, &speed, NULL, NULL);
    dComIfG_Bgsp().Regist(mpBgW, this);
    setAction(ACT_CLOSE_WAIT);
    attention_info.position.y += 250.0f;
    eyePos.y += 250.0f;
    attention_info.flags = 0x20;
    calcMtx();
    mpBgW->Move();
    u32 swbit = door_param2_c::getSwbit(this);
    if (!dComIfGs_isSwitch(swbit, fopAcM_GetRoomNo(this))) {
        mLocked = true;
    } else {
        mLocked = false;
    }
    mOffsetY = 0.0f;
    return 1;
}

/* 8066F8E4-8066F9D8 000544 00F4+00 1/1 0/0 0/0 .text            create__9daBdoor_cFv */
cPhs__Step daBdoor_c::create() {
    fopAcM_SetupActor(this, daBdoor_c);
    cPhs__Step step = (cPhs__Step)dComIfG_resLoad(&mPhaseReq, getArcName());
    if (step == cPhs_COMPLEATE_e) {
        if (!fopAcM_entrySolidHeap(this, CheckCreateHeap, 0xa000)) {
            return cPhs_ERROR_e;
        }
        if (!CreateInit()) {
            return cPhs_ERROR_e;
        }
    }
    return step;
}

/* 8066FAB8-8066FB00 000718 0048+00 1/1 0/0 0/0 .text            getDemoAction__9daBdoor_cFv */
int daBdoor_c::getDemoAction() {
    static char* action_table[11] = {
        "WAIT",
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
    };
    return dComIfGp_evmng_getMyActIdx(mStaffID, action_table, 11, 0, 0);
}

/* 8066FB00-8066FF04 000760 0404+00 5/3 0/0 0/0 .text            demoProc__9daBdoor_cFv */
void daBdoor_c::demoProc() {
    cXyz goal;
    int done;
    int action = getDemoAction();

    if (dComIfGp_evmng_getIsAddvance(mStaffID)) {
        switch (action) {
        case 1:  // UNLOCK
            if (mLocked) {
                dComIfGs_onSwitch(door_param2_c::getSwbit(this), fopAcM_GetRoomNo(this));
                mpLockAnm->setPlaySpeed(1.0f);
            }
            break;
        case 2:  // OPEN
            mLocked = false;
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_MOVE_U, 0);
            dComIfG_Bgsp().Release(mpBgW);
            break;
        case 3:  // SETGOAL
            calcGoal(&goal, 0);
            dComIfGp_evmng_setGoal(&goal);
            break;
        case 4:  // SETGOAL2
            calcGoal(&goal, 1);
            dComIfGp_evmng_setGoal(&goal);
            break;
        case 5:  // CLOSE
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_MOVE_D, 0);
            break;
        case 6:  // SMOKE
            smokeInit();
            break;
        case 10:  // CHG_SCENE
            field_0x58c = 0;
        }
    }

    switch (action) {
    case 1:  // UNLOCK
        mpLockAnm->play();
        if (!mLocked || mpLockAnm->isStop()) {
            mLocked = false;
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case 2:  // OPEN
        cLib_chaseF(&speedF, 60.0f, 6.0f);
        done = cLib_chaseF(&mOffsetY, 600.0f, speedF);
        calcMtx();
        if (done) {
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_STOP_U, 0);
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case 5:  // CLOSE
        cLib_chaseF(&speedF, 60.0f, 6.0f);
        done = cLib_chaseF(&mOffsetY, 0.0f, speedF);
        calcMtx();
        if (done) {
            dComIfGp_getVibration().StartShock(4, 0x1f, cXyz(0.0f, 1.0f, 0.0f));
            fopAcM_seStart(this, JA_SE_OBJ_STN_DOOR_STOP_D, 0);
            dComIfGp_evmng_cutEnd(mStaffID);
        }
        break;
    case 10:  // CHG_SCENE
        if (field_0x58c == 0) {
            daPy_getPlayerActorClass()->onSceneChangeArea(door_param2_c::getExitNo(this), 0xff, 0);
        }
        field_0x58c--;
        break;
    case 8:  // END
        break;
    case 9:  // END_CHECK
        setAction(ACT_END);
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    default:
        dComIfGp_evmng_cutEnd(mStaffID);
        break;
    }
}

/* 8066FF04-8067002C 000B64 0128+00 1/1 0/0 0/0 .text            calcGoal__9daBdoor_cFP4cXyzi */
void daBdoor_c::calcGoal(cXyz* i_goalP, int param_1) {
    cXyz vec = daPy_getPlayerActorClass()->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    vec.x = 0.5f * vec.x;
    vec.y = 0.0f;
    if (param_1 == 0) {
        vec.z = -1000.0f;
    }  else {
        vec.z = -240.0f;
    }
    mDoMtx_stack_c::transS(current.pos.x, current.pos.y, current.pos.z);
    mDoMtx_stack_c::YrotM(current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    i_goalP->x = vec.x;
    i_goalP->y = 0.0f;
    i_goalP->z = vec.z;
}

/* 8067002C-806700C4 000C8C 0098+00 1/1 0/0 0/0 .text            smokeInit__9daBdoor_cFv */
void daBdoor_c::smokeInit() {
    mParticlePos = current.pos;
    mParticleAngle = shape_angle;
    dComIfGp_particle_setPolyColor(0x8156, mAcch.m_gnd, &mParticlePos, &tevStr, &mParticleAngle,
                                   NULL, 0, NULL, fopAcM_GetRoomNo(this), NULL);
}

/* 806700C4-806701F4 000D24 0130+00 1/1 0/0 0/0 .text            checkArea__9daBdoor_cFv */
BOOL daBdoor_c::checkArea() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    if (fabsf(vec.x) > 200.0f) {
        return false;
    }
    if (fabsf(vec.z) > 100.0f) {
        return false;
    }
    return (s16)fabs(current.angle.y - 0x7fff - player->current.angle.y) <= 0x4000 ? 1 : 0;
}

/* 806701F4-80670294 000E54 00A0+00 1/1 0/0 0/0 .text            checkFront__9daBdoor_cFv */
BOOL daBdoor_c::checkFront() {
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz vec = player->current.pos - current.pos;
    mDoMtx_stack_c::YrotS(-current.angle.y);
    mDoMtx_stack_c::multVec(&vec, &vec);
    return vec.z > 0.0f;
}

/* 80670294-80670320 000EF4 008C+00 1/1 0/0 0/0 .text            checkOpen__9daBdoor_cFv */
BOOL daBdoor_c::checkOpen() {
    if (daPy_py_c::checkNowWolf()) {
        return false;
    }
    if (!dComIfGs_isDungeonItemBossKey()) {
        return false;
    }
    if (!checkFront()) {
        return false;
    }
    if (!checkArea()) {
        return false;
    }
    return true;
}

/* 80670320-80670328 000F80 0008+00 1/0 0/0 0/0 .text            actionWait__9daBdoor_cFv */
BOOL daBdoor_c::actionWait() {
    return true;
}

/* 80670954-8067096C 000040 0015+03 1/1 0/0 0/0 .rodata          l_door_open_demo */
static char const l_door_open_demo[21] = "DEFAULT_BS_SHUTTER_F";

/* 8067096C-8067097C 000058 000D+03 2/2 0/0 0/0 .rodata          l_staff_name */
static char const l_staff_name[13] = "SHUTTER_DOOR";

/* 80670328-806703C0 000F88 0098+00 1/0 0/0 0/0 .text            actionCloseWait__9daBdoor_cFv */
BOOL daBdoor_c::actionCloseWait() {
    if (eventInfo.checkCommandDoor()) {
        mStaffID = dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        demoProc();
        setAction(ACT_OPEN);
    } else {
        if (checkOpen()) {
            eventInfo.setEventName((char*)l_door_open_demo);
            eventInfo.onCondition(dEvtCnd_CANDOOR_e);
        }
    }
    return 1;
}

/* 806703C0-806703E4 001020 0024+00 1/0 0/0 0/0 .text            actionOpen__9daBdoor_cFv */
BOOL daBdoor_c::actionOpen() {
    demoProc();
    return true;
}

/* 806703E4-80670544 001044 0160+00 1/0 0/0 0/0 .text            actionEnd__9daBdoor_cFv */
BOOL daBdoor_c::actionEnd() {
    if (!mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Regist(mpBgW, this);
    }
    setAction(ACT_WAIT);
    cXyz normal(cM_ssin(home.angle.y), 0.0f, cM_scos(home.angle.y));
    daPy_py_c* player = daPy_getPlayerActorClass();
    cXyz delta = player->current.pos - current.pos;
    f32 prod = delta.inprodXZ(normal);
    f32 offset = prod < 0.0f ? 180.0f : -180.0f;
    cXyz pos(current.pos.x - offset * normal.x, current.pos.y, current.pos.z - offset * normal.z);
    s32 room_no = fopAcM_GetRoomNo(player);
    s16 angle;
    if (prod > 0.0f) {
        angle = current.angle.y;
    } else {
        angle = current.angle.y + 0x8000;
    }
    dComIfGs_setRestartRoom(pos, angle, room_no);
    return true;
}

/* 80670544-80670664 0011A4 0120+00 1/1 0/0 0/0 .text            execute__9daBdoor_cFv */
int daBdoor_c::execute() {
    typedef BOOL (daBdoor_c::*daBdoor_action)();
    static daBdoor_action l_action[4] = {
        &actionWait,
        &actionCloseWait,
        &actionOpen,
        &actionEnd,
    };
    if (fopAcM_checkStatus(this, 0x1000)) {
        mStaffID = dComIfGp_evmng_getMyStaffId(l_staff_name, NULL, 0);
        demoProc();
    } else {
        (this->*l_action[mAction])();
    }
    mAcch.CrrPos(dComIfG_Bgsp());
    return 1;
}

/* 80670664-806706A4 0012C4 0040+00 1/1 0/0 0/0 .text            checkDraw__9daBdoor_cFv */
BOOL daBdoor_c::checkDraw() {
    return dComIfGp_roomControl_checkRoomDisp(fopAcM_GetRoomNo(this)) ? 1 : 0;
}

/* 806706A4-80670804 001304 0160+00 1/1 0/0 0/0 .text            draw__9daBdoor_cFv */
int daBdoor_c::draw() {
    BOOL draw = checkDraw();
    if (!draw) {
        if (!mBgInactive) {
            dComIfG_Bgsp().Release(mpBgW);
            mBgInactive = true;
        }
        return 1;
    } else {
        if (mBgInactive) {
            dComIfG_Bgsp().Regist(mpBgW, this);
            mBgInactive = false;
        }
        if (!draw) {
            fopAcM_OffStatus(this, 0);
        }
        g_env_light.settingTevStruct(0x10, &current.pos, &tevStr);
        g_env_light.setLightTevColorType_MAJI(mpDoorModel, &tevStr);
        dComIfGd_setListBG();
        mDoExt_modelUpdateDL(mpDoorModel);
        dComIfGd_setList();
        if (mLocked) {
            g_env_light.setLightTevColorType_MAJI(mpLockModel, &tevStr);
            mpLockAnm->entry(mpLockModel->getModelData());
            mDoExt_modelUpdateDL(mpLockModel);
        }
        return 1;
    }
}

/* 80670804-80670874 001464 0070+00 1/1 0/0 0/0 .text            Delete__9daBdoor_cFv */
int daBdoor_c::Delete() {
    if (heap != NULL && mpBgW->ChkUsed()) {
        dComIfG_Bgsp().Release(mpBgW);
    }
    dComIfG_resDelete(&mPhaseReq, getArcName());
    return 1;
}

/* 80670874-80670894 0014D4 0020+00 1/0 0/0 0/0 .text            daBdoor_Draw__FP9daBdoor_c */
static int daBdoor_Draw(daBdoor_c* i_this) {
    return i_this->draw();
}

/* 80670894-806708B8 0014F4 0024+00 1/0 0/0 0/0 .text            daBdoor_Execute__FP9daBdoor_c */
static int daBdoor_Execute(daBdoor_c* i_this) {
    i_this->execute();
    return 1;
}

/* 806708B8-806708DC 001518 0024+00 1/0 0/0 0/0 .text            daBdoor_Delete__FP9daBdoor_c */
static int daBdoor_Delete(daBdoor_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 806708DC-806708FC 00153C 0020+00 1/0 0/0 0/0 .text            daBdoor_Create__FP10fopAc_ac_c */
static cPhs__Step daBdoor_Create(fopAc_ac_c* i_this) {
    return static_cast<daBdoor_c*>(i_this)->create();
}

/* 80670B24-80670B44 -00001 0020+00 1/0 0/0 0/0 .data            l_daBdoor_Method */
static actor_method_class l_daBdoor_Method = {
    (process_method_func)daBdoor_Create,
    (process_method_func)daBdoor_Delete,
    (process_method_func)daBdoor_Execute,
    (process_method_func)NULL,
    (process_method_func)daBdoor_Draw,
};

/* 80670B44-80670B74 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_BOSS_DOOR */
extern actor_process_profile_definition g_profile_BOSS_DOOR = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_BOSS_DOOR,
    &g_fpcLf_Method.base,
    sizeof(daBdoor_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x129,
    &l_daBdoor_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_6_e,
};
