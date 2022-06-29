#ifndef F_PC_MANAGER_H_
#define F_PC_MANAGER_H_

#include "SSystem/SComponent/c_node_iter.h"
#include "SSystem/SComponent/c_tag.h"
#include "dolphin/types.h"
#include "f_pc/f_pc_base.h"
#include "f_pc/f_pc_create_iter.h"
#include "f_pc/f_pc_node_req.h"
#include "f_pc/f_pc_stdcreate_req.h"
#include "f_pc/f_pc_executor.h"

typedef int (*FastCreateReqFunc)(void*);
typedef void (*fpcM_ManagementFunc)(void);
typedef int (*fpcM_DrawIteraterFunc)(void*, void*);

inline u32 fpcM_GetID(const void* pProc) {
    return pProc != NULL ? ((base_process_class*)pProc)->mBsPcId : 0xFFFFFFFF;
}
inline s16 fpcM_GetName(const void* pActor) {
    return ((base_process_class*)pActor)->mProcName;
}
inline u32 fpcM_GetParam(const void* pActor) {
    return ((base_process_class*)pActor)->mParameters;
}

inline void fpcM_SetParam(void* p_actor, u32 param) {
    ((base_process_class*)p_actor)->mParameters = param;
}

inline s16 fpcM_GetProfName(const void* pActor) {
    return ((base_process_class*)pActor)->mBsTypeId;
}

inline int fpcM_Create(s16 procName, FastCreateReqFunc createFunc, void* process) {
    return fpcSCtRq_Request(fpcLy_CurrentLayer(), procName, (stdCreateFunc)createFunc, NULL,
                            process);
}

inline s32 fpcM_ChangeLayerID(void* proc, int layerID) {
    return fpcPi_Change(&((base_process_class*)proc)->mPi, layerID, 0xFFFD, 0xFFFD);
}

inline s32 fpcM_IsJustType(int type1, int type2) {
    return fpcBs_Is_JustOfType(type1, type2);
}

inline bool fpcM_IsFirstCreating(void* proc) {
    return ((base_process_class*)proc)->mInitState == 0;
}

inline leaf_process_profile_definition* fpcM_GetProfile(void* proc) {
    return (leaf_process_profile_definition*)((base_process_class*)proc)->mpProf;
}

inline void* fpcM_GetAppend(const void* proc) {
    return ((base_process_class*)proc)->mpUserData;
}

inline BOOL fpcM_IsExecuting(unsigned int id) {
    return fpcEx_IsExist(id);
}

void fpcM_Draw(void* pProc);
s32 fpcM_DrawIterater(fpcM_DrawIteraterFunc pFunc);
s32 fpcM_Execute(void* pProc);
s32 fpcM_Delete(void* pProc);
BOOL fpcM_IsCreating(unsigned int pID);
void fpcM_Management(fpcM_ManagementFunc pFunc1, fpcM_ManagementFunc pFunc2);
void fpcM_Init(void);
base_process_class* fpcM_FastCreate(s16 pProcTypeID, FastCreateReqFunc param_2, void* param_3,
                                    void* pData);
s32 fpcM_IsPause(void* pProc, u8 param_2);
void fpcM_PauseEnable(void* pProc, u8 param_2);
void fpcM_PauseDisable(void* pProc, u8 param_2);
void* fpcM_JudgeInLayer(unsigned int pLayerID, fpcCtIt_JudgeFunc pFunc, void* pUserData);

extern "C" {
void fpcM_Delete__FPv(void);
}

#endif
