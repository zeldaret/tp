
#ifndef F_PC_METHOD_H
#define F_PC_METHOD_H

#include "compatibility_c_cpp.h"

typedef int (*process_method_func)(void *);

typedef struct process_method_class {
    process_method_func mpCreateFunc;
    process_method_func mpDeleteFunc;
    process_method_func mpExecuteFunc;
    process_method_func mpIsDeleteFunc;
} process_method_class;

BEGIN_C_DECLARATIONS

int fpcMtd_Method(process_method_func pFunc, void *pUserData);
int fpcMtd_Execute(process_method_class *pMthd, void *pUserData);
int fpcMtd_IsDelete(process_method_class *pMthd, void *pUserData);
int fpcMtd_Delete(process_method_class *pMthd, void *pUserData);
int fpcMtd_Create(process_method_class *pMthd, void *pUserData);

END_C_DECLARATIONS

#endif
