
#include "dolphin/types.h"
#include "f/f_pc/f_pc_method.h"

s32 fpcMtd_Method(process_method_func pFunc, void *pUserData)
{
    if (pFunc != NULL)
        return pFunc(pUserData);
    else
        return 1;
}

s32 fpcMtd_Execute(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpExecuteFunc, pUserData);
}

s32 fpcMtd_IsDelete(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpIsDeleteFunc, pUserData);
}

s32 fpcMtd_Delete(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpDeleteFunc, pUserData);
}

s32 fpcMtd_Create(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpCreateFunc, pUserData);
}