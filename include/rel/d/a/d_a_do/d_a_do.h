#ifndef D_A_DO_H
#define D_A_DO_H

#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2SoundObject.h"
#include "d/a/d_a_item_static.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/msg/d_msg_flow.h"
#include "d/particle/d_particle.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "m_Do/m_Do_controller_pad.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_mtx.h"

enum daDo_Anm {
    ANM_BULBUL = 6,
    ANM_CARRY_B,
    ANM_CLIFF,
    ANM_CLIFF_WT,
    ANM_DEFEND,
    ANM_DOWN,
    ANM_DOWN_WT,
    ANM_JOYFUL,
    ANM_RUN,
    ANM_SIT,
    ANM_SIT_WAIT,
    ANM_STEP,
    ANM_STEP_2,
    ANM_SWIM,
    ANM_TO_CARRY_B,
    ANM_WAIT,
    ANM_WALK
};

enum daDo_Action {
    ACT_STAY,
    ACT_WALK,
    ACT_WALK_RUN,
    ACT_RUN,
    ACT_RUN_WALK,
    ACT_FOOD,
    ACT_WAIT_1,
    ACT_WAIT_2,
    ACT_SIT,
    ACT_A_SWIM = 10,
    ACT_SWIM = 20,
    ACT_HELP,
    ACT_BOAT,
    ACT_HANG = 30,
    ACT_CARRY = 35,
    ACT_MESSAGE = 39
};

struct daDo_HIO_tmp {
    /* 0x00 */ u8 field_0x00[4];
    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05[3];
    /* 0x08 */ f32 mBaseSize;
    /* 0x0C */ f32 mWalkSpeed;
    /* 0x10 */ f32 mRunSpeed;
    /* 0x14 */ f32 mSwimSpeed;
    /* 0x18 */ f32 mPlayerRecogniztionDist;
    /* 0x1C */ u8 field_0x1c;
    /* 0x1D */ u8 mSwimming;
    /* 0x1E */ u16 mWaterHuntAnimType;
};

class daDo_HIO_c {
public:
    /* 80667D4C */ daDo_HIO_c();
    /* 8066ED40 */ virtual ~daDo_HIO_c();  // should be inlined

public:
    /* 0x04 */ s8 field_0x04;
    /* 0x05 */ u8 field_0x05[3];
    /* 0x08 */ f32 mBaseSize;
    /* 0x0C */ f32 mWalkSpeed;
    /* 0x10 */ f32 mRunSpeed;
    /* 0x14 */ f32 mSwimSpeed;
    /* 0x18 */ f32 mPlayerRecogniztionDist;
    /* 0x1C */ u8 field_0x1c;
    /* 0x1D */ u8 mSwimming;
    /* 0x1E */ u16 mWaterHuntAnimType;
};

