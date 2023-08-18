/**
 * d_a_tag_gstart.cpp
 *
 */

#include "rel/d/a/tag/d_a_tag_gstart/d_a_tag_gstart.h"
#include "JSystem/JKernel/JKRHeap.h"
#include "d/a/d_a_player.h"
#include "d/com/d_com_inf_game.h"
#include "d/d_procname.h"
#include "f_op/f_op_actor_mng.h"

/* 805A3478-805A34F4 000078 007C+00 1/1 0/0 0/0 .text            create__13daTagGstart_cFv */
int daTagGstart_c::create() {
    fopAcM_SetupActor(this, daTagGstart_c);

    mSwNo = fopAcM_GetParam(this);
    mSwNo2 = fopAcM_GetParam(this) >> 8;
    field_0x56a = fopAcM_GetParam(this) >> 0x10;
    mType = (fopAcM_GetParam(this) >> 0x18) & 0xF;

    return cPhs_COMPLEATE_e;
}

/* 805A34F4-805A3514 0000F4 0020+00 1/0 0/0 0/0 .text            daTagGstart_Create__FP10fopAc_ac_c
 */
static int daTagGstart_Create(fopAc_ac_c* i_this) {
    return static_cast<daTagGstart_c*>(i_this)->create();
}

/* 805A3514-805A3568 000114 0054+00 1/1 0/0 0/0 .text            __dt__13daTagGstart_cFv */
daTagGstart_c::~daTagGstart_c() {}

/* 805A3568-805A3590 000168 0028+00 1/0 0/0 0/0 .text daTagGstart_Delete__FP13daTagGstart_c */
static int daTagGstart_Delete(daTagGstart_c* i_this) {
    i_this->~daTagGstart_c();
    return 1;
}

/* 805A3590-805A3658 000190 00C8+00 1/1 0/0 0/0 .text            execute__13daTagGstart_cFv */
int daTagGstart_c::execute() {
    if ((mSwNo == 0xFF || dComIfGs_isSwitch(mSwNo, fopAcM_GetHomeRoomNo(this))) &&
        (mSwNo2 == 0xFF || !dComIfGs_isSwitch(mSwNo2, fopAcM_GetHomeRoomNo(this))))
    {
        if (mType != 0 || dComIfGp_getLinkPlayer()->i_checkWolf()) {
            dComIfGp_getLinkPlayer()->onSceneChangeDead(field_0x56a, fopAcM_GetRoomNo(this));
        }
    }

    return 1;
}

/* 805A3658-805A3678 000258 0020+00 1/0 0/0 0/0 .text daTagGstart_Execute__FP13daTagGstart_c */
static int daTagGstart_Execute(daTagGstart_c* i_this) {
    return i_this->execute();
}

/* 805A3678-805A3680 000278 0008+00 1/0 0/0 0/0 .text            daTagGstart_Draw__FP13daTagGstart_c
 */
static int daTagGstart_Draw(daTagGstart_c*) {
    return 1;
}

/* ############################################################################################## */
/* 805A3688-805A36A8 -00001 0020+00 1/0 0/0 0/0 .data            l_daTagGstart_Method */
static actor_method_class l_daTagGstart_Method = {
    (process_method_func)daTagGstart_Create,  (process_method_func)daTagGstart_Delete,
    (process_method_func)daTagGstart_Execute, (process_method_func)NULL,
    (process_method_func)daTagGstart_Draw,
};

/* 805A36A8-805A36D8 -00001 0030+00 0/0 0/0 1/0 .data            g_profile_Tag_Gstart */
extern actor_process_profile_definition g_profile_Tag_Gstart = {
    -3,
    2,
    0xFFFD,
    PROC_Tag_Gstart,
    &g_fpcLf_Method.mBase,
    sizeof(daTagGstart_c),
    0,
    0,
    &g_fopAc_Method.base,
    0x01B5,
    &l_daTagGstart_Method,
    0x00060000,
    3,
    14,
};
