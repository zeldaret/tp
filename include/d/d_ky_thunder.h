#ifndef D_D_KY_THUNDER_H
#define D_D_KY_THUNDER_H

#include "dolphin/types.h"
#include "JSystem/JKernel/JKRSolidHeap.h"
#include "m_Do/m_Do_ext.h"

class dThunder_c {
private:
    /* 0x00 */ u8 field_0x00[0xf8];
    /* 0xF8 */ JKRSolidHeap* mpHeap;
public:
    /* 801ADF58 */ int createHeap();
    /* 801ADFB4 */ void adjustHeap();
    /* 801AE458 */ int create();

    ~dThunder_c() {
        mDoExt_destroySolidHeap(mpHeap);
    }
    
};

inline int draw() {
    // finish
};

inline int execute() {
    // finish
};

inline int thunder_delete(dThunder_c* i_dthunderP) {
    if (i_dthunderP) {
        delete i_dthunderP;
    }
    return 1;
}

#endif /* D_D_KY_THUNDER_H */
