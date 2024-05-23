#ifndef D_A_OBJ_NOUGU_H
#define D_A_OBJ_NOUGU_H

#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

class daObj_Nougu_c : public fopAc_ac_c {
public:
    /* 80CA3C0C */ ~daObj_Nougu_c();
    /* 80CA3E24 */ void create();
    /* 80CA4328 */ void CreateHeap();
    /* 80CA43A0 */ void Delete();
    /* 80CA43D4 */ void Execute();
    /* 80CA45F4 */ void Draw();
    /* 80CA46B8 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80CA46D8 */ void getResName();
    /* 80CA46E8 */ void isDelete();
    /* 80CA4708 */ void setEnvTevColor();
    /* 80CA4764 */ void setRoomNo();
    /* 80CA47A4 */ void setMtx();

    static u8 mCcDSph[64];

private:
    /* 0x568 */ u8 field_0x568[0xe30 - 0x568];
};
STATIC_ASSERT(sizeof(daObj_Nougu_c) == 0xe30);

class daObj_Nougu_Param_c {
public:
    /* 80CA494C */ ~daObj_Nougu_Param_c();

    static u8 const m[16];
};


#endif /* D_A_OBJ_NOUGU_H */
