
#include "f/f_pc/f_pc_method_tag.h"

// g_fpcLn_Queue
extern node_lists_tree_class lbl_804505D8;

extern "C" {

int fpcMtdTg_Do(process_method_tag_class *pMthd)
{
    return pMthd->mpFunc(pMthd->mpMthdData);
}

void fpcMtdTg_ToMethodQ(node_list_class *pList, process_method_tag_class *pMthd)
{
    cTg_Addition(pList, &pMthd->mCreateTag);
}

void fpcMtdTg_MethodQTo(process_method_tag_class *pMthd)
{
    cTg_SingleCut(&pMthd->mCreateTag);
}

int fpcMtdTg_Init(process_method_tag_class *pMthd, process_method_tag_func pFunc, void *pMthdData)
{
    cTg_Create(&pMthd->mCreateTag, pMthd);
    pMthd->mpFunc = pFunc;
    pMthd->mpMthdData = pMthdData;
    return 1;
}

};
