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
    /* 8071C190 */ e_mk_class() {}

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

    /* 0x000 */ fopEn_enemy_c enemy;
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ s16 mMode;
    /* 0x5B6 */ u8 mParam;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ cXyz field_0x5b8;
    /* 0x5C4 */ u8 field_0x5c4[0x5c8 - 0x5c4];
    /* 0x5C8 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x5CC */ int mAnm;
    /* 0x5D0 */ mDoExt_btpAnm* mBtp;
    /* 0x5D4 */ s16 field_0x5d4;
    /* 0x5D8 */ f32 field_0x5d8;
    /* 0x5DC */ mDoExt_McaMorf* mpCrownModelMorf;
    /* 0x5E0 */ s8 field_0x5e0;
    /* 0x5E4 */ cXyz field_0x5e4;
    /* 0x5F0 */ csXyz field_0x5f0;
    /* 0x5F6 */ u8 field_0x5f6[0x5fc - 0x5f6];
    /* 0x5FC */ f32 field_0x5fc; 
    /* 0x600 */ f32 field_0x600;
    /* 0x604 */ f32 field_0x604;
    /* 0x608 */ J3DModel* mpBoomerangModel;
    /* 0x60C */ s8 field_0x60c;
    /* 0x60D */ s8 field_0x60d;
    /* 0x60E */ s8 field_0x60e;
    /* 0x60F */ u8 field_0x60f;
    /* 0x610 */ Z2CreatureEnemy mSound;
    /* 0x6B4 */ s16 field_0x6b4;
    /* 0x6B6 */ s16 mAction;
    /* 0x6B8 */ f32 mDistToPlayer;
    /* 0x6BC */ s16 mAngleToPlayer;
    /* 0x6BE */ s8 field_0x6be;
    /* 0x6BF */ u8 field_0x6bf;
    /* 0x6C0 */ cXyz field_0x6c0;
    /* 0x6CC */ cXyz field_0x6cc;
    /* 0x6D8 */ f32 field_0x6d8;
    /* 0x6DC */ cXyz field_0x6dc;
    /* 0x6E8 */ daPillar_c* mPillar;
    /* 0x6EC */ daPillar_c* mHasira;
    /* 0x6F0 */ u32 mShadowKey1;
    /* 0x6F4 */ u32 mShadowKey2;
    /* 0x6F8 */ s8 field_0x6f8;
    /* 0x6F9 */ u8 field_0x6f9;
    /* 0x6FA */ s16 field_0x6fa;
    /* 0x6FC */ s16 field_0x6fc[4];
    /* 0x704 */ s16 field_0x704;
    /* 0x706 */ s8 field_0x706;
    /* 0x707 */ s8 field_0x707;
    /* 0x708 */ fpc_ProcID field_0x708;
    /* 0x70C */ e_db_class* field_0x70c;
    /* 0x710 */ fpc_ProcID mBabaChildID;
    /* 0x714 */ fpc_ProcID mBabaChildID2;
    /* 0x718 */ s8 field_0x718;
    /* 0x719 */ s8 field_0x719;
    /* 0x71A */ s8 field_0x71a;
    /* 0x71B */ s8 field_0x71b;
    /* 0x71C */ s8 field_0x71c;
    /* 0x71D */ s8 field_0x71d;
    /* 0x71E */ s8 field_0x71e;
    /* 0x71F */ u8 field_0x71f;
    /* 0x720 */ dBgS_AcchCir mAcchCir;
    /* 0x760 */ dBgS_ObjAcch mAcch;
    /* 0x938 */ dCcU_AtInfo mAtInfo;
    /* 0x95C */ dCcD_Stts field_0x95c;
    /* 0x998 */ dCcD_Sph field_0x998;
    /* 0xAD0 */ dCcD_Sph field_0xad0;
    /* 0xC08 */ u32 field_0xc08;
    /* 0xC0C */ u32 field_0xc0c;
    /* 0xC10 */ u32 field_0xc10;
    /* 0xC14 */ u32 field_0xc14;
    /* 0xC18 */ u32 field_0xc18[2];
    /* 0xC20 */ u32 field_0xc20[4];
    /* 0xC30 */ s16 field_0xc30;
    /* 0xC32 */ s16 mDemoMode;
    /* 0xC34 */ s16 mDemoCamTimer;
    /* 0xC38 */ cXyz mCamEye;
    /* 0xC44 */ cXyz mCamCenter;
    /* 0xC50 */ cXyz field_0xc50;
    /* 0xC5C */ cXyz field_0xc5c;
    /* 0xC68 */ cXyz field_0xc68;
    /* 0xC74 */ cXyz field_0xc74;
    /* 0xC80 */ f32 mDemoCamFovy;
    /* 0xC84 */ f32 field_0xc84;
    /* 0xC88 */ f32 field_0xc88;
    /* 0xC8C */ f32 field_0xc8c;
    /* 0xC90 */ f32 field_0xc90;
    /* 0xC94 */ u8 field_0xc94[0xc98 - 0xc94];
    /* 0xC98 */ f32 field_0xc98;
    /* 0xC9C */ f32 field_0xc9c;
    /* 0xCA0 */ s16 field_0xca0;
    /* 0xCA4 */ dMsgFlow_c mMsgFlow;
    /* 0xCF0 */ u8 field_0xcf0[0xcf5 - 0xcf0];
    /* 0xCF5 */ u8 field_0xcf5;
};

STATIC_ASSERT(sizeof(e_mk_class) == 0xcf8);

class daE_MK_HIO_c : public JORReflexible {
public:
    /* 8071412C */ daE_MK_HIO_c();
    /* 8071C3EC */ virtual ~daE_MK_HIO_c() {};

    void genMessage(JORMContext*);

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mSize;
    /* 0x0C */ f32 mBoomerangRatio;
    /* 0x10 */ f32 mPlayerThrowDistMax;
    /* 0x14 */ u8 mHaltAction;
    /* 0x18 */ cXyz mCrownPosAdjust;
};


#endif /* D_A_E_MK_H */
