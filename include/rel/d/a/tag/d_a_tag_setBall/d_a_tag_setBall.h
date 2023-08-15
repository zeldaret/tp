#ifndef D_A_TAG_SETBALL_H
#define D_A_TAG_SETBALL_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daTagSetBall_c : public fopAc_ac_c {
public:
    daTagSetBall_c() {}

    /* 80D601F8 */ void initBaseMtx();
    /* 80D60218 */ void setBaseMtx();
    /* 80D6021C */ int Create();
    /* 80D6024C */ int create();
    /* 80D602B4 */ int execute();
    /* 80D602BC */ int _delete();

    s32 getType() { return mType; }

private:
    u8 getType_private() { return fopAcM_GetParamBit(this, 8, 4); }

    /* 0x568 */ u8 mType;
};

static int daTagSetBall_Execute(daTagSetBall_c* tag);
static int daTagSetBall_Delete(daTagSetBall_c* tag);
static int daTagSetBall_Create(daTagSetBall_c* tag);

#endif /* D_A_TAG_SETBALL_H */
