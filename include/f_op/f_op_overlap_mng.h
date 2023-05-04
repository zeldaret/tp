#ifndef F_F_OP_OVERLAP_MNG_H_
#define F_F_OP_OVERLAP_MNG_H_

#include "f_pc/f_pc_leaf.h"

struct request_base_class;

class overlap_task_class : public leafdraw_class {
public:
    /* 0xC0 */ leafdraw_method_class* field_0xc0;
    /* 0xC4 */ u8 field_0xc4;  // used as both u8 and request_base_class* ??
    /* 0xC8 */ int field_0xc8;

};  // Size: 0xD8?

struct overlap_process_profile_definition {
    /* 0x00 */ leaf_process_profile_definition base;
    /* 0x24 */ leafdraw_method_class* mSubMtd;
};  // Size: 0x28

int fopOvlpM_SceneIsStop();
int fopOvlpM_SceneIsStart();
void fopOvlpM_Management();
int fopOvlpM_IsOutReq(overlap_task_class* i_this);
void fopOvlpM_Done(overlap_task_class* i_this);
void fopOvlpM_ToldAboutID(unsigned int param_1);
int fopOvlpM_IsPeek();
int fopOvlpM_IsDone();
int fopOvlpM_IsDoingReq();
int fopOvlpM_ClearOfReq();
request_base_class* fopOvlpM_Request(s16 param_1, u16 param_2);
int fopOvlpM_Cancel();
void fopOvlpM_Init();

#endif