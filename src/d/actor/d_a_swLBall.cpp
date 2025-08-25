/**
 * @file d_a_swLBall.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_swLBall.h"
#include "SSystem/SComponent/c_phase.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_lib.h"
#include "f_op/f_op_actor_mng.h"

/* ############################################################################################## */
/* 80D4F5A0-80D4F5A8 000000 0008+00 2/2 0/0 0/0 .bss             l_target_info */
static daObjCarry_c* l_target_info[2];

/* 80D4F5A8-80D4F5AC 000008 0004+00 2/2 0/0 0/0 .bss             l_target_info_count */
static int l_target_info_count;

/* 80D4EAF8-80D4EB8C 000078 0094+00 1/1 0/0 0/0 .text            s_lb_sub__FPvPv */
static void* s_lb_sub(void* param_1, void* param_2) {
    if ((fopAcM_IsActor(param_1) && fopAcM_GetName(param_1) == PROC_Obj_Carry) &&
        static_cast<daObjCarry_c*>(param_1)->prm_chk_type_lightball())
    {
        if (l_target_info_count < 2) {
            l_target_info[l_target_info_count] = (daObjCarry_c*)param_1;
            l_target_info_count++;
        }
    }
    return 0;
}

/* 80D4EB8C-80D4ECCC 00010C 0140+00 2/2 0/0 0/0 .text checkArea_sub__11daSwLBall_cFP10fopAc_ac_c
 */
int daSwLBall_c::checkArea_sub(fopAc_ac_c* param_1) {
    if (getType() == 0) {
        if (param_1->current.pos.y >= current.pos.y - 10.0f &&
            param_1->current.pos.y < current.pos.y + scale.y * 100.0f &&
            fopAcM_searchActorDistanceXZ(this, param_1) < scale.x * 100.0f)
        {
            return 1;
        }
    } else if (getType() == 1) {
        cXyz cStack_1c(scale.x * -100.0f, 0.0f, scale.z * -100.0f);
        cXyz cStack_28(scale.x * 100.0f, scale.y * 100.0f, scale.z * 100.0f);
        cStack_1c.y += current.pos.y - 10.0f;
        cStack_28.y += current.pos.y;
        if (param_1->current.pos.y >= cStack_1c.y && param_1->current.pos.y < cStack_28.y &&
            dLib_checkActorInRectangle(param_1, this, &cStack_1c, &cStack_28))
        {
            return 1;
        }
    }
    return 0;
}

/* 80D4ECCC-80D4ED80 00024C 00B4+00 1/1 0/0 0/0 .text            checkArea__11daSwLBall_cFv */
int daSwLBall_c::checkArea() {
    fopAc_ac_c* actors[4];
    for (int i = 0; i < 2; i++) {
        if (mProcIds[i] != -1) {
            actors[i] = fopAcM_SearchByID(mProcIds[i]);
        } else {
            actors[i] = NULL;
        }
        if (actors[i] != NULL && checkArea_sub(actors[i]) != 0) {
            return 1;
        }
    }
    return 0;
}

/* 80D4ED80-80D4EEAC 000300 012C+00 2/2 0/0 0/0 .text            search_lb__11daSwLBall_cFv */
void daSwLBall_c::search_lb() {
    l_target_info_count = 0;
    for (int i = 0; i < 2; i++) {
        l_target_info[i] = NULL;
    }
    fpcM_Search(s_lb_sub, this);
    for (int i = 0; i < l_target_info_count; i++) {
        if (l_target_info[i] != NULL) {
            fpc_ProcID targetProcId = fopAcM_GetID(l_target_info[i]);
            if (targetProcId != -1) {
                int targetIdx = -1;
                for (int j = 0; j < 2; j++) {
                    if (targetProcId == mProcIds[j]) {
                        targetIdx = j;
                        break;
                    }
                }
                if (targetIdx < 0) {
                    for (int j = 0; j < 2; j++) {
                        if (mProcIds[j] == -1) {
                            mProcIds[j] = targetProcId;
                            break;
                        }
                    }
                }
            }
        }
    }
}

/* 80D4EEAC-80D4EEF8 00042C 004C+00 1/1 0/0 0/0 .text            Create__11daSwLBall_cFv */
int daSwLBall_c::Create() {
    for (int i = 0; i < 2; i++) {
        mProcIds[i] = -1;
    }
    setAction(ACTION_INIT);
    execute();
    return 1;
}

/* 80D4EEF8-80D4EF60 000478 0068+00 1/1 0/0 0/0 .text            create__11daSwLBall_cFv */
int daSwLBall_c::create() {
    fopAcM_SetupActor(this, daSwLBall_c);
    if (!Create()) {
        return cPhs_ERROR_e;
    }
    return cPhs_COMPLEATE_e;
}

/* 80D4EF60-80D4F008 0004E0 00A8+00 2/2 0/0 0/0 .text            execute__11daSwLBall_cFv */
int daSwLBall_c::execute() {
    static actionFunc funcs[3] = {
        &daSwLBall_c::actionInit,
        &daSwLBall_c::actionRun,
        &daSwLBall_c::actionStop,
    };

    (this->*(funcs[mAction]))();
    return 1;
}

/* 80D4F008-80D4F080 000588 0078+00 1/0 0/0 0/0 .text            actionInit__11daSwLBall_cFv */
void daSwLBall_c::actionInit() {
    search_lb();
    if (getArg0() == 1 && fopAcM_isSwitch(this, getSwbit())) {
        field_0x572 = 3;
    } else {
        field_0x572 = 0;
    }
    setAction(ACTION_RUN);
}

