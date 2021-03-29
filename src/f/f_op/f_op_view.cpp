#include "f/f_op/f_op_view.h"
#include "f/f_pc/f_pc_leaf.h"

void fopVw_Draw(view_class* pView) {
    fpcLf_DrawMethod((leafdraw_method_class*)pView->pmProcessMtd, pView);
}

void fopVw_Execute(view_class* pView) {
    fpcMtd_Execute(pView->pmProcessMtd, pView);
}

s32 fopVw_IsDelete(void* param_1) {
    view_class* pView = (view_class*)param_1;
    return fpcMtd_IsDelete(pView->pmProcessMtd, pView);
}

s32 fopVw_Delete(view_class* pView) {
    return fpcMtd_Delete(pView->pmProcessMtd, pView);
}

// fopVw_Create__FPv
// fopVw_Create(void*)
asm void fopVw_Create(void*) {
    nofralloc
#include "f/f_op/f_op_view/asm/func_8001F248.s"
}