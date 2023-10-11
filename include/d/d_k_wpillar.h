#ifndef D_D_K_WPILLAR_H
#define D_D_K_WPILLAR_H

#include "f_op/f_op_kankyo_mng.h"
#include "d/kankyo/d_kankyo.h"

class dkWpillar_c : public kankyo_class {
public:
    /* 80261B54 */ int create();
    /* 80261F24 */ ~dkWpillar_c();
    /* 80262014 */ int execute();
    /* 802620C8 */ int draw();

    /* 0x0F8 */ J3DModel* mpModel;
    /* 0x0FC */ mDoExt_bckAnm mBck;
    /* 0x118 */ mDoExt_btkAnm mBtk;
    /* 0x130 */ mDoExt_brkAnm mBrk;
    /* 0x148 */ JKRSolidHeap* mpHeap;
    /* 0x14C */ dKy_tevstr_c mTevstr;
};

#endif /* D_D_K_WPILLAR_H */
