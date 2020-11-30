
#include "global.h"
#include "f/f_pc/f_pc_method.h"

extern "C" {

int fpcMtd_Method(process_method_func pFunc, void *pUserData)
{
    if (pFunc != NULL)
        return pFunc(pUserData);
    else
        return 1;
}

int fpcMtd_Execute(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpExecuteFunc, pUserData);
}

int fpcMtd_IsDelete(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpIsDeleteFunc, pUserData);
}

int fpcMtd_Delete(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpDeleteFunc, pUserData);
}

int fpcMtd_Create(process_method_class *pMthd, void *pUserData)
{
    return fpcMtd_Method(pMthd->mpCreateFunc, pUserData);
}

};
