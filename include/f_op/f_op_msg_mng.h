#ifndef F_F_OP_MSG_MNG_H_
#define F_F_OP_MSG_MNG_H_

#include "SSystem/SComponent/c_xyz.h"
#include "f_pc/f_pc_leaf.h"

class JKRExpHeap;
class JKRHeap;
class fopAc_ac_c;
class msg_class;

struct msg_process_profile_definition {
    /* 0x00 */ leaf_process_profile_definition mBase;
    /* 0x24 */ leafdraw_method_class* mSubMtd;  // Subclass methods
};

struct fopMsg_prm_class {
    /* 0x00 */ fopAc_ac_c* mpActor;
    /* 0x04 */ cXyz mPos;
    /* 0x10 */ u32 mMsgID;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ int field_0x18;
};  // Size: 0x1C

struct fopMsg_prm_timer {
    /* 0x00 */ int field_0x0;
    /* 0x04 */ cXyz field_0x4;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ u32 field_0x18;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ u8 field_0x24;
    /* 0x25 */ u8 field_0x25;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};  // Size: 0x38

typedef int (*fopMsgCreateFunc)(void*);

JKRExpHeap* fopMsgM_createExpHeap(u32, JKRHeap*);
u32 fopMsgM_Create(s16, fopMsgCreateFunc, void*);
s32 fopMsgM_create(s16 param_0, fopAc_ac_c* param_1, cXyz* param_2, u32* param_3, u32* param_4,
                   fopMsgCreateFunc createFunc);
void fopMsgM_Delete(void* process);
fopMsg_prm_class* fopMsgM_GetAppend(void* msg);
void fopMsgM_setMessageID(unsigned int);
void fopMsgM_destroyExpHeap(JKRExpHeap*);
f32 fopMsgM_valueIncrease(int param_0, int param_1, u8 param_2);
s32 fopMsgM_setStageLayer(void*);
int fopMsgM_messageSet(u32 i_msgIdx, fopAc_ac_c* i_actorP, u32 param_2);
int fopMsgM_messageSet(u32 param_0, u32 param_1);
int fopMsgM_messageSetDemo(u32 param_0);
msg_class* fopMsgM_SearchByID(unsigned int param_0);
char* fopMsgM_messageGet(char* msg, u32 string_id);
s32 fop_Timer_create(s16 param_0, u8 param_1, u32 param_2, u8 param_3, u8 param_4, f32 param_5,
                     f32 param_6, f32 param_7, f32 param_8, fopMsgCreateFunc createFunc);
inline s32 fopMsgM_Timer_create(s16 param_0, u8 param_1, u32 param_2, u8 param_3, u8 param_4,
                                f32 param_5, f32 param_6, f32 param_7, f32 param_8,
                                fopMsgCreateFunc createFunc) {
    return fop_Timer_create(param_0, param_1, param_2, param_3, param_4, param_5, param_6, param_7,
                            param_8, createFunc);
}

#endif
