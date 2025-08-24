/**
 * d_a_startAndGoal.cpp
 *
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_startAndGoal.h"
#include "d/actor/d_a_npc.h"
#include "d/d_timer.h"
#include "d/d_meter2_info.h"
#include "f_op/f_op_actor_mng.h"

class daStartAndGoal_Path_c : public daNpcF_Path_c {
public:
    /* 80D4D7B8 */ BOOL chkPassed2(cXyz);

    /* 80D4D928 */ virtual ~daStartAndGoal_Path_c() {}
};

class daStartAndGoal_c : public fopAc_ac_c {
public:
    /* 80D4D84C */ int getType();
    /* 80D4D884 */ int Create();
    /* 80D4D998 */ void init();
    /* 80D4DA68 */ void actorPosCheck();
    /* 80D4DB30 */ int readyStartTimer();
    /* 80D4DBAC */ BOOL isStartCheck();
    /* 80D4DBD0 */ BOOL isReadyCheck();
    /* 80D4DC50 */ int Execute();
    /* 80D4DCF4 */ int Draw();
    /* 80D4DCFC */ int Delete();

    /* 0x568 */ daStartAndGoal_Path_c mPath;
    /* 0xB98 */ u8 field_0xb98;
    /* 0xB99 */ u8 mType;
    /* 0xB9C */ int mAction;
    /* 0xBA0 */ bool mStarted;
};

/* 80D4D7B8-80D4D84C 000078 0094+00 1/1 0/0 0/0 .text chkPassed2__21daStartAndGoal_Path_cF4cXyz */
BOOL daStartAndGoal_Path_c::chkPassed2(cXyz i_checkPos) {
    int var_r31 = 0;
    while (var_r31 < 1) {
        if (!chkPassed(i_checkPos)) {
            break;
        }

        var_r31 = 1;
        if (setNextIdx()) {
            var_r31 = 2;
        }
    }

    return var_r31 > 0;
}

/* 80D4D84C-80D4D884 00010C 0038+00 1/1 0/0 0/0 .text            getType__16daStartAndGoal_cFv */
int daStartAndGoal_c::getType() {
    switch (fopAcM_GetParam(this) & 0xFF) {
    case 0:
        return 0;
    case 1:
        return 1;
    default:
        return 2;
    }
}

/* ############################################################################################## */
struct timer_info {
    /* 0x0 */ s32 mode;
    /* 0x4 */ u8 type;
    /* 0x5 */ u8 field_0x5;
};

/* 80D4DECC-80D4DEE4 000000 0018+00 4/4 0/0 0/0 .data            l_timerType */
static timer_info l_timerType[] = {
    {3, 0, 1},
    {4, 2, 0},
    {3, 1, 1},
};

/* 80D4D884-80D4D928 000144 00A4+00 1/1 0/0 0/0 .text            Create__16daStartAndGoal_cFv */
int daStartAndGoal_c::Create() {
    fopAcM_SetupActor(this, daStartAndGoal_c);

    init();
    return cPhs_COMPLEATE_e;
}

/* 80D4DEB8-80D4DEBC 000000 0001+03 1/1 0/0 0/0 .rodata          l_DATA */
static const u8 l_DATA[1] = {0};  // unused

/* 80D4D998-80D4DA68 000258 00D0+00 1/1 0/0 0/0 .text            init__16daStartAndGoal_cFv */
void daStartAndGoal_c::init() {
    field_0xb98 = 1;
    mStarted = false;
    mType = getType();

    mPath.initialize();
    mPath.setPathInfo(fopAcM_GetParam(this) >> 8, fopAcM_GetRoomNo(this), 0);
    JUT_ASSERT(0, 0 != mPath.getPathInfo());

    if (dComIfG_getTimerPtr() == NULL) {
        dTimer_createTimer(l_timerType[mType].mode, 9999000, l_timerType[mType].type, 0, 210.0f,
                           410.0f, 32.0f, 419.0f);
    }

    mAction = 0;
}

/* 80D4DA68-80D4DB30 000328 00C8+00 1/1 0/0 0/0 .text            actorPosCheck__16daStartAndGoal_cFv
 */
void daStartAndGoal_c::actorPosCheck() {
    cXyz pos(daPy_getPlayerActorClass()->current.pos);
    if (mPath.chkPassed2(pos)) {
        int idx = mPath.getIdx();
        int next_idx = mPath.getNextIdx();

        if (idx == next_idx) {
            mAction = 3;
            dComIfG_TimerEnd(l_timerType[mType].mode, -1);
            dMeter2Info_setMsgTimeMs(dComIfG_getTimerNowTimeMs());
        }
    }
}

