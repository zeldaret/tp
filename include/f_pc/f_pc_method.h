
#ifndef F_PC_METHOD_H_
#define F_PC_METHOD_H_

#include "dolphin/types.h"

typedef int (*process_method_func)(void*);

typedef struct process_method_class {
    process_method_func mpCreateFunc;
    process_method_func mpDeleteFunc;
    process_method_func mpExecuteFunc;
    process_method_func mpIsDeleteFunc;
} process_method_class;

s32 fpcMtd_Method(process_method_func pFunc, void* pUserData);
s32 fpcMtd_Execute(process_method_class* pMthd, void* pUserData);
s32 fpcMtd_IsDelete(process_method_class* pMthd, void* pUserData);
s32 fpcMtd_Delete(process_method_class* pMthd, void* pUserData);
s32 fpcMtd_Create(process_method_class* pMthd, void* pUserData);

extern "C" {
void fpcMtd_Execute__FP20process_method_classPv(void);
void fpcMtd_Create__FP20process_method_classPv(void);
}

#endif
