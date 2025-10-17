/**
 * f_op_msg.cpp
 * Message Process Framework
 */

#include "f_op/f_op_msg.h"
#include "d/d_s_play.h"
#include "f_op/f_op_draw_tag.h"
#include "f_op/f_op_msg_mng.h"
#include "f_pc/f_pc_manager.h"

/* 8001F488-8001F4B0 019DC8 0028+00 1/0 0/0 0/0 .text            fopMsg_Draw__FPv */
static int fopMsg_Draw(void* i_this) {
    msg_class* a_this = (msg_class*)i_this;
    return fpcLf_DrawMethod(a_this->sub_method, i_this);
}

/* 8001F4B0-8001F4E8 019DF0 0038+00 1/0 0/0 0/0 .text            fopMsg_Execute__FPv */
static int fopMsg_Execute(void* i_this) {
    msg_class* a_this = (msg_class*)i_this;

    int ret = 1;
    if (dScnPly_c::isPause()) {
        ret = fpcMtd_Execute(&a_this->sub_method->base, i_this);
    }

    return ret;
}

/* 8001F4E8-8001F53C 019E28 0054+00 1/0 0/0 0/0 .text            fopMsg_IsDelete__FPv */
static int fopMsg_IsDelete(void* i_this) {
    msg_class* a_this = (msg_class*)i_this;

    int ret = fpcMtd_IsDelete(&a_this->sub_method->base, i_this);
    if (ret == 1) {
        fopDwTg_DrawQTo(&a_this->draw_tag);
    }

    return ret;
}

/* 8001F53C-8001F588 019E7C 004C+00 1/0 0/0 0/0 .text            fopMsg_Delete__FPv */
static int fopMsg_Delete(void* i_this) {
    msg_class* a_this = (msg_class*)i_this;

    int ret = fpcMtd_Delete(&a_this->sub_method->base, i_this);
    fopDwTg_DrawQTo(&a_this->draw_tag);

    return ret;
}

#if DEBUG
u8 fopMsg::MemCheck;
#endif

/* 80450CF0-80450CF8 0001F0 0004+04 1/1 0/0 0/0 .sbss            fopMsg_MSG_TYPE */
static int fopMsg_MSG_TYPE;

/* 8001F588-8001F660 019EC8 00D8+00 1/0 0/0 0/0 .text            fopMsg_Create__FPv */
int fopMsg_Create(void* i_this) {
    msg_class* a_this = (msg_class*)i_this;

    if (fpcM_IsFirstCreating(a_this)) {
        msg_process_profile_definition* profile = (msg_process_profile_definition*)fpcM_GetProfile(i_this);
        a_this->type = fpcBs_MakeOfType(&fopMsg_MSG_TYPE);
        a_this->sub_method = profile->sub_method;
    
        fopDwTg_Init(&a_this->draw_tag, a_this);

        fopMsg_prm_class* append = fopMsgM_GetAppend(a_this);
        if (append != NULL) {
            a_this->talk_actor = append->talk_actor;
            a_this->pos = append->pos;
            a_this->msg_idx = append->msg_idx;
            a_this->field_0xf0 = append->field_0x14;
            a_this->field_0xf4 = append->field_0x18;
        }
    }

    int ret = fpcMtd_Create(&a_this->sub_method->base, a_this);
    if (ret == cPhs_COMPLEATE_e) {
        s32 priority = fpcM_DrawPriority(a_this);
        fopDwTg_ToDrawQ(&a_this->draw_tag, priority);
    }

    return ret;
}

/* 803A3958-803A3970 -00001 0014+04 0/0 5/0 0/0 .data            g_fopMsg_Method */
leafdraw_method_class g_fopMsg_Method = {
    (process_method_func)fopMsg_Create,  (process_method_func)fopMsg_Delete,
    (process_method_func)fopMsg_Execute, (process_method_func)fopMsg_IsDelete,
    (process_method_func)fopMsg_Draw,
};
