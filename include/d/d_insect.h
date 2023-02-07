#ifndef D_D_INSECT_H
#define D_D_INSECT_H

#include "f_op/f_op_actor.h"

class dInsect_c : public fopAc_ac_c {
public:
    /* 8015E010 */ dInsect_c();
    /* 8015E078 */ void Insect_GetDemoMain();
    /* 8015E26C */ void CalcZBuffer(f32);

    /* 80110648 */ virtual void Insect_Release() { field_0x56C = 1; }

private:
    /* 0x56C */ u8 field_0x56C;
    /* 0x56D */ u8 field_0x56D;
    /* 0x56E */ u8 field_0x56E[10];
    /* 0x578 */ u32 field_0x578;
    /* 0x57C */ f32 field_0x57C;
    /* 0x580 */ u8 m_itemNo;
    /* 0x581 */ u8 field_0x581;
    /* 0x582 */ s16 m_saveBitNo;
    /* 0x584 */ u8 field_0x584;
    /* 0x585 */ u8 field_0x585;
    /* 0x586 */ u8 field_0x586[2];
    /* 0x588 */ u32 m_itemId;
    /* 0x58C */ int m_mode;

};

#endif /* D_D_INSECT_H */
