/**
 * f_op_view.cpp
 * View Process Framework
 */

#include "f_op/f_op_view.h"
#include "f_pc/f_pc_manager.h"

/* 8001F1A8-8001F1D0 019AE8 0028+00 1/0 0/0 0/0 .text            fopVw_Draw__FP10view_class */
void fopVw_Draw(view_class* i_this) {
    fpcLf_DrawMethod(i_this->sub_method, i_this);
}

/* 8001F1D0-8001F1F8 019B10 0028+00 1/0 0/0 0/0 .text            fopVw_Execute__FP10view_class */
void fopVw_Execute(view_class* i_this) {
    fpcMtd_Execute(&i_this->sub_method->base, i_this);
}

/* 8001F1F8-8001F220 019B38 0028+00 1/0 0/0 0/0 .text            fopVw_IsDelete__FPv */
s32 fopVw_IsDelete(void* i_this) {
    view_class* _this = (view_class*)i_this;
    return fpcMtd_IsDelete(&_this->sub_method->base, _this);
}

/* 8001F220-8001F248 019B60 0028+00 1/0 0/0 0/0 .text            fopVw_Delete__FP10view_class */
s32 fopVw_Delete(view_class* i_this) {
    return fpcMtd_Delete(&i_this->sub_method->base, i_this);
}

/* 8001F248-8001F284 019B88 003C+00 1/0 0/0 0/0 .text            fopVw_Create__FPv */
s32 fopVw_Create(void* i_this) {
    view_class* _this = (view_class*)i_this;

    view_process_profile_definition* pProf =
        (view_process_profile_definition*)fpcM_GetProfile(_this);
    _this->sub_method = pProf->sub_method;
    _this->field_0xc4 = pProf->unk28;

    return fpcMtd_Create(&_this->sub_method->base, _this);
}

/* ############################################################################################## */
/* 803A3928-803A3940 -00001 0014+04 0/0 2/0 0/0 .data            g_fopVw_Method */
leafdraw_method_class g_fopVw_Method = {
    (process_method_func)fopVw_Create,  (process_method_func)fopVw_Delete,
    (process_method_func)fopVw_Execute, (process_method_func)fopVw_IsDelete,
    (process_method_func)fopVw_Draw,
};
