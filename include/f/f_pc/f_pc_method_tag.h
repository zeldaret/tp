
#ifndef F_PC_METHOD_TAG_H
#define F_PC_METHOD_TAG_H


#include "compatibility_c_cpp.h"
#include "dolphin/types.h"
#include "SComponent/c_tag.h"

typedef int (*process_method_tag_func)(void *);

typedef struct process_method_tag_class {
    create_tag_class mCreateTag;
    process_method_tag_func mpFunc;
    void *mpMthdData;
} process_method_tag_class;

BEGIN_C_DECLARATIONS

int fpcMtdTg_Do(process_method_tag_class *pMthd);
int fpcMtdTg_ToMethodQ(node_list_class *pList, process_method_tag_class *pMthd);
void fpcMtdTg_MethodQTo(process_method_tag_class *pMthd);
int fpcMtdTg_Init(process_method_tag_class *pMthd, process_method_tag_func pFunc, void *pMthdData);

END_C_DECLARATIONS

#endif
