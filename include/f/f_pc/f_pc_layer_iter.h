#ifndef F_PC_LAYER_ITER_H_
#define F_PC_LAYER_ITER_H_

#include "SComponent/c_node_iter.h"
#include "f/f_pc/f_pc_layer.h"
#include "global.h"

typedef struct layer_iter {
    void* mpFunc;
    void* mpUserData;
} layer_iter;

typedef void* (*fpcLyIt_JudgeFunc)(void*, void*);

s32 fpcLyIt_OnlyHere(layer_class* pLayer, cNdIt_MethodFunc pFunc, void* pUserData);
s32 fpcLyIt_OnlyHereLY(layer_class* pLayer, cNdIt_MethodFunc pFunc, void* pUserData);
void* fpcLyIt_Judge(layer_class* pLayer, fpcLyIt_JudgeFunc pFunc, void* pUserData);
void* fpcLyIt_AllJudge(fpcLyIt_JudgeFunc pFunc, void* pUserData);

#endif
