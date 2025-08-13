#ifndef D_A_E_DB_H
#define D_A_E_DB_H

#include "f_op/f_op_actor_mng.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"

/**
 * @ingroup actors-enemies
 * @class e_db_class
 * @brief Deku Baba
 * 
 * @details 
 * 
 */
class e_db_class {
public:
    /* 0x0000 */ fopEn_enemy_c enemy;
    /* 0x05AC */ request_of_phase_process_class field_0x5ac;
    /* 0x05B4 */ u8 field_0x5b4;
    /* 0x05B5 */ u8 field_0x5b5;
    /* 0x05B6 */ u8 field_0x5b6;
    /* 0x05B7 */ u8 field_0x5b7;
    /* 0x05B8 */ mDoExt_McaMorfSO* field_0x5b8;
    /* 0x05BC */ Z2CreatureEnemy sound;
    /* 0x0660 */ int field_0x660;
    /* 0x0664 */ u32 field_0x664;
    /* 0x0668 */ s16 field_0x668;
    /* 0x066A */ s16 field_0x66a;
    /* 0x066C */ s16 field_0x66c;
    /* 0x0670 */ f32 field_0x670;
    /* 0x0674 */ cXyz field_0x674;
    /* 0x0680 */ s16 field_0x680;
    /* 0x0682 */ u8 field_0x682[0x0684 - 0x0682];
    /* 0x0684 */ s16 field_0x684;
    /* 0x0688 */ f32 field_0x688;
    /* 0x068C */ f32 field_0x68c;
    /* 0x0690 */ f32 field_0x690;
    /* 0x0694 */ s16 field_0x694[3];
    /* 0x069A */ s16 field_0x69a;
    /* 0x069C */ cXyz field_0x69c[12];
    /* 0x072C */ csXyz field_0x72c[12];
    /* 0x0774 */ J3DModel* field_0x774[11];
    /* 0x07A0 */ u8 field_0x7A0[0x07D4 - 0x07A0];
    /* 0x07D4 */ f32 field_0x7d4[11];
    /* 0x0800 */ u8 field_0x800[0x0804 - 0x0800];
    /* 0x0804 */ mDoExt_3DlineMat1_c field_0x804;
    /* 0x0840 */ f32 field_0x840;
    /* 0x0844 */ f32 field_0x844;
    /* 0x0848 */ f32 field_0x848;
    /* 0x084C */ u8 field_0x84C[0x084E - 0x084C];
    /* 0x084E */ s16 field_0x84e;
    /* 0x0850 */ u8 field_0x850;
    /* 0x0851 */ u8 field_0x851;
    /* 0x0852 */ s8 field_0x852;
    /* 0x0854 */ f32 field_0x854;
    /* 0x0858 */ f32 field_0x858;
    /* 0x085C */ s16 field_0x85c;
    /* 0x085E */ u8 field_0x85E[0x0860 - 0x085E];
    /* 0x0860 */ s16 field_0x860;
    /* 0x0864 */ f32 field_0x864;
    /* 0x0868 */ dCcD_Stts field_0x868;
    /* 0x08A4 */ dCcD_Sph field_0x8a4;
    /* 0x09DC */ dCcD_Sph field_0x9dc;
    /* 0x0B14 */ u8 field_0xb14;
    /* 0x0B18 */ dCcD_Sph field_0xb18[4];
    /* 0x0FF8 */ dCcU_AtInfo field_0xff8;
    /* 0x101C */ dBgS_AcchCir field_0x101c;
    /* 0x105C */ dBgS_ObjAcch field_0x105c;
    /* 0x1234 */ fpc_ProcID field_0x1234;
    /* 0x1238 */ u8 field_0x1238;
    /* 0x1239 */ u8 field_0x1239;
    /* 0x123A */ u8 field_0x123A[0x126C - 0x123A];
    /* 0x126C */ u8 field_0x126c;
};

STATIC_ASSERT(sizeof(e_db_class) == 0x1270);

class daE_DB_HIO_c {
    /* 8069AAEC */ daE_DB_HIO_c();
    /* 806A13D8 */ ~daE_DB_HIO_c();
};


#endif /* D_A_E_DB_H */
