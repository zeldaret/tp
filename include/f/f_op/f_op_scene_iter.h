#ifndef F_F_OP_SCENE_ITER_H_
#define F_F_OP_SCENE_ITER_H_

#include "dolphin/types.h"
#include "f/f_pc/f_pc_base.h"

typedef void* (*fop_ScnItFunc)(base_process_class* pProc, void* pUserData);
void* fopScnIt_Judge(fop_ScnItFunc pFunc1, void* pUserData);

#endif