#ifndef D_A_OBJ_CARRY_H
#define D_A_OBJ_CARRY_H

#include "f_op/f_op_actor_mng.h"
#include "d/actor/d_a_player.h"
#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "d/d_jnt_col.h"

struct daObjCarry_dt_t {
    /* 0x00 */ f32 m_throwInitSpeedY;
    /* 0x04 */ f32 m_throwInitSpeedXZ;
    /* 0x08 */ f32 m_wolfThrowInitSpeedY;
    /* 0x0C */ f32 m_wolfThrowInitSpeedXZ;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 m_gravity;
    /* 0x1C */ f32 m_Buoyancy;
    /* 0x20 */ f32 m_urnWindEffRatio;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 scale;
    /* 0x34 */ u8 m_carry_attn_dist;
    /* 0x35 */ u8 m_flags;
    /* 0x36 */ u8 m_colliderWeight;
    /* 0x37 */ u8 m_cyl_atp;
    /* 0x38 */ f32 m_cullsph_min_x;
    /* 0x3C */ f32 m_cullsph_min_y;
    /* 0x40 */ f32 m_cullsph_min_z;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 m_height;
    /* 0x50 */ f32 m_radius;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ u32 m_breakSound;
    /* 0x60 */ u32 m_putSound;
    /* 0x64 */ u32 m_putWaterSound;
    /* 0x68 */ u32 m_fallSound;
    /* 0x6C */ u32 m_fallWaterSound;
    /* 0x70 */ u32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ s16 m_rollAngle;
    /* 0x7A */ s16 m_urnRotateFactor;
    /* 0x7C */ s16 field_0x7c;
    /* 0x80 */ f32 m_slopeInfluence;
    /* 0x84 */ f32 m_friction;
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ u32 m_heapSize;
};

/**
 * @ingroup actors-objects
 * @class daObjCarry_c
 * @brief Carryable Object
 *
 * @details This is a multi-use class for carryable objects.
 * It's used by: small and large blue pot, small and large red pot, box, cannon ball, barrel, skull,
 * deku nut, Sols, small and large Twilight pots.
 *
 */
class daObjCarry_c : public fopAc_ac_c {
public:
    enum {
        /* 0x0 */ TYPE_TSUBO,     /**< Small Blue Pot */
        /* 0x1 */ TYPE_OOTSUBO,   /**< Big Red Pot */
        /* 0x2 */ TYPE_KIBAKO,    /**< Box */
        /* 0x3 */ TYPE_IRON_BALL, /**< Cannon Ball */
        /* 0x4 */ TYPE_TARU,      /**< Barrel */
        /* 0x5 */ TYPE_DOKURO,    /**< Skull */
        /* 0x6 */ TYPE_BOKKURI,   /**< Deku Nut */
        /* 0x7 */ TYPE_TSUBO_2,   /**< Small Red Pot */
        /* 0x8 */ TYPE_BALL_S,    /**< Light Ball A */
        /* 0x9 */ TYPE_BALL_S_2,  /**< Light Ball B */
        /* 0xA */ TYPE_AOTSUBO,   /**< Big Blue Pot */
        /* 0xB */ TYPE_LV8_BALL,  /**< Light Ball? Probably unused */
        /* 0xC */ TYPE_TSUBO_S,   /**< Small pot - Twilight */
        /* 0xD */ TYPE_TSUBO_B,   /**< Big pot - Twilight */
    };

