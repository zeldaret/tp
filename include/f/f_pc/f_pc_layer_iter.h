#ifndef F_PC_LAYER_ITER_H
#define F_PC_LAYER_ITER_H

#include "global.h"
#include "f/f_pc/f_pc_layer.h"
#include "SComponent/c_node_iter.h"

struct layer_iter {
    void* mpFunc;
    void* mpUserData;
};

extern "C" {

int fpcLyIt_OnlyHere(layer_class *pLayer, cNdIt_MethodFunc pFunc, void *pUserData);
int fpcLyIt_OnlyHereLY(layer_class *pLayer, cNdIt_MethodFunc pFunc, void *pUserData);
void * fpcLyIt_Judge(layer_class *pLayer, cNdIt_MethodFunc pFunc, void *pUserData);
void * fpcLyIt_AllJudge(cNdIt_MethodFunc pFunc, void *pUserData);

}

#endif