/**
 * f_op_overlap.cpp
 * Overlap Process Framework
 */

#include "SSystem/SComponent/c_request.h"
#include "f_op/f_op_overlap.h"
#include "f_pc/f_pc_manager.h"

/* 8001E37C-8001E3A4 018CBC 0028+00 1/0 0/0 0/0 .text            fopOvlp_Draw__FPv */
static s32 fopOvlp_Draw(void* i_this) {
    overlap_task_class* _this = (overlap_task_class*)i_this;
    return fpcLf_DrawMethod(_this->field_0xc0, i_this);
}

/* 8001E3A4-8001E3CC 018CE4 0028+00 1/0 0/0 0/0 .text            fopOvlp_Execute__FPv */
static s32 fopOvlp_Execute(void* i_this) {
    overlap_task_class* _this = (overlap_task_class*)i_this;
    return fpcMtd_Execute(&_this->field_0xc0->base, i_this);
}

/* 8001E3CC-8001E3F4 018D0C 0028+00 1/0 0/0 0/0 .text            fopOvlp_IsDelete__FPv */
static s32 fopOvlp_IsDelete(void* i_this) {
    overlap_task_class* _this = (overlap_task_class*)i_this;
    return fpcMtd_IsDelete(&_this->field_0xc0->base, i_this);
}

/* 8001E3F4-8001E41C 018D34 0028+00 1/0 0/0 0/0 .text            fopOvlp_Delete__FPv */
static s32 fopOvlp_Delete(void* i_this) {
    overlap_task_class* _this = (overlap_task_class*)i_this;
    return fpcMtd_Delete(&_this->field_0xc0->base, i_this);
}

/* 8001E41C-8001E484 018D5C 0068+00 1/0 0/0 0/0 .text            fopOvlp_Create__FPv */
static s32 fopOvlp_Create(void* i_this) {
    overlap_task_class* _this = (overlap_task_class*)i_this;

    if (fpcM_IsFirstCreating(_this)) {
        overlap_process_profile_definition* profile =
            (overlap_process_profile_definition*)fpcM_GetProfile(_this);

        cReq_Create((request_base_class*)&_this->field_0xc4, 1);
        _this->field_0xc0 = profile->sub_method;
        _this->field_0xc8 = -1;
    }

    return fpcMtd_Create(&_this->field_0xc0->base, _this);
}

/* ############################################################################################## */
/* 803A3878-803A3890 -00001 0014+04 0/0 10/0 0/0 .data            g_fopOvlp_Method */
leafdraw_method_class g_fopOvlp_Method = {
    (process_method_func)fopOvlp_Create,  (process_method_func)fopOvlp_Delete,
    (process_method_func)fopOvlp_Execute, (process_method_func)fopOvlp_IsDelete,
    (process_method_func)fopOvlp_Draw,
};
