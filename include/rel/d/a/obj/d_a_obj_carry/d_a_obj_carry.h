#ifndef D_A_OBJ_CARRY_H
#define D_A_OBJ_CARRY_H

#include "d/d_jnt_col.h"
#include "f_op/f_op_actor_mng.h"
#include "d/com/d_com_inf_game.h"

struct daObjCarry_Data {
    /* 0x0000 */ u8 field_0x0000[0x0030 - 0x0000];
    /* 0x0030 */ float field_0x0030;
    /* 0x0034 */ u8 field_0x0034;
    /* 0x0035 */ u8 field_0x0035[0x0038 - 0x0035];
    /* 0x0038 */ float field_0x0038;
    /* 0x003C */ float field_0x003c;
    /* 0x0040 */ float field_0x0040;
    /* 0x0044 */ u8 field_0x0044[0x94-0x44];
};

/**
 * @ingroup actors-objects
 * @brief Carryable Object
 * 
 * This is a multi-use class for carryable objects. 
 * It's used by: small and large blue pot, small and large red pot, box, cannon ball, barrel, skull, deku nut, Sols, small and large Twilight pots.
 * 
 */
class daObjCarry_c : public fopAc_ac_c {
public:
    enum {
        /* 0x0 */ TYPE_TSUBO,      /**< Small Blue Pot */
        /* 0x1 */ TYPE_OOTSUBO,    /**< Big Red Pot */
        /* 0x2 */ TYPE_KIBAKO,     /**< Box */
        /* 0x3 */ TYPE_IRON_BALL,  /**< Cannon Ball */
        /* 0x4 */ TYPE_TARU,       /**< Barrel */
        /* 0x5 */ TYPE_DOKURO,     /**< Skull */
        /* 0x6 */ TYPE_BOKKURI,    /**< Deku Nut */
        /* 0x7 */ TYPE_TSUBO_2,    /**< Small Red Pot */
        /* 0x8 */ TYPE_BALL_S,     /**< Light Ball A */
        /* 0x9 */ TYPE_BALL_S_2,   /**< Light Ball B */
        /* 0xA */ TYPE_AOTSUBO,    /**< Big Blue Pot */
        /* 0xB */ TYPE_LV8_BALL,   /**< Light Ball? Probably unused */
        /* 0xC */ TYPE_TSUBO_S,    /**< Small pot - Twilight */
        /* 0xD */ TYPE_TSUBO_B,    /**< Big pot - Twilight */
    };