    enum {
        MODE_WAIT,
        MODE_WALK,
        MODE_CARRY,
        MODE_DROP,
        MODE_FLOAT,
        MODE_SINK,
        MODE_YOGAN,
        MODE_MAGNE,
        MODE_MAGNE_CARRY,
        MODE_BOOM_CARRY,
        MODE_GROWTH,
        MODE_DB_DROP,
        MODE_HOOK_CARRY,
        MODE_END,
        MODE_FIT,
        MODE_CONTROLED,
        MODE_RESET_LIGHTBALL,
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
    /* 8046F6A4 */ const daObjCarry_dt_t& data();
    /* 8046F6BC */ char* getArcName();
    /* 8046F6D4 */ char* getBmdName();
    /* 8046F6EC */ BOOL checkFlag(u8);
    /* 8046F724 */ void initBaseMtx();
    /* 8046F7AC */ void setBaseMtx();
    /* 8046FACC */ int preInit();
    /* 8046FB78 */ daObjCarry_c();
    /* 8046FFA4 */ BOOL checkBreakWolfAttack();
    /* 8046FFF8 */ BOOL checkCarryBoomerang();
    /* 80470054 */ BOOL checkCarryHookshot();
    /* 80470080 */ BOOL checkCarryWolf();
    /* 804700B4 */ BOOL checkCarryOneHand();
    /* 804700F0 */ int Create();
    /* 804705DC */ int CreateInit_tsubo();
    /* 80470650 */ int CreateInit_ootubo();
    /* 80470674 */ int CreateInit_kibako();
    /* 804706D4 */ int CreateInit_ironball();
    /* 804707E0 */ int CreateInit_taru();
    /* 80470840 */ int CreateInit_dokuro();
    /* 80470890 */ int CreateInit_bokkuri();
    /* 804709DC */ int CreateInit_LightBall();
    /* 80470AB4 */ int CreateInit_Lv8Ball();
    /* 80470B5C */ int CreateHeap();
    /* 80470BF4 */ int create();
    /* 80470CF0 */ int checkCreate_LightBallA();
    /* 8047114C */ int checkCreate_LightBallB();
    /* 804715A8 */ int checkCreate_Lv8Ball();
    /* 80471680 */ void resetIconPosForLightBallA();
    /* 804716D4 */ void setIconPosForLightBallAAtR00();
    /* 804717B4 */ void setIconPosForLightBallBAtR00();
    /* 80471894 */ void resetIconPosForLightBallB();
    /* 804718E8 */ int execute();
    /* 8047233C */ BOOL checkCulling();
    /* 80472460 */ int draw();
    /* 80472730 */ void debugDraw();
    /* 80472734 */ int _delete();
    /* 80472B54 */ void crr_pos();
    /* 80472D8C */ int check_sink(f32*);
    /* 80472E5C */ f32 calc_gravity();
    /* 80472EF0 */ BOOL checkRollAngle();
    /* 80473050 */ void mode_proc_call();
    /* 804733E8 */ void mode_init_wait();
    /* 804734B0 */ int mode_proc_wait();
    /* 80473718 */ void mode_init_walk(u8);
    /* 804737CC */ int mode_proc_walk();
    /* 80473ED8 */ void mode_init_carry();
    /* 804741A8 */ int mode_proc_carry();
    /* 80474448 */ void mode_init_drop(u8);
    /* 80474540 */ int mode_proc_drop();
    /* 80474618 */ void mode_init_float();
    /* 80474734 */ int mode_proc_float();
    /* 80474A08 */ void mode_init_sink();
    /* 80474B8C */ int mode_proc_sink();
    /* 80474D64 */ void mode_init_yogan();
    /* 80474E08 */ int mode_proc_yogan();
    /* 80474E98 */ int mode_proc_magne();
    /* 80474EA0 */ int mode_proc_magneCarry();
    /* 80474EA8 */ void mode_init_boomCarry();
    /* 80474FA8 */ int mode_proc_boomCarry();
    /* 80475014 */ void mode_init_growth();
    /* 804750C8 */ int mode_proc_growth();
    /* 8047515C */ int mode_proc_end();
    /* 80475164 */ void mode_init_dbDrop(u8);
    /* 80475210 */ int mode_proc_dbDrop();
    /* 80475238 */ void mode_init_hookCarry();
    /* 80475354 */ int mode_proc_hookCarry();
    /* 80475384 */ void mode_init_fit();
    /* 80475450 */ int mode_proc_fit();
    /* 80475478 */ int mode_proc_controled();
    /* 804754D0 */ void mode_init_resetLightBall();
    /* 80475598 */ int mode_proc_resetLightBall();
    /* 80475618 */ BOOL chkSinkAll();
    /* 8047567C */ BOOL chkWaterLineIn();
    /* 804756D4 */ BOOL chkSinkObj();
    /* 8047573C */ void bg_check();
    /* 80476618 */ bool check_bg_damage_proc_base();
    /* 80476764 */ bool bg_damage_proc_kotubo();
    /* 804767C4 */ bool bg_damage_proc_ootubo();
    /* 804767E4 */ bool bg_damage_proc_kibako();
    /* 80476804 */ bool bg_damage_proc_ironball();
    /* 8047680C */ bool bg_damage_proc_taru();
    /* 8047682C */ bool bg_damage_proc_dokuro();
    /* 8047684C */ bool bg_damage_proc_bokkuri();
    /* 80476930 */ bool bg_damage_proc_LightBall();
    /* 80476938 */ bool bg_damage_proc_Lv8Ball();
    /* 80476940 */ void obj_break(bool, bool, bool);
    /* 80476A5C */ bool check_cc_damage_proc_base(bool);
    /* 80476B04 */ bool cc_damage_proc_kotubo();
    /* 80476B68 */ bool cc_damage_proc_ootubo();
    /* 80476B88 */ bool cc_damage_proc_kibako();
    /* 80476CE4 */ bool cc_damage_proc_ironball();
    /* 80476E04 */ bool cc_damage_proc_taru();
    /* 80476F88 */ bool cc_damage_proc_dokuro();
    /* 80476FA8 */ bool cc_damage_proc_bokkuri();
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
    /* 80479664 */ int CreateInitCall();

