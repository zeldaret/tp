/**
 * @file d_a_obj_timer.cpp
 * 
*/

#include "d/dolzel_rel.h"

#include "d/actor/d_a_obj_timer.h"
#include "d/d_com_inf_game.h"
#include "f_op/f_op_actor_mng.h"

/* 80485198-8048526C 000078 00D4+00 1/1 0/0 0/0 .text            _create__Q210daObjTimer5Act_cFv */
int daObjTimer::Act_c::_create() {
    fopAcM_SetupActor(this, Act_c);
    fopAcM_offDraw(this);

    if (fopAcM_isSwitch(this, prm_get_sw2Save())) {
        return cPhs_ERROR_e;
    } else {
        if (fopAcM_isSwitch(this, prm_get_swSave())) {
            mode_count_init();
        } else {
            mode_wait_init();
        }
        return cPhs_COMPLEATE_e;
    }
}

/* 8048526C-80485274 00014C 0008+00 1/1 0/0 0/0 .text            _delete__Q210daObjTimer5Act_cFv */
bool daObjTimer::Act_c::_delete() {
    return true;
}

/* 80485274-80485284 000154 0010+00 2/2 0/0 0/0 .text mode_wait_init__Q210daObjTimer5Act_cFv */
void daObjTimer::Act_c::mode_wait_init() {
    field_0x56c = 0;
    field_0x568 = 0;
}

/* 80485284-804852E0 000164 005C+00 1/0 0/0 0/0 .text            mode_wait__Q210daObjTimer5Act_cFv */
void daObjTimer::Act_c::mode_wait() {
    if (fopAcM_isSwitch(this, prm_get_swSave())) {
        mode_count_init();
    }
}

/* 804852E0-80485324 0001C0 0044+00 2/2 0/0 0/0 .text mode_count_init__Q210daObjTimer5Act_cFv */
void daObjTimer::Act_c::mode_count_init() {
    field_0x56c = prm_get_time() * 15;
    field_0x568 = 1;
}

/* 80485324-804854BC 000204 0198+00 1/0 0/0 0/0 .text            mode_count__Q210daObjTimer5Act_cFv */
void daObjTimer::Act_c::mode_count() {
    Z2SoundID soundID;
    
    if (!field_0x570) {
        field_0x56c--;
        if (prm_get_SeStop() && field_0x56c % 30 == 0) {
                if (dComIfGp_event_runCheck() && prm_get_demoStop()) {
                    field_0x56c += 30;
                }

                int iVar1 = field_0x56c / 30;
                if (iVar1 <= 20) {
                    if (iVar1 > 10) {
                        soundID = JA_SE_SYS_EV_TIMER_20;
                    } else if (iVar1 > 5) {
                        soundID = JA_SE_SYS_EV_TIMER_10;
                    } else if (iVar1 > 0) {
                        soundID = JA_SE_SYS_EV_TIMER_5;
                    } else {
                        soundID = JA_SE_SYS_EV_TIMER_0;
                    }

                    mDoAud_seStart(soundID, 0, 0, 0);
                }
        }

        if (field_0x56c > 0) {
            if (fopAcM_isSwitch(this, prm_get_swSave())) {
                return;
            }
        }

        fopAcM_offSwitch(this, prm_get_swSave());
        mode_wait_init();
    }
}

/* 804854BC-804855A4 00039C 00E8+00 1/1 0/0 0/0 .text            _execute__Q210daObjTimer5Act_cFv */
bool daObjTimer::Act_c::_execute() {
    static daObjTimer::Act_c::modeProc const mode_proc[2] = {
        &daObjTimer::Act_c::mode_wait,
        &daObjTimer::Act_c::mode_count,
    };

    if (fopAcM_isSwitch(this, prm_get_sw2Save())) {
        fopAcM_delete(this);
        return true;
    } else {
        (this->*mode_proc[field_0x568])();
        return true;
    }
}

namespace {
    /* 804855A4-804855C0 .text                  daObjTimer::@unnamed@d_a_obj_timer_cpp@::Mthd_Create */
    int Mthd_Create(fopAc_ac_c* i_this) {
        return static_cast<daObjTimer::Act_c*>(i_this)->_create();
    }

    /* 804855C4-804855E4 .text                  daObjTimer::@unnamed@d_a_obj_timer_cpp@::Mthd_Delete */
    int Mthd_Delete(fopAc_ac_c* i_this) {
        return static_cast<daObjTimer::Act_c*>(i_this)->_delete();
    }

    /* 804855E8-80485608 .text                  daObjTimer::@unnamed@d_a_obj_timer_cpp@::Mthd_Execute */
    int Mthd_Execute(fopAc_ac_c* i_this) {
        // NONMATCHING
        return static_cast<daObjTimer::Act_c*>(i_this)->_execute();
    }

    /* 8048560C-80485610 .text                      daObjTimer::@unnamed@d_a_obj_timer_cpp@::Mthd_Draw */
    int Mthd_Draw(fopAc_ac_c* i_this) {
        return 1;
    }

    /* 80485614-80485618 .text                  daObjTimer::@unnamed@d_a_obj_timer_cpp@::Mthd_IsDelete */
    int Mthd_IsDelete(fopAc_ac_c* i_this) {
        return 1;
    }

    /* 80485698-804856B8 -00001 0020+00 1/0 0/0 0/0 .data Mthd_Table__Q210daObjTimer27@unnamed@d_a_obj_timer_cpp@ */
    actor_method_class l_daTimer_Method = {
        (process_method_func)Mthd_Create,
        (process_method_func)Mthd_Delete,
        (process_method_func)Mthd_Execute, 
        (process_method_func)Mthd_IsDelete,
        (process_method_func)Mthd_Draw,
    };
}

/* 804856B8-804856E8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Obj_Timer */
extern actor_process_profile_definition g_profile_Obj_Timer = {
  fpcLy_CURRENT_e,          // mLayerID
  10,                       // mListID
  fpcPi_CURRENT_e,          // mListPrio
  PROC_Obj_Timer,           // mProcName
  &g_fpcLf_Method.base,    // sub_method
  sizeof(daObjTimer::Act_c), // mSize
  0,                        // mSizeOther
  0,                        // mParameters
  &g_fopAc_Method.base,     // sub_method
  22,                       // mPriority
  &l_daTimer_Method,           // sub_method
  0x00040000,               // mStatus
  fopAc_ACTOR_e,            // mActorType
  fopAc_CULLBOX_0_e,        // cullType
};
