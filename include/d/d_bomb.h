#ifndef D_D_BOMB_H
#define D_D_BOMB_H

#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_procname.h"

class daNbomb_c : public fopAc_ac_c {
public:
    enum daNbomb_FLG0 { WATER_BOMB = 16 };

    u32 checkStateFlg0(daNbomb_FLG0 flag) const { return mStateFlg0 & flag; }
    u32 checkWaterBomb() const { return checkStateFlg0(WATER_BOMB); }

    /* 0x568 */ u8 field_0x568[0x10];
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
    static bool checkFlowerBombWait(fopAc_ac_c*);
    bool checkWaterBomb(fopAc_ac_c*);
    bool checkInsectBombMove(fopAc_ac_c*);

    bool checkStateExplode() {
        return fopAcM_GetParam(this) == 0;
    }

    static bool checkBombActor(fopAc_ac_c* i_actor) {
        return fopAcM_GetName(i_actor) == PROC_NBOMB;
    }

    static fopAc_ac_c* createNormalBombPlayer(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 8, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createNormalBombExplode(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 0, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createWaterBombPlayer(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 9, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createFlowerBomb(cXyz* i_pos, csXyz* i_angle, int param_2) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 4, i_pos, param_2, i_angle, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createWaterBombExplode(cXyz* i_pos) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 18, i_pos, -1, NULL, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createEnemyWaterBomb(cXyz* i_pos, csXyz* i_angle, int i_roomNo) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 14, i_pos, i_roomNo, i_angle, NULL, -1, NULL, NULL);
    }

    static fopAc_ac_c* createEnemyWaterBombHookshot(cXyz* i_pos, csXyz* i_angle, int i_roomNo) {
        return (fopAc_ac_c*)fopAcM_fastCreate(PROC_NBOMB, 16, i_pos, i_roomNo, i_angle, NULL, -1, NULL, NULL);
    }
};

#endif /* D_D_BOMB_H */