    s32 getType() { return mType; }
    u32 getSwbit() { return fopAcM_GetParamBit(this, 6, 8); }
    u32 getSwbit2() { return fopAcM_GetParamBit(this, 14, 8); }
    s8 getRoomNo() { return fopAcM_GetParamBit(this, 0, 6); }

    u32 checkOnMoveBg() { return ~((field_0xd18 >> 0xc) & 1); }
    u32 checkCrashRoll() { return field_0xd18 >> 6 & 1; }
    u8 getItemNo() { return mItemNo; }
    u8 getItemBit() { return mItemNo >> 8; }
    u8 getItemType() { return field_0xd18 & 1; }
    u8 getSaveID() { return getItemNo(); }
    u8 getTrboxBit() { return (mItemNo >> 8) & 0x3F; }
    u32 getSetType() { return (field_0xd18 >> 13) & 0x7; }
    bool prm_chk_type_ironball() { return getType() == TYPE_IRON_BALL; }
    bool prm_chk_type_lightball() { return getType() == TYPE_BALL_S || getType() == TYPE_BALL_S_2; }
    void startCtrl() { mCtrl = 1; }
    void endCtrl() { mCtrl = 0; }
    void setDrop() { field_0xcf2 = 3; }
    void offDraw() { mDraw = 1; }
    bool isDraw() { return mDraw == false; }

    static void make_prm(csXyz* param_1, u8 param_2, u8 param_3, u8 param_4, u8 param_5,
                         u8 param_6 = 0) {
        param_1->x = (param_4 << 8) | param_3;
        param_1->z = param_5 | (param_6 << 13) | ((u32(param_2) & 0xFF) << 1);
    }