    /* 80031CF8 */ static void clrSaveFlag();
    /* 80031D04 */ static void setSaveFlag();
    /* 80031D10 */ static bool chkSaveFlag();
    /* 80031D24 */ static const cXyz& getPos(int);
    /* 80031D38 */ static void savePos(int, cXyz);
    /* 80031D64 */ static void onSttsFlag(int, u8);
    /* 80031D78 */ static void offSttsFlag(int, u8);
    /* 80031D8C */ static u8 chkSttsFlag(int, u8);
    /* 80031DAC */ static void setRoomNo(int, s8);
    /* 80031DB8 */ static s8 getRoomNo(int);
    /* 8046F6A4 */ u8 data();
    /* 8046F6BC */ char* getArcName();
    /* 8046F6D4 */ int getBmdName();
    /* 8046F6EC */ void checkFlag(u8);
    /* 8046F724 */ void initBaseMtx();
    /* 8046F7AC */ void setBaseMtx();
    /* 8046FACC */ s32 preInit();
    /* 8046FB78 */ daObjCarry_c();
    /* 8046FFA4 */ s32 checkBreakWolfAttack();
    /* 8046FFF8 */ s32 checkCarryBoomerang();
    /* 80470054 */ s32 checkCarryHookshot();
    /* 80470080 */ s32 checkCarryWolf();
    /* 804700B4 */ s32 checkCarryOneHand();
    /* 804700F0 */ void Create();
    /* 804705DC */ s32 CreateInit_tsubo();
    /* 80470650 */ s32 CreateInit_ootubo();
    /* 80470674 */ s32 CreateInit_kibako();
    /* 804706D4 */ s32 CreateInit_ironball();
    /* 804707E0 */ s32 CreateInit_taru();
    /* 80470840 */ bool CreateInit_dokuro();
    /* 80470890 */ s32 CreateInit_bokkuri();
    /* 804709DC */ s32 CreateInit_LightBall();
    /* 80470AB4 */ s32 CreateInit_Lv8Ball();
    /* 80470B5C */ s32 CreateHeap();
    /* 80470BF4 */ cPhs__Step create();
    /* 80470CF0 */ s32 checkCreate_LightBallA();
    /* 8047114C */ s32 checkCreate_LightBallB();
    /* 804715A8 */ s32 checkCreate_Lv8Ball();
    /* 80471680 */ void resetIconPosForLightBallA();
    /* 804716D4 */ void setIconPosForLightBallAAtR00();
    /* 804717B4 */ void setIconPosForLightBallBAtR00();
    /* 80471894 */ void resetIconPosForLightBallB();
    /* 804718E8 */ void execute();
    /* 8047233C */ void checkCulling();
    /* 80472460 */ void draw();
    /* 80472730 */ void debugDraw();
    /* 80472734 */ void _delete();
    /* 80472B54 */ void crr_pos();
    /* 80472D8C */ void check_sink(f32*);
    /* 80472E5C */ void calc_gravity();
    /* 80472EF0 */ void checkRollAngle();
    /* 80473050 */ void mode_proc_call();
    /* 804733E8 */ void mode_init_wait();
    /* 804734B0 */ void mode_proc_wait();
    /* 80473718 */ void mode_init_walk(u8);
    /* 804737CC */ void mode_proc_walk();
    /* 80473ED8 */ void mode_init_carry();
    /* 804741A8 */ void mode_proc_carry();
    /* 80474448 */ void mode_init_drop(u8);
    /* 80474540 */ void mode_proc_drop();
    /* 80474618 */ void mode_init_float();
    /* 80474734 */ void mode_proc_float();
    /* 80474A08 */ void mode_init_sink();
    /* 80474B8C */ void mode_proc_sink();
    /* 80474D64 */ void mode_init_yogan();
    /* 80474E08 */ void mode_proc_yogan();
    /* 80474E98 */ bool mode_proc_magne();
    /* 80474EA0 */ bool mode_proc_magneCarry();
    /* 80474EA8 */ void mode_init_boomCarry();
    /* 80474FA8 */ void mode_proc_boomCarry();
    /* 80475014 */ void mode_init_growth();
    /* 804750C8 */ void mode_proc_growth();
    /* 8047515C */ bool mode_proc_end();
    /* 80475164 */ void mode_init_dbDrop(u8);
    /* 80475210 */ void mode_proc_dbDrop();
    /* 80475238 */ void mode_init_hookCarry();
    /* 80475354 */ void mode_proc_hookCarry();
    /* 80475384 */ void mode_init_fit();
    /* 80475450 */ void mode_proc_fit();
    /* 80475478 */ void mode_proc_controled();
    /* 804754D0 */ void mode_init_resetLightBall();
    /* 80475598 */ void mode_proc_resetLightBall();
    /* 80475618 */ void chkSinkAll();
    /* 8047567C */ void chkWaterLineIn();
    /* 804756D4 */ void chkSinkObj();
    /* 8047573C */ void bg_check();
    /* 80476618 */ void check_bg_damage_proc_base();
    /* 80476764 */ void bg_damage_proc_kotubo();
    /* 804767C4 */ void bg_damage_proc_ootubo();
    /* 804767E4 */ void bg_damage_proc_kibako();
    /* 80476804 */ bool bg_damage_proc_ironball();
    /* 8047680C */ void bg_damage_proc_taru();
    /* 8047682C */ void bg_damage_proc_dokuro();
    /* 8047684C */ void bg_damage_proc_bokkuri();
    /* 80476930 */ bool bg_damage_proc_LightBall();
    /* 80476938 */ bool bg_damage_proc_Lv8Ball();
    /* 80476940 */ void obj_break(bool, bool, bool);
    /* 80476A5C */ void check_cc_damage_proc_base(bool);
    /* 80476B04 */ void cc_damage_proc_kotubo();
    /* 80476B68 */ void cc_damage_proc_ootubo();
    /* 80476B88 */ void cc_damage_proc_kibako();
    /* 80476CE4 */ void cc_damage_proc_ironball();
    /* 80476E04 */ void cc_damage_proc_taru();
    /* 80476F88 */ void cc_damage_proc_dokuro();
    /* 80476FA8 */ void cc_damage_proc_bokkuri();
    /* 804771B0 */ bool cc_damage_proc_LightBall();
    /* 804771B8 */ bool cc_damage_proc_Lv8Ball();
    /* 804771C0 */ void eff_break_tuboBmd(u16, cXyz);
    /* 8047731C */ void eff_break_kibakoBmd(cXyz);
    /* 8047747C */ void eff_break_tsubo();
    /* 804774D4 */ void eff_break_ootubo();
    /* 8047752C */ void eff_break_kibako();
    /* 80477574 */ void eff_break_ironball();
    /* 80477578 */ void eff_break_taru();
    /* 804775BC */ void eff_break_dokuro();
    /* 80477614 */ void eff_break_bokkuri();
    /* 80477798 */ void eff_break_kotubo2();
    /* 804777F0 */ void eff_break_LightBall();
    /* 804777F4 */ void eff_break_ootubo2();
    /* 8047784C */ void eff_break_Lv8Ball();
    /* 80477850 */ void eff_break_tsuboL8();
    /* 804778A8 */ void eff_break_ootuboL8();
    /* 80477900 */ void se_break(cBgS_PolyInfo*);
    /* 80477990 */ void se_put(cBgS_PolyInfo*);
    /* 80477A14 */ void se_put_water();
    /* 80477A98 */ void se_fall_water();
    /* 80477B1C */ void calc_rot_axis_base(u8);
    /* 80477FE0 */ void calc_rot_axis_tsubo();
    /* 80478004 */ void calc_rot_axis_ootubo();
    /* 80478028 */ void calc_rot_axis_kibako();
    /* 8047814C */ void calc_rot_axis_ironball();
    /* 80478170 */ void calc_rot_axis_taru();
    /* 80478190 */ void calc_rot_axis_dokuro();
    /* 804781B4 */ void calc_rot_axis_bokkuri();
    /* 804783C0 */ void calc_rot_axis_kotubo2();
    /* 804783E4 */ void calc_rot_axis_LightBall();
    /* 80478408 */ void calc_rot_axis_Lv8Ball();
    /* 8047842C */ void set_wind_power();
    /* 80478808 */ void exec_proc_tsubo();
    /* 80478828 */ void exec_proc_ootubo();
    /* 80478848 */ void exec_proc_kibako();
    /* 8047884C */ void exec_proc_ironball();
    /* 804788C4 */ void exec_proc_taru();
    /* 804788C8 */ void exec_proc_dokuro();
    /* 804788CC */ void exec_proc_bokkuri();
    /* 80478C18 */ void exec_proc_LightBall();
    /* 80478CE4 */ void exec_proc_Lv8Ball();
    /* 80478D78 */ void bg_damage_proc_call();
    /* 80478F50 */ void cc_damage_proc_call();
    /* 80479128 */ void eff_break_call();
    /* 804792D4 */ void calc_rot_call();
    /* 80479480 */ void obj_execute_proc_call();
    /* 8047962C */ void setTgHitCallBack();
    /* 80479648 */ void setCoHitCallBack();
    /* 80479664 */ void CreateInitCall();

    s32 getType() { return mType; }
    u32 getSwbit() { return fopAcM_GetParamBit(this,6,8);}
    u32 getSwbit2() { return fopAcM_GetParamBit(this,0xe,8); }
    u32 checkOnMoveBg() { return ~((field_0xd18 >> 0xc) & 1);}
    u32 checkCrashRoll() { return field_0xd18 >> 6 & 1;}
    u8 getItemNo() { return mItemNo; }
    u8 getSaveID() { return getItemNo(); }
    u32 getSetType() { return (u32)(field_0xd18 << 16) >> 29;} // fake match?
    s8 prm_chk_type_ironball() { return (s8)(getType() == TYPE_IRON_BALL); }
    s8 prm_chk_type_lightball() { return (getType() == TYPE_BALL_S || getType() == TYPE_BALL_S_2); }
    void startCtrl() { mCtrl = 1; }
    void endCtrl() { mCtrl = 0; }

    static void make_prm(csXyz* param_1, u8 param_2, u8 param_3, u8 param_4, u8 param_5, u8 param_6=0) {
        param_1->x = (param_4 << 8) | param_3;
        param_1->z = param_5 | (param_6 << 13) | ((u32(param_2) & 0xFF) << 1);
    }

    static u8 const mData[2072];
    static Vec mPos[5];
    static u8 mSttsFlag[5];
    static s8 mRoomNo[5];
    static bool mSaveFlag;

public:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dBgS_ObjAcch mAcch;
    /* 0x74C */ dBgS_AcchCir mAcchCir;
    /* 0x78C */ dCcD_Stts mStts;
    /* 0x7C8 */ dCcD_Cyl field_0x7c8;
    /* 0x904 */ dCcD_Sph field_0x904;
    /* 0xA3C */ dCcD_Cps field_0xa3c;
    /* 0xB80 */ dCcD_Cyl field_0xb80;
    /* 0xCBC */ u8 field_0xCBC[0xCEC - 0xCBC];
    /* 0xCEC */ float field_0xcec;
    /* 0xCF0 */ u8 mType;
    /* 0xCF1 */ u8 field_0xcf1;
    /* 0xCF2 */ u8 field_0xCF2[0xCF4 - 0xCF2];
    /* 0xCF4 */ cXyz field_0xcf4;
    /* 0xD00 */ s16 field_0xd00;
    /* 0xD02 */ u8 field_0xD02[0xD04 - 0xD02];
    /* 0xD04 */ s16 field_0xd04;
    /* 0xD06 */ u8 field_0xD06[0xD15 - 0xD06];
    /* 0xD15 */ u8 field_0xd15;
    /* 0xD16 */ u16 mItemNo;
    /* 0xD18 */ u16 field_0xd18;
    /* 0xD1A */ u8 field_0xD1A[0xD1C - 0xD1A];
    /* 0xD1C */ cXyz field_0xd1c;
    /* 0xD28 */ u8 field_0xD28[0xD3C - 0xD28];
    /* 0xD3C */ Quaternion field_0xd3c;
    /* 0xD4C */ Quaternion field_0xd4c;
    /* 0xD5C */ float field_0xd5c;
    /* 0xD60 */ float field_0xd60;
    /* 0xD64 */ s16 field_0xd64;
    /* 0xD66 */ s16 field_0xd66;
    /* 0xD68 */ s16 field_0xd68;
    /* 0xD6A */ s16 field_0xd6a;
    /* 0xD6C */ u8 field_0xD6C[0xD70 - 0xD6C];
    /* 0xD70 */ float field_0xd70;
    /* 0xD74 */ u8 field_0xd74;
    /* 0xD75 */ u8 field_0xd75;
    /* 0xD76 */ u8 field_0xd76;
    /* 0xD77 */ u8 field_0xd77;
    /* 0xD78 */ u8 field_0xD78[0xD79 - 0xD78];
    /* 0xD79 */ u8 field_0xd79;
    /* 0xD7A */ u8 field_0xd7a;
    /* 0xD7B */ u8 field_0xd7b;
    /* 0xD7C */ csXyz field_0xd7c;
    /* 0xD82 */ u8 field_0xD82[0xD84 - 0xD82];
    /* 0xD84 */ float field_0xd84;
    /* 0xD88 */ Z2SoundObjSimple field_0xd88;
    /* 0xDA8 */ u8 field_0xDA8[0xDAA - 0xDA8];
    /* 0xDAA */ u8 field_0xdaa;
    /* 0xDAB */ u8 field_0xDAB[0xDAC - 0xDAB];
    /* 0xDAC */ bool field_0xdac;
    /* 0xDAD */ u8 field_0xdad;
    /* 0xDAE */ u8 field_0xDAE[0xDAF - 0xDAE];
    /* 0xDAF */ u8 field_0xdaf;
    /* 0xDB0 */ u8 field_0xdb0;
    /* 0xDB1 */ u8 field_0xDB1[0xDB2 - 0xDB1];
    /* 0xDB2 */ u8 mOnMoveBG;
    /* 0xDB3 */ u8 field_0xdb3;
    /* 0xDB4 */ u8 field_0xdb4;
    /* 0xDB5 */ u8 mCrashRoll;
    /* 0xDB6 */ u8 field_0xdb6;
    /* 0xDB7 */ u8 mDraw;
    /* 0xDB8 */ u8 mCtrl;
    /* 0xDB9 */ u8 field_0xdb9;
    /* 0xDBA */ u8 mReset;
    /* 0xDBB */ u8 mCarryHookOK;
    /* 0xDBC */ u8 mRecover;
    /* 0xDBD */ u8 field_0xDBD[0xDD0 - 0xDBD];
    /* 0xDD0 */ fopAc_ac_c* field_0xdd0;
    /* 0xDD4 */ u8 field_0xDD4[0xDDC - 0xDD4];
    /* 0xDDC */ float field_0xddc;
    /* 0xDE0 */ float field_0xde0;
    /* 0xDE4 */ float field_0xde4;
    /* 0xDE8 */ s16 field_0xde8;
    /* 0xDEA */ u8 field_0xdea;
    /* 0xDEB */ u8 mCannon;
    /* 0xDEC */ cXyz field_0xdec;
    /* 0xDF8 */ DALKMIST_INFLUENCE field_0xdf8;
    /* 0xE0C */ u8 field_0xe0c;
    /* 0xE0D */ u8 field_0xe0d;
    /* 0xE0E */ u8 field_0xE0E[0xE10 - 0xE0E];
    /* 0xE10 */ dJntCol_c field_0xe10;
    /* 0xE20 */ float field_0xe20;
    /* 0xE24 */ u8 field_0xe24;
    /* 0xE25 */ u8 field_0xe25;
    /* 0xE26 */ u8 field_0xe26;
    /* 0xE27 */ u8 field_0xe27;

private:
    u16 getType_private() { return field_0xd18 >> 1 & 0x1f; }
};
STATIC_ASSERT(sizeof(daObjCarry_c) == 0xE28);

#endif /* D_A_OBJ_CARRY_H */