/* 80D4F080-80D4F220 000600 01A0+00 1/0 0/0 0/0 .text            actionRun__11daSwLBall_cFv */
void daSwLBall_c::actionRun() {
    search_lb();
    int isArea = checkArea();
    switch(field_0x572) {
    case 0:
        if (isArea != 0) {
            mRunTimer = getArg1();
            if (mRunTimer == 0xff) {
                mRunTimer = 15;
            }
            if (getArg0() == 1) {
                if (mRunTimer == 0) {
                    fopAcM_onSwitch(this, getSwbit());
                    field_0x572 = 3;
                }
            } else if (mRunTimer == 0) {
                fopAcM_onSwitch(this, getSwbit());
                field_0x572 = 2;
            }
            field_0x572 = 1;
        }
        fopAcM_offSwitch(this, getSwbit());
        break;
    case 1:
        if (isArea == 0) {
            field_0x572 = 0;
        } else {
            if (cLib_calcTimer(&mRunTimer) == 0) {
                field_0x572 = 2;
            }
        }
        break;
    case 2:
        fopAcM_onSwitch(this, getSwbit());
        if (getArg0() == 1) {
            field_0x572 = 3;
        } else if (isArea == 0) {
            field_0x572 = 0;
        }
        break;
    case 3:
        break;
    }
    PutCrrPos();
}

/* 80D4F220-80D4F224 0007A0 0004+00 1/0 0/0 0/0 .text            actionStop__11daSwLBall_cFv */
void daSwLBall_c::actionStop() {
}

/* 80D4F224-80D4F444 0007A4 0220+00 1/1 0/0 0/0 .text            PutCrrPos__11daSwLBall_cFv */
void daSwLBall_c::PutCrrPos() {
    if (checkPullLBall()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        s16 angleDiff = cLib_targetAngleY(&player->current.pos, &current.pos) - player->shape_angle.y;
        if (fopAcM_searchPlayerDistanceXZ(this) < 300.0f && angleDiff < 0x4000) {
            fopAc_ac_c* carryObj = (fopAc_ac_c*)fopAcM_SearchByID(player->getGrabActorID());
            if (carryObj != NULL && fopAcM_IsActor(carryObj) &&
                fopAcM_GetName(carryObj) == PROC_Obj_Carry &&
                static_cast<daObjCarry_c*>(carryObj)->prm_chk_type_lightball())
            {
                player->setForcePutPos(current.pos);
            }
        }
        for (int i = 0; i < 2; i++) {
            fopAc_ac_c* actor;
            if (mProcIds[i] != -1) {
                actor = fopAcM_SearchByID(mProcIds[i]);
            } else {
                actor = NULL;
            }
            if (actor != NULL) {
                switch (mIsPulled[i]) {
                case 0:
                    if (!fopAcM_checkCarryNow(actor) &&
                            checkArea_sub(actor) &&
                            (current.pos.x != actor->current.pos.x ||
                                current.pos.z != actor->current.pos.z))
                    {
                        ((daObjCarry_c*)actor)->startCtrl();
                        mIsPulled[i] = 1;
                    }
                    break;
                case 1:
                    cLib_chaseF(&actor->current.pos.x, current.pos.x, 10.0f);
                    cLib_chaseF(&actor->current.pos.z, current.pos.z, 10.0f);
                    if (fopAcM_searchActorDistanceXZ(this, actor) == 0.0f) {
                        ((daObjCarry_c*)actor)->endCtrl();
                        mIsPulled[i] = 0;
                    }
                    break;
                }
                mIsActorCarrying[i] = fopAcM_checkCarryNow(actor) != 0;
            }
        }
    }
}

/* 80D4F444-80D4F44C 0009C4 0008+00 1/1 0/0 0/0 .text            _delete__11daSwLBall_cFv */
int daSwLBall_c::_delete() {
    return 1;
}

/* 80D4F44C-80D4F46C 0009CC 0020+00 1/0 0/0 0/0 .text            daSwLBall_Execute__FP11daSwLBall_c
 */
static int daSwLBall_Execute(daSwLBall_c* i_this) {
    return i_this->execute();
}

/* 80D4F46C-80D4F48C 0009EC 0020+00 1/0 0/0 0/0 .text            daSwLBall_Delete__FP11daSwLBall_c
 */
static int daSwLBall_Delete(daSwLBall_c* i_this) {
    return i_this->_delete();
}

/* 80D4F48C-80D4F4AC 000A0C 0020+00 1/0 0/0 0/0 .text            daSwLBall_Create__FP10fopAc_ac_c */
static int daSwLBall_Create(fopAc_ac_c* i_this) {
    return static_cast<daSwLBall_c*>(i_this)->create();
}

/* ############################################################################################## */
/* 80D4F54C-80D4F56C -00001 0020+00 1/0 0/0 0/0 .data            l_daSwLBall_Method */
static actor_method_class l_daSwLBall_Method = {
    (process_method_func)daSwLBall_Create,
    (process_method_func)daSwLBall_Delete,
    (process_method_func)daSwLBall_Execute,
    NULL,
    NULL,
};

/* 80D4F56C-80D4F59C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SwLBall */
extern actor_process_profile_definition g_profile_SwLBall = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_SwLBall,           // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSwLBall_c),    // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  549,                    // mPriority
  &l_daSwLBall_Method,    // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
