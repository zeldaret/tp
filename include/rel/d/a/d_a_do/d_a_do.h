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



// this might actually inherit from npc_tr_class?
class do_class : public fopAc_ac_c {
public:
    /* 0x56C */ u8 field_0x56c[68];
    /* 0x5AC */ request_of_phase_process_class mPhase;
    /* 0x5B4 */ u8 field_0x5b4[20];
    /* 0x5C8 */ float field_0x5c8;
    /* 0x5CC */ u8 field_0x5cc[4];
    /* 0x5D8 */ mDoExt_McaMorf* mpMorf;
    /* 0x5D4 */ u8 field_0x5d4[8];
    /* 0x5DC */ u8 field_0x5dc[8];
    /* 0x5E4 */ s32 field_0x5e4;
    /* 0x5E8 */ float field_0x5e8;
    /* 0x5EC */ float field_0x5ec;
    /* 0x5F0 */ u8 field_0x5f0[2];
    /* 0x5F2 */ s16 field_0x5f2;
    /* 0x5F4 */ u8 field_0x5f4[2];
    /* 0x5F6 */ u16 field_0x5f6;
    /* 0x5F8 */ u8 field_0x5f8[4];
    /* 0x5FC */ u16 field_0x5fc;
    /* 0x5FE */ u8 field_0x5fe[6];
    /* 0x604 */ u16 field_0x604;
    /* 0x606 */ u8 field_0x606[2];
    /* 0x608 */ float field_0x608;
    /* 0x60C */ u8 field_0x60c[8];
    /* 0x614 */ u16 field_0x614;
    /* 0x616 */ u8 field_0x616[30];
    /* 0x634 */ u32 field_0x634;
    /* 0x638 */ u8 field_0x638[16];
    /* 0x648 */ u32 field_0x648;
    /* 0x64c */ u8 field_0x64c[12];
    /* 0x658 */ float field_0x658;
    /* 0x65C */ u8 field_0x65c[32];
    /* 0x67C */ float field_0x67c;
    /* 0x680 */ u8 field_0x680[4];
    /* 0x684 */ u32 isFood; // maybe can pick a better name here
    /* 0x688 */ u8 field_0x688[4];
    /* 0x68C */ float field_0x68c;
    /* 0x690 */ float field_0x690;
    /* 0x694 */ float field_0x694;
    /* 0x698 */ u8 field_0x698[36];
    /* 0x6BC */ dBgS_AcchCir mBgS_AcchCir;
    /* 0x6FC */ dBgS_Acch mBgS_Acch;      
    /* 0x8D4 */ u8 field_0x8d4[24];
    /* 0x8EC */ dCcD_GStts mCcD_GStts;
    /* 0x90C */ u8 field_0x90c[4];
    /* 0x910 */ dCcD_GObjInf mCcD_GObjInf1;
    /* 0xA14 */ u8 field_0xa14[52];
    /* 0xA48 */ dCcD_GObjInf mCcD_GObjInf2;
    /* 0xB4C */ u8 field_0xb4c[152];
    /* 0xBE4 */ Z2SoundObjSimple mSound;
    /* 0xC04 */ u8 field_0xc04[8];
    /* 0xC0C */ dMsgFlow_c mMsg;
    /* 0xC58 */ u8 field_0xc58[104];
    /* 0xCC0 */ u8 field_0xcc0;

public:
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
