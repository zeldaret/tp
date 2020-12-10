
#include "f/f_pc/f_pc_leaf.h"

extern "C" {

int fpcLf_GetPriority(leafdraw_class* pLeaf) {
    return fpcDwPi_Get(&pLeaf->mDwPi);
}

int fpcLf_DrawMethod(leafdraw_method_class* pMthd, void* pUserData) {
    return fpcMtd_Method(pMthd->mpDrawFunc, pUserData);
}

#if 0
int fpcLf_Draw(leafdraw_class *pLeaf)
{
    int ret = 0;
    if (pLeaf->mbUnk0 == 0)
        ret = fpcLf_DrawMethod(pLeaf->mpDrawMtd, pLeaf);
    return ret;
}
#endif
};
