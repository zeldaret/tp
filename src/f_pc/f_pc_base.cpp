/**
 * f_pc_base.cpp
 * Framework - Process Base
 */

#include "f_pc/f_pc_base.h"
#include "SSystem/SComponent/c_malloc.h"
#include "SSystem/SComponent/c_phase.h"
#include "SSystem/SStandard/s_basic.h"
#include "f_pc/f_pc_pause.h"
#include "global.h"

/* 8002064C-8002065C 0010+00 s=0 e=14 z=0  None .text      fpcBs_Is_JustOfType__Fii */
s32 fpcBs_Is_JustOfType(int i_typeA, int i_typeB) {
    return checkEqual(i_typeA, i_typeB); // return pType2 == pType1 matches when return type is bool
}

/* ############################################################################################## */
/* 80450D00-80450D04 0004+00 s=1 e=0 z=0  None .sbss      g_fpcBs_type */
static int g_fpcBs_type;

/* 8002065C-8002069C 0040+00 s=1 e=5 z=0  None .text      fpcBs_MakeOfType__FPi */
s32 fpcBs_MakeOfType(int* i_type) {
    static s32 t_type = 0x9130000;
    if (*i_type == 0) {
        *i_type = ++t_type;
    }
    return *i_type;
}

/* 8002069C-800206C4 0028+00 s=0 e=2 z=0  None .text      fpcBs_MakeOfId__Fv */
s32 fpcBs_MakeOfId() {
    static s32 process_id = 1;
    return process_id++;
}

/* 800206C4-80020720 005C+00 s=0 e=1 z=0  None .text      fpcBs_Execute__FP18base_process_class */
s32 fpcBs_Execute(base_process_class* i_proc) {
    s32 result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(i_proc->mLyTg.mpLayer);
    result = fpcMtd_Execute(i_proc->mpPcMtd, i_proc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

/* 80020720-80020760 0040+00 s=2 e=0 z=0  None .text      fpcBs_DeleteAppend__FP18base_process_class
 */
void fpcBs_DeleteAppend(base_process_class* i_proc) {
    if (i_proc->mpUserData != NULL) {
        cMl::free(i_proc->mpUserData);
        i_proc->mpUserData = NULL;
    }
}

/* 80020760-800207BC 005C+00 s=0 e=1 z=0  None .text      fpcBs_IsDelete__FP18base_process_class */
s32 fpcBs_IsDelete(base_process_class* i_proc) {
    s32 result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(i_proc->mLyTg.mpLayer);
    result = fpcMtd_IsDelete(i_proc->mpPcMtd, i_proc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

/* 800207BC-80020820 0064+00 s=0 e=2 z=0  None .text      fpcBs_Delete__FP18base_process_class */
s32 fpcBs_Delete(base_process_class* i_proc) {
    s32 deleteResult = fpcMtd_Delete(i_proc->mpPcMtd, i_proc);
    if (deleteResult == 1) {
        fpcBs_DeleteAppend(i_proc);
        i_proc->mBsType = 0;
        cMl::free(i_proc);
    }
    return deleteResult;
}

/* 80020820-8002091C 00FC+00 s=0 e=2 z=0  None .text      fpcBs_Create__FsUiPv */
base_process_class* fpcBs_Create(s16 i_procTypeID, unsigned int i_procID, void* i_data) {
    process_profile_definition* procProfDef;
    base_process_class* procClass;
    u32 size;

    procProfDef = (process_profile_definition*)fpcPf_Get(i_procTypeID);
    size = procProfDef->mSize + procProfDef->mSizeOther;
    procClass = (base_process_class*)cMl::memalignB(-4, size);
    if (procClass == NULL) {
        return NULL;
    } else {
        sBs_ClearArea(procClass, size);
        fpcLyTg_Init(&procClass->mLyTg, procProfDef->mLayerID, procClass);
        fpcLnTg_Init(&procClass->mLnTg, procClass);
        fpcDtTg_Init(&procClass->mDtTg, procClass);
        fpcPi_Init(&procClass->mPi, procClass, procProfDef->mLayerID, procProfDef->mListID,
                   procProfDef->mListPrio);
        procClass->mInitState = 0;
        procClass->mUnk0 = 0;
        procClass->mBsPcId = i_procID;
        procClass->mBsTypeId = i_procTypeID;
        procClass->mBsType = fpcBs_MakeOfType(&g_fpcBs_type);
        procClass->mProcName = procProfDef->mProcName;
        fpcPause_Init(procClass);
        procClass->mpPcMtd = procProfDef->mSubMtd;
        procClass->mpProf = procProfDef;
        procClass->mpUserData = i_data;
        procClass->mParameters = procProfDef->mParameters;
        return procClass;
    }
}

s32 fpcBs_SubCreate(base_process_class* i_proc) {
    switch (fpcMtd_Create(i_proc->mpPcMtd, i_proc)) {
    case 2:
    case cPhs_COMPLEATE_e:
        fpcBs_DeleteAppend(i_proc);
        i_proc->mUnk2 = 2;
        return 2;
    case cPhs_ZERO_e:
    case 1:
        i_proc->mInitState = 1;
        i_proc->mUnk2 = 0;
        return cPhs_ZERO_e;
    case 3:
        i_proc->mUnk2 = 3;
        return 3;
    case cPhs_ERROR_e:
    default:
        i_proc->mUnk2 = 5;
        return cPhs_ERROR_e;
    }
}
