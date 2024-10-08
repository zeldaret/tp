#ifndef D_A_OBJ_STICK_H
#define D_A_OBJ_STICK_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daObj_Stick_c
 * @brief Stick
 *
 * @details
 *
 */
class daObj_Stick_c : public fopAc_ac_c {
public:
    /* 8059922C */ ~daObj_Stick_c();
    /* 805993E8 */ void create();
    /* 80599888 */ void CreateHeap();
    /* 80599900 */ void Delete();
    /* 80599934 */ void Execute();
    /* 80599A78 */ void Draw();
    /* 80599B3C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80599B5C */ void getResName();
    /* 80599B6C */ void isDelete();
    /* 80599B8C */ void setEnvTevColor();
    /* 80599BE8 */ void setRoomNo();
    /* 80599C28 */ void setMtx();

    static u8 mCcDSph[64];

private:
    /* 0x568 */ u8 field_0x568[0x950 - 0x568];
};

STATIC_ASSERT(sizeof(daObj_Stick_c) == 0x950);

class daObj_Stick_Param_c {
public:
    /* 80599DD0 */ ~daObj_Stick_Param_c();

    static u8 const m[16];
};


#endif /* D_A_OBJ_STICK_H */
