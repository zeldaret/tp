#include "d/d_ky/d_kyeff/d_kyeff.h"
#include "SComponent/c_lib.h"
#include "Z2AudioLib/Z2EnvSeMgr/Z2EnvSeMgr.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_kankyo/d_kankyo.h"
#include "m_Do/m_Do_audio/m_Do_audio.h"
#include "os/OS.h"

bool dKyeff_Draw(dKyeff_c* dKyeff_c_ptr) {
    dKyw_wether_draw();
    return true;
}

// const char* lbl_80394F38 = "Name";

#ifdef NONMATCHING  // matching but gameinfoplay struct is messed up
bool dKyeff_c::execute(void) {
    char* stageName = dComIfGp_getStartStageName();
    int strcmp_result = strcmp(stageName, "Name");  // strcmp(stageName,"Name");
    if (strcmp_result != 0) {
        dKyw_wether_move();
    }
    dKyw_wether_move_draw();
    dKy_FiveSenses_fullthrottle_dark();
    mDoAud_mEnvse_framework();
    return true;
}
#else
asm bool dKyeff_c::execute(void) {
    nofralloc
#include "d/d_ky/d_kyeff/asm/func_801ADD5C.s"
}
#endif

bool dKyeff_Execute(dKyeff_c* dKyeff_c_ptr) {
    return dKyeff_c_ptr->execute();
}

bool dKyeff_IsDelete(dKyeff_c* dKyeff_c_ptr) {
    return true;
}

bool dKyeff_Delete(dKyeff_c* dKyeff_c_ptr) {
    dKyw_wether_delete();
    return true;
}
/*
const f32 lbl_80453E58 = 0.0f;
const f32 lbl_80453E5C = 1.0f;
const f64 lbl_80453E60 = 4.503601774854144E15; //int to float conversion thing
const f32 lbl_80453E68 = 0.7f;
const f32 lbl_80453E6C = 15.0f;
*/

#ifdef NONMATCHING  // matching but gameinfoplay struct is messed up
u32 dKyeff_Create(kankyo_class* kankyo_class_ptr) {
    int strcmp_result;
    OSTime Time;
    OSCalendarTime CalendarTime;

    dKyw_wether_init();
    strcmp_result = strcmp(dComIfGp_getStartStageName(), "Name");
    if (strcmp_result == 0) {
        Time = OSGetTime();
        OSTicksToCalendarTime(
            Time,
            &CalendarTime);  // CONCAT44(iVar1,(int)((ulonglong)OVar2 >> 0x20)),&CalendarTime);
        lbl_8042CA54.field_0xe48 = 1.0f;
        lbl_8042CA54.field_0xe4c = 0.0f;
        lbl_8042CA54.field_0xe50 = 0.0f;
        lbl_8042CA54.field_0xe58 = 0.7f;
        lbl_8042CA54.field_0x1244 = CalendarTime.hours * 15.0f;
    }
    return 4;
}
#else
asm u32 dKyeff_Create(kankyo_class* kankyo_class_ptr) {
    nofralloc
#include "d/d_ky/d_kyeff/asm/func_801ADE00.s"
}
#endif
