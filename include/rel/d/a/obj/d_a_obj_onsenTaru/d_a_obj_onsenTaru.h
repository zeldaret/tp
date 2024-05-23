#ifndef D_A_OBJ_ONSENTARU_H
#define D_A_OBJ_ONSENTARU_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daOnsTaru_c : public fopAc_ac_c {
public:
    /* 80CA86C0 */ void setBaseMtx();
    /* 80CA8748 */ void CreateHeap();
    /* 80CA87B4 */ void create();
    /* 80CA8C20 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80CA8C4C */ void chkSinkAll();
    /* 80CA8C70 */ void chkWaterLineIn();
    /* 80CA8C94 */ void bgCheck();
    /* 80CA8F38 */ void Execute();
    /* 80CA9184 */ void mode_proc_call();
    /* 80CA929C */ void mode_init_wait();
    /* 80CA92CC */ void mode_proc_wait();
    /* 80CA92F0 */ void mode_init_carry();
    /* 80CA9320 */ void mode_proc_carry();
    /* 80CA93C0 */ void mode_init_drop();
    /* 80CA9400 */ void mode_proc_drop();
    /* 80CA9424 */ void mode_init_break();
    /* 80CA9514 */ void mode_proc_break();
    /* 80CA9518 */ void mode_init_sink();
    /* 80CA9530 */ void mode_proc_sink();
    /* 80CA9620 */ void breakEffSet();
    /* 80CA98B8 */ void Draw();
    /* 80CA995C */ void Delete();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];

private:
    /* 0x568 */ u8 field_0x568[0x948 - 0x568];
};
STATIC_ASSERT(sizeof(daOnsTaru_c) == 0x948);

class daOnsTaru_HIO_c {
public:
    /* 80CA85CC */ daOnsTaru_HIO_c();
    /* 80CA9A78 */ ~daOnsTaru_HIO_c();
};


#endif /* D_A_OBJ_ONSENTARU_H */
