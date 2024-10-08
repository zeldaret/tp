#ifndef D_A_OBJ_BRG_H
#define D_A_OBJ_BRG_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_w_sv.h"
#include "d/d_cc_d.h"

struct br_s {
    /* 0x000 */ J3DModel* mpBridgeModel;
    /* 0x004 */ J3DModel* mpKnotModels[2];
    /* 0x00C */ JPABaseEmitter* field_0xc;
    /* 0x010 */ JPABaseEmitter* field_0x10;
    /* 0x014 */ mDoExt_3DlineMat1_c field_0x014;
    /* 0x050 */ cXyz field_0x050[3];
    /* 0x074 */ cXyz field_0x074[3];
    /* 0x098 */ cXyz field_0x098[2];
    /* 0x0B0 */ cXyz field_0x0b0;
    /* 0x0BC */ cXyz field_0x0bc;
    /* 0x0C8 */ cXyz field_0x0c8;
    /* 0x0D4 */ csXyz field_0x0d4;
    /* 0x0DC */ f32 field_0x0dc;
    /* 0x0E0 */ f32 field_0x0e0;
    /* 0x0E4 */ f32 field_0x0e4;
    /* 0x0E8 */ f32 field_0x0e8;
    /* 0x0EC */ f32 field_0x0ec;
    /* 0x0F0 */ s16 field_0x0f0;
    /* 0x0F2 */ s16 field_0x0f2;
    /* 0x0F4 */ s16 field_0x0f4;
    /* 0x0F6 */ s16 field_0x0f6;
    /* 0x0F8 */ s16 field_0x0f8;
    /* 0x0FA */ s16 field_0x0fa;
    /* 0x0FC */ s16 field_0x0fc;
    /* 0x0FE */ s16 field_0x0fe[2];
    /* 0x104 */ dCcD_Cyl mCyl[2];
    /* 0x37C */ dKy_tevstr_c mTevstr;
    /* 0x704 */ s8 field_0x704;
    /* 0x705 */ s8 field_0x705;
    /* 0x706 */ u8 field_0x706;
    /* 0x707 */ u8 field_0x707;
    /* 0x708 */ u8 field_0x708;
};

/**
 * @ingroup actors-objects
 * @class obj_brg_class
 * @brief Bridge
 *
 * @details
 *
 */
class obj_brg_class : public fopAc_ac_c {
public:
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ br_s mBr[24];
    /* 0xAE90 */ mDoExt_3DlineMat1_c field_0xae90;
    /* 0xAECC */ dBgWSv* mpBgW;
    /* 0xAED0 */ int field_0xaed0;
    /* 0xAED4 */ int field_0xaed4;
    /* 0xAED8 */ int field_0xaed8;
    /* 0xAEDC */ f32 field_0xaedc;
    /* 0xAEE0 */ f32 field_0xaee0;
    /* 0xAEE4 */ f32 field_0xaee4;
    /* 0xAEE8 */ f32 field_0xaee8;
    /* 0xAEEC */ f32 field_0xaeec;
    /* 0xAEF0 */ f32 field_0xaef0;
    /* 0xAEF4 */ f32 field_0xaef4;
    /* 0xAEF8 */ cXyz mEndPos;
    /* 0xAF04 */ cXyz field_0xaf04;
    /* 0xAF10 */ cXyz field_0xaf10;
    /* 0xAF1C */ s16 field_0xaf1c;
    /* 0xAF1E */ s16 field_0xaf1e;
    /* 0xAF20 */ s16 field_0xaf20;
    /* 0xAF22 */ s16 field_0xaf22;
    /* 0xAF24 */ s16 field_0xaf24;
    /* 0xAF26 */ s16 field_0xaf26;
    /* 0xAF28 */ s16 field_0xaf28;
    /* 0xAF2A */ u8 field_0xAF2A[0xAF2C - 0xAF2A];
    /* 0xAF2C */ s16 field_0xaf2c;
    /* 0xAF2E */ s16 field_0xaf2e;
    /* 0xAF30 */ f32 field_0xaf30;
    /* 0xAF34 */ dCcD_Cyl mCyl[2];
    /* 0xB1AC */ dCcD_Stts mCcStts;
    /* 0xB1E8 */ u8 mType;
    /* 0xB1E9 */ u8 field_0xb1e9;
    /* 0xB1EA */ s8 field_0xb1ea;
    /* 0xB1EB */ s8 field_0xb1eb;
    /* 0xB1EC */ s8 field_0xb1ec;
    /* 0xB1ED */ s8 field_0xb1ed;
    /* 0xB1EE */ u8 field_0xB1EE[0xB1EF - 0xB1EE];
    /* 0xB1EF */ s8 field_0xb1ef;
    /* 0xB1F0 */ s8 field_0xb1f0;
    /* 0xB1F1 */ u8 field_0xb1f1;
    /* 0xB1F2 */ u8 field_0xb1f2[0xb1f8 - 0xB1F2];
};

STATIC_ASSERT(sizeof(obj_brg_class) == 0xb1f8);


#endif /* D_A_OBJ_BRG_H */
