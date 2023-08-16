/**
 * d_a_kytag11.cpp
 * Time Control Tag
 */

#include "rel/d/a/kytag/d_a_kytag11/d_a_kytag11.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"

/* 80529518-80529520 000078 0008+00 1/0 0/0 0/0 .text            daKytag11_Draw__FP13kytag11_class
 */
static int daKytag11_Draw(kytag11_class* i_this) {
    return 1;
}

/* 80529520-80529798 000080 0278+00 1/0 0/0 0/0 .text daKytag11_Execute__FP13kytag11_class */
static int daKytag11_Execute(kytag11_class* i_this) {
    dScnKy_env_light_c* env_light = i_dKy_getEnvlight();

    i_this->mChangeTime = false;
    i_this->mChangeTime = true;

    if (i_this->mOnEventID != 0xFFF) {
        if (!i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_this->mOnEventID])) {
            i_this->mChangeTime = false;
        }
    } else if (i_this->mOnSwitchNo != 0xFF) {
        s32 room_no = dComIfGp_roomControl_getStayNo();
        if (!dComIfGs_isSwitch(i_this->mOnSwitchNo, room_no)) {
            i_this->mChangeTime = false;
        }
    }

    if (i_this->mOffEventID != 0xFFF) {
        if (i_dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[i_this->mOffEventID])) {
            i_this->mChangeTime = false;
        }
    } else if (i_this->mOffSwitchNo != 0xFF) {
        s32 room_no = dComIfGp_roomControl_getStayNo();
        if (dComIfGs_isSwitch(i_this->mOffSwitchNo, room_no)) {
            i_this->mChangeTime = false;
        }
    }

    if (!i_this->mChangeTime) {
        return 1;
    }

    if (!i_this->mInitTimeChange) {
        if (i_this->mNewTime != 0x1F) {
            env_light->mDaytime = dComIfGs_getTime();

            f32 new_time = i_this->mNewTime * 15.0f;
            env_light->mDaytime = new_time;
            dComIfGs_setTime(new_time);
        }

        i_this->mInitTimeChange = true;
    }

    env_light->field_0x12fb = 1;

    if (i_this->mStopTime != 0x1F && i_this->mStopTime == (u8)dKy_getdaytime_hour()) {
        return 1;
    }

    f32 new_env_time = ((i_this->mEnvTime / 255.0f) * 0.5f);
    f32 current_time = dComIfGs_getTime();

    env_light->mDaytime = current_time;
    env_light->mDate = dComIfGs_getDate();

    new_env_time = current_time + new_env_time;
    env_light->mDaytime = new_env_time;

    if ((u32)new_env_time >= 360.0f) {
        env_light->mDaytime = 0.0f;
        env_light->mDate++;
        dKankyo_DayProc();
    }

    dComIfGs_setTime(env_light->mDaytime);
    dComIfGs_setDate(env_light->mDate);

    return 1;
}

/* 80529798-805297A0 0002F8 0008+00 1/0 0/0 0/0 .text daKytag11_IsDelete__FP13kytag11_class */
static int daKytag11_IsDelete(kytag11_class* i_this) {
    return 1;
}

/* 805297A0-805297A8 000300 0008+00 1/0 0/0 0/0 .text            daKytag11_Delete__FP13kytag11_class
 */
static int daKytag11_Delete(kytag11_class* i_this) {
    return 1;
}

/* 805297A8-80529854 000308 00AC+00 1/0 0/0 0/0 .text            daKytag11_Create__FP10fopAc_ac_c */
static int daKytag11_Create(fopAc_ac_c* i_this) {
    fopAcM_SetupActor(i_this, kytag11_class);

    kytag11_class* this_ = (kytag11_class*)i_this;

    this_->mNewTime = fopAcM_GetParam(this_) & 0x1F;
    this_->mStopTime = (fopAcM_GetParam(this_) >> 5) & 0x1F;
    this_->mEnvTime = (fopAcM_GetParam(this_) >> 10) & 0xFF;
    this_->mOnEventID = this_->current.angle.x & 0xFFF;
    this_->mOffEventID = this_->current.angle.y & 0xFFF;
    this_->mOnSwitchNo = this_->current.angle.z & 0xFF;
    this_->mOffSwitchNo = (this_->current.angle.z >> 8) & 0xFF;
    this_->mChangeTime = false;
    this_->mInitTimeChange = false;

    return cPhs_COMPLEATE_e;
}

/* 80529854-8052988C 0003B4 0038+00 1/1 0/0 0/0 .text            dKankyo_DayProc__Fv */
// this is a weak func that should be compiler generated, unsure how to make it do that for now
#pragma push
#pragma force_active on
extern "C" void dKankyo_DayProc__Fv() {
    dComIfGs_offTmpBit(dSv_event_tmp_flag_c::tempBitLabels[91]);
}
#pragma pop

/* ############################################################################################## */
/* 805298B4-805298D4 -00001 0020+00 1/0 0/0 0/0 .data            l_daKytag11_Method */
static actor_method_class l_daKytag11_Method = {
    (process_method_func)daKytag11_Create,  (process_method_func)daKytag11_Delete,
    (process_method_func)daKytag11_Execute, (process_method_func)daKytag11_IsDelete,
    (process_method_func)daKytag11_Draw,
};

/* 805298D4-80529904 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_KYTAG11 */
extern actor_process_profile_definition g_profile_KYTAG11 = {
    -3,
    7,
    -3,
    PROC_KYTAG11,
    &g_fpcLf_Method.mBase,
    sizeof(kytag11_class),
    0,
    0,
    &g_fopAc_Method.base,
    105,
    &l_daKytag11_Method,
    0x44000,
    0,
    0,
};
