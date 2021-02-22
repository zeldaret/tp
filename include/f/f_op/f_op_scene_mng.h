#ifndef F_F_OP_SCENE_MNG_H_
#define F_F_OP_SCENE_MNG_H_

#include "f/f_op/f_op_scene_pause.h"

void* fopScnM_SearchByID(unsigned int id);
int fopScnM_ChangeReq(scene_class*, s16, s16, u16);
unsigned int fopScnM_DeleteReq(scene_class*);
void fopScnM_CreateReq(s16, s16, u16, u32);
u32 fopScnM_ReRequest(s16, u32);
void fopScnM_Management(void);
void fopScnM_Init(void);

#endif