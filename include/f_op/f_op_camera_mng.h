#ifndef F_F_OP_CAMERA_MNG_H_
#define F_F_OP_CAMERA_MNG_H_

#include "dolphin/types.h"
#include "f_op/f_op_draw_tag.h"
#include "f_pc/f_pc_leaf.h"

class camera_class {
public:
    /* 0x000 */ u8 field_0x00[0xB0];
    /* 0x0B0 */ u32 parameter;
    /* 0x0B4 */ u8 field_0xB4[0x15C];
    /* 0x210 */ create_tag_class pCreateTag;
    /* 0x224 */ leafdraw_method_class* pMthd;
};

void fopCamM_Management(void);
u32 fopCamM_GetParam(camera_class* pCamera);
void fopCamM_Init(void);

#endif