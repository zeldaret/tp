#ifndef D_A_OBJ_STAIRBLOCK_H
#define D_A_OBJ_STAIRBLOCK_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daStairBlock_c : public fopAc_ac_c {
public:
    /* 80CE81F4 */ void setBaseMtx();
    /* 80CE82A0 */ void CreateHeap();
    /* 80CE83F0 */ void create();
    /* 80CE8874 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80CE88A0 */ void Execute();
    /* 80CE8B24 */ void Draw();
    /* 80CE8C08 */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDSph[64];

private:
    /* 0x568 */ u8 field_0x568[0x132c - 0x568];
};
STATIC_ASSERT(sizeof(daStairBlock_c) == 0x132c);

class daStairBlock_HIO_c {
public:
    /* 80CE816C */ daStairBlock_HIO_c();
    /* 80CE8CDC */ ~daStairBlock_HIO_c();
};


#endif /* D_A_OBJ_STAIRBLOCK_H */
