#ifndef D_A_OBJ_CARRY_H
#define D_A_OBJ_CARRY_H

#include "SSystem/SComponent/c_xyz.h"
#include "d/bg/d_bg_s_acch.h"
#include "d/cc/d_cc_d.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"

class daObjCarry_c : public fopAc_ac_c {
public:
    enum {
        /* 0x0 */ TYPE_TSUBO,      // Small Blue Pot
        /* 0x1 */ TYPE_OOTSUBO,    // Big Red Pot
        /* 0x2 */ TYPE_KIBAKO,     // Box
        /* 0x3 */ TYPE_IRON_BALL,  // Cannon Ball
        /* 0x4 */ TYPE_TARU,       // Barrel
        /* 0x5 */ TYPE_DOKURO,     // Skull
        /* 0x6 */ TYPE_BOKKURI,    // Deku Nut
        /* 0x7 */ TYPE_TSUBO_2,    // Small Red Pot
        /* 0x8 */ TYPE_BALL_S,     // Light Ball A
        /* 0x9 */ TYPE_BALL_S_2,   // Light Ball B
        /* 0xA */ TYPE_AOTSUBO,    // Big Blue Pot
        /* 0xB */ TYPE_LV8_BALL,
        /* 0xC */ TYPE_TSUBO_S,  // Small pot - Twilight
        /* 0xD */ TYPE_TSUBO_B,  // Big pot - Twilight
    };

    /* 80031CF8 */ static void clrSaveFlag();
    /* 80031D04 */ static void setSaveFlag();
    /* 80031D10 */ static bool chkSaveFlag();
    /* 80031D24 */ void getPos(int);
    /* 80031D38 */ void savePos(int, cXyz);
    /* 80031D64 */ static void onSttsFlag(int, u8);
    /* 80031D78 */ static void offSttsFlag(int, u8);
    /* 80031D8C */ static u8 chkSttsFlag(int, u8);
    /* 80031DAC */ static void setRoomNo(int, s8);
    /* 80031DB8 */ static s8 getRoomNo(int);
    /* 8046F6A4 */ void data();
    /* 8046F6BC */ void getArcName();
    /* 8046F6D4 */ void getBmdName();
    /* 8046F6EC */ void checkFlag(u8);
    /* 8046F724 */ void initBaseMtx();
    /* 8046F7AC */ void setBaseMtx();
    /* 8046FACC */ void preInit();
    /* 8046FB78 */ daObjCarry_c();
    /* 8046FFA4 */ void checkBreakWolfAttack();
    /* 8046FFF8 */ void checkCarryBoomerang();
    /* 80470054 */ void checkCarryHookshot();
    /* 80470080 */ void checkCarryWolf();
    /* 804700B4 */ void checkCarryOneHand();
    /* 804700F0 */ void Create();
    /* 804705DC */ void CreateInit_tsubo();
    /* 80470650 */ void CreateInit_ootubo();
    /* 80470674 */ void CreateInit_kibako();
    /* 804706D4 */ void CreateInit_ironball();
    /* 804707E0 */ void CreateInit_taru();
    /* 80470840 */ void CreateInit_dokuro();
    /* 80470890 */ void CreateInit_bokkuri();
    /* 804709DC */ void CreateInit_LightBall();
    /* 80470AB4 */ void CreateInit_Lv8Ball();
    /* 80470B5C */ void CreateHeap();
    /* 80470BF4 */ void create();
    /* 80470CF0 */ void checkCreate_LightBallA();
    /* 8047114C */ void checkCreate_LightBallB();
    /* 804715A8 */ void checkCreate_Lv8Ball();
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

    static u8 const mData[2072];
    static u8 mPos[60];
    static u8 mSttsFlag[5];
    static s8 mRoomNo[5];
    static bool mSaveFlag;

private:
    /* 0x568 */ u8 field_0x568[8];
    /* 0x570 */ J3DModel* field_0x570;
    /* 0x574 */ dBgS_Acch field_0x574;
    /* 0x74C */ dBgS_AcchCir field_0x74c;
    /* 0x78C */ dCcD_Stts field_0x78c;
    /* 0x7C8 */ dCcD_Cyl field_0x7c8;
    /* 0x904 */ dCcD_Sph field_0x904;
    /* 0xA3C */ dCcD_Cps field_0xa3c;
    /* 0xB80 */ dCcD_Cyl field_0xb80;
    /* 0xCBC */ u8 field_0xcbc[0x34];
    /* 0xCF0 */ u8 mType;
    /* 0xCF4 */ cXyz field_0xcf4;
    /* 0xD00 */
};

#endif /* D_A_OBJ_CARRY_H */
