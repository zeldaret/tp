#ifndef D_A_PPOLAMP_H
#define D_A_PPOLAMP_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daPPolamp_c : public fopAc_ac_c {
public:
    /* 80D4C958 */ ~daPPolamp_c();
    /* 80D4C9FC */ void create();
    /* 80D4CB24 */ void execute();
    /* 80D4CB84 */ void draw();
    /* 80D4CCF0 */ void Delete();
    /* 80D4CD24 */ void setModelMtx();
    /* 80D4CDA8 */ void setPclModelMtx();
    /* 80D4CE9C */ void createHeap();
    /* 80D4CFB0 */ void moveSwing();
    /* 80D4D10C */ void initParam();

private:
    /* 0x568 */ u8 field_0x568[0x5ac - 0x568];
};

STATIC_ASSERT(sizeof(daPPolamp_c) == 0x5ac);


#endif /* D_A_PPOLAMP_H */
