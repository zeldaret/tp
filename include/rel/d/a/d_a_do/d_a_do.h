#ifndef D_A_DO_H
#define D_A_DO_H

#include "dolphin/types.h"
#include "d/a/d_a_player.h"
#include "d/a/d_a_item_static.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/msg/d_msg_flow.h"
#include "d/particle/d_particle.h"
#include "f_op/f_op_actor.h"
#include "m_Do/m_Do_mtx.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_controller_pad.h"
#include "JSystem/J3DGraphAnimator/J3DAnimation.h"
#include "SSystem/SComponent/c_phase.h"
#include "Z2AudioLib/Z2SoundObject.h"

struct do_class_HIO {
    /* 0x00 */ f32 field_0x00;
    /* 0x04 */ f32 field_0x04;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0c;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ u8 field_0x1c;
    /* 0x1D */ u8 field_0x1d;
};

// this might actually inherit from npc_tr_class?
class do_class : public fopAc_ac_c {
public:
    /* 0x56C */ u8 field_0x56c[68];
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4;
    /* 0x5B5 */ u8 field_0x5b5;
    /* 0x5B6 */ u8 field_0x5b6;
    /* 0x5B7 */ u8 field_0x5b7[17];
    /* 0x5C8 */ f32 mDistFromPlayer;
    /* 0x5CC */ s16 mAngleYFromPlayer;
    /* 0x5CE */ u8 field_0x5ce[2];
    /* 0x5D8 */ mDoExt_McaMorf* mpMorf;
    /* 0x5D4 */ u8 field_0x5d4[8];
    /* 0x5DC */ u8 field_0x5dc[2];
    /* 0x5DE */ s16 field_0x5de;
    /* 0x5E0 */ s16 field_0x5e0;
    /* 0x5E2 */ u8 field_0x5e2;
    /* 0x5E3 */ u8 field_0x5e3;
    /* 0x5E4 */ s32 mResIdx;
    /* 0x5E8 */ f32 field_0x5e8;
    /* 0x5EC */ f32 field_0x5ec;
    /* 0x5F0 */ s16 field_0x5f0;
    /* 0x5F2 */ s16 mActionStatus;
    /* 0x5F4 */ u16 field_0x5f4;
    /* 0x5F6 */ s16 mStayStatus; // probably a better name for this
    /* 0x5F8 */ u8 field_0x5f8[4];
    /* 0x5FC */ s16 field_0x5fc;
    /* 0x5FE */ u8 field_0x5fe[2];
    /* 0x600 */ s16 field_0x600;
    /* 0x602 */ u8 field_0x602[2];
    /* 0x604 */ u16 field_0x604;
    /* 0x606 */ s16 field_0x606;
    /* 0x608 */ f32 field_0x608;
    /* 0x60C */ u16 field_0x60c;
    /* 0x60E */ s16 field_0x60e;
    /* 0x60E */ s16 field_0x610;
    /* 0x60E */ s16 field_0x612;
    /* 0x614 */ s16 field_0x614;
    /* 0x616 */ u8 field_0x616;
    /* 0x617 */ u8 field_0x617;
    /* 0x618 */ cXyz mUnkPos; // something to do with the dog's eye position
    u8 alignment[4]; // remove later
    /* 0x624 */ s16 field_0x624;
    /* 0x626 */ u8 field_0x626[2];
    /* 0x628 */ s16 field_0x628;
    /* 0x62A */ s16 field_0x62a;
    /* 0x62C */ u8 field_0x62c[2];
    /* 0x62E */ u16 field_0x62e;
    /* 0x630 */ u16 field_0x630;
    /* 0x632 */ s16 field_0x632;
    /* 0x634 */ f32 field_0x634;
    /* 0x638 */ f32 field_0x638;
    /* 0x63C */ s16 field_0x63c;
    /* 0x63E */ s16 field_0x63e;
    /* 0x640 */ s16 field_0x640;
    /* 0x642 */ u8 field_0x642[2]; // some weird alignmnet here
    /* 0x648 */ f32 field_0x648;
    /* 0x64C */ f32 field_0x64c;
    /* 0x650 */ f32 field_0x650;
    /* 0x654 */ u8 field_0x654[4];
    /* 0x658 */ f32 mEyePosYDistFromPlayer; 
    /* 0x65C */ f32 field_0x65c;
    /* 0x660 */ u16 field_0x660;
    /* 0x662 */ u8 field_0x662[26];
    /* 0x67C */ f32 field_0x67c;
    /* 0x680 */ u32 field_0x680; // some proc ID
    /* 0x684 */ u32 mFoodBsPcId;
    /* 0x688 */ u8 field_0x688;
    /* 0x689 */ u8 field_0x689;
    /* 0x68A */ u8 field_0x68a;
    /* 0x68B */ u8 field_0x68b;
    /* 0x68C */ f32 field_0x68c;
    /* 0x690 */ f32 field_0x690;
    /* 0x694 */ f32 field_0x694;
    /* 0x698 */ u8 field_0x698[22];
    /* 0x6AE */ u8 field_0x6ae;
    /* 0x6AF */ u8 field_0x6af[9];
    /* 0x6B8 */ u8 field_0x6b8;
    /* 0x6B9 */ u8 field_0x6b9[3];
    /* 0x6BC */ dBgS_AcchCir mBgS_AcchCir;
    /* 0x6FC */ dBgS_Acch mBgS_Acch;      
    /* 0x8D4 */ f32 field_0x8d4;
    /* 0x8D8 */ u8 field_0x8d8[4];
    /* 0x8DC */ f32 field_0x8dc;
    /* 0x8E0 */ u8 field_0x8e0[12];
    /* 0x8EC */ dCcD_GStts mCcD_GStts;
    /* 0x90C */ u8 field_0x90c[4];
    /* 0x910 */ dCcD_GObjInf mCcD_GObjInf1;
    /* 0xA14 */ u8 field_0xa14[52];
    /* 0xA48 */ dCcD_GObjInf mCcD_GObjInf2;
    /* 0xB4C */ u8 field_0xb4c[128];
    /* 0xBCC */ u32 field_0xbcc;
    /* 0xBD0 */ u8 field_0xbd0[20];
    /* 0xBE4 */ Z2SoundObjSimple mSound;
    /* 0xC04 */ u8 field_0xc04;
    /* 0xC05 */ s8 field_0xc05;
    /* 0xC06 */ s16 field_0xc06;
    /* 0xC08 */ s16 field_0xc08;
    /* 0xC0A */ u8 field_0xc0a[2];
    /* 0xC0C */ dMsgFlow_c mMsg;
    /* 0xC58 */ u8 field_0xc58[104];
    /* 0xCC0 */ u8 field_0xcc0;

public:
    enum {
        ACTION_STATUS_STAY,
        ACTION_STATUS_WALK,
        ACTION_STATUS_WALK_RUN,
        ACTION_STATUS_RUN,
        ACTION_STATUS_RUN_WALK,
        ACTION_STATUS_FOOD,
        ACTION_STATUS_WAIT_1,
        ACTION_STATUS_WAIT_2,
        ACTION_STATUS_SIT,
        ACTION_STATUS_A_SWIM = 10,
        ACTION_STATUS_SWIM = 20,
        ACTION_STATUS_HELP,
        ACTION_STATUS_BOAT,
        ACTION_STATUS_HANG = 30,
        ACTION_STATUS_CARRY = 35,
        ACTION_STATUS_MESSAGE = 39
    };

    /* 8066EAE4 */ do_class();
    
};

class daDo_HIO_c : public do_class {
private:
/* 0x14 */ u32 field_0x14;
/* 0x18 */ u32 field_0x18;
/* 0x1C */ u8 field_0x1c;
/* 0x1D */ u8 field_0x1d;
/* 0x1E */ u16 field_0x1e;

public:
    /* 80667D4C */ daDo_HIO_c();
    /* 8066ED40 */ virtual ~daDo_HIO_c() {};
};

#endif /* D_A_DO_H */
