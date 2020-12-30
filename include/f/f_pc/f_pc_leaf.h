
#ifndef F_PC_LEAF_H
#define F_PC_LEAF_H

#include "f/f_pc/f_pc_base.h"
#include "f/f_pc/f_pc_draw_priority.h"
#include "f/f_pc/f_pc_method.h"
#include "global.h"

typedef struct leafdraw_method_class {
    process_method_class mBase;
    process_method_func mpDrawFunc;
} leafdraw_method_class;

typedef struct leafdraw_class {
    base_process_class mBase;
    leafdraw_method_class* mpDrawMtd;
    s8 mbUnk0;
    u8 mbUnk1;
    draw_priority_class mDwPi;
} leafdraw_class;

typedef struct leaf_process_profile_definition {
    process_profile_definition mBase;
    leafdraw_method_class* mLfDrwMth;
    s16 unk20;
    u8 unk22[2];
    s32 unk24;
} leaf_process_profile_definition;

extern "C" {

s32 fpcLf_GetPriority(leafdraw_class* pLeaf);
s32 fpcLf_DrawMethod(leafdraw_method_class* pMthd, void* pUserData);
s32 fpcLf_Draw(leafdraw_class* pMthd);
s32 fpcLf_Execute(leafdraw_class* pLeaf);
s32 fpcLf_IsDelete(leafdraw_class* pLeaf);
s32 fpcLf_Delete(leafdraw_class* pLeaf);
s32 fpcLf_Create(leafdraw_class* pLeaf);

};

#endif