    static const daObjCarry_dt_t mData[];
    static cXyz mPos[5];
    static u8 mSttsFlag[5];
    static s8 mRoomNo[5];
    static bool mSaveFlag;

public:
    /* 0x568 */ request_of_phase_process_class mPhaseReq;
    /* 0x570 */ J3DModel* mpModel;
    /* 0x574 */ dBgS_ObjAcch mAcch;
    /* 0x74C */ dBgS_AcchCir mAcchCir;
    /* 0x78C */ dCcD_Stts mStts;
    /* 0x7C8 */ dCcD_Cyl mCyl;
    /* 0x904 */ dCcD_Sph mLightAtSph;
    /* 0xA3C */ dCcD_Cps mAtCps;
    /* 0xB80 */ dCcD_Cyl mTgCyl;
    /* 0xCBC */ u8 field_0xCBC[0xCEC - 0xCBC];
    /* 0xCEC */ f32 field_0xcec;
    /* 0xCF0 */ u8 mType;
    /* 0xCF1 */ u8 mMode;
    /* 0xCF2 */ u8 field_0xcf2;
    /* 0xCF3 */ u8 field_0xcf3;
    /* 0xCF4 */ cXyz mRotAxis;
    /* 0xD00 */ s16 mRotation;
    /* 0xD02 */ u8 field_0xD02[0xD04 - 0xD02];
    /* 0xD04 */ s16 field_0xd04;
    /* 0xD08 */ cXyz field_0xd08;
    /* 0xD14 */ u8 field_0xd14;
    /* 0xD15 */ bool mInitParams;
    /* 0xD16 */ u16 mItemNo;
    /* 0xD18 */ u16 field_0xd18;
    /* 0xD1A */ u8 field_0xD1A[0xD1C - 0xD1A];
    /* 0xD1C */ cXyz field_0xd1c;
    /* 0xD28 */ daPy_boomerangMove_c mBoomerangMove;
    /* 0xD34 */ u8 field_0xD34[0xD3C - 0xD34];
    /* 0xD3C */ Quaternion field_0xd3c;
    /* 0xD4C */ Quaternion field_0xd4c;
    /* 0xD5C */ f32 field_0xd5c;
    /* 0xD60 */ f32 field_0xd60;
    /* 0xD64 */ s16 field_0xd64;
    /* 0xD66 */ s16 field_0xd66;
    /* 0xD68 */ s16 field_0xd68;
    /* 0xD6A */ s16 field_0xd6a;
    /* 0xD6C */ f32 field_0xd6c;
    /* 0xD70 */ f32 field_0xd70;
    /* 0xD74 */ u8 field_0xd74;
    /* 0xD75 */ u8 field_0xd75;
    /* 0xD76 */ u8 field_0xd76;
    /* 0xD77 */ u8 field_0xd77;
    /* 0xD78 */ u8 field_0xD78[0xD79 - 0xD78];
    /* 0xD79 */ u8 field_0xd79;
    /* 0xD7A */ u8 field_0xd7a;
    /* 0xD7B */ s8 field_0xd7b;
    /* 0xD7C */ csXyz field_0xd7c;
    /* 0xD82 */ u8 field_0xD82[0xD84 - 0xD82];
    /* 0xD84 */ f32 field_0xd84;
    /* 0xD88 */ Z2SoundObjSimple mSound;
    /* 0xDA8 */ u8 field_0xda8;
    /* 0xDA9 */ bool field_0xda9;
    /* 0xDAA */ u8 field_0xdaa;
    /* 0xDAB */ u8 field_0xdab;
    /* 0xDAC */ bool field_0xdac;
    /* 0xDAD */ u8 field_0xdad;
    /* 0xDAE */ u8 field_0xdae;
    /* 0xDAF */ u8 field_0xdaf;
    /* 0xDB0 */ u8 field_0xdb0;
    /* 0xDB1 */ u8 field_0xdb1;
    /* 0xDB2 */ u8 mOnMoveBG;
    /* 0xDB3 */ u8 field_0xdb3;
    /* 0xDB4 */ u8 field_0xdb4;
    /* 0xDB5 */ bool mCanCrashRoll;
    /* 0xDB6 */ u8 mDeleteTimer;
    /* 0xDB7 */ bool mDraw;
    /* 0xDB8 */ u8 mCtrl;
    /* 0xDB9 */ u8 field_0xdb9;
    /* 0xDBA */ bool mReset;
    /* 0xDBB */ u8 mCarryHookOK;
    /* 0xDBC */ u8 mRecover;
    /* 0xDBD */ u8 field_0xDBD[0xDC4 - 0xDBD];
    /* 0xDC4 */ int field_0xdc4;
    /* 0xDC8 */ f32 field_0xdc8;
    /* 0xDCC */ f32 field_0xdcc;
    /* 0xDD0 */ fopAc_ac_c* mpCannonActor;
    /* 0xDD4 */ u32 field_0xdd4;
    /* 0xDD8 */ u8 field_0xDD8[0xDDC - 0xDD8];
    /* 0xDDC */ f32 field_0xddc;
    /* 0xDE0 */ f32 field_0xde0;
    /* 0xDE4 */ f32 field_0xde4;
    /* 0xDE8 */ s16 field_0xde8;
    /* 0xDEA */ u8 field_0xdea;
    /* 0xDEB */ bool mCannon;
    /* 0xDEC */ cXyz field_0xdec;
    /* 0xDF8 */ DALKMIST_INFLUENCE mDalkmistInf;
    /* 0xE0C */ u8 field_0xe0c;
    /* 0xE0D */ u8 field_0xe0d;
    /* 0xE0E */ u8 field_0xE0E[0xE10 - 0xE0E];
    /* 0xE10 */ dJntCol_c mJntCol;
    /* 0xE20 */ f32 field_0xe20;
    /* 0xE24 */ s8 field_0xe24;
    /* 0xE25 */ u8 field_0xe25;
    /* 0xE26 */ u8 field_0xe26;
    /* 0xE27 */ u8 field_0xe27;

private:
    u16 getType_private() { return field_0xd18 >> 1 & 0x1f; }
};

STATIC_ASSERT(sizeof(daObjCarry_c) == 0xE28);

#endif /* D_A_OBJ_CARRY_H */
