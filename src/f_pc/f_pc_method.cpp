/**
 * f_pc_method.cpp
 * Framework - Process Method
 */

#include "f_pc/f_pc_method.h"

/* 80022428-80022460 0038+00 s=4 e=6 z=0  None .text      fpcMtd_Method__FPFPv_iPv */
s32 fpcMtd_Method(process_method_func i_method, void* i_process) {
    if (i_method != NULL)
        return i_method(i_process);
    else
        return 1;
}

/* 80022460-80022484 0024+00 s=0 e=10 z=0  None .text fpcMtd_Execute__FP20process_method_classPv
 */
s32 fpcMtd_Execute(process_method_class* i_methods, void* i_process) {
    return fpcMtd_Method(i_methods->execute_method, i_process);
}

/* 80022484-800224A8 0024+00 s=0 e=10 z=0  None .text fpcMtd_IsDelete__FP20process_method_classPv
 */
s32 fpcMtd_IsDelete(process_method_class* i_methods, void* i_process) {
    return fpcMtd_Method(i_methods->is_delete_method, i_process);
}

/* 800224A8-800224CC 0024+00 s=0 e=10 z=0  None .text      fpcMtd_Delete__FP20process_method_classPv
 */
s32 fpcMtd_Delete(process_method_class* i_methods, void* i_process) {
    return fpcMtd_Method(i_methods->delete_method, i_process);
}

/* 800224CC-800224F0 0024+00 s=0 e=10 z=0  None .text      fpcMtd_Create__FP20process_method_classPv
 */
s32 fpcMtd_Create(process_method_class* i_methods, void* i_process) {
    return fpcMtd_Method(i_methods->create_method, i_process);
}
