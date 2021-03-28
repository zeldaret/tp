
#ifndef F_PC_METHOD_TAG_H_
#define F_PC_METHOD_TAG_H_

#include "SComponent/c_tag.h"
#include "global.h"

typedef int (*process_method_tag_func)(void*);

typedef struct process_method_tag_class {
    create_tag_class mCreateTag;
    process_method_tag_func mpFunc;
    void* mpMthdData;
} process_method_tag_class;

s32 fpcMtdTg_Do(process_method_tag_class* pMthd);
s32 fpcMtdTg_ToMethodQ(node_list_class* pList, process_method_tag_class* pMthd);
void fpcMtdTg_MethodQTo(process_method_tag_class* pMthd);
s32 fpcMtdTg_Init(process_method_tag_class* pMthd, process_method_tag_func pFunc, void* pMthdData);

#endif
