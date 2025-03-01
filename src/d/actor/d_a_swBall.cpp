/**
 * @file d_a_swBall.cpp
 * 
*/

#include "d/actor/d_a_swBall.h"
#include "d/actor/d_a_obj_carry.h"
#include "d/d_com_inf_game.h"
#include "d/d_lib.h"
#include "d/d_s_play.h"

/* 80D4EA50-80D4EA70 000000 0020+00 2/2 0/0 0/0 .bss             l_target_info */
static fopAc_ac_c* l_target_info[8];

/* 80D4EA70-80D4EA74 000020 0004+00 2/2 0/0 0/0 .bss             l_target_info_count */
static int l_target_info_count;

/* 80D4DFD8-80D4E054 000078 007C+00 1/1 0/0 0/0 .text            s_ball_sub__FPvPv */
static void* s_ball_sub(void* i_actor, void* i_data) {
    if (fopAcM_IsActor(i_actor) && fopAcM_GetName(i_actor) == PROC_Obj_Carry && ((daObjCarry_c*)i_actor)->getType() == daObjCarry_c::TYPE_LV8_BALL) {
        if (l_target_info_count < 8) {
            l_target_info[l_target_info_count] = (fopAc_ac_c*)i_actor;
            l_target_info_count++;
        } else {
            // "Mysterious Ball Reaction Area Switch: mysterious ball count has exceeded limit!\n"
            OS_REPORT("\x1b[43;30m怪しい玉反応領域スイッチ：怪しい玉対応できる数を越えてます！\n\x1b[m");
        }
    }

    return NULL;
}

