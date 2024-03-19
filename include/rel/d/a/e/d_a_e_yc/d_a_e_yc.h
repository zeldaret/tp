#ifndef D_A_E_YC_H
#define D_A_E_YC_H

#include "f_op/f_op_actor_mng.h"

class e_yc_class : public fopEn_enemy_c {
public:
    MtxP getLegR3Mtx() { return field_0x5B8->getModel()->getAnmMtx(28); }

    /* 0x5AC */ u8 field_0x5ac[0x5B8 - 0x5AC];
    /* 0x5B8 */ mDoExt_McaMorfSO* field_0x5B8;
    /* 0x5BC */ Z2CreatureEnemy mEnemy;
    /* 0x660 */ int mAnm;
    /* 0x664 */ int field_0x664;
    /* 0x668 */ u8 field_0x668[6];
    /* 0x66E */ s16 mCurrentAction;
    /* 0x670 */ s16 field_0x670;
    /* 0x672 */ u8 field_0x672[2];
    /* 0x674 */ f32 field_0x674;
    /* 0x678 */ f32 field_0x678;
    /* 0x67C */ f32 field_0x67C;
    /* 0x680 */ s16 field_0x680;
    /* 0x682 */ u8 field_0x682[2];
    /* 0x684 */ f32 field_0x684;
    /* 0x688 */ u32 field_0x688;
    /* 0x68C */ u8 field_0x68C[4];
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ u8 field_0x694[28];
    /* 0x69C */ f32 field_0x69C;
    /* 0x6A0 */ s16 field_0x6A0;
    /* 0x6A2 */ s16 field_0x6A2;
    /* 0x6A4 */ s16 field_0x6A4;
    /* 0x6A6 */ s16 field_0x6A6;
    /* 0x6A8 */ s16 field_0x6A8;
    /* 0x6AA */ s16 field_0x6AA;
    /* 0x6AC */ void* field_0x6AC;
    /* 0x6B0 */ u8 field_0x6B0[72];    
    /* 0x6F4 */ dBgS_Acch mBgS_Acch;
    /* 0x8CC */ u8 field_0x8CC[28];
    /* 0x8E8 */ dCcD_GStts mCcD_GStts;
    /* 0x908 */ dCcD_GObjInf mCcD_GObjInf;
    /* 0xA0C */ u8 field_0xA0C[364];
    /* 0xB78 */ cCcD_Obj* mpTgHitObj;
};

#endif /* D_A_E_YC_H */
