#ifndef D_A_E_MK_H
#define D_A_E_MK_H
#include "d/actor/d_a_e_db.h"
#include "d/actor/d_a_obj_pillar.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_cc_uty.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class e_mk_class
 * @brief Ook
 * 
 * @details 
 * 
*/

class e_mk_class {
public:
    enum e_mk_ACTION {
        ACT_WAIT,
        ACT_MOVE,
        ACT_SHOOT,
        ACT_YORO,
        ACT_DROP = 9,
        ACT_DAMAGE,
        ACT_S_DEMO = 20,
        ACT_E_DEMO = 30,
        ACT_R04_DEMO = 35,
    };

    enum Demo_Mode {
        /* 0x0 */ DEMO_MODE_NONE,
        /* 0x1 */ DEMO_MODE_START,
        /* 0x2 */ DEMO_MODE_END,
        /* 0x3 */ DEMO_MODE_R04,
        /* 0x4 */ DEMO_MODE_BOHIT,
        /* 0xA */ DEMO_MODE_FINISH = 0xA,
    };

    /* 0x000 */ fopEn_enemy_c actor;
    /* 0x5AC */ request_of_phase_process_class phase;
    /* 0x5B4 */ s16 mode;
    /* 0x5B6 */ u8 arg0;
    /* 0x5B8 */ cXyz posTarget;
    /* 0x5C4 */ u8 field_0x5c4[0x5c8 - 0x5c4];
    /* 0x5C8 */ mDoExt_McaMorfSO* anmP;
    /* 0x5CC */ int anmNo;
    /* 0x5D0 */ mDoExt_btpAnm* btpP;
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D8 */ f32 btpFrame;
    /* 0x5DC */ mDoExt_McaMorf* crownAnmP;
    /* 0x5E0 */ s8 unkFlag1;
    /* 0x5E4 */ cXyz crownPos;
    /* 0x5F0 */ csXyz unkRotation;
    /* 0x5F6 */ csXyz field_0x5f6;
    /* 0x5FC */ f32 field_0x5fc; 
    /* 0x600 */ f32 field_0x600;
    /* 0x604 */ f32 field_0x604;
    /* 0x608 */ J3DModel* boomerangModelP;
    /* 0x60C */ s8 crownStatus;
    /* 0x60D */ s8 boomerangStatus;
    /* 0x60E */ s8 btpFrameFlag;
    /* 0x610 */ Z2CreatureEnemy sound;
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B6 */ s16 action;
    /* 0x6B8 */ f32 distToPl;
    /* 0x6BC */ s16 angleToPl;
    /* 0x6BE */ s8 unkFlag2;
    /* 0x6C0 */ cXyz prevPos;
    /* 0x6CC */ cXyz prevPosTarget;
    /* 0x6D8 */ f32 PosYTransOffset;
    /* 0x6DC */ cXyz posTargetStep;
    /* 0x6E8 */ daPillar_c* prevHasira;
    /* 0x6EC */ daPillar_c* hasira;
    /* 0x6F0 */ u32 shadowKey1;
    /* 0x6F4 */ u32 shadowKey2;
    /* 0x6F8 */ s8 unkFlag3;
    /* 0x6FA */ s16 unkCounter1;
    /* 0x6FC */ s16 timer[4];
    /* 0x704 */ s16 invulnerabilityTimer;
    /* 0x706 */ s8 tubaTimer;
    /* 0x707 */ s8 unkFlag4;
    /* 0x708 */ fpc_ProcID boomerangId;
    /* 0x70C */ e_db_class* db;
    /* 0x710 */ fpc_ProcID dbId1;
    /* 0x714 */ fpc_ProcID dbId2;
    /* 0x718 */ s8 unkFlag5;
    /* 0x719 */ s8 unkCounter2;
    /* 0x71A */ s8 unkTimer1;
    /* 0x71B */ s8 setSmokeFlag;
    /* 0x71C */ s8 unkCounter3;
    /* 0x71D */ s8 firstHasiraFlag;
    /* 0x71E */ s8 demoHasiraFlag;
    /* 0x720 */ dBgS_AcchCir acchcir;
    /* 0x760 */ dBgS_ObjAcch acch;
    /* 0x938 */ dCcU_AtInfo atInfo;
    /* 0x95C */ dCcD_Stts stts;
    /* 0x998 */ dCcD_Sph sph;
    /* 0xAD0 */ dCcD_Sph tgSph;
    /* 0xC08 */ u32 field_0xc08;
    /* 0xC0C */ u32 field_0xc0c;
    /* 0xC10 */ u32 field_0xc10;
    /* 0xC14 */ u32 field_0xc14;
    /* 0xC18 */ u32 boEno1Prtcls[2];
    /* 0xC20 */ u32 boEno0Prtcls[4];
    /* 0xC30 */ s16 demoMode;
    /* 0xC32 */ s16 demoSubMode;
    /* 0xC34 */ s16 demoCamCounter;
    /* 0xC38 */ cXyz camEye;
    /* 0xC44 */ cXyz camCenter;
    /* 0xC50 */ cXyz camEyeTarget;
    /* 0xC5C */ cXyz camCenterTarget;
    /* 0xC68 */ cXyz distToCamEyeTarget;
    /* 0xC74 */ cXyz distToCamCenterTarget;
    /* 0xC80 */ f32 demoCamFovy;
    /* 0xC84 */ f32 camStepScale1;
    /* 0xC88 */ f32 camStepScale2;
    /* 0xC8C */ f32 field_0xc8c;
    /* 0xC90 */ f32 field_0xc90;
    /* 0xC94 */ u8 field_0xc94[0xc98 - 0xc94];
    /* 0xC98 */ f32 field_0xc98;
    /* 0xC9C */ f32 field_0xc9c;
    /* 0xCA0 */ s16 prevPlShapeAngle;
    /* 0xCA4 */ dMsgFlow_c msgFlow;
    /* 0xCF0 */ u8 field_0xcf0[0xcf5 - 0xcf0];
    /* 0xCF5 */ u8 hioInit;
};

STATIC_ASSERT(sizeof(e_mk_class) == 0xcf8);

#endif /* D_A_E_MK_H */
