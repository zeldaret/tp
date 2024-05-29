#ifndef D_A_OBJ_BK_LEAF_H
#define D_A_OBJ_BK_LEAF_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daBkLeaf_c
 * @brief Baba Stem Leaf
 *
 * @details
 *
 */
class daBkLeaf_c : public fopAc_ac_c {
public:
    /* 80BB60F8 */ void setBokkuri();
    /* 80BB618C */ void initBaseMtx();
    /* 80BB61C8 */ void setBaseMtx();
    /* 80BB621C */ int Create();
    /* 80BB629C */ int CreateHeap();
    /* 80BB63F4 */ int create();
    /* 80BB64A8 */ int execute();
    /* 80BB65C4 */ int draw();
    /* 80BB6654 */ int _delete();

    u8 getItem() { return fopAcM_GetParamBit(this, 0, 8); };
    u8 getItemBit() { return fopAcM_GetParamBit(this, 8, 8); };
    u8 checkSetDeku() { return fopAcM_GetParamBit(this, 31, 1); }

    /* 0x568 */ request_of_phase_process_class mPhase;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ mDoExt_bckAnm* mpBckAnm;
    /* 0x578 */ s32 field_0x578;
    /* 0x57C */ u8 field_0x57C;
    /* 0x57D */ u8 field_0x57D;
    /* 0x57E */ s16 field_0x57E;
};
STATIC_ASSERT(sizeof(daBkLeaf_c) == 0x580);

#endif /* D_A_OBJ_BK_LEAF_H */
