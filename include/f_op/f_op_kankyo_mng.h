#ifndef F_F_OP_KANKYO_MNG_H_
#define F_F_OP_KANKYO_MNG_H_

#include "SSystem/SComponent/c_xyz.h"
#include "dolphin/types.h"

typedef int (*fopKyMCreateFunc)(void*);

void* fopKyM_CreateAppend(void);
f32* createAppend(int param_1, cXyz* param_2, cXyz* param_3);
void fopKyM_Delete(void* param_1);
void fopKyM_Create(s16 param_1, fopKyMCreateFunc param_2, void* param_3);
void fopKyM_fastCreate(s16 param_0, int param_1, cXyz* param_2, cXyz* param_3, fopKyMCreateFunc);

#endif