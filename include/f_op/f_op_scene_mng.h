#ifndef F_F_OP_SCENE_MNG_H_
#define F_F_OP_SCENE_MNG_H_

#include "f_pc/f_pc_manager.h"
#include "f_op/f_op_scene_pause.h"

scene_class* fopScnM_SearchByID(unsigned int id);
int fopScnM_ChangeReq(scene_class*, s16, s16, u16);
unsigned int fopScnM_DeleteReq(scene_class*);
int fopScnM_CreateReq(s16, s16, u16, u32);
u32 fopScnM_ReRequest(s16, u32);
void fopScnM_Management(void);
void fopScnM_Init(void);

inline u32 fpcM_LayerID(const void* pProc) {
    return fpcBs_Is_JustOfType(g_fpcNd_type, ((base_process_class*)pProc)->mSubType) != FALSE ?
               ((scene_class*)pProc)->mBase.mLayer.mLayerID :
               0xFFFFFFFF;
}

inline u32 fopScnM_GetID(void* proc) {
    return fpcM_GetID(proc);
}

inline int fopScnM_LayerID(void* proc) {
    return fpcM_LayerID(proc);
}

inline u32 fopScnM_GetParam(void* proc) {
    return fpcM_GetParam(proc);
}

#endif