class do_class : public fopEn_enemy_c {
public:
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7;
    /* 0x5B8 */ cXyz field_0x5b8;
    /* 0x5C4 */ u8 field_0x5c4[4];
    /* 0x5C8 */ f32 mDistFromPlayer;
    /* 0x5CC */ s16 mAngleYFromPlayer;
    /* 0x5CE */ u8 field_0x5ce[2];
    /* 0x5D8 */ mDoExt_McaMorf* mpMorf;
    /* 0x5D4 */ mDoExt_btkAnm* mpBtk;
    /* 0x5D8 */ mDoExt_btpAnm* mpBtp;
    /* 0x5DC */ s8 field_0x5dc;
    /* 0x5DD */ u8 field_0x5dd;
    /* 0x5DE */ s16 field_0x5de;
    /* 0x5E0 */ s16 field_0x5e0;
    /* 0x5E2 */ u8 field_0x5e2;
    /* 0x5E3 */ u8 field_0x5e3;
    /* 0x5E4 */ u32 mAnmID;
    /* 0x5E8 */ f32 field_0x5e8;
    /* 0x5EC */ f32 field_0x5ec;
    /* 0x5F0 */ s16 field_0x5f0;
    /* 0x5F2 */ s16 mAction;
    /* 0x5F4 */ s16 field_0x5f4;
    /* 0x5F6 */ s16 mStayStatus;  // probably a better name for this
    /* 0x5F8 */ u32 mShadowKey;
    /* 0x5FC */ s16 field_0x5fc[4];
    /* 0x604 */ u16 field_0x604;
    /* 0x606 */ s16 field_0x606;
    /* 0x608 */ f32 field_0x608;
    /* 0x60C */ s16 field_0x60c;
    /* 0x60E */ csXyz field_0x60e;
    /* 0x614 */ s16 field_0x614;
    /* 0x616 */ u8 field_0x616;
    /* 0x617 */ u8 field_0x617;
    /* 0x618 */ cXyz mUnkPos;  // something to do with the dog's eye position
    /* 0x624 */ s16 field_0x624;
    /* 0x626 */ csXyz field_0x626;
    /* 0x62C */ u8 field_0x62c[18];
    /* 0x63E */ csXyz field_0x63e;
    /* 0x644 */ f32 field_0x644;
    /* 0x648 */ f32 field_0x648;
    /* 0x64C */ f32 field_0x64c;
    /* 0x650 */ f32 field_0x650;
    /* 0x654 */ s16 field_0x654;
    /* 0x656 */ s16 field_0x656;
    /* 0x658 */ f32 mEyePosYDistFromPlayer;
    /* 0x65C */ f32 field_0x65c;
    /* 0x660 */ s16 field_0x660;
    /* 0x662 */ u8 field_0x662[2];
    /* 0x664 */ cXyz field_0x664;
    /* 0x670 */ f32 field_0x670;
    /* 0x674 */ cXyz field_0x674;
    /* 0x680 */ u32 mItemActorID;
    /* 0x684 */ u32 mFoodActorID;
    /* 0x688 */ u8 field_0x688;
    /* 0x689 */ u8 field_0x689;
    /* 0x68A */ u8 field_0x68a;
    /* 0x68B */ u8 field_0x68b;
    /* 0x68C */ cXyz field_0x68c;
    /* 0x698 */ cXyz field_0x698;
    /* 0x6A4 */ u8 field_0x6a4[10];
    /* 0x6AE */ s8 field_0x6ae;
    /* 0x6B0 */ s16 field_0x6b0;
    /* 0x6B2 */ u8 field_0x6b2[2];
    /* 0x6B4 */ f32 field_0x6b4;
    /* 0x6B8 */ u8 field_0x6b8;
    /* 0x6B9 */ u8 field_0x6b9[3];
    /* 0x6BC */ dBgS_AcchCir mBgS_AcchCir;
    /* 0x6FC */ dBgS_ObjAcch mBgS_Acch;
    /* 0x8D4 */ dCcD_Stts mStts;
    /* 0x910 */ dCcD_Sph mCcSph1;
    /* 0xA48 */ dCcD_Sph mCcSph2;
    /* 0xB80 */ cXyz field_0xb80;
    /* 0xB8C */ cXyz field_0xb8c;
    /* 0xB98 */ cXyz field_0xb98;
    /* 0xBA4 */ cXyz field_0xba4;
    /* 0xBB0 */ cXyz field_0xbb0;
    /* 0xBBC */ cXyz field_0xbbc;
    /* 0xBC8 */ u8 field_0xb4c[4];
    /* 0xBCC */ u32 field_0xbcc;
    /* 0xBD0 */ u8 field_0xbd0[4];
    /* 0xBD4 */ u32 field_0xbd4[4];
    /* 0xBE4 */ Z2SoundObjSimple mSound;
    /* 0xC04 */ u8 field_0xc04;
    /* 0xC05 */ s8 field_0xc05;
    /* 0xC06 */ s16 field_0xc06;
    /* 0xC08 */ s16 field_0xc08;
    /* 0xC0A */ u8 field_0xc0a[2];
    /* 0xC0C */ dMsgFlow_c mMsg;
    /* 0xC58 */ u8 field_0xc58[40];
    /* 0xC80 */ u8 field_0xc80;
    /* 0xC81 */ u8 field_0xc81[3];
    /* 0xC84 */ cXyz field_0xc84;
    /* 0xC90 */ cXyz field_0xc90;
    /* 0xC9C */ cXyz field_0xc9c;
    /* 0xCA8 */ cXyz field_0xca8;
    /* 0xCB4 */ cXyz field_0xcb4;
    /* 0xCC0 */ u8 field_0xcc0;

public:
    /* 8066EAE4 */ do_class();
};

#endif /* D_A_DO_H */
