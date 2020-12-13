
#include "f/f_pc/f_pc_leaf.h"

// f_pc_leaf::g_fpcLf_type
extern s32 lbl_80450D30;

extern "C" {

s32 fpcLf_GetPriority(leafdraw_class *pLeaf)
{
    return fpcDwPi_Get(&pLeaf->mDwPi);
}

s32 fpcLf_DrawMethod(leafdraw_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpDrawFunc, pUserData);
}

s32 fpcLf_Draw(leafdraw_class *pLeaf)
{
    s32 ret = 0;
    if (pLeaf->mbUnk0 == 0)
        ret = fpcLf_DrawMethod(pLeaf->mpDrawMtd, pLeaf);
    return ret;
}

s32 fpcLf_Execute(leafdraw_class *pLeaf) {
    return fpcMtd_Execute(pLeaf->mpDrawMtd, pLeaf);
}

s32 fpcLf_IsDelete(leafdraw_class *pLeaf) {
    return fpcMtd_IsDelete(pLeaf->mpDrawMtd, pLeaf);
}

s32 fpcLf_Delete(leafdraw_class *pLeaf) {
    s32 ret = fpcMtd_Delete(pLeaf->mpDrawMtd, pLeaf);
    if (ret == 1) {
        pLeaf->mSubType = 0;
    }
    return ret;
}

s32 fpcLf_Create(leafdraw_class *pLeaf) {
    process_profile_definition *profDef;
    if (pLeaf->mInitState == 0) {
        profDef = pLeaf->mpProf;
        pLeaf->mpDrawMtd = (leafdraw_method_class*) profDef->mNDrwMthCls;
        pLeaf->mSubType = fpcBs_MakeOfType(&lbl_80450D30);
        fpcDwPi_Init(&pLeaf->mDwPi, profDef->unk20);
        pLeaf->mbUnk0 = 0;
    }
    return fpcMtd_Create(pLeaf->mpDrawMtd, pLeaf);
}

};
