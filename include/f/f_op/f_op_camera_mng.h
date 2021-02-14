#ifndef F_F_OP_CAMERA_MNG_H_
#define F_F_OP_CAMERA_MNG_H_

#include "dolphin/types.h"

class camera_class {
public:
    /* 0x00 */ u8 field_0x00[0xb0];
    /* 0xB0 */ u32 parameter;
};

void fopCamM_Management(void);
u32 fopCamM_GetParam(camera_class* pCamera);
void fopCamM_Init(void);

#endif