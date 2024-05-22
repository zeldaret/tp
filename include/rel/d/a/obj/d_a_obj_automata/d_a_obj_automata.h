#ifndef D_A_OBJ_AUTOMATA_H
#define D_A_OBJ_AUTOMATA_H

#include "f_op/f_op_actor_mng.h"

class daObj_AutoMata_c : public fopAc_ac_c {
public:
    /* 80BA56EC */ ~daObj_AutoMata_c();
    /* 80BA5990 */ void create();
    /* 80BA5F88 */ void CreateHeap();
    /* 80BA60A0 */ void Delete();
    /* 80BA60D4 */ void Execute();
    /* 80BA639C */ void Draw();
    /* 80BA6480 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80BA64A0 */ void srchTHouse(fopAc_ac_c*, void*);
    /* 80BA6500 */ void setAnm(int, bool);
    /* 80BA6634 */ void setEnvTevColor();
    /* 80BA6690 */ void setRoomNo();
    /* 80BA66D4 */ void setMtx();
    /* 80BA674C */ void setSe();

private:
    /* 0x568 */ u8 field_0x568[0xb38 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_AutoMata_c) == 0xb38);

class daObj_AutoMata_Param_c {
public:
    /* 80BA6BA4 */ ~daObj_AutoMata_Param_c();

    static u8 const m[12];
};


#endif /* D_A_OBJ_AUTOMATA_H */
