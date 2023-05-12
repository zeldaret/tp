#ifndef F_F_OP_SCENE_ITER_H_
#define F_F_OP_SCENE_ITER_H_

typedef void* (*fop_ScnItFunc)(void* pProc, void* pUserData);
void* fopScnIt_Judge(fop_ScnItFunc pFunc1, void* pUserData);

#endif