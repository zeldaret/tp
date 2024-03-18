/**
 * d_a_kytag14.cpp
 * Savmem
 * Sets savefile spawn location
 */

#include "rel/d/a/kytag/d_a_kytag14/d_a_kytag14.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 80529998-805299A0 000078 0008+00 1/0 0/0 0/0 .text            daKytag14_Draw__FP13kytag14_class
 */
static int daKytag14_Draw(kytag14_class*) {
    return 1;
}

/* 805299A0-80529B34 000080 0194+00 1/0 0/0 0/0 .text daKytag14_Execute__FP13kytag14_class */
static int daKytag14_Execute(kytag14_class* i_this) {
    BOOL event1_set = true;
    BOOL event2_unset = true;
    BOOL switch1_set = true;
    BOOL switch2_unset = true;

    if (dComIfGs_isTmpBit(dSv_event_tmp_flag_c::NO_TELOP)) {
        return 1;
    }

    if (i_this->mEventID1 != 0xFFFF) {
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_this->mEventID1])) {
            event1_set = true;
        } else {
            event1_set = false;
        }
    }

    if (i_this->mEventID2 != 0xFFFF) {
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_this->mEventID2])) {
            event2_unset = true;
        } else {
            event2_unset = false;
        }
    }

    if (i_this->mSwitchNo1 != 0xFF) {
        s32 stayNo = dComIfGp_roomControl_getStayNo();
        if (dComIfGs_isSwitch(i_this->mSwitchNo1, stayNo)) {
            switch1_set = true;
        } else {
            switch1_set = false;
        }
    }

    if (i_this->mSwitchNo2 != 0xFF) {
        s32 stayNo = dComIfGp_roomControl_getStayNo();
        if (!dComIfGs_isSwitch(i_this->mSwitchNo2, stayNo)) {
            switch2_unset = true;
        } else {
            switch2_unset = false;
        }
    }

    if (event1_set == true && event2_unset == true && switch1_set == true && switch2_unset == true)
    {
        g_dComIfG_gameInfo.info.getPlayer().getPlayerReturnPlace().set(
            dComIfGp_getStartStageName(), i_this->mSaveRoomNo, i_this->mSavePoint);
    }

    return 1;
}

/* 80529B34-80529B3C 000214 0008+00 1/0 0/0 0/0 .text daKytag14_IsDelete__FP13kytag14_class */
static int daKytag14_IsDelete(kytag14_class*) {
    return 1;
}

/* 80529B3C-80529B44 00021C 0008+00 1/0 0/0 0/0 .text            daKytag14_Delete__FP13kytag14_class
 */
static int daKytag14_Delete(kytag14_class*) {
    return 1;
}

/* 80529B44-80529BE0 000224 009C+00 1/0 0/0 0/0 .text            daKytag14_Create__FP10fopAc_ac_c */
static int daKytag14_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, kytag14_class);
    kytag14_class* a_this = static_cast<kytag14_class*>(i_this);

    a_this->mSavePoint = fopAcM_GetParam(a_this) & 0xFF;
    a_this->mSaveRoomNo = (fopAcM_GetParam(a_this) >> 8) & 0xFF;
    a_this->mEventID1 = a_this->current.angle.x & 0xFFFF;
    a_this->mEventID2 = a_this->current.angle.y & 0xFFFF;
    a_this->mSwitchNo1 = a_this->current.angle.z & 0xFF;
    a_this->mSwitchNo2 = (a_this->current.angle.z >> 8) & 0xFF;

    if (a_this->home.roomNo != -1) {
        a_this->mSaveRoomNo = a_this->home.roomNo;
    }

    return cPhs_COMPLEATE_e;
}

/* ############################################################################################## */
/* 80529BE8-80529C08 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag14_Method */
static actor_method_class l_daKytag14_Method = {
    (process_method_func)daKytag14_Create,  (process_method_func)daKytag14_Delete,
    (process_method_func)daKytag14_Execute, (process_method_func)daKytag14_IsDelete,
    (process_method_func)daKytag14_Draw,
};

/* 80529C08-80529C38 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG14 */
extern actor_process_profile_definition g_profile_KYTAG14 = {
    fpcLy_CURRENT_e,
    7,
    fpcPi_CURRENT_e,
    PROC_KYTAG14,
    &g_fpcLf_Method.mBase,
    sizeof(kytag14_class),
    0,
    0,
    &g_fopAc_Method.base,
    108,
    &l_daKytag14_Method,
    0x44000,
    fopAc_ACTOR_e,
    fopAc_CULLBOX_0_e,
};
