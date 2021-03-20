#ifndef F_F_OP_SCENE_PAUSE_H_
#define F_F_OP_SCENE_PAUSE_H_

#include "dolphin/types.h"

class scene_class {
public:
    /* 0x00 */ u8 field_0x00;
    /* 0x04 */ u32 field_0x04;
    /* 0x08 */ u8 field_0x08[0x24];
    /* 0x2C */ int* field_0x2C;
};

int fopScnPause_Enable(scene_class* pScene);
int fopScnPause_Disable(scene_class* pScene);

#endif