/**
 * d_a_kytag14.cpp
 * Savmem
 * Sets savefile spawn location
 */

#include "rel/d/a/kytag/d_a_kytag14/d_a_kytag14.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"

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

    if (dComIfGs_isTmpBit(0x1301)) {
        return 1;
    }

    if (i_this->mEventID1 != 0xFFFF) {
        if (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_this->mEventID1])) {
            event1_set = true;
        } else {
            event1_set = false;
        }
    }

    if (i_this->mEventID2 != 0xFFFF) {
        if (!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_this->mEventID2])) {
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
    if (!fopAcM_CheckCondition(i_this, 8)) {
        new (i_this) kytag14_class();
        fopAcM_OnCondition(i_this, 8);
    }
    kytag14_class* kytag = static_cast<kytag14_class*>(i_this);

    kytag->mSavePoint = fopAcM_GetParam(kytag);
    kytag->mSaveRoomNo = (fopAcM_GetParam(kytag) >> 8) & 0xFF;
    kytag->mEventID1 = kytag->current.angle.x;
    kytag->mEventID2 = kytag->current.angle.y;
    kytag->mSwitchNo1 = kytag->current.angle.z;
    kytag->mSwitchNo2 = (kytag->current.angle.z >> 8) & 0xFF;

    if (kytag->orig.roomNo != -1) {
        kytag->mSaveRoomNo = kytag->orig.roomNo;
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
    -3,
    7,
    0xFFFD,
    PROC_KYTAG14,
    &g_fpcLf_Method.mBase,
    sizeof(kytag14_class),
    0,
    0,
    &g_fopAc_Method.base,
    0x006C,
    &l_daKytag14_Method,
    0x00044000,
    0,
    0,
};
