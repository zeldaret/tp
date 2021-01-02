#include "f/f_pc/f_pc_draw.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_pause.h"

// f_pc_leaf::g_fpcLf_type
extern s32 lbl_80450D30;

typedef s32 (*cNdIt_MethodFuncFunc)(cNdIt_MethodFunc);

extern "C" {

extern void cAPIGph_AfterOfDraw(void);
extern void cAPIGph_BeforeOfDraw(void);

s32 fpcDw_Execute(base_process_class* pProc) {
    if (!fpcPause_IsEnable(pProc, 2)) {
        layer_class* curLay;
        s32 ret;
        process_method_func func;
        curLay = fpcLy_CurrentLayer();
        if (fpcBs_Is_JustOfType(lbl_80450D30, pProc->mSubType)) {
            func = ((nodedraw_method_class*)pProc->mpPcMtd)->mNodedrawFunc;
        } else {
            func = ((nodedraw_method_class*)pProc->mpPcMtd)->mNodedrawFunc;
        }
        fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
        ret = func(pProc);
        fpcLy_SetCurrentLayer(curLay);
        return ret;
    } else {
        return 0;
    }
}

s32 fpcDw_Handler(cNdIt_MethodFuncFunc param_1, cNdIt_MethodFunc param_2) {
    s32 ret;
    cAPIGph_BeforeOfDraw();
    ret = param_1(param_2);
    cAPIGph_AfterOfDraw();
    return ret;
}
}