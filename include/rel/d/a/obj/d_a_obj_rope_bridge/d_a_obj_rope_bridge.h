#ifndef D_A_OBJ_ROPE_BRIDGE_H
#define D_A_OBJ_ROPE_BRIDGE_H

#include "f_op/f_op_actor_mng.h"

class daObjRBridge_c : public fopAc_ac_c {
public:
    /* 80595E38 */ void initBaseMtx();
    /* 80595ED8 */ void setBaseMtx();
    /* 80595F84 */ void checkE3Special();
    /* 80595FE0 */ void setStPos();
    /* 8059616C */ void initLinePos();
    /* 805963C4 */ void setLinePos();
    /* 80596768 */ void getLinePosSt(cXyz*);
    /* 805967E4 */ void getLinePosBrg(int, cXyz*);
    /* 8059689C */ void checkTight();
    /* 805969FC */ void Create();
    /* 80596B88 */ void CreateHeap();
    /* 80596DEC */ void create1st();
    /* 80596EBC */ void Execute(f32 (**)[3][4]);
    /* 80596FA8 */ void action();
    /* 8059715C */ void init_wait();
    /* 80597170 */ void mode_wait();
    /* 805973BC */ void init_cut();
    /* 805973E4 */ void mode_cut();
    /* 805975E8 */ void init_end();
    /* 805975F4 */ void mode_end();
    /* 805975F8 */ void Draw();
    /* 805977D0 */ void checkHimoCulling();
    /* 805978BC */ void Delete();

private:
    /* 0x568 */ u8 field_0x568[0xb6c - 0x568];
};
STATIC_ASSERT(sizeof(daObjRBridge_c) == 0xb6c);


#endif /* D_A_OBJ_ROPE_BRIDGE_H */
