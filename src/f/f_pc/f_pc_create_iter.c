#include "f/f_pc/f_pc_create_iter.h"

// g_fpcCtTg_Queue
extern node_list_class lbl_803A3990;

s32 fpcCtIt_Method(cNdIt_MethodFunc pJudge, void* pUserData) {
    node_method_data iter;
    iter.mFunc = pJudge;
    iter.mpUserData = pUserData;
    return cLsIt_Method(&lbl_803A3990, (cNdIt_MethodFunc)cTgIt_MethodCall, &iter);
}

void* fpcCtIt_Judge(cNdIt_JudgeFunc pJudge, void* pUserData) {
    node_judge_data iter;
    iter.mFunc = pJudge;
    iter.mpUserData = pUserData;
    return cLsIt_Judge(&lbl_803A3990, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &iter);
}
asm void* fpcCtIt_filter_JudgeInLayer(create_tag*, fpcCtIt_jilprm_c*) {
    nofralloc
#include "f/f_pc/asm/80020A40.s"
}
void* fpcCtIt_JudgeInLayer(u32 pUnk0, cNdIt_JudgeFunc pFunc, void* pUserData) {
    fpcCtIt_jilprm_c data;
    data.mUnk0 = pUnk0;
    data.mFunc = pFunc;
    data.mpUserData = pUserData;
    return fpcCtIt_Judge((cNdIt_JudgeFunc)fpcCtIt_filter_JudgeInLayer, &data);
}
