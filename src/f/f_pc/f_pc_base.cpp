#include "f/f_pc/f_pc_base.h"
#include "SComponent/c_phase.h"
#include "dolphin/types.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_layer_tag.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_pause.h"
#include "f/f_pc/f_pc_priority.h"
#include "f/f_pc/f_pc_profile.h"

extern s32 lbl_80450D04;  // f_pc_base::t_type
extern s8 lbl_80450D08;
extern s32 lbl_80450D0C;  // f_pc_base::process_id
extern s8 lbl_80450D10;
extern s32 lbl_80450D00;  // f_pc_base::g_fpcBs_type

extern "C" {

extern void cMl_NS_free(void* pPtr);
extern void* cMl_NS_memalignB(s32 pAlign, s32 pSize);
extern void sBs_ClearArea(void* pPtr, s32 pSize);

BOOL fpcBs_Is_JustOfType(s32 pType1, s32 pType2) {
    return checkEqual(pType1, pType2);
}

s32 fpcBs_MakeOfType(s32* pType) {
    if (lbl_80450D08 == 0) {
        lbl_80450D04 = 0x9130000;
        lbl_80450D08 = 1;
    }
    if (*pType == 0) {
        *pType = ++lbl_80450D04;
    }
    return *pType;
}

s32 fpcBs_MakeOfId(void) {
    if (lbl_80450D10 == 0) {
        lbl_80450D0C = 1;
        lbl_80450D10 = 1;
    }
    return lbl_80450D0C++;
}

s32 fpcBs_Execute(base_process_class* pProc) {
    s32 result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
    result = fpcMtd_Execute(pProc->mpPcMtd, pProc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

void fpcBs_DeleteAppend(base_process_class* pProc) {
    if (pProc->mpUserData != NULL) {
        cMl_NS_free(pProc->mpUserData);
        pProc->mpUserData = NULL;
    }
}

s32 fpcBs_IsDelete(base_process_class* pProc) {
    s32 result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
    result = fpcMtd_IsDelete(pProc->mpPcMtd, pProc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

s32 fpcBs_Delete(base_process_class* pProc) {
    s32 deleteResult = fpcMtd_Delete(pProc->mpPcMtd, pProc);
    if (deleteResult == 1) {
        fpcBs_DeleteAppend(pProc);
        pProc->mBsType = 0;
        cMl_NS_free(pProc);
    }
    return deleteResult;
}

base_process_class* fpcBs_Create(s16 pProcTypeID, u32 pProcID, void* pData) {
    process_profile_definition* procProfDef;
    base_process_class* procClass;
    s32 size;

    procProfDef = fpcPf_Get(pProcTypeID);
    size = procProfDef->mSize + procProfDef->mSizeOther;
    procClass = (base_process_class*)cMl_NS_memalignB(-4, size);
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
        procClass->mBsType = fpcBs_MakeOfType(&lbl_80450D00);
        procClass->mProcName = procProfDef->mProcName;
        fpcPause_Init(procClass);
        procClass->mpPcMtd = procProfDef->mpPcMtd;
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
}