#include "global.h"
#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_layer.h"
#include "f/f_pc/f_pc_method.h"
#include "f/f_pc/f_pc_pause.h"
#include "f/f_pc/f_pc_priority.h"
#include "f/f_pc/f_pc_profile.h"
#include "f/f_pc/f_pc_delete_tag.h"
#include "f/f_pc/f_pc_line_tag.h"
#include "f/f_pc/f_pc_layer_tag.h"

extern s32 lbl_80450D04; // f_pc_base::t_type
extern s8 lbl_80450D08;
extern s32 lbl_80450D0C; // f_pc_base::process_id
extern s8 lbl_80450D10;
extern s32 lbl_80450D00; // f_pc_base::g_fpcBs_type


extern "C" {

extern void cMl_NS_free(void *pPtr);
extern void *cMl_NS_memalignB(s32 pAlign, s32 pSize);
extern void sBs_ClearArea(void *pPtr, s32 pSize);

#ifdef NON_MATCHING
// matches when return type is changed to bool, but that makes the function that
// uses it not match
s32 fpcBs_Is_JustOfType(s32 pType1, s32 pType2) {
    return pType2 == pType1;
}
#else
asm s32 fpcBs_Is_JustOfType(s32 pType1, s32 pType2) {
    nofralloc
    #include "asm/8002064C.s"
}
#endif

s32 fpcBs_MakeOfType(s32 *pInt) {
    if (lbl_80450D08 == 0) {
        lbl_80450D04 = 0x9130000;
        lbl_80450D08 = 1;
    }
    if (*pInt == 0) {
        *pInt = ++lbl_80450D04;
    }
    return *pInt;
}

s32 fpcBs_MakeOfId(void) {
    if (lbl_80450D10 == 0) {
        lbl_80450D0C = 1;
        lbl_80450D10 = 1;
    }
    return lbl_80450D0C++;
}

s32 fpcBs_Execute(base_process_class *pProc) {
    int result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
    result = fpcMtd_Execute(pProc->mpPcMtd, pProc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

void fpcBs_DeleteAppend(base_process_class *pProc) {
    if (pProc->mpUserData != NULL) {
        cMl_NS_free(pProc->mpUserData);
        pProc->mpUserData = NULL;
    }
}

s32 fpcBs_IsDelete(base_process_class* pProc) {
    int result;
    layer_class* savedLayer = fpcLy_CurrentLayer();
    fpcLy_SetCurrentLayer(pProc->mLyTg.mpLayer);
    result = fpcMtd_IsDelete(pProc->mpPcMtd, pProc);
    fpcLy_SetCurrentLayer(savedLayer);
    return result;
}

s32 fpcBs_Delete(base_process_class* pProc) {
    int deleteResult = fpcMtd_Delete(pProc->mpPcMtd,pProc);
    if (deleteResult == 1) {
        fpcBs_DeleteAppend(pProc);
        pProc->mBsType = 0;
        cMl_NS_free(pProc);
    }
    return deleteResult;
}

base_process_class *fpcBs_Create(s16 pProcTypeID, u32 pProcID, void *pData) {
    process_profile_definition *procProfDef;
    base_process_class *procClass;
    s32 size;
    
    procProfDef = fpcPf_Get(pProcTypeID);
    size = procProfDef->unk10 + procProfDef->unk14;
    procClass = (base_process_class *)cMl_NS_memalignB(-4,size);
    if (procClass == NULL) {
        return NULL;
    }
    else {
        sBs_ClearArea(procClass,size);
        fpcLyTg_Init(&procClass->mLyTg,procProfDef->unk0,procClass);
        fpcLnTg_Init(&procClass->mLnTg,procClass);
        fpcDtTg_Init(&procClass->mDtTg,procClass);
        fpcPi_Init(&procClass->mPi,procClass,procProfDef->unk0,procProfDef->unk4,
                procProfDef->unk6);
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

s32 fpcBs_SubCreate(base_process_class *pProc) {
    switch (fpcMtd_Create(pProc->mpPcMtd,pProc)) {
    case 2:
    case 4:
        fpcBs_DeleteAppend(pProc);
        pProc->mUnk2 = 2;
        return 2;
    case 0:
    case 1:
        pProc->mInitState = 1;
        pProc->mUnk2 = 0;
        return 0;
    case 3:
        pProc->mUnk2 = 3;
        return 3;
    case 5:
    default:
        pProc->mUnk2 = 5;
        return 5;
    }
}

}