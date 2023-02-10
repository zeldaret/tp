/**
 * f_op_msg.cpp
 * Message Process Framework
 */

#include "f_op/f_op_msg.h"
#include "d/msg/d_msg_class.h"
#include "d/s/d_s_play.h"
#include "f_op/f_op_msg_mng.h"

/* 8001F488-8001F4B0 019DC8 0028+00 1/0 0/0 0/0 .text            fopMsg_Draw__FPv */
static int fopMsg_Draw(void* i_this) {
    msg_class* _this = static_cast<msg_class*>(i_this);
    return fpcLf_DrawMethod(_this->mSubMtd, i_this);
}

/* 8001F4B0-8001F4E8 019DF0 0038+00 1/0 0/0 0/0 .text            fopMsg_Execute__FPv */
static int fopMsg_Execute(void* i_this) {
    msg_class* _this = static_cast<msg_class*>(i_this);

    int stat = 1;
    if (dScnPly_c::isPause()) {
        stat = fpcMtd_Execute(&_this->mSubMtd->mBase, i_this);
    }

    return stat;
}

/* 8001F4E8-8001F53C 019E28 0054+00 1/0 0/0 0/0 .text            fopMsg_IsDelete__FPv */
static int fopMsg_IsDelete(void* i_this) {
    msg_class* _this = static_cast<msg_class*>(i_this);

    int stat = fpcMtd_IsDelete(&_this->mSubMtd->mBase, i_this);
    if (stat == 1) {
        fopDwTg_DrawQTo(&_this->mDwTg);
    }

    return stat;
}

/* 8001F53C-8001F588 019E7C 004C+00 1/0 0/0 0/0 .text            fopMsg_Delete__FPv */
static int fopMsg_Delete(void* i_this) {
    msg_class* _this = static_cast<msg_class*>(i_this);

    int stat = fpcMtd_Delete(&_this->mSubMtd->mBase, i_this);
    fopDwTg_DrawQTo(&_this->mDwTg);

    return stat;
}

/* ############################################################################################## */
/* 80450CF0-80450CF8 0001F0 0004+04 1/1 0/0 0/0 .sbss            fopMsg_MSG_TYPE */
static int fopMsg_MSG_TYPE;

/* 8001F588-8001F660 019EC8 00D8+00 1/0 0/0 0/0 .text            fopMsg_Create__FPv */
int fopMsg_Create(void* i_this) {
    msg_class* _this = (msg_class*)i_this;

    if (fpcM_IsFirstCreating(_this)) {
        msg_process_profile_definition* profile =
            (msg_process_profile_definition*)fpcM_GetProfile(i_this);
        _this->mMsgType = fpcBs_MakeOfType(&fopMsg_MSG_TYPE);
        _this->mSubMtd = profile->mSubMtd;
        fopDwTg_Init(&_this->mDwTg, _this);
        fopMsg_prm_class* prm = fopMsgM_GetAppend(_this);
        if (prm != NULL) {
            _this->mpActor = prm->mpActor;
            _this->mPos = prm->mPos;
            _this->mMsgID = prm->mMsgID;
            _this->field_0xf0 = prm->field_0x14;
            _this->field_0xf4 = prm->field_0x18;
        }
    }

    int status = fpcMtd_Create(&_this->mSubMtd->mBase, _this);
    if (status == cPhs_COMPLEATE_e) {
        s32 priority = fpcLf_GetPriority(_this);
        fopDwTg_ToDrawQ(&_this->mDwTg, priority);
    }

    return status;
}

/* ############################################################################################## */
/* 803A3958-803A3970 -00001 0014+04 0/0 5/0 0/0 .data            g_fopMsg_Method */
leafdraw_method_class g_fopMsg_Method = {
    (process_method_func)fopMsg_Create,  (process_method_func)fopMsg_Delete,
    (process_method_func)fopMsg_Execute, (process_method_func)fopMsg_IsDelete,
    (process_method_func)fopMsg_Draw,
};
