#include "f/f_op/f_op_scene.h"
#include "f/f_op/f_op_scene_pause.h"
#include "f/f_op/f_op_scene_tag.h"
#include "f/f_pc/f_pc_node.h"

extern "C" {
void fopScnTg_Init__FP15scene_tag_classPv(void);
void fopScnTg_QueueTo__FP15scene_tag_class(void);
void fopScnTg_ToQueue__FP15scene_tag_class(void);
void fopScn_Draw__FP11scene_class(void);
void fpcMtd_Create__FP20process_method_classPv(void);
void fpcMtd_Delete__FP20process_method_classPv(void);
void fpcMtd_IsDelete__FP20process_method_classPv(void);
void fpcMtd_Execute__FP20process_method_classPv(void);
void fpcNd_DrawMethod__FP21nodedraw_method_classPv(void);
void fopScn_Execute__FP11scene_class(void);
void fopScn_IsDelete__FPv(void);
void fopScn_Delete__FPv(void);
void fopScn_Create__FPv(void);
}

void fopScn_Draw(scene_class* pScene) {
    fpcNd_DrawMethod((nodedraw_method_class*)pScene->mpProcessMtd, pScene);
}

void fopScn_Execute(scene_class* pScene) {
    fpcMtd_Execute(pScene->mpProcessMtd, pScene);
}

s32 fopScn_IsDelete(void* param_1) {
    return fpcMtd_IsDelete(((scene_class*)param_1)->mpProcessMtd, param_1);
}

#ifdef NON_MATCHING
s32 fopScn_Delete(void* param_1) {
    scene_class* pScene = (scene_class*)param_1;
    s32 ret = fpcMtd_Delete(pScene->mpProcessMtd, param_1);
    if (ret == 1) {
        fopScnTg_QueueTo(pScene->field_0x1b0);
    }
    return ret;
}
#else
asm void fopScn_Delete(void*) {
    nofralloc
#include "f/f_op/f_op_scene/asm/func_8001EBAC.s"
}
#endif

// fopScn_Create__FPv
// fopScn_Create(void*)
asm void fopScn_Create(void*) {
    nofralloc
#include "f/f_op/f_op_scene/asm/func_8001EC00.s"
}
