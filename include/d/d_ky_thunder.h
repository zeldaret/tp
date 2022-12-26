#ifndef D_D_KY_THUNDER_H
#define D_D_KY_THUNDER_H

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRSolidHeap.h"

class dThunder_c {
private:
    /* 0x00 */ u8 field_0x00[0xf8];
    /* 0xF8 */ JKRSolidHeap* mpHeap;
public:
    /* 801ADF58 */ int createHeap();
    /* 801ADFB4 */ void adjustHeap();
    /* 801AE458 */ void create();
};

#endif /* D_D_KY_THUNDER_H */
