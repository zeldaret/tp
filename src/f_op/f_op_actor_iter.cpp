/**
 * f_op_actor_iter.cpp
 * Actor Process Iterator
 */

#include "f_op/f_op_actor_iter.h"
#include "SSystem/SComponent/c_list_iter.h"
#include "SSystem/SComponent/c_tag_iter.h"
#include "f_op/f_op_actor_tag.h"

/* 800197BC-800197F8 0140FC 003C+00 0/0 5/5 3/3 .text            fopAcIt_Executor__FPFPvPv_iPv */
int fopAcIt_Executor(fopAcIt_ExecutorFunc i_execFunc, void* i_data) {
    struct {
        fopAcIt_ExecutorFunc func;
        void* data;
    } userData;
    userData.func = i_execFunc;
    userData.data = i_data;

    return cLsIt_Method(&g_fopAcTg_Queue, (cNdIt_MethodFunc)cTgIt_MethodCall, &userData);
}

/* 800197F8-80019834 014138 003C+00 0/0 67/67 388/388 .text            fopAcIt_Judge__FPFPvPv_PvPv
 */
void* fopAcIt_Judge(fopAcIt_JudgeFunc i_judgeFunc, void* i_data) {
    struct {
        fopAcIt_JudgeFunc func;
        void* data;
    } userData;
    userData.func = i_judgeFunc;
    userData.data = i_data;

    return cLsIt_Judge(&g_fopAcTg_Queue, (cNdIt_JudgeFunc)cTgIt_JudgeFilter, &userData);
}