/* 80D4E054-80D4E194 0000F4 0140+00 2/2 0/0 0/0 .text checkArea_sub__10daSwBall_cFP10fopAc_ac_c */
BOOL daSwBall_c::checkArea_sub(fopAc_ac_c* i_ball) {
    if (getType() == 0) {
        if (i_ball->current.pos.y >= current.pos.y - 10.0f && i_ball->current.pos.y < current.pos.y + (100.0f * scale.y) && fopAcM_searchActorDistanceXZ(this, i_ball) < (100.0f * scale.x)) {
            return TRUE;
        }
    } else if (getType() == 1) {
        cXyz bound_a(-100.0f * scale.x, 0.0f, -100.0f * scale.z);
        cXyz bound_b(100.0f * scale.x, 100.0f * scale.y, 100.0f * scale.z);
        bound_a.y += current.pos.y - 10.0f;
        bound_b.y += current.pos.y;
    
        if (i_ball->current.pos.y >= bound_a.y && i_ball->current.pos.y < bound_b.y && dLib_checkActorInRectangle(i_ball, this, &bound_a, &bound_b)) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80D4E194-80D4E248 000234 00B4+00 2/2 0/0 0/0 .text            checkArea__10daSwBall_cFv */
BOOL daSwBall_c::checkArea() {
    fopAc_ac_c* ball_actors[8];

    for (int i = 0; i < 8; i++) {        
        if (mBallIDs[i] != fpcM_ERROR_PROCESS_ID_e) {
            ball_actors[i] = fopAcM_SearchByID(mBallIDs[i]);
        } else {
            ball_actors[i] = NULL;
        }

        if (ball_actors[i] != NULL && checkArea_sub(ball_actors[i])) {
            return TRUE;
        }
    }

    return FALSE;
}

/* 80D4E248-80D4E374 0002E8 012C+00 1/1 0/0 0/0 .text            search_ball__10daSwBall_cFv */
void daSwBall_c::search_ball() {
    l_target_info_count = 0;

    for (int i = 0; i < 8; i++) {
        l_target_info[i] = NULL;
    }

    fpcM_Search(s_ball_sub, this);

    for (int i = 0; i < l_target_info_count; i++) {
        if (l_target_info[i] != NULL) {
            fpc_ProcID target_id = fopAcM_GetID(l_target_info[i]);
            if (target_id != fpcM_ERROR_PROCESS_ID_e) {
                int ball_idx = -1;
                for (int j = 0; j < 8; j++) {
                    if (target_id == mBallIDs[j]) {
                        ball_idx = j;
                        break;
                    }
                }

                if (ball_idx < 0) {
                    for (int j = 0; j < 8; j++) {
                        if (mBallIDs[j] == fpcM_ERROR_PROCESS_ID_e) {
                            mBallIDs[j] = target_id;
                            break;
                        }
                    }
                }
            }
        }
    }
}

/* 80D4E374-80D4E42C 000414 00B8+00 1/1 0/0 0/0 .text            Create__10daSwBall_cFv */
int daSwBall_c::Create() {
    for (int i = 0; i < 8; i++) {
        mBallIDs[i] = fpcM_ERROR_PROCESS_ID_e;
    }

    field_0x59c = fpcM_ERROR_PROCESS_ID_e;

    execute();

    if (checkArea()) {
        if (getArg0() == 1) {
            mMode = 3;
        } else {
            mMode = 2;
        }

        fopAcM_onSwitch(this, getSwbit());
    } else {
        mMode = 0;
    }

    return 1;
}

/* 80D4E42C-80D4E494 0004CC 0068+00 1/1 0/0 0/0 .text            create__10daSwBall_cFv */
int daSwBall_c::create() {
    fopAcM_SetupActor(this, daSwBall_c);

    if (!Create()) {
        return cPhs_ERROR_e;
    }

    return cPhs_COMPLEATE_e;
}

UNK_REL_DATA

/* 80D4E494-80D4E524 000534 0090+00 2/2 0/0 0/0 .text            execute__10daSwBall_cFv */
int daSwBall_c::execute() {
    static void (daSwBall_c::*l_func[])() = {
        &daSwBall_c::actionRun,
        &daSwBall_c::actionStop,
    };

    (this->*l_func[mAction])();
    return 1;
}

/* 80D4E524-80D4E6C4 0005C4 01A0+00 1/0 0/0 0/0 .text            actionRun__10daSwBall_cFv */
void daSwBall_c::actionRun() {
    search_ball();
    BOOL in_area = checkArea();

    switch (mMode) {
    case 0:
        if (in_area) {
            mTimer = getArg1();
            if (mTimer == 0xFF) {
                mTimer = 15;
            }

            if (getArg0() == 1) {
                if (mTimer == 0) {
                    fopAcM_onSwitch(this, getSwbit());
                    mMode = 3;
                }
            } else if (mTimer == 0) {
                fopAcM_onSwitch(this, getSwbit());
                mMode = 2;
            }

            mMode = 1;
        }

        fopAcM_offSwitch(this, getSwbit());
        break;
    case 1:
        if (!in_area) {
            mMode = 0;
        } else if (cLib_calcTimer<u8>(&mTimer) == 0) {
            mMode = 2;
        }
        break;
    case 2:
        fopAcM_onSwitch(this, getSwbit());

        if (getArg0() == 1) {
            mMode = 3;
        } else if (!in_area) {
            mMode = 0;
        }
        break;
    case 3:
        break;
    }

    PutCrrPos();
}

/* 80D4E6C4-80D4E6C8 000764 0004+00 1/0 0/0 0/0 .text            actionStop__10daSwBall_cFv */
void daSwBall_c::actionStop() {}

/* 80D4E6C8-80D4E90C 000768 0244+00 1/1 0/0 0/0 .text            PutCrrPos__10daSwBall_cFv */
void daSwBall_c::PutCrrPos() {
    if (checkPullLBall()) {
        daPy_py_c* player = daPy_getPlayerActorClass();
        s16 spA = cLib_targetAngleY(&player->current.pos, &current.pos) - player->shape_angle.y;

        if (fopAcM_searchPlayerDistanceXZ(this) < 300.0f + KREG_F(0) && spA < 0x4000) {
            fopAc_ac_c* grab_actor = fopAcM_SearchByID(player->getGrabActorID());
            if (grab_actor != NULL && fopAcM_IsActor(grab_actor) && fopAcM_GetName(grab_actor) == PROC_Obj_Carry) {
                daObjCarry_c* carry_obj = (daObjCarry_c*)grab_actor;
                if (carry_obj->getType() == daObjCarry_c::TYPE_LV8_BALL) {
                    player->setForcePutPos(current.pos);
                }
            }
        }

        daObjCarry_c* carry_obj;
        for (int i = 0; i < 8; i++) {
            if (mBallIDs[i] != fpcM_ERROR_PROCESS_ID_e) {
                carry_obj = (daObjCarry_c*)fopAcM_SearchByID(mBallIDs[i]);
            } else {
                carry_obj = NULL;
            }

            bool sp8 = false;
            if (carry_obj != NULL) {
                if (field_0x59c == mBallIDs[i] || field_0x59c == fpcM_ERROR_PROCESS_ID_e) {
                    switch (field_0x593[i]) {
                    case 0:
                        if (!fopAcM_checkCarryNow(carry_obj) && checkArea_sub(carry_obj)) {
                            if (current.pos.x != carry_obj->current.pos.x || current.pos.z != carry_obj->current.pos.z) {
                                carry_obj->startCtrl();
                                field_0x593[i] = 1;
                            }
                            field_0x59c = mBallIDs[i];
                        } else {
                            field_0x59c = fpcM_ERROR_PROCESS_ID_e;
                        }
                        break;
                    case 1:
                        cLib_chaseF(&carry_obj->current.pos.x, current.pos.x, 10.0f);
                        cLib_chaseF(&carry_obj->current.pos.z, current.pos.z, 10.0f);

                        if (0.0f == fopAcM_searchActorDistanceXZ(this, carry_obj)) {
                            carry_obj->endCtrl();
                            field_0x593[i] = 0;
                        }

                        field_0x59c = mBallIDs[i];
                        break;
                    }
                }

                mIsBallCarry[i] = fopAcM_checkCarryNow(carry_obj) != 0;
            }
        }
    }
}

/* 80D4E90C-80D4E914 0009AC 0008+00 1/1 0/0 0/0 .text            _delete__10daSwBall_cFv */
int daSwBall_c::_delete() {
    return 1;
}

/* 80D4E914-80D4E934 0009B4 0020+00 1/0 0/0 0/0 .text            daSwBall_Execute__FP10daSwBall_c */
static int daSwBall_Execute(daSwBall_c* i_this) {
    return i_this->execute();
}

/* 80D4E934-80D4E954 0009D4 0020+00 1/0 0/0 0/0 .text            daSwBall_Delete__FP10daSwBall_c */
static int daSwBall_Delete(daSwBall_c* i_this) {
    return i_this->_delete();
}

/* 80D4E954-80D4E974 0009F4 0020+00 1/0 0/0 0/0 .text            daSwBall_Create__FP10fopAc_ac_c */
static int daSwBall_Create(fopAc_ac_c* i_this) {
    return ((daSwBall_c*)i_this)->create();
}

/* 80D4E9FC-80D4EA1C -00001 0020+00 1/0 0/0 0/0 .data            l_daSwBall_Method */
static actor_method_class l_daSwBall_Method = {
    (process_method_func)daSwBall_Create,
    (process_method_func)daSwBall_Delete,
    (process_method_func)daSwBall_Execute,
};

/* 80D4EA1C-80D4EA4C -00001 0030+00 0/0 0/0 1/0 .data            g_profile_SwBall */
extern actor_process_profile_definition g_profile_SwBall = {
  fpcLy_CURRENT_e,        // mLayerID
  7,                      // mListID
  fpcPi_CURRENT_e,        // mListPrio
  PROC_SwBall,            // mProcName
  &g_fpcLf_Method.base,  // sub_method
  sizeof(daSwBall_c),     // mSize
  0,                      // mSizeOther
  0,                      // mParameters
  &g_fopAc_Method.base,   // sub_method
  550,                    // mPriority
  &l_daSwBall_Method,     // sub_method
  0x00040000,             // mStatus
  fopAc_ACTOR_e,          // mActorType
  fopAc_CULLBOX_CUSTOM_e, // cullType
};
