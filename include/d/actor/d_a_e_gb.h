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
    e_gb_class();

    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ u8 arg0;
    /* 0x5B5 */ u8 arg1;
    /* 0x5B6 */ u8 arg2;
    /* 0x5B7 */ u8 arg3;
    /* 0x5B8 */ mDoExt_McaMorf* anmP;
    /* 0x5BC */ mDoExt_McaMorf* flowerAnmP;
    /* 0x5C0 */ mDoExt_brkAnm* brkAnmP;
    /* 0x5C4 */ Z2CreatureEnemy sound;
    /* 0x668 */ s8 field_0x668;
    /* 0x66C */ J3DModel* keyModelP;
    /* 0x670 */ s8 field_0x670;
    /* 0x674 */ cXyz keyPos;
    /* 0x680 */ f32 field_0x680;
    /* 0x684 */ s16 keyYRot;
    /* 0x686 */ s16 keyXRot;
    /* 0x688 */ int headAnmNo;
    /* 0x68C */ int bodyAnmNo;
    /* 0x690 */ u8 field_0x690[0x694 - 0x690];
    /* 0x694 */ u32 shadowKey;
    /* 0x698 */ s16 frameCounter;
    /* 0x69A */ s16 headAction;
    /* 0x69C */ s16 mode;
    /* 0x69E */ s16 flowerAction;
    /* 0x6A0 */ s16 flowerMode;
    /* 0x6A2 */ u8 field_0x6a2[0x6a8 - 0x6a2];
    /* 0x6A8 */ cXyz currentPosTarget;
    /* 0x6B4 */ u8 field_0x6b4[0x6b8 - 0x6b4];
    /* 0x6B8 */ s16 angleYTarget;
    /* 0x6BA */ s16 angleXTarget;
    /* 0x6BC */ f32 distToPlayer;
    /* 0x6C0 */ f32 currentPosTargetStep;
    /* 0x6C4 */ s16 timer[5];
    /* 0x6CE */ s16 invulnerabilityTimer;
    /* 0x6D0 */ s16 flowerInvulnerabilityTimer;
    /* 0x6D4 */ cXyz field_0x6d4;
    /* 0x6E0 */ s8 field_0x6e0;
    /* 0x6E4 */ cXyz field_0x6e4[18];
    /* 0x7BC */ csXyz field_0x7bc[18];
    /* 0x828 */ J3DModel* stemModelP[18];
    /* 0x870 */ u8 field_0x870[0x8b8 - 0x870];
    /* 0x8B8 */ f32 stemModelSize[18];
    /* 0x900 */ s16 field_0x900[18];
    /* 0x924 */ s16 field_0x924;
    /* 0x928 */ f32 field_0x928;
    /* 0x92C */ s16 field_0x92c[3];
    /* 0x932 */ s8 field_0x932[3];
    /* 0x935 */ s8 field_0x935[3];
    /* 0x938 */ s8 field_0x938;
    /* 0x939 */ s8 stemModelIdx;
    /* 0x93C */ f32 field_0x93c;
    /* 0x940 */ f32 field_0x940;
    /* 0x944 */ f32 field_0x944;
    /* 0x948 */ s16 field_0x948;
    /* 0x94A */ s16 field_0x94a;
    /* 0x94C */ f32 field_0x94c;
    /* 0x950 */ s16 yRot;
    /* 0x952 */ s16 xRot;
    /* 0x954 */ u8 field_0x954;
    /* 0x955 */ s8 keyStatus;
    /* 0x956 */ u8 field_0x956[0x964 - 0x956];
    /* 0x964 */ f32 field_0x964;
    /* 0x968 */ s8 status;
    /* 0x96A */ csXyz field_0x96a;
    /* 0x970 */ dCcD_Stts stts;
    /* 0x9AC */ dCcD_Sph headSph;
    /* 0xAE4 */ dCcD_Cyl bodyCyl;
    /* 0xC20 */ s8 atSetBitFlag;
    /* 0xC24 */ dCcU_AtInfo atInfo;
    /* 0xC48 */ dBgS_AcchCir acchcir;
    /* 0xC88 */ dBgS_ObjAcch objAcch;
    /* 0xE60 */ u8 field_0xe60[0xe62 - 0xe60];
    /* 0xE62 */ u32 field_0xe62[2];
    /* 0xE6C */ u32 field_0xe6c;
    /* 0xE70 */ u32 field_0xe70;
    /* 0xE74 */ u32 field_0xe74;
    /* 0xE78 */ u32 field_0xe78;
    /* 0xE7C */ u32 field_0xe7c[5];
    /* 0xE90 */ s16 demoMode;
    /* 0xE92 */ s16 demoCounter;
    /* 0xE94 */ cXyz demoCamEye;
    /* 0xEA0 */ cXyz demoCamCenter;
    /* 0xEAC */ cXyz demoCamEyeTarget;
    /* 0xEB8 */ cXyz demoCamCenterTarget;
    /* 0xEC4 */ cXyz demoCamEyeTargetDist;
    /* 0xED0 */ cXyz demoCamCenterTargetDist;
    /* 0xEDC */ u8 field_0xedc[0xee4 - 0xedc];
    /* 0xEE4 */ f32 demoCamStepScale;
    /* 0xEE8 */ f32 demoCamFovy;
    /* 0xEEC */ u8 field_0xeec[0xef5 - 0xeec];
    /* 0xEF5 */ u8 hioInit;
};

STATIC_ASSERT(sizeof(e_gb_class) == 0xef8);


#endif /* D_A_E_GB_H */
