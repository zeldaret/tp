#ifndef D_A_WARP_BUG_H
#define D_A_WARP_BUG_H

#include "f_op/f_op_actor_mng.h"

class daWarpBug_c : public fopAc_ac_c {
public:
    inline ~daWarpBug_c();

    /* 80D67E38 */ void create_init();
    /* 80D68068 */ int draw();

    inline int createHeap();
    inline int execute();
    inline int create();

    /* 0x568 */ J3DModel* mpModel;
    /* 0x56C */ mDoExt_brkAnm* mpBrk;
    /* 0x570 */ mDoExt_btkAnm* mpBtk;
    /* 0x574 */ request_of_phase_process_class mPhase;
    /* 0x57C */ s16 field_0x57c;
    /* 0x57E */ u8 field_0x57e;
};

#endif /* D_A_WARP_BUG_H */
