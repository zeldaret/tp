#ifndef D_A_OBJ_PILLAR_H
#define D_A_OBJ_PILLAR_H

#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-objects
 * @class daPillar_c
 * @brief Forest Temple Totem Pole
 *
 * @details
 *
 */
class daPillar_c : public fopAc_ac_c {
public:
    /* 80CAF4B4 */ void setBaseMtx();
    /* 80CAF5EC */ void Create();
    /* 80CAF7A8 */ void CreateHeap();
    /* 80CAF8A4 */ void create1st();
    /* 80CAFB44 */ void checkAttacked();
    /* 80CAFC08 */ void on_switch();
    /* 80CAFD64 */ void checkShake();
    /* 80CAFF60 */ void setShake_rcrash();
    /* 80CB01E0 */ void setShake_strong();
    /* 80CB022C */ void setShake_weak();
    /* 80CB0278 */ void switch_proc_call();
    /* 80CB031C */ void actionSwOnWait();
    /* 80CB0378 */ void actionSwOn();
    /* 80CB03CC */ void actionEnd();
    /* 80CB03D0 */ void Execute(f32 (**)[3][4]);
    /* 80CB0658 */ void Draw();
    /* 80CB0740 */ void Delete();

    u8 getMdlType() { return field_0x73e & 0xF; }
    bool checkRollAttack() { return field_0x732 == true; }
    void setShake(int i_shake) { field_0x738 = i_shake; }

private:
    /* 0x568 */ u8 field_0x568[0x732 - 0x568];
    /* 0x732 */ u8 field_0x732;
    /* 0x733 */ u8 field_0x733[0x738 - 0x733];
    /* 0x738 */ int field_0x738;
    /* 0x73C */ u8 field_0x73c[0x73E - 0x73C];
    /* 0x73E */ u16 field_0x73e;
    /* 0x740 */ u8 field_0x740[0x750 - 0x740];
};

STATIC_ASSERT(sizeof(daPillar_c) == 0x750);

class daPillar_HIO_c {
public:
    /* 80CAF32C */ daPillar_HIO_c();
    /* 80CB0928 */ ~daPillar_HIO_c();
};


#endif /* D_A_OBJ_PILLAR_H */
