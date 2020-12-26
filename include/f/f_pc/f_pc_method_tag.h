
#ifndef F_PC_METHOD_TAG_H
#define F_PC_METHOD_TAG_H

#include "SComponent/c_tag.h"

typedef int (*process_method_tag_func)(void*);

struct process_method_tag_class : public create_tag_class {
    process_method_tag_func mpFunc;
    void* mpMthdData;
};

extern "C" {

int fpcMtdTg_Do(process_method_tag_class* pMthd);
int fpcMtdTg_ToMethodQ(node_list_class* pList, process_method_tag_class* pMthd);
void fpcMtdTg_MethodQTo(process_method_tag_class* pMthd);
int fpcMtdTg_Init(process_method_tag_class* pMthd, process_method_tag_func pFunc, void* pMthdData);
};

#endif
