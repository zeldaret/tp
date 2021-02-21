#ifndef F_F_OP_SCENE_ITER_H_
#define F_F_OP_SCENE_ITER_H_

#include "dolphin/types.h"

typedef void* (*fop_ScnItFunc)(void*, void*);

void* fopScnIt_Judge(fop_ScnItFunc pFunc1, void* pFunc2);

#endif