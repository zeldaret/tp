/*
 * d_a_obj_enemy_create.cpp
 * Enemy spawner
 */

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_enemy_create.h"
#include "d/actor/d_a_player.h"
#include "f_op/f_op_actor_mng.h"

/* 80BE3178-80BE3198 000078 0020+00 1/0 0/0 0/0 .text daObjE_CREATE_Create__FP10fopAc_ac_c */
static int daObjE_CREATE_Create(fopAc_ac_c* i_this) {
    return static_cast<daObjE_CREATE_c*>(i_this)->create();
}

/* 80BE3198-80BE31BC 000098 0024+00 1/0 0/0 0/0 .text daObjE_CREATE_Delete__FP15daObjE_CREATE_c */
static int daObjE_CREATE_Delete(daObjE_CREATE_c* i_this) {
    i_this->Delete();
    return 1;
}

/* 80BE31BC-80BE345C 0000BC 02A0+00 3/3 0/0 0/0 .text            NormalAction__15daObjE_CREATE_cFv
 */
void daObjE_CREATE_c::NormalAction() {
    cXyz offsetPos(0.0f, 0.0f, 100.0f);

    switch (mActionMode) {
    case MODE_CREATE:
        if (mActivateSw != 0xFF && dComIfGs_isSwitch(mActivateSw, fopAcM_GetRoomNo(this))) {
            int enemyNum = mEnemyNum;

            for (int i = 0; i < enemyNum; i++) {
                s16 angle = shape_angle.y + (62000.0f / enemyNum) * i;

                // this cLib_offsetPos call is useless since the result is stored in `offsetPos`
                // and `offsetPos` is never used afterward.
                // this was probably supposed to be:
                // "cLib_offsetPos(&current.pos, &current.pos, angle, &offsetPos)"
                cLib_offsetPos(&offsetPos, &current.pos, angle, &offsetPos);

                mActorList[i] =
                    fopAcM_createChild(mEnemyProcName, fopAcM_GetID(this), mEnemyParams,
                                       &current.pos, fopAcM_GetRoomNo(this), &mEnemyAngle,
                                       NULL, -1, NULL);
            }
            mActionMode++;
            mKillCheckDelayTimer = 50;
        }
        break;
    case MODE_WAIT:
        mKillCheckDelayTimer--;
        if (mKillCheckDelayTimer <= 0) {
            mKillCheckDelayTimer = 0;
        }

        if (mKillCheckDelayTimer == 0) {
            mActionMode++;
        }
        break;
    case MODE_KILL_CHECK:
        int killed_num;
        int enemyNum = mEnemyNum;

        killed_num = 0;
        for (int i = 0; i < enemyNum; i++) {
            if (fopAcM_SearchByID(mActorList[i]) == NULL) {
                mActorList[i] = 0xFFFFFFFF;
                killed_num++;
            }
        }

        if (killed_num == enemyNum) {
            mActionMode++;
            if (mDeactivateSw != 0xFF &&
                !dComIfGs_isSwitch(mDeactivateSw, fopAcM_GetRoomNo(this))) {
                dComIfGs_onSwitch(mDeactivateSw, fopAcM_GetRoomNo(this));
            }

            mKillCheckDelayTimer = 100;
        }
        break;
    case MODE_END:
        break;
    }
}

/* 80BE345C-80BE34A0 00035C 0044+00 1/1 0/0 0/0 .text            SearchAction__15daObjE_CREATE_cFv
 */
/**
 * Moves the enemy spawner position to player position
 */
void daObjE_CREATE_c::SearchAction() {
    current.pos = fopAcM_GetPosition(daPy_getPlayerActorClass());
    NormalAction();
}

/* 80BE34A0-80BE3544 0003A0 00A4+00 1/1 0/0 0/0 .text            LoopAction__15daObjE_CREATE_cFv */
/**
 * Starts the enemy spawn loop over again when all enemies are killed.
 * If a loop end switch is specified and activated, the loop will end
 */
void daObjE_CREATE_c::LoopAction() {
    NormalAction();

    if (mActionMode == MODE_END) {
        mKillCheckDelayTimer--;
        if (mKillCheckDelayTimer <= 0) {
            mKillCheckDelayTimer = 0;
        }

        if (mKillCheckDelayTimer == 0) {
            mActionMode = MODE_CREATE;
        }
    }

    if (mEndLoopSw != 0xFF && dComIfGs_isSwitch(mEndLoopSw, fopAcM_GetRoomNo(this))) {
        mAction = ACT_NORMAL;
        mActionMode = MODE_KILL_CHECK;
    }
}

/* 80BE3544-80BE359C 000444 0058+00 1/1 0/0 0/0 .text            Action__15daObjE_CREATE_cFv */
void daObjE_CREATE_c::Action() {
    switch (mAction) {
    case ACT_NORMAL:
        NormalAction();
        break;
    case ACT_SEARCH:
        SearchAction();
        break;
    case ACT_LOOP:
        LoopAction();
        break;
    }
}

/* 80BE359C-80BE35C0 00049C 0024+00 1/1 0/0 0/0 .text            Execute__15daObjE_CREATE_cFv */
int daObjE_CREATE_c::Execute() {
    Action();
    return 1;
}

/* 80BE35C0-80BE35F0 0004C0 0030+00 1/1 0/0 0/0 .text            Delete__15daObjE_CREATE_cFv */
int daObjE_CREATE_c::Delete() {
    if (mActorList != NULL) {
        delete[] mActorList;
    }

    return 1;
}

/* 80BE35F0-80BE35F8 0004F0 0008+00 1/0 0/0 0/0 .text daObjE_CREATE_Draw__FP15daObjE_CREATE_c */
static int daObjE_CREATE_Draw(daObjE_CREATE_c* i_this) {
    return 1;
}

/* 80BE35F8-80BE3618 0004F8 0020+00 1/0 0/0 0/0 .text daObjE_CREATE_Execute__FP15daObjE_CREATE_c
 */
static int daObjE_CREATE_Execute(daObjE_CREATE_c* i_this) {
    return i_this->Execute();
}

/* 80BE3618-80BE3770 000518 0158+00 2/1 0/0 0/0 .text            NameChk__15daObjE_CREATE_cFv */
void daObjE_CREATE_c::NameChk() {
    int enemyType = fopAcM_GetParam(this) & 0xF;
    mEnemyNum = (fopAcM_GetParam(this) >> 4) & 0xF;
    mEnemyParams = 0xFFFFFFFF;
    mEnemyAngle = shape_angle;

    switch (enemyType) {
    case ENEMY_NONE:
        break;
    case ENEMY_KEESE:
        mEnemyProcName = PROC_E_BA;
        break;
    case ENEMY_RAT:
        mEnemyProcName = PROC_E_MS;
        break;
    case ENEMY_CHU:
        mEnemyProcName = PROC_E_SM2;
        mEnemyParams = 0xFFFFFF1F;
        break;
    case ENEMY_CHU2:
        mEnemyProcName = PROC_E_SM2;
        mEnemyParams = 0xFFFFFF3F;
        break;
    case ENEMY_BABY_GOHMA:
        mEnemyProcName = PROC_E_GM;
        mEnemyParams = 0x000AFF02;
        break;
    case ENEMY_BUBBLE:
        mEnemyProcName = PROC_E_BU;
        break;
    case ENEMY_BOKOBLIN:
        mEnemyProcName = PROC_E_OC;
        break;
    case ENEMY_LIZALFOS:
        mEnemyProcName = PROC_E_DN;
        break;
    case ENEMY_SHADOW_BEAST:
        mEnemyProcName = PROC_E_S1;

        if (mEnemyNum == 1) {
            mEnemyParams = 0xFFFFFEF0;
        } else {
            mEnemyParams = (mEnemyNum << 4) | 0xFFFFFE00;
        }
        break;
    case ENEMY_SHADOW_VERMIN:
        mEnemyProcName = PROC_E_YG;
        mEnemyParams = 0xFFFFFF00;
        break;
    case ENEMY_SHADOW_KEESE:
        mEnemyProcName = PROC_E_YK;
        mEnemyParams = 0xFFFFFF01;
        break;
    case ENEMY_BOKOBLIN2:
        mEnemyProcName = PROC_E_OC;
        mEnemyParams = 0xFFFF01FF;
        mEnemyAngle.set(0x100, shape_angle.y, shape_angle.z);
        break;
    }
}

/* 80BE3770-80BE3878 000670 0108+00 1/1 0/0 0/0 .text            create__15daObjE_CREATE_cFv */
int daObjE_CREATE_c::create() {
    fopAcM_SetupActor(this, daObjE_CREATE_c);

    NameChk();
    u32 enemyType = fopAcM_GetParam(this) & 0xF;

    mAction = current.angle.x & 0xF;
    if (mAction == ACT_DEFAULT) {
        mAction = ACT_NORMAL;
    }

    current.angle.x = 0;

    if (enemyType == 0 || enemyType == 0xFF) {
        return cPhs_ERROR_e;
    }

    mEndLoopSw = fopAcM_GetParam(this) >> 0x18;
    if (dComIfGs_isSwitch(mEndLoopSw, fopAcM_GetRoomNo(this))) {
        return cPhs_ERROR_e;
    }

    mActivateSw = fopAcM_GetParam(this) >> 8;
    mDeactivateSw = fopAcM_GetParam(this) >> 0x10;
    mActorList = new u32[mEnemyNum];

    if (mActorList == NULL) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

/* 80BE3878-80BE3880 000778 0008+00 1/0 0/0 0/0 .text daObjE_CREATE_IsDelete__FP15daObjE_CREATE_c
 */
static int daObjE_CREATE_IsDelete(daObjE_CREATE_c* i_this) {
    return 1;
}

/* ############################################################################################## */
/* 80BE38D4-80BE38F4 -00001 0020+00 1/0 0/0 0/0 .data            l_daObjE_CREATE_Method */
static actor_method_class l_daObjE_CREATE_Method = {
    (process_method_func)daObjE_CREATE_Create,  (process_method_func)daObjE_CREATE_Delete,
    (process_method_func)daObjE_CREATE_Execute, (process_method_func)daObjE_CREATE_IsDelete,
    (process_method_func)daObjE_CREATE_Draw,
};

/* 80BE38F4-80BE3924 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_E_CREATE */
extern actor_process_profile_definition g_profile_Obj_E_CREATE = {
    fpcLy_CURRENT_e,
    3,
    fpcPi_CURRENT_e,
    PROC_Obj_E_CREATE,
    &g_fpcLf_Method.base,
    sizeof(daObjE_CREATE_c),
    0,
    0,
    &g_fopAc_Method.base,
    458,
    &l_daObjE_CREATE_Method,
    0x40000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_CUSTOM_e,
};
