#ifndef D_A_KYTAG05_H
#define D_A_KYTAG05_H

#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class kytag05_class : public fopAc_ac_c {
public:
    u8 getSceneListID() const { return mSceneListID; }

    /* 0x568 */ f32 field_0x568;
    /* 0x56C */ u8 field_0x56c;
    /* 0x56D */ u8 mSceneListID;
};  // Size: 0x570

#endif /* D_A_KYTAG05_H */
