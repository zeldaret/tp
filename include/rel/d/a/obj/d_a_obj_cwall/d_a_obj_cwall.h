#ifndef D_A_OBJ_CWALL_H
#define D_A_OBJ_CWALL_H

#include "f_op/f_op_actor_mng.h"

class daObjCwall_c : public fopAc_ac_c {
public:
    struct chain_s {
    public:
        /* 80BD6E94 */ ~chain_s();
        /* 80BD6ED0 */ chain_s();
    };


    /* 80BD6A4C */ void initBaseMtx();
    /* 80BD6A88 */ void setBaseMtx();
    /* 80BD6AEC */ void Create();
    /* 80BD6D08 */ void CreateHeap();
    /* 80BD6ED4 */ void create1st();
    /* 80BD6F80 */ void Execute(f32 (**)[3][4]);
    /* 80BD7288 */ void setTension();
    /* 80BD7718 */ void calcSePos();
    /* 80BD7788 */ void getChainBasePos(cXyz*);
    /* 80BD7804 */ void setChainMtx();
    /* 80BD7AD4 */ void chain_control();
    /* 80BD7ED8 */ void chain_control2();
    /* 80BD84C0 */ void block_mode_proc_call();
    /* 80BD8594 */ void initWait();
    /* 80BD85C0 */ void modeWait();
    /* 80BD8748 */ void initWalk();
    /* 80BD8778 */ void modeWalk();
    /* 80BD8BC8 */ void initClose();
    /* 80BD8BF0 */ void modeClose();
    /* 80BD935C */ void setPower(f32, s16*);
    /* 80BD9414 */ void checkWall();
    /* 80BD95A0 */ void checkPullNow();
    /* 80BD977C */ void checkPull();
    /* 80BD9848 */ void Draw();
    /* 80BD9948 */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xf5c - 0x568];
};
STATIC_ASSERT(sizeof(daObjCwall_c) == 0xf5c);


#endif /* D_A_OBJ_CWALL_H */
