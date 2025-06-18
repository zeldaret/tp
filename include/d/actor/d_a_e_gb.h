#ifndef D_A_E_GB_H
#define D_A_E_GB_H
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_gb_class
 * @brief Giant Baba
 * 
 * @details 
 * 
 */
class e_gb_class {
public:
    /* 806C6B94 */ e_gb_class();

    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ mDoExt_McaMorf* mpModelMorf1;
    /* 0x5BC */ mDoExt_McaMorf* mpModelMorf2;
    /* 0x5C0 */ mDoExt_brkAnm* mBrkAnm;
    /* 0x5C4 */ Z2CreatureEnemy mSound;
    /* 0x668 */ s8 field_0x668;
    /* 0x66C */ J3DModel* field_0x66c;
    /* 0x670 */ s8 field_0x670;
    /* 0x674 */ cXyz field_0x674;
    /* 0x680 */ f32 field_0x680;
    /* 0x684 */ s16 field_0x684;
    /* 0x686 */ s16 field_0x686;
    /* 0x688 */ int field_0x688;
    /* 0x68C */ int field_0x68c;
    /* 0x690 */ u8 field_0x690[0x694 - 0x690];
    /* 0x694 */ u32 mShadowKey;
    /* 0x698 */ s16 field_0x698;
    /* 0x69A */ s16 field_0x69a;
    /* 0x69C */ s16 field_0x69c;
    /* 0x69E */ s16 field_0x69e;
    /* 0x6A0 */ s16 field_0x6a0;
    /* 0x6A2 */ u8 field_0x6a2[0x6a8 - 0x6a2];
    /* 0x6A8 */ cXyz field_0x6a8;
    /* 0x6B4 */ u8 field_0x6b4[0x6b8 - 0x6b4];
    /* 0x6B8 */ s16 field_0x6b8;
    /* 0x6BA */ s16 field_0x6ba;
    /* 0x6BC */ f32 field_0x6bc;
    /* 0x6C0 */ f32 field_0x6c0;
    /* 0x6C4 */ s16 field_0x6c4[5];
    /* 0x6CE */ s16 field_0x6ce;
    /* 0x6D0 */ s16 field_0x6d0;
    /* 0x6D4 */ cXyz field_0x6d4;
    /* 0x6E0 */ s8 field_0x6e0;
    /* 0x6E4 */ cXyz field_0x6e4[18];
    /* 0x7BC */ csXyz field_0x7bc[18];
    /* 0x828 */ J3DModel* field_0x828[18];
    /* 0x870 */ u8 field_0x870[0x8b8 - 0x870];
    /* 0x8B8 */ f32 field_0x8b8[18];
    /* 0x900 */ s16 field_0x900[18];
    /* 0x924 */ s16 field_0x924;
    /* 0x928 */ f32 field_0x928;
    /* 0x92C */ s16 field_0x92c[3];
    /* 0x932 */ s8 field_0x932[3];
    /* 0x935 */ s8 field_0x935[3];
    /* 0x938 */ s8 field_0x938;
    /* 0x939 */ s8 field_0x939;
    /* 0x93C */ f32 field_0x93c;
    /* 0x940 */ f32 field_0x940;
    /* 0x944 */ f32 field_0x944;
    /* 0x948 */ s16 field_0x948;
    /* 0x94A */ s16 field_0x94a;
    /* 0x94C */ f32 field_0x94c;
    /* 0x950 */ s16 field_0x950;
    /* 0x952 */ s16 field_0x952;
    /* 0x954 */ u8 field_0x954;
    /* 0x955 */ s8 field_0x955;
    /* 0x956 */ u8 field_0x956[0x964 - 0x956];
    /* 0x964 */ f32 field_0x964;
    /* 0x968 */ s8 field_0x968;
    /* 0x969 */ u8 field_0x969[0x970 - 0x969];
    /* 0x970 */ dCcD_Stts mStts;
    /* 0x9AC */ dCcD_Sph mHeadSph;
    /* 0xAE4 */ dCcD_Cyl mBodyCyl;
    /* 0xC20 */ s8 field_0xc20;
    /* 0xC24 */ dCcU_AtInfo mAtInfo;
    /* 0xC48 */ dBgS_AcchCir mAcchCir;
    /* 0xC88 */ dBgS_ObjAcch mObjAcch;
    /* 0xE60 */ u8 field_0xe60[2];
    /* 0xE62 */ u32 field_0xe62[2];
    /* 0xE6C */ u32 field_0xe6c;
    /* 0xE70 */ u32 field_0xe70;
    /* 0xE74 */ u32 field_0xe74;
    /* 0xE78 */ u32 field_0xe78;
    /* 0xE7C */ u32 field_0xe7c[5];
    /* 0xE90 */ s16 mDemoMode;
    /* 0xE92 */ s16 field_0xe92;
    /* 0xE94 */ cXyz mDemoCamEye;
    /* 0xEA0 */ cXyz mDemoCamCenter;
    /* 0xEAC */ cXyz field_0xeac;
    /* 0xEB8 */ cXyz field_0xeb8;
    /* 0xEC4 */ cXyz field_0xec4;
    /* 0xED0 */ cXyz field_0xed0;
    /* 0xEDC */ u8 field_0xedc[0xee4 - 0xedc];
    /* 0xEE4 */ f32 field_0xee4;
    /* 0xEE8 */ f32 mDemoCamFovy;
    /* 0xEEC */ u8 field_0xeec[0xef5 - 0xeec];
    /* 0xEF5 */ u8 field_0xef5;
};

STATIC_ASSERT(sizeof(e_gb_class) == 0xef8);

class daE_GB_HIO_c : public JORReflexible{
public:
    /* 806C1CEC */ daE_GB_HIO_c();
    /* 806C6F98 */ virtual ~daE_GB_HIO_c() {}

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ s16 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ s16 field_0x1c;
    /* 0x1E */ s16 field_0x1e;
};


#endif /* D_A_E_GB_H */
