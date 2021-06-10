#ifndef D_D_BOMB_H
#define D_D_BOMB_H

#include "f_op/f_op_actor.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "d/kankyo/d_kankyo.h"
#include "Z2AudioLib/Z2SoundObject.h"

class daNbomb_c {
public:
    enum daNbomb_FLG0 { WATER_BOMB = 16 };

    u32 checkStateFlg0(daNbomb_FLG0 flag) const { return mStateFlg0 & flag; }
    u32 checkWaterBomb() const { return checkStateFlg0(WATER_BOMB); }

    /* 0x000 */ fopAc_ac_c mActor;
    /* 0x538 */ u8 field_0x538[0x32]; // 538-570 might be part of fopAc_ac_c
    /* 0x56A */ u8 field_0x56a;
    /* 0x56B */ u8 field_0x56b[13];
    /* 0x578 */ dBgS_Acch mAcch;
    /* 0x750 */ dBgS_AcchCir mAcchCir;
    /* 0x790 */ dCcD_Stts mStts;
    /* 0x7CC */ dCcD_Sph mSph1;
    /* 0x904 */ dCcD_Sph mSph2;
    /* 0xA3C */ u8 field_0xa3c[0x64];
    /* 0xAA0 */ dBgS_BombLinChk mLinChk;
    /* 0xB10 */ cBgS_PolyInfo mPolyInfo;
    /* 0xB20 */ Z2SoundObjSimple mSoundObj;
    /* 0xB40 */ u8 field_0xb40[0xC];
    /* 0xB4C */ u32 mStateFlg0;
    /* 0xB50 */ u8 field_0xb50;
    /* 0xB51 */ u8 field_0xb51[0x3];
    /* 0xB54 */ u8 field_0xb54;
    /* 0xB55 */ u8 field_0xb55[0xB];
    /* 0xB60 */ LIGHT_INFLUENCE field_0xb60;
    /* 0xB80 */ WIND_INFLUENCE field_0xb80;
};

class dBomb_c : public daNbomb_c {
public:
    bool checkStateCarry();
    bool checkFlowerBombWait(fopAc_ac_c*);
    bool checkWaterBomb(fopAc_ac_c*);
    bool checkInsectBombMove(fopAc_ac_c*);
};

#endif /* D_D_BOMB_H */
