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
s32 fpcBs_Is_JustOfType(int pType1, int pType2) {
    return checkEqual(pType1, pType2); // return pType2 == pType1 matches when return type is bool
}

/* ############################################################################################## */
/* 80450D00-80450D04 0004+00 s=1 e=0 z=0  None .sbss      g_fpcBs_type */
static int g_fpcBs_type;

/* 8002065C-8002069C 0040+00 s=1 e=5 z=0  None .text      fpcBs_MakeOfType__FPi */
s32 fpcBs_MakeOfType(int* pType) {
    static s32 t_type = 0x9130000;
    if (*pType == 0) {
        *pType = ++t_type;
    }
    return *pType;
}

/* 8002069C-800206C4 0028+00 s=0 e=2 z=0  None .text      fpcBs_MakeOfId__Fv */
s32 fpcBs_MakeOfId(void) {
    static s32 process_id = 1;
    return process_id++;
}

/* 800206C4-80020720 005C+00 s=0 e=1 z=0  None .text      fpcBs_Execute__FP18base_process_class */
s32 fpcBs_Execute(base_process_class* pProc) {
    s32 result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
    result = fpcMtd_Execute(pProc->mpPcMtd, pProc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

/* 80020720-80020760 0040+00 s=2 e=0 z=0  None .text      fpcBs_DeleteAppend__FP18base_process_class
 */
void fpcBs_DeleteAppend(base_process_class* pProc) {
    if (pProc->mpUserData != NULL) {
        cMl::free(pProc->mpUserData);
        pProc->mpUserData = NULL;
    }
}

/* 80020760-800207BC 005C+00 s=0 e=1 z=0  None .text      fpcBs_IsDelete__FP18base_process_class */
s32 fpcBs_IsDelete(base_process_class* pProc) {
    s32 result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
    result = fpcMtd_IsDelete(pProc->mpPcMtd, pProc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

/* 800207BC-80020820 0064+00 s=0 e=2 z=0  None .text      fpcBs_Delete__FP18base_process_class */
s32 fpcBs_Delete(base_process_class* pProc) {
    s32 deleteResult = fpcMtd_Delete(pProc->mpPcMtd, pProc);
    if (deleteResult == 1) {
        fpcBs_DeleteAppend(pProc);
        pProc->mBsType = 0;
        cMl::free(pProc);
    }
    return deleteResult;
}

/* 80020820-8002091C 00FC+00 s=0 e=2 z=0  None .text      fpcBs_Create__FsUiPv */
base_process_class* fpcBs_Create(s16 pProcTypeID, unsigned int pProcID, void* pData) {
    process_profile_definition* procProfDef;
    base_process_class* procClass;
    u32 size;

    procProfDef = (process_profile_definition*)fpcPf_Get(pProcTypeID);
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
        procClass->mBsPcId = pProcID;
        procClass->mBsTypeId = pProcTypeID;
        procClass->mBsType = fpcBs_MakeOfType(&g_fpcBs_type);
        procClass->mProcName = procProfDef->mProcName;
        fpcPause_Init(procClass);
        procClass->mpPcMtd = procProfDef->mSubMtd;
        procClass->mpProf = procProfDef;
        procClass->mpUserData = pData;
        procClass->mParameters = procProfDef->mParameters;
        return procClass;
    }
}

s32 fpcBs_SubCreate(base_process_class* pProc) {
    switch (fpcMtd_Create(pProc->mpPcMtd, pProc)) {
    case 2:
    case cPhs_COMPLEATE_e:
        fpcBs_DeleteAppend(pProc);
        pProc->mUnk2 = 2;
        return 2;
    case cPhs_ZERO_e:
    case 1:
        pProc->mInitState = 1;
        pProc->mUnk2 = 0;
        return cPhs_ZERO_e;
    case 3:
        pProc->mUnk2 = 3;
        return 3;
    case cPhs_ERROR_e:
    default:
        pProc->mUnk2 = 5;
        return cPhs_ERROR_e;
    }
}