/* 80D4DB30-80D4DBAC 0003F0 007C+00 0/0 0/0 2/2 .text readyStartTimer__16daStartAndGoal_cFv */
int daStartAndGoal_c::readyStartTimer() {
    if (dComIfG_TimerStart(l_timerType[mType].mode, 0)) {
        mAction = 1;
        field_0xb98 = l_timerType[mType].field_0x5;
        return 1;
    }

    return 0;
}

/* 80D4DBAC-80D4DBD0 00046C 0024+00 1/1 0/0 2/2 .text            isStartCheck__16daStartAndGoal_cFv
 */
BOOL daStartAndGoal_c::isStartCheck() {
    return dTimer_isStart();
}

/* 80D4DBD0-80D4DC50 000490 0080+00 1/1 0/0 0/0 .text            isReadyCheck__16daStartAndGoal_cFv
 */
BOOL daStartAndGoal_c::isReadyCheck() {
    if (mStarted) {
        return TRUE;
    }

    if (dTimer_isReadyFlag()) {
        mStarted = true;

        if (mType == 1) {
            Z2GetAudioMgr()->subBgmStart(Z2BGM_RIVER_GAME);
        }
    }

    return dTimer_isStart();
}

/* 80D4DC50-80D4DCF4 000510 00A4+00 1/1 0/0 0/0 .text            Execute__16daStartAndGoal_cFv */
int daStartAndGoal_c::Execute() {
    switch (mAction) {
    case 0:
        break;
    case 1:
        if (isStartCheck()) {
            mAction = 2;

            if (mType == 0) {
                Z2GetAudioMgr()->subBgmStart(Z2BGM_RIVER_GAME_00);
            }
        } else {
            isReadyCheck();
            break;
        }
    case 2:
        actorPosCheck();
        break;
    case 3:
        break;
    }

    return 1;
}

/* 80D4DCF4-80D4DCFC 0005B4 0008+00 1/1 0/0 0/0 .text            Draw__16daStartAndGoal_cFv */
int daStartAndGoal_c::Draw() {
    return 1;
}

/* 80D4DCFC-80D4DD80 0005BC 0084+00 1/1 0/0 0/0 .text            Delete__16daStartAndGoal_cFv */
int daStartAndGoal_c::Delete() {
    if (field_0xb98 == 1) {
        dComIfG_TimerDeleteRequest(l_timerType[mType].mode);
    }

    if (mStarted == true && (mType == 0 || mType == 1)) {
        Z2GetAudioMgr()->subBgmStop();
    }

    return 1;
}

/* 80D4DD80-80D4DDA0 000640 0020+00 1/0 0/0 0/0 .text daStartAndGoal_Execute__FP16daStartAndGoal_c
 */
static int daStartAndGoal_Execute(daStartAndGoal_c* i_this) {
    return i_this->Execute();
}

/* 80D4DDA0-80D4DDC0 000660 0020+00 1/0 0/0 0/0 .text daStartAndGoal_Draw__FP16daStartAndGoal_c */
static int daStartAndGoal_Draw(daStartAndGoal_c* i_this) {
    return i_this->Draw();
}

/* 80D4DDC0-80D4DDC8 000680 0008+00 1/0 0/0 0/0 .text
 * daStartAndGoal_IsDelete__FP16daStartAndGoal_c                */
static int daStartAndGoal_IsDelete(daStartAndGoal_c* i_this) {
    return 1;
}

/* 80D4DDC8-80D4DDE8 000688 0020+00 1/0 0/0 0/0 .text daStartAndGoal_Delete__FP16daStartAndGoal_c
 */
static int daStartAndGoal_Delete(daStartAndGoal_c* i_this) {
    return i_this->Delete();
}

/* 80D4DDE8-80D4DE08 0006A8 0020+00 1/0 0/0 0/0 .text daStartAndGoal_create__FP10fopAc_ac_c */
static int daStartAndGoal_create(fopAc_ac_c* i_this) {
    return static_cast<daStartAndGoal_c*>(i_this)->Create();
}

/* 80D4DEE4-80D4DF04 -00001 0020+00 1/0 0/0 0/0 .data            l_daStartAndGoal_Method */
static actor_method_class l_daStartAndGoal_Method = {
    (process_method_func)daStartAndGoal_create,  (process_method_func)daStartAndGoal_Delete,
    (process_method_func)daStartAndGoal_Execute, (process_method_func)daStartAndGoal_IsDelete,
    (process_method_func)daStartAndGoal_Draw,
};

/* 80D4DF04-80D4DF34 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_START_AND_GOAL */
extern actor_process_profile_definition g_profile_START_AND_GOAL = {
    fpcLy_CURRENT_e,
    9,
    fpcPi_CURRENT_e,
    PROC_START_AND_GOAL,
    &g_fpcLf_Method.base,
    sizeof(daStartAndGoal_c),
    0,
    0,
    &g_fopAc_Method.base,
    391,
    &l_daStartAndGoal_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
