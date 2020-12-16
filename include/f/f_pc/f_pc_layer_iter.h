#ifndef F_PC_LAYER_ITER_H
#define F_PC_LAYER_ITER_H

#include "compatibility_c_cpp.h"
#include "f/f_pc/f_pc_layer.h"
#include "SComponent/c_node_iter.h"

typedef struct layer_iter {
    void* mpFunc;
    void* mpUserData;
} layer_iter;

BEGIN_C_DECLARATIONS

int fpcLyIt_OnlyHere(layer_class *pLayer, cNdIt_MethodFunc pFunc, void *pUserData);
int fpcLyIt_OnlyHereLY(layer_class *pLayer, cNdIt_MethodFunc pFunc, void *pUserData);
void * fpcLyIt_Judge(layer_class *pLayer, cNdIt_MethodFunc pFunc, void *pUserData);
void * fpcLyIt_AllJudge(cNdIt_MethodFunc pFunc, void *pUserData);

END_C_DECLARATIONS

#endif