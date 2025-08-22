#ifndef D_A_D_A_ALINK_H
#define D_A_D_A_ALINK_H

#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "Z2AudioLib/Z2WolfHowlMgr.h"
#include "d/actor/d_a_player.h"
#include "d/actor/d_a_tag_mmsg.h"
#include "d/d_eye_hl.h"
#include "d/d_jnt_col.h"
#include "d/d_msg_flow.h"
#include "d/d_particle_copoly.h"
#include "d/d_save.h"
#include "f_op/f_op_actor_mng.h"

class J2DAnmColorKey;
class J2DAnmTransformKey;
class J2DScreen;
class J2DPane;
class J2DAnmBase;
class J3DAnmTevRegKey;
class dDemo_actor_c;
class daAlinkHIO_anm_c;
class daScex_c;
class fopEn_enemy_c;

class daAlink_lockCursor_c : public dDlst_base_c {
public:
    daAlink_lockCursor_c() {}
    /* 80125F14 */ BOOL create();
    /* 80126358 */ void update();
    /* 80126424 */ virtual void draw();
    /* 800CFE68 */ virtual ~daAlink_lockCursor_c() {}

    void initFrame() {
        field_0x4 = 0;
        field_0x2c = 4.0f;
        field_0x30 = 0.0f;
    }

    void setPos(f32 i_posX, f32 i_posY) {
        mPosX = i_posX;
        mPosY = i_posY;
    }

private:
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5[3];
    /* 0x08 */ J2DScreen* mScrn;
    /* 0x0C */ J2DPane* field_0xc;
    /* 0x10 */ J2DPane* mCursor0;
    /* 0x14 */ J2DPane* mCursor1;
    /* 0x18 */ J2DPane* mCursor2;
    /* 0x1C */ J2DAnmTevRegKey* field_0x1c;
    /* 0x20 */ J2DAnmTevRegKey* field_0x20;
    /* 0x24 */ J2DAnmColorKey* field_0x24;
    /* 0x28 */ J2DAnmTransformKey* field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 mPosX;
    /* 0x38 */ f32 mPosY;
};

class daAlink_sight_c : public daPy_sightPacket_c {
public:
    daAlink_sight_c() {}
    /* 80126650 */ BOOL create();
    /* 80126710 */ void onLockFlg();

    /* 801266C0 */ virtual void draw();
    /* 800CFDF4 */ virtual ~daAlink_sight_c() {}

    bool getLockFlg() { return mLockFlag; }
    void offLockFlg() { mLockFlag = false; }

    /* 0x4C */ bool mLockFlag;
    /* 0x4D */ u8 field_0x4d[3];
    /* 0x50 */ daAlink_lockCursor_c mLockCursor;
};

class daAlink_blur_c : public J3DPacket {
public:
    daAlink_blur_c() {}
    /* 801256EC */ void initBlur(f32, int, cXyz const*, cXyz const*, cXyz const*);
    /* 8012589C */ void copyBlur(cXyz const*, cXyz const*, cXyz const*);
    /* 80125B0C */ void traceBlur(cXyz const*, cXyz const*, s16);

    /* 80125BF4 */ virtual void draw();
    /* 800CFD58 */ virtual ~daAlink_blur_c() {}

    // private:
    /* 0x010 */ ResTIMG* m_blurTex;
    /* 0x014 */ int field_0x14;
    /* 0x018 */ u8 field_0x18[4];
    /* 0x01C */ int field_0x1c;
    /* 0x020 */ int field_0x20;
    /* 0x024 */ f32 field_0x24;
    /* 0x028 */ u8 field_0x28[4];
    /* 0x02C */ cXyz field_0x2c;
    /* 0x038 */ cXyz field_0x38[60];
    /* 0x308 */ cXyz field_0x308[60];
};  // Size = 0x5D8

class dAlink_bottleWaterPcallBack_c : public JPAParticleCallBack {
public:
    dAlink_bottleWaterPcallBack_c() { initialize(0.0f); }
    /* 80124A2C */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 800CFCF8 */ virtual ~dAlink_bottleWaterPcallBack_c() {}

    void initialize(f32 minY) {
        mHitFlg = 0;
        mAppearFlg = 0;
        mKeepMinY = minY;
    }

    s16 getAppearFlg() const { return mAppearFlg; }
    s16 getHitFlg() const { return mHitFlg; }
    cXyz& getHitPos() { return mHitPos; }
    f32 getKeepMinY() { return mKeepMinY; }

    void onAppearFlg() { mAppearFlg = true; }

private:
    /* 0x04 */ s16 mHitFlg;
    /* 0x06 */ s16 mAppearFlg;
    /* 0x08 */ f32 mKeepMinY;
    /* 0x0C */ cXyz mHitPos;
};  // Size = 0x18

class daAlink_footData_c {
public:
    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x06 */ s16 field_0x6;
    /* 0x08 */ cXyz field_0x8;
    /* 0x14 */ Mtx field_0x14[3];
};  // Size: 0xA4

STATIC_ASSERT(sizeof(daAlink_footData_c) == 0xA4);

class daAlink_matAnm_c : public J3DMaterialAnm {
public:
    daAlink_matAnm_c() { init(); }

    /* 8009D8E4 */ void init();
    /* 800D0180 */ void offSetFlg() { mSetFlag = FALSE; }

    /* 800D0B8C */ virtual ~daAlink_matAnm_c() {}
    /* 8009D90C */ virtual void calc(J3DMaterial*) const;

    static void decMorfFrame() { cLib_calcTimer<u8>(&m_morf_frame); }
    static void setMorfFrame(u8 i_frame) { m_morf_frame = i_frame; }
    static u8 getMorfFrame() { return m_morf_frame; }

    static void onEyeMoveFlg() { m_eye_move_flg = true; }
    static void offEyeMoveFlg() { m_eye_move_flg = false; }
    static bool getEyeMoveFlg() { return m_eye_move_flg; }

    f32* getNowOffsetXP() { return &mNowOffsetX; }
    f32* getNowOffsetYP() { return &mNowOffsetY; }
    void setNowOffsetX(f32 i_offset) { mNowOffsetX = i_offset; }
    void setNowOffsetY(f32 i_offset) { mNowOffsetY = i_offset; }

    static bool m_eye_move_flg;
    static u8 m_morf_frame;

    /* 0x0F4 */ f32 field_0xf4;
    /* 0x0F8 */ f32 field_0xf8;
    /* 0x0FC */ f32 mNowOffsetX;
    /* 0x100 */ f32 mNowOffsetY;
    /* 0x104 */ int mSetFlag;
};

// this class is mostly a complete guess
class daAlink_hsChainLight_c : public dKy_tevstr_c {
public:
    GXLightObj* getLightObj() { return &mLightObj.mLightObj; }
};

struct daAlink_BckData {
    /* 0x0 */ u16 m_underID;
    /* 0x2 */ u16 m_upperID;
};

struct daAlink_FaceTexData {
    /* 0x0 */ u16 m_btpID;
    /* 0x2 */ u16 m_btkID;
};

struct daAlink_AnmData {
    /* 0x0 */ daAlink_BckData field_0x0;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u16 m_faceTexID;
    /* 0x8 */ u16 m_faceBckID;
    /* 0xA */ u16 field_0xa;
};  // Size: 0xC

struct daAlink_WlAnmData {
    /* 0x0 */ u16 field_0x0;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
    /* 0x4 */ u16 field_0x4;
    /* 0x6 */ u8 field_0x6;
    /* 0x7 */ u8 field_0x7;
};  // Size: 0x8

class daAlinkHIO_wolf_c {
public:
    /* 80140B98 */ ~daAlinkHIO_wolf_c();

    /* 0x0 */ u8 unk_0x0;
};

class daAlinkHIO_cut_c {
public:
    /* 80140BD4 */ ~daAlinkHIO_cut_c();

    /* 0x0 */ u8 unk_0x0;
};

class daAlinkHIO_c 
#ifdef DEBUG
: public mDoHIO_entry_c 
#endif
{
public:
    /* 80140B88 */ daAlinkHIO_c();
    /* 80140C10 */ virtual ~daAlinkHIO_c();

    void genMessage(JORMContext*);
    void jumpStateUpdate(const cXyz*, const cXyz*, f32);

    /* 0x04 */ u8 field_0x4[0xC - 0x4];
    /* 0x0C */ daAlinkHIO_cut_c mCut;
    /* 0x0D */ u8 field_0xD[0x4B - 0xD];
    /* 0x4B */ daAlinkHIO_wolf_c mWolf;
    /* 0x4C */ u8 field_0x4C[0x6C - 0x4C];
};

class daAlink_c;
typedef int (daAlink_c::*daAlink_procFunc)();
typedef void (daAlink_c::*EffParamProc)();

struct daAlink_procInitTable {
    /* 0x0 */ daAlink_procFunc m_procFunc;
    /* 0xC */ u32 m_mode;
};  // Size: 0x10

class daAlink_c : public daPy_py_c {
public:
    enum daAlink_ANM {
        /* 0x000 */ ANM_ATN_RETURN_FROM_WALK,
        /* 0x001 */ ANM_ATN_RETURN_FROM_RUN,
        /* 0x002 */ ANM_ATN_BACK_WALK,
        /* 0x003 */ ANM_ATN_BACK_RUN,
        /* 0x004 */ ANM_ATN_LOCK_BACK_WALK,
        /* 0x005 */ ANM_ATN_LOCK_BACK_RUN,
        /* 0x006 */ ANM_ATN_WALK_LEFT,
        /* 0x007 */ ANM_ATN_LOCK_WALK_LEFT,
        /* 0x008 */ ANM_ATN_WALK_RIGHT,
        /* 0x009 */ ANM_ATN_LOCK_WALK_RIGHT,
        /* 0x00A */ ANM_ATN_RUN_LEFT,
        /* 0x00B */ ANM_ATN_LOCK_RUN_LEFT,
        /* 0x00C */ ANM_ATN_RUN_RIGHT,
        /* 0x00D */ ANM_ATN_LOCK_RUN_RIGHT,
        /* 0x00E */ ANM_WALK_HEAVY,
        /* 0x00F */ ANM_ATN_BACK_WALK_HEAVY,
        /* 0x010 */ ANM_ATN_WAIT_LEFT,
        /* 0x011 */ ANM_ATN_WAIT_RIGHT,
        /* 0x012 */ ANM_WALK,
        /* 0x013 */ ANM_RUN,
        /* 0x014 */ ANM_SWIM_WAIT,
        /* 0x015 */ ANM_STEP_TURN,
        /* 0x016 */ ANM_SMALL_GUARD,
        /* 0x017 */ ANM_STEP_TURN_TIRED,
        /* 0x018 */ ANM_SMALL_GUARD_TIRED,
        /* 0x019 */ ANM_WAIT,
        /* 0x01A */ ANM_WAIT_B,
        /* 0x01B */ ANM_WAIT_B_TO_A,
        /* 0x01C */ ANM_RUN_B,
        /* 0x01D */ ANM_SIDE_JUMP_LEFT,
        /* 0x01E */ ANM_SIDE_JUMP_RIGHT,
        /* 0x01F */ ANM_SIDE_JUMP_LEFT_LAND,
        /* 0x020 */ ANM_SIDE_JUMP_RIGHT_LAND,
        /* 0x021 */ ANM_BACK_JUMP,
        /* 0x022 */ ANM_BACK_JUMP_LAND,
        /* 0x023 */ ANM_FRONT_ROLL,
        /* 0x024 */ ANM_ROLL_CRASH,
        /* 0x025 */ ANM_BARRIER_RECOIL,  // ?
        /* 0x026 */ ANM_BACKFLIP,
        /* 0x027 */ ANM_BACKFLIP_LAND,
        /* 0x028 */ ANM_SLIP,
        /* 0x029 */ ANM_CROUCH,
        /* 0x02A */ ANM_CROUCH_START,
        /* 0x02B */ ANM_GUARD_LEFT,
        /* 0x02C */ ANM_GUARD_RIGHT,
        /* 0x02D */ ANM_CROUCH_DEF,  // ?
        /* 0x02E */ ANM_SHIELD_ATTACK,
        /* 0x02F */ ANM_SHIELD_ATTACK_RECOIL,
        /* 0x030 */ ANM_GUARD_BREAK,
        /* 0x031 */ ANM_JUMP_START,
        /* 0x032 */ ANM_JUMP,
        /* 0x033 */ ANM_JUMP_LAND,
        /* 0x034 */ ANM_CRAWL_START,
        /* 0x035 */ ANM_CRAWL,
        /* 0x036 */ ANM_WAIT_PUSH_PULL,
        /* 0x037 */ ANM_PUSH_LIGHT,
        /* 0x038 */ ANM_PUSH_START,
        /* 0x039 */ ANM_PUSH,
        /* 0x03A */ ANM_PULL_LIGHT,
        /* 0x03B */ ANM_PULL_START,
        /* 0x03C */ ANM_PULL,
        /* 0x03D */ ANM_HORSE_MOUNT_LEFT,
        /* 0x03E */ ANM_HORSE_MOUNT_RIGHT,
        /* 0x03F */ ANM_HORSE_MOUNT_BACK,
        /* 0x040 */ ANM_HORSE_GETOFF_LEFT,
        /* 0x041 */ ANM_HORSE_GETOFF_RIGHT,
        /* 0x042 */ ANM_HORSE_STOP,
        /* 0x043 */ ANM_HORSE_STOP_TO_STAND,
        /* 0x044 */ ANM_HORSE_STAND,
        /* 0x045 */ ANM_HORSE_JUMP_START,
        /* 0x046 */ ANM_HORSE_JUMP,
        /* 0x047 */ ANM_HORSE_JUMP_LAND,
        /* 0x048 */ ANM_HORSE_WAIT,
        /* 0x049 */ ANM_HORSE_WALK_A,
        /* 0x04A */ ANM_HORSE_WALK_B,
        /* 0x04B */ ANM_HORSE_DASH_A,
        /* 0x04C */ ANM_HORSE_DASH_B,
        /* 0x04D */ ANM_WSTARTH,  // ?
        /* 0x04E */ ANM_HORSE_DASH_START,
        /* 0x04F */ ANM_HORSE_LASH,
        /* 0x050 */ ANM_HORSE_CUT_TURN,
        /* 0x051 */ ANM_HORSE_WAIT_A,
        /* 0x052 */ ANM_HORSE_WAIT_B,
        /* 0x053 */ ANM_HORSE_DIE_RECOVER,
        /* 0x054 */ ANM_HORSE_TURN_B,
        /* 0x055 */ ANM_HORSE_CROUCH,
        /* 0x056 */ ANM_HORSE_DMG_LEFT,
        /* 0x057 */ ANM_HORSE_DMG_RIGHT,
        /* 0x058 */ ANM_HORSE_HANG_LEFT,
        /* 0x059 */ ANM_HORSE_HANG_RIGHT,
        /* 0x05A */ ANM_HORSE_TURN_LEFT,
        /* 0x05B */ ANM_HORSE_TURN_RIGHT,
        /* 0x05C */ ANM_HORSE_RIDE_LEFT,
        /* 0x05D */ ANM_HORSE_RIDE_RIGHT,
        /* 0x05E */ ANM_HORSE_FALL_LEFT,
        /* 0x05F */ ANM_HORSE_FALL_RIGHT,
        /* 0x060 */ ANM_HORSE_TAME_WAIT_B,
        /* 0x061 */ ANM_HORSE_TAME_WAIT_A_TO_B,
        /* 0x062 */ ANM_CUT_NM_VERTICAL,
        /* 0x063 */ ANM_CUT_NM_LEFT,
        /* 0x064 */ ANM_CUT_NM_RIGHT,
        /* 0x065 */ ANM_CUT_COMBO_STAB,
        /* 0x066 */ ANM_CUT_NM_STAB,
        /* 0x067 */ ANM_CUT_FINISH_LEFT,
        /* 0x068 */ ANM_CUT_FINISH_VERTICAL,
        /* 0x069 */ ANM_CUT_FINISH_STAB,
        /* 0x06A */ ANM_CUT_MORTAL_DRAW_A,
        /* 0x06B */ ANM_CUT_MORTAL_DRAW_B,
        /* 0x06C */ ANM_CUT_FINISH_RIGHT,
        /* 0x06D */ ANM_CUT_TWIRL,
        /* 0x06E */ ANM_CUT_TWIRL_LAND,
        /* 0x06F */ ANM_CUT_RECOIL_A,
        /* 0x070 */ ANM_CUT_RECOIL_B,
        /* 0x071 */ ANM_CUT_JUMP,
        /* 0x072 */ ANM_CUT_JUMP_LAND,
        /* 0x073 */ ANM_CUT_TURN_LEFT,
        /* 0x074 */ ANM_CUT_TURN_RIGHT,
        /* 0x075 */ ANM_CUT_TURN_CHARGE_START,
        /* 0x076 */ ANM_CUT_TURN_CHARGE,
        /* 0x077 */ ANM_CUT_TURN_CHARGE_MOVE,
        /* 0x078 */ ANM_CUT_FINISHING_BLOW_JUMP,
        /* 0x079 */ ANM_CUT_FINISHING_BLOW_FALL,
        /* 0x07A */ ANM_CUT_FINISHING_BLOW_STAB,
        /* 0x07B */ ANM_CUT_FINISHING_BLOW_MISS,
        /* 0x07C */ ANM_CUT_HEAD_JUMP,
        /* 0x07D */ ANM_CUT_HEAD,
        /* 0x07E */ ANM_CUT_HEAD_LAND,
        /* 0x07F */ ANM_DMG_SMALL_A,
        /* 0x080 */ ANM_DMG_SMALL_B,
        /* 0x081 */ ANM_DMG_SMALL_LEFT,
        /* 0x082 */ ANM_DMG_SMALL_RIGHT,
        /* 0x083 */ ANM_DMG_AIR_FRONT,
        /* 0x084 */ ANM_DMG_LARGE,
        /* 0x085 */ ANM_DMG_AIR_LEFT,
        /* 0x086 */ ANM_DMG_AIR_RIGHT,
        /* 0x087 */ ANM_DMG_AIR_LAND,
        /* 0x088 */ ANM_DMG_LARGE_LAND,
        /* 0x089 */ ANM_DMG_AIR_LEFT_LAND,
        /* 0x08A */ ANM_DMG_AIR_RIGHT_LAND,
        /* 0x08B */ ANM_DMG,
        /* 0x08C */ ANM_DMG_FALL,
        /* 0x08D */ ANM_DMG_FALL_RECOVER,
        /* 0x08E */ ANM_FINISH,
        /* 0x08F */ ANM_FINISH_END,
        /* 0x090 */ ANM_SERVICE_WAIT,
        /* 0x091 */ ANM_CLIMB_JUMP,
        /* 0x092 */ ANM_HANG_READY,
        /* 0x093 */ ANM_CLIMB_TOP_SMALL,
        /* 0x094 */ ANM_HANG_CLIMB_TOP,
        /* 0x095 */ ANM_HANG_ONE_HAND,
        /* 0x096 */ ANM_HANG_ONE_HAND_MOVE,
        /* 0x097 */ ANM_HANG_MOVE_LEFT,
        /* 0x098 */ ANM_HANG_MOVE_RIGHT,
        /* 0x099 */ ANM_LADDER_UP_START,
        /* 0x09A */ ANM_LADDER_UP_END_LEFT,
        /* 0x09B */ ANM_LADDER_UP_END_RIGHT,
        /* 0x09C */ ANM_LADDER_DOWN_START,
        /* 0x09D */ ANM_LADDER_DOWN_END_LEFT,
        /* 0x09E */ ANM_LADDER_DOWN_END_RIGHT,
        /* 0x09F */ ANM_LADDER_RIGHT_TO_LEFT,
        /* 0x0A0 */ ANM_LADDER_LEFT_TO_RIGHT,
        /* 0x0A1 */ ANM_CLIMB_HANG,
        /* 0x0A2 */ ANM_CLIMB_START,
        /* 0x0A3 */ ANM_CLIMB_LEFT,
        /* 0x0A4 */ ANM_CLIMB_RIGHT,
        /* 0x0A5 */ ANM_CLIMB_SLIDE_LEFT,
        /* 0x0A6 */ ANM_CLIMB_SLIDE_RIGHT,
        /* 0x0A7 */ ANM_CLIMB_HANG_MISS,
        /* 0x0A8 */ ANM_ROOF_UP,
        /* 0x0A9 */ ANM_ROOF_HANG_WAIT,
        /* 0x0AA */ ANM_ROOF_HANG_MOVE,
        /* 0x0AB */ ANM_ROOF_HANG_LEFT,
        /* 0x0AC */ ANM_ROOF_HANG_RIGHT,
        /* 0x0AD */ ANM_ROOF_HANG_TURN,
        /* 0x0AE */ ANM_ROOF_HANG,
        /* 0x0AF */ ANM_GRAB_UP_START,
        /* 0x0B0 */ ANM_GRAB_UP,
        /* 0x0B1 */ ANM_THROW,
        /* 0x0B2 */ ANM_THROW_HEAVY,
        /* 0x0B3 */ ANM_PICK_UP_LARGE_START,
        /* 0x0B4 */ ANM_PICK_UP_LARGE,
        /* 0x0B5 */ ANM_CARRY,
        /* 0x0B6 */ ANM_WAIT_TIRED,
        /* 0x0B7 */ ANM_WAIT_TO_TIRED,
        /* 0x0B8 */ ANM_TALK,
        /* 0x0B9 */ ANM_WAIT_START,
        /* 0x0BA */ ANM_FROZEN_FREE,  // ?
        /* 0x0BB */ ANM_BOOMERANG_CATCH,
        /* 0x0BC */ ANM_WALK_SLOPE,
        /* 0x0BD */ ANM_SLIDE_FORWARD,
        /* 0x0BE */ ANM_SLIDE_BACKWARD,
        /* 0x0BF */ ANM_SLIDE_FORWARD_END,
        /* 0x0C0 */ ANM_SLIDE_BACKWARD_END,
        /* 0x0C1 */ ANM_SWIM_A,
        /* 0x0C2 */ ANM_SWIM_RESURFACE,
        /* 0x0C3 */ ANM_ATN_SWIM_LEFT,
        /* 0x0C4 */ ANM_ATN_SWIM_RIGHT,
        /* 0x0C5 */ ANM_ATN_SWIM_BACK,
        /* 0x0C6 */ ANM_SWIM_DASH,
        /* 0x0C7 */ ANM_SWIM_DIVE,
        /* 0x0C8 */ ANM_SWIM_ZORA_START,
        /* 0x0C9 */ ANM_SWIM_C,
        /* 0x0CA */ ANM_SWIM_DMG_FRONT,
        /* 0x0CB */ ANM_SWIM_DMG_BACK,
        /* 0x0CC */ ANM_SWIM_DMG_LEFT,
        /* 0x0CD */ ANM_SWIM_DMG_RIGHT,
        /* 0x0CE */ ANM_SWIM_DMG_FREEZE,
        /* 0x0CF */ ANM_TRES_OPEN_SMALL,
        /* 0x0D0 */ ANM_TRES_OPEN_KICK,
        /* 0x0D1 */ ANM_TRES_OPEN_BIG,
        /* 0x0D2 */ ANM_GET_A,
        /* 0x0D3 */ ANM_GET_A_WAIT,
        /* 0x0D4 */ ANM_GET_A_WAIT2,  // same under anm, upper anm (0x26A)
        /* 0x0D5 */ ANM_GET_HOLDOUT,
        /* 0x0D6 */ ANM_TURN_BACK,
        /* 0x0D7 */ ANM_VJUMP_START,
        /* 0x0D8 */ ANM_WAIT_SIT,
        /* 0x0D9 */ ANM_WAIT_CANOE_LEFT,
        /* 0x0DA */ ANM_WAIT_CANOE_RIGHT,
        /* 0x0DB */ ANM_CANOE_ROW_LEFT,
        /* 0x0DC */ ANM_CANOE_ROW_RIGHT,
        /* 0x0DD */ ANM_CANOE_ROW_LEFT_BACK,
        /* 0x0DE */ ANM_CANOE_ROW_RIGHT_BACK,
        /* 0x0DF */ ANM_CANOE_CHANGE_HAND,
        /* 0x0E0 */ ANM_CANOE_FISH_LEFT,
        /* 0x0E1 */ ANM_CANOE_FISH_RIGHT,
        /* 0x0E2 */ ANM_CANOE_REEL,
        /* 0x0E3 */ ANM_CANOE_RELEASE,
        /* 0x0E4 */ ANM_CANOE_PADDLE_TO_ROD,
        /* 0x0E5 */ ANM_REEL,
        /* 0x0E6 */ ANM_REEL_LEFT_RIGHT,
        /* 0x0E7 */ ANM_LAND_UP,  // ?
        /* 0x0E8 */ ANM_DOOR_OPEN_LEFT,
        /* 0x0E9 */ ANM_DOOR_OPEN_RIGHT,
        /* 0x0EA */ ANM_DOOR_OPEN_LOCK_LEFT,
        /* 0x0EB */ ANM_DOOR_OPEN_LOCK_RIGHT,
        /* 0x0EC */ ANM_DOOR_OPEN_ROLL,
        /* 0x0ED */ ANM_DOOR_OPEN_SLIDE,
        /* 0x0EE */ ANM_PICK_UP,
        /* 0x0EF */ ANM_ROLL_JUMP,
        /* 0x0F0 */ ANM_SIDE_ROLL_LEFT,
        /* 0x0F1 */ ANM_SIDE_ROLL_RIGHT,
        /* 0x0F2 */ ANM_RIDE_WAIT,
        /* 0x0F3 */ ANM_RIDE_FRONT,
        /* 0x0F4 */ ANM_RIDE_CROUCH,
        /* 0x0F5 */ ANM_RIDE_STOP,
        /* 0x0F6 */ ANM_RIDE_JUMP_START,
        /* 0x0F7 */ ANM_RIDE_JUMP,
        /* 0x0F8 */ ANM_RIDE_JUMP_LAND,
        /* 0x0F9 */ ANM_RIDE_KICK,
        /* 0x0FA */ ANM_RIDE_CUT_TURN_CHARGE,
        /* 0x0FB */ ANM_RIDE_CUT_TURN,
        /* 0x0FC */ ANM_ROPE_SWING,  // monkey swing?
        /* 0x0FD */ ANM_TRANSFORM_TO_WOLF,
        /* 0x0FE */ ANM_TRANSFORM_TO_HUMAN,
        /* 0x0FF */ ANM_WAIT_WIND,
        /* 0x100 */ ANM_BOTTLE_DRINK_START,
        /* 0x101 */ ANM_BOTTLE_DRINK,
        /* 0x102 */ ANM_BOTTLE_DRINK_END,
        /* 0x103 */ ANM_BOTTLE_DRINK_NASTY,
        /* 0x104 */ ANM_BOTTLE_OPEN,
        /* 0x105 */ ANM_BOTTLE_POUR,
        /* 0x106 */ ANM_BOTTLE_FAIRY,
        /* 0x107 */ ANM_BOTTLE_SWING,
        /* 0x108 */ ANM_BOTTLE_SWING_DOWN,
        /* 0x109 */ ANM_BOTTLE_GET,
        /* 0x10A */ ANM_BOTTLE_SCOOP,
        /* 0x10B */ ANM_LANTERN_SWING,
        /* 0x10C */ ANM_OIL_BOTTLE_POUR_START,
        /* 0x10D */ ANM_OIL_BOTTLE_POUR,
        /* 0x10E */ ANM_OIL_BOTTLE_POUR_END,
        /* 0x10F */ ANM_GRASS_WHISTLE_START,
        /* 0x110 */ ANM_GRASS_WHISTLE_PLAY,
        /* 0x111 */ ANM_HAWK_CATCH,
        /* 0x112 */ ANM_HAWK_WAIT,
        /* 0x113 */ ANM_WAIT_D_B,        // ghost rats?
        /* 0x114 */ ANM_HORSE_WAIT_D_B,  // ?
        /* 0x115 */ ANM_MG_KICK,         // ?
        /* 0x116 */ ANM_DIE,
        /* 0x117 */ ANM_HORSE_DIE,
        /* 0x118 */ ANM_SWIM_DIE,
        /* 0x119 */ ANM_SWIM_DROWN,
        /* 0x11A */ ANM_ATN_COW,
        /* 0x11B */ ANM_COW_CATCH_START,
        /* 0x11C */ ANM_COW_CATCH,
        /* 0x11D */ ANM_COW_A_D,  // ?
        /* 0x11E */ ANM_COW_PRESS,
        /* 0x11F */ ANM_COW_THROW_LEFT,
        /* 0x120 */ ANM_COW_THROW_RIGHT,
        /* 0x121 */ ANM_ATN_RIGHT,
        /* 0x122 */ ANM_COW_MOVE_LEFT_RIGHT,
        /* 0x123 */ ANM_COW_STROKE,
        /* 0x124 */ ANM_ENTRANCE,
        /* 0x125 */ ANM_FALL,
        /* 0x126 */ ANM_APPEARANCE,
        /* 0x127 */ ANM_S_JUMP_START,  // ?
        /* 0x128 */ ANM_S_JUMP_END,    // ?
        /* 0x129 */ ANM_HOOKSHOT_FLY_LEFT,
        /* 0x12A */ ANM_HOOKSHOT_FLY_RIGHT,
        /* 0x12B */ ANM_HOOKSHOT_SHOOT,
        /* 0x12C */ ANM_HOOKSHOT_HANG_END_LEFT,
        /* 0x12D */ ANM_HOOKSHOT_HANG_END_RIGHT,
        /* 0x12E */ ANM_HOOKSHOT_HANG_LEFT,
        /* 0x12F */ ANM_HOOKSHOT_HANG_RIGHT,
        /* 0x130 */ ANM_HOOKSHOT_HANG_WAIT_LEFT,
        /* 0x131 */ ANM_HOOKSHOT_HANG_WAIT_RIGHT,
        /* 0x132 */ ANM_HOOKSHOT_HANG_SHOOT_LEFT,
        /* 0x133 */ ANM_HOOKSHOT_HANG_SHOOT_RIGHT,
        /* 0x134 */ ANM_HOOKSHOT_HANG_LEFT_START,
        /* 0x135 */ ANM_HOOKSHOT_HANG_RIGHT_START,
        /* 0x136 */ ANM_HOOKSHOT_WALL_END_LEFT,
        /* 0x137 */ ANM_HOOKSHOT_WALL_END_RIGHT,
        /* 0x138 */ ANM_HOOKSHOT_WALL_LEFT,
        /* 0x139 */ ANM_HOOKSHOT_WALL_RIGHT,
        /* 0x13A */ ANM_HOOKSHOT_WALL_WAIT_LEFT,
        /* 0x13B */ ANM_HOOKSHOT_WALL_WAIT_RIGHT,
        /* 0x13C */ ANM_HOOKSHOT_WALL_SHOOT_LEFT,
        /* 0x13D */ ANM_HOOKSHOT_WALL_SHOOT_RIGHT,
        /* 0x13E */ ANM_HVY_BOOTS_PUT_ON,
        /* 0x13F */ ANM_SUMOU_MIAU,     // ?
        /* 0x140 */ ANM_SUMOU_HAKEYOI,  // ?
        /* 0x141 */ ANM_SUMOU_FIGHT_WAIT,
        /* 0x142 */ ANM_SUMOU_FIGHT_STEP_LEFT,
        /* 0x143 */ ANM_SUMOU_FIGHT_STEP_RIGHT,
        /* 0x144 */ ANM_SUMOU_FIGHT_STEP,
        /* 0x145 */ ANM_SUMOU_TACKLE,
        /* 0x146 */ ANM_SUMOU_TACKLE_GORON,  // ?
        /* 0x147 */ ANM_SUMOU_DODGE_TACKLE,
        /* 0x148 */ ANM_SUMOU_TACKLE_MISS,
        /* 0x149 */ ANM_SUMOU_TACKLE_SHOCK,
        /* 0x14A */ ANM_SUMOU_TACKLE_WAIT,
        /* 0x14B */ ANM_SUMOU_TACKLE_WAIT_GORON,  // ?
        /* 0x14C */ ANM_SUMOU_TACKLE_STAGGER,
        /* 0x14D */ ANM_SUMOU_TACKLE_STAGGER_GORON,  // ?
        /* 0x14E */ ANM_SUMOU_TACKLE_SHOCK_RETURN,
        /* 0x14F */ ANM_SUMOU_PUNCH,
        /* 0x150 */ ANM_SUMOU_PUNCH_MISS_SHOCK,
        /* 0x151 */ ANM_SUMOU_PUNCH_MISS_SHOCK_RETURN,
        /* 0x152 */ ANM_SUMOU_PUNCH_SHOCK,
        /* 0x153 */ ANM_SUMOU_STAGGER,
        /* 0x154 */ ANM_SUMOU_PUSH_BACK,
        /* 0x155 */ ANM_SUMOU_PULL_BACK,
        /* 0x156 */ ANM_SUMOU_PULL_BACK_GORON,  // ?
        /* 0x157 */ ANM_SUMOU_WIN,
        /* 0x158 */ ANM_SUMOU_WIN_GORON,
        /* 0x159 */ ANM_SUMOU_LOSE,
        /* 0x15A */ ANM_SUMOU_LOSE_GORON,
        /* 0x15B */ ANM_SUMOU_KNOCKED_DOWN,
        /* 0x15C */ ANM_SUMOU_GET_UP,
        /* 0x15D */ ANM_SUMOU_SHIKO,
        /* 0x15E */ ANM_SUMOU_SHIKO_WAIT,
        /* 0x15F */ ANM_DMG_FBW,  // ?
        /* 0x160 */ ANM_IRONBALL_WAIT,
        /* 0x161 */ ANM_IRONBALL_WALK,
        /* 0x162 */ ANM_IRONBALL_ATTACK,
        /* 0x163 */ ANM_IRONBALL_TURN,
        /* 0x164 */ ANM_IRONBALL_THROW,
        /* 0x165 */ ANM_IRONBALL_PULL,
        /* 0x166 */ ANM_IRONBALL_CATCH,
        /* 0x167 */ ANM_IRONBALL_DEF,
        /* 0x168 */ ANM_MORPHEEL_HANG,
        /* 0x169 */ ANM_MORPHEEL_HANG_MISS,
        /* 0x16A */ ANM_MORPHEEL_HANG_WAIT,
        /* 0x16B */ ANM_MORPHEEL_HANG_WAIT_B,
        /* 0x16C */ ANM_MORPHEEL_CUT,
        /* 0x16D */ ANM_MORPHEEL_CUT_B,  // final hit of cycles 1 and 2
        /* 0x16E */ ANM_MORPHEEL_CUT_FINAL,
        /* 0x16F */ ANM_MORPHEEL_SPIT_OUT,
        /* 0x170 */ ANM_DRAGON_HANG_LEFT,
        /* 0x171 */ ANM_DRAGON_HANG_RIGHT,
        /* 0x172 */ ANM_DRAGON_HANG,
        /* 0x173 */ ANM_DRAGON_HANG_WAIT,
        /* 0x174 */ ANM_DRAGON_HANG_WAIT_B,
        /* 0x175 */ ANM_DRAGON_CUT,
        /* 0x176 */ ANM_DRAGON_CUT_B,  // final hit of cycles 1 and 2
        /* 0x177 */ ANM_DRAGON_CUT_FINAL,
        /* 0x178 */ ANM_COPYROD_SWING,
        /* 0x179 */ ANM_COPYROD_SWING_LARGE,
        /* 0x17A */ ANM_GET_MASTER_SWORD,  // ?
        /* 0x17B */ ANM_WAIT_F,
        /* 0x17C */ ANM_ELEC_STUN_GND,
        /* 0x17D */ ANM_ELEC_STUN_AIR,
        /* 0x17E */ ANM_KEY_CATCH,
        /* 0x17F */ ANM_HORSE_GET_ITEM,
        /* 0x180 */ ANM_TWGATE_PULLED_IN,
        /* 0x181 */ ANM_CHAIN_PICK_UP,
        /* 0x182 */ ANM_CHAIN_PULL,
        /* 0x183 */ ANM_CHAIN_PULL_FYRUS,
        /* 0x184 */ ANM_CHAIN_PULL_END,
        /* 0x185 */ ANM_WAIT_INSECT,
        /* 0x186 */ ANM_DEMO_MHOP,  // ?
        /* 0x187 */ ANM_PULL_IRONBALL_SWITCH,
        /* 0x188 */ ANM_TRADE_ITEM_PULL_OUT,
        /* 0x189 */ ANM_TRADE_ITEM_WAIT,
        /* 0x18A */ ANM_DEMO_KAMAE,  // ?
        /* 0x18B */ ANM_CUT_JUMP_LARGE_CHARGE,
        /* 0x18C */ ANM_CUT_JUMP_LARGE_START,
        /* 0x18D */ ANM_CUT_JUMP_LARGE,
        /* 0x18E */ ANM_CUT_JUMP_LARGE_LAND,
        /* 0x18F */ ANM_DEMO_MASTER_SWORD_STICK,
        /* 0x190 */ ANM_DEMO_MASTER_SWORD_WAIT,
        /* 0x191 */ ANM_DEMO_MASTER_SWORD_PULL,
        /* 0x192 */ ANM_GANON_CHANCE,
        /* 0x193 */ ANM_GANON_CHANCE_LOSING,
        /* 0x194 */ ANM_GANON_CHANCE_WINNING,
        /* 0x195 */ ANM_GANON_CHANCE_WIN,
        /* 0x196 */ ANM_GANON_CHANCE_LOSE,
        /* 0x197 */ ANM_GANON_FINISH,
        /* 0x198 */ ANM_GANON_FINISH_WAIT,
        /* 0x199 */ ANM_GANON_ON_HORSE,
        /* 0x19A */ ANM_DIVE_START,
        /* 0x19B */ ANM_DIVE,
        /* 0x19C */ ANM_ODOROKU,   // ?
        /* 0x19D */ ANM_ASHIMOTO,  // ?
        /* 0x19E */ ANM_MAX,
    };

    enum daAlink_UPPER {
        UPPER_0,
        UPPER_1,
        UPPER_2,
    };

    enum daAlink_UNDER {
        UNDER_0,
        UNDER_1,
        UNDER_2,
    };

    enum daAlink_FTANM {
        FTANM_UNK_0 = 0,
        FTANM_UNK_1 = 1,
        FTANM_UNK_3 = 3,
        FTANM_UNK_4 = 4,
        FTANM_UNK_5 = 5,
        FTANM_UNK_8 = 8,
        FTANM_UNK_9 = 9,
        FTANM_UNK_13 = 0x13,
        FTANM_UNK_14 = 0x14,
        FTANM_UNK_20 = 0x20,
        FTANM_UNK_21 = 0x21,
        FTANM_UNK_22 = 0x22,
        FTANM_UNK_23 = 0x23,
        FTANM_UNK_27 = 0x27,
        FTANM_UNK_2D = 0x2D,
        FTANM_UNK_39 = 0x39,
        FTANM_UNK_48 = 0x48,
        FTANM_UNK_75 = 0x75,
        FTANM_UNK_76 = 0x76,
        FTANM_UNK_77 = 0x77,
        FTANM_UNK_7A = 0x7A,
        FTANM_UNK_7B = 0x7B,
        FTANM_UNK_7C = 0x7C,
        FTANM_UNK_8A = 0x8A,
        FTANM_UNK_8B = 0x8B,
        FTANM_UNK_8C = 0x8C,
        FTANM_UNK_8D = 0x8D,
        FTANM_UNK_8E = 0x8E,
        FTANM_UNK_8F = 0x8F,
        FTANM_UNK_90 = 0x90,
        FTANM_UNK_91 = 0x91,
        FTANM_UNK_92 = 0x92,
        FTANM_UNK_93 = 0x93,
        FTANM_UNK_95 = 0x95,
        FTANM_UNK_96 = 0x96,
        FTANM_UNK_97 = 0x97,
        FTANM_UNK_98 = 0x98,
        FTANM_UNK_99 = 0x99,
        FTANM_UNK_9A = 0x9A,
        FTANM_UNK_9B = 0x9B,
        FTANM_UNK_9C = 0x9C,
        FTANM_UNK_9D = 0x9D,
        FTANM_UNK_9E = 0x9E,
        FTANM_UNK_9F = 0x9F,
        FTANM_UNK_A0 = 0xA0,
        FTANM_UNK_A1 = 0xA1,
        FTANM_UNK_A2 = 0xA2,
    };

    enum daAlink_WARP_MAT_MODE {
        WARP_MAT_MODE_0,
        WARP_MAT_MODE_1,
    };

    enum daAlink_WANM {
        /* 0x00 */ WANM_WAIT,
        /* 0x01 */ WANM_WALK_A,
        /* 0x02 */ WANM_WALK_B,
        /* 0x03 */ WANM_DASH_A,
        /* 0x04 */ WANM_JUMP_ATTACK_START,
        /* 0x05 */ WANM_JUMP_ATTACK,
        /* 0x06 */ WANM_JUMP_ATTACK_END,
        /* 0x07 */ WANM_WAIT_PP,  // ?
        /* 0x08 */ WANM_PUSH_LIGHT,
        /* 0x09 */ WANM_PUSH_START,
        /* 0x0A */ WANM_PUSH,
        /* 0x0B */ WANM_SIT,
        /* 0x0C */ WANM_CROUCH,
        /* 0x0D */ WANM_CROUCH_WALK,
        /* 0x0E */ WANM_WAIT_SIT,
        /* 0x0F */ WANM_TRES_OPEN,
        /* 0x10 */ WANM_VJMP_START,
        /* 0x11 */ WANM_BUMP_START,
        /* 0x12 */ WANM_BUMP_END,
        /* 0x13 */ WANM_VJMP_CLIMB,
        /* 0x14 */ WANM_VJMP_CLIMB_HANG,
        /* 0x15 */ WANM_TURN_BACK,
        /* 0x16 */ WANM_DMG_SMALL,
        /* 0x17 */ WANM_WAIT_TIRED,
        /* 0x18 */ WANM_WAIT_TO_TIRED,
        /* 0x19 */ WANM_HANG,
        /* 0x1A */ WANM_SLIP,
        /* 0x1B */ WANM_TURN,
        /* 0x1C */ WANM_ATN,
        /* 0x1D */ WANM_WALK_SLOPE,
        /* 0x1E */ WANM_SLIDE_BACKWARD,
        /* 0x1F */ WANM_SLIDE_BACKWARD_END,
        /* 0x20 */ WANM_SLIDE_FORWARD_START,
        /* 0x21 */ WANM_ROPE_WALK,
        /* 0x22 */ WANM_ROPE_CLIMB_LEFT,
        /* 0x23 */ WANM_ROPE_CLIMB_RIGHT,
        /* 0x24 */ WANM_ROPE_TURN,
        /* 0x25 */ WANM_ROPE_WAIT,
        /* 0x26 */ WANM_ROPE_FALTER,
        /* 0x27 */ WANM_DASH_B,
        /* 0x28 */ WANM_DMG_AIR_FRONT,
        /* 0x29 */ WANM_DMG_AIR_BACK,
        /* 0x2A */ WANM_DMG_AIR_LEFT,
        /* 0x2B */ WANM_DMG_AIR_RIGHT,
        /* 0x2C */ WANM_DMG_AIR_FRONT_GETUP,
        /* 0x2D */ WANM_DMG_AIR_BACK_GETUP,
        /* 0x2E */ WANM_DMG_AIR_LEFT_GETUP,
        /* 0x2F */ WANM_DMG_AIR_RIGHT_GETUP,
        /* 0x30 */ WANM_SERVICE_WAIT_A,
        /* 0x31 */ WANM_WAIT_B,
        /* 0x32 */ WANM_JUMP_B_START,
        /* 0x33 */ WANM_JUMP_B_TURN_START,
        /* 0x34 */ WANM_JUMP_B,
        /* 0x35 */ WANM_JUMP_B_END,
        /* 0x36 */ WANM_SWIM_RESURFACE,
        /* 0x37 */ WANM_SWIM_WAIT,
        /* 0x38 */ WANM_SWIM,
        /* 0x39 */ WANM_SWIM_DASH,
        /* 0x3A */ WANM_WAIT_SHAKE,
        /* 0x3B */ WANM_WAIT_START,
        /* 0x3C */ WANM_DMG_FRONT,
        /* 0x3D */ WANM_DMG_BACK,
        /* 0x3E */ WANM_DMG_LEFT,
        /* 0x3F */ WANM_DMG_RIGHT,
        /* 0x40 */ WANM_ATTACK_B_LEFT,
        /* 0x41 */ WANM_ATTACK_B_RIGHT,
        /* 0x42 */ WANM_ATTACK_B_FRONT,
        /* 0x43 */ WANM_ATTACK_B_TAIL,
        /* 0x44 */ WANM_ATN_LOCK_WALK_BACK,
        /* 0x45 */ WANM_ATN_LOCK_WALK_FRONT,
        /* 0x46 */ WANM_ATN_LOCK_RUN,
        /* 0x47 */ WANM_PICKUP_A,
        /* 0x48 */ WANM_SIDE_JUMP_LEFT_START,
        /* 0x49 */ WANM_SIDE_JUMP_LEFT_END,
        /* 0x4A */ WANM_SIDE_JUMP_RIGHT_START,
        /* 0x4B */ WANM_SIDE_JUMP_RIGHT_END,
        /* 0x4C */ WANM_BACK_JUMP_START,
        /* 0x4D */ WANM_BACK_JUMP_END,
        /* 0x4E */ WANM_PICKUP_B,
        /* 0x4F */ WANM_PICKUP_THROW,
        /* 0x50 */ WANM_ATTACK_A_START,
        /* 0x51 */ WANM_ATTACK_A,
        /* 0x52 */ WANM_ATTACK_A_END,
        /* 0x53 */ WANM_ATTACK_A_END_FRONT,
        /* 0x54 */ WANM_ATTACK_A_END_BACK,
        /* 0x55 */ WANM_ATTACK_T_START,
        /* 0x56 */ WANM_ATTACK_T,
        /* 0x57 */ WANM_HANDLE_HANG,
        /* 0x58 */ WANM_HANDLE_HANG_WAIT,
        /* 0x59 */ WANM_HANDLE_HANG_SW,  // ?
        /* 0x5A */ WANM_CUT_TURN_LEFT,
        /* 0x5B */ WANM_CUT_TURN_RIGHT,
        /* 0x5C */ WANM_HOWL,
        /* 0x5D */ WANM_HOWL_SIT,
        /* 0x5E */ WANM_HOWL_SUCCESS,
        /* 0x5F */ WANM_HOWL_END,
        /* 0x60 */ WANM_FALL_LAND,
        /* 0x61 */ WANM_FALL_LAND_START,
        /* 0x62 */ WANM_ATTACK_POE_START,
        /* 0x63 */ WANM_ATTACK_POE,
        /* 0x64 */ WANM_ATTACK_POE_END,
        /* 0x65 */ WANM_ATTACK_POE_MISS,
        /* 0x66 */ WANM_BACKFLIP_START,
        /* 0x67 */ WANM_BACKFLIP_END,
        /* 0x68 */ WANM_DIG,
        /* 0x69 */ WANM_DIG_IN,
        /* 0x6A */ WANM_DIG_UNDER,
        /* 0x6B */ WANM_SLIDE_W,  // ?
        /* 0x6C */ WANM_JUMP_KICK,
        /* 0x6D */ WANM_PULL_OUT,
        /* 0x6E */ WANM_CUT_TURN_CHARGE,
        /* 0x6F */ WANM_TRANSFORM_TO_WOLF,
        /* 0x70 */ WANM_TRANSFORM_TO_HUMAN,
        /* 0x71 */ WANM_WAIT_WIND,
        /* 0x72 */ WANM_SMELL,
        /* 0x73 */ WANM_DASH_START,
        /* 0x74 */ WANM_ATTACK_RECOIL_START,
        /* 0x75 */ WANM_ATTACK_RECOIL_END,
        /* 0x76 */ WANM_FLING_LEFT,
        /* 0x77 */ WANM_FLING_RIGHT,
        /* 0x78 */ WANM_CATCH_START,
        /* 0x79 */ WANM_CATCH,
        /* 0x7A */ WANM_ATTACK_RECOIL_GROUND,
        /* 0x7B */ WANM_DIE,
        /* 0x7C */ WANM_SWIM_DIE,
        /* 0x7D */ WANM_SWIM_DROWN,
        /* 0x7E */ WANM_WAIT_STUNNED,  // ?
        /* 0x7F */ WANM_WAIT_A_TO_S,   // ?
        /* 0x80 */ WANM_SERVICE_WAIT_D,
        /* 0x81 */ WANM_MIDNA_SHOCK,
        /* 0x82 */ WANM_ENTRANCE,
        /* 0x83 */ WANM_GET_A,
        /* 0x84 */ WANM_GET,
        /* 0x85 */ WANM_WAIT_KARGOROK,
        /* 0x86 */ WANM_CATCH_KARGOROK,
        /* 0x87 */ WANM_DMG_ELEC_GROUND,
        /* 0x88 */ WANM_DMG_ELEC_AIR,
        /* 0x89 */ WANM_TWGATE_PULL,
        /* 0x8A */ WANM_CHAIN_PULL,
        /* 0x8B */ WANM_CHAIN_PULL_END,
        /* 0x8C */ WANM_LISTEN,
        /* 0x8D */ WANM_PIG_GANON_CATCH_ST,
        /* 0x8E */ WANM_PIG_GANON_CATCH_END,
        /* 0x8F */ WANM_PIG_GANON_THROW_LEFT_START,
        /* 0x90 */ WANM_PIG_GANON_THROW_LEFT_END,
        /* 0x91 */ WANM_PIG_GANON_THROW_RIGHT_START,
        /* 0x92 */ WANM_PIG_GANON_THROW_RIGHT_END,
    };

    enum MODE_FLG {
        /* 0x00000001 */ MODE_IDLE = (1 << 0),
        /* 0x00000002 */ MODE_JUMP = (1 << 1),
        /* 0x00000004 */ MODE_DISABLE_ITEMS = (1 << 2),  // ?
        /* 0x00000008 */ MODE_HIT_STUN = (1 << 3),
        /* 0x00000010 */ MODE_CLIMB = (1 << 4),     // ?
        /* 0x00000020 */ MODE_UNK_20 = 0x20,        // related to wolf?
        /* 0x00000040 */ MODE_NO_COLLISION = 0x40,  // disables wall col checks
        /* 0x00000080 */ MODE_GUARD_ENABLED = 0x80,
        /* 0x00000100 */ MODE_UNK_100 = 0x100,
        /* 0x00000400 */ MODE_RIDING = 0x400,
        /* 0x00000800 */ MODE_UNK_800 = 0x800,
        /* 0x00001000 */ MODE_UNK_1000 =
            0x1000,  // affects things like anim set when controlling rod statue
        /* 0x00002000 */ MODE_UNK_2000 = 0x2000,
        /* 0x00004000 */ MODE_UNK_4000 = 0x4000,
        /* 0x00008000 */ MODE_UNK_8000 = 0x8000,
        /* 0x00010000 */ MODE_VINE_CLIMB = 0x10000,  // used for vine climbing
        /* 0x00020000 */ MODE_ROPE_WALK = 0x20000,
        /* 0x00040000 */ MODE_SWIMMING = 0x40000,  // this might be more than swimming
        /* 0x00100000 */ MODE_GRAB_PLACE = 0x100000,
        /* 0x00800000 */ MODE_UNK_800000 = 0x800000,    // moves camera down
        /* 0x01000000 */ MODE_UNK_1000000 = 0x1000000,  // attention related?
        /* 0x02000000 */ MODE_UNK_2000000 = 0x2000000,  // maybe related to snow/sand?
        /* 0x04000000 */ MODE_UNK_4000000 = 0x4000000,
        /* 0x08000000 */ MODE_UNK_8000000 = 0x8000000,
        /* 0x10000000 */ MODE_UNK_10000000 = 0x10000000,  // catch boomerang?
        /* 0x20000000 */ MODE_UNK_20000000 = 0x20000000,
        /* 0x40000000 */ MODE_UNK_40000000 = 0x40000000,
        MODE_PLAYER_FLY = 0x70C52,
    };

    enum daAlink_PROC {
        /* 0x000 */ PROC_PREACTION_UNEQUIP,
        /* 0x001 */ PROC_SERVICE_WAIT,
        /* 0x002 */ PROC_TIRED_WAIT,
        /* 0x003 */ PROC_WAIT,
        /* 0x004 */ PROC_MOVE,
        /* 0x005 */ PROC_ATN_MOVE,
        /* 0x006 */ PROC_ATN_ACTOR_WAIT,
        /* 0x007 */ PROC_ATN_ACTOR_MOVE,
        /* 0x008 */ PROC_WAIT_TURN,
        /* 0x009 */ PROC_MOVE_TURN,
        /* 0x00A */ PROC_SIDESTEP,
        /* 0x00B */ PROC_SIDESTEP_LAND,
        /* 0x00C */ PROC_SLIDE,
        /* 0x00D */ PROC_SLIDE_LAND,
        /* 0x00E */ PROC_FRONT_ROLL,
        /* 0x00F */ PROC_FRONT_ROLL_CRASH,
        /* 0x010 */ PROC_FRONT_ROLL_SUCCESS,
        /* 0x011 */ PROC_SIDE_ROLL,
        /* 0x012 */ PROC_BACK_JUMP,
        /* 0x013 */ PROC_BACK_JUMP_LAND,
        /* 0x014 */ PROC_SLIP,
        /* 0x015 */ PROC_AUTO_JUMP,
        /* 0x016 */ PROC_DIVE_JUMP,
        /* 0x017 */ PROC_ROLL_JUMP,
        /* 0x018 */ PROC_FALL,
        /* 0x019 */ PROC_LAND,
        /* 0x01A */ PROC_SMALL_JUMP,
        /* 0x01B */ PROC_STEP_MOVE,
        /* 0x01C */ PROC_CROUCH,
        /* 0x01D */ PROC_GUARD_SLIP,
        /* 0x01E */ PROC_GUARD_ATTACK,
        /* 0x01F */ PROC_GUARD_BREAK,
        /* 0x020 */ PROC_TURN_MOVE,
        /* 0x021 */ PROC_CUT_NORMAL,
        /* 0x022 */ PROC_CUT_FINISH,
        /* 0x023 */ PROC_CUT_FINISH_JUMP_UP,
        /* 0x024 */ PROC_CUT_FINISH_JUMP_UP_LAND,
        /* 0x025 */ PROC_CUT_REVERSE,
        /* 0x026 */ PROC_CUT_JUMP,
        /* 0x027 */ PROC_CUT_JUMP_LAND,
        /* 0x028 */ PROC_CUT_TURN,
        /* 0x029 */ PROC_CUT_TURN_CHARGE,
        /* 0x02A */ PROC_CUT_TURN_MOVE,
        /* 0x02B */ PROC_CUT_DOWN,
        /* 0x02C */ PROC_CUT_DOWN_LAND,
        /* 0x02D */ PROC_CUT_HEAD,
        /* 0x02E */ PROC_CUT_HEAD_LAND,
        /* 0x02F */ PROC_CUT_LARGE_JUMP_CHARGE,
        /* 0x030 */ PROC_CUT_LARGE_JUMP,
        /* 0x031 */ PROC_CUT_LARGE_JUMP_LAND,
        /* 0x032 */ PROC_DAMAGE,
        /* 0x033 */ PROC_LARGE_DAMAGE_UP,
        /* 0x034 */ PROC_LAND_DAMAGE,
        /* 0x035 */ PROC_CRAWL_START,
        /* 0x036 */ PROC_CRAWL_MOVE,
        /* 0x037 */ PROC_CRAWL_AUTO_MOVE,
        /* 0x038 */ PROC_CRAWL_END,
        /* 0x039 */ PROC_PULL_MOVE,
        /* 0x03A */ PROC_HORSE_RIDE,
        /* 0x03B */ PROC_HORSE_GETOFF,
        /* 0x03C */ PROC_HORSE_WAIT,
        /* 0x03D */ PROC_HORSE_TURN,
        /* 0x03E */ PROC_HORSE_JUMP,
        /* 0x03F */ PROC_HORSE_LAND,
        /* 0x040 */ PROC_HORSE_SUBJECTIVITY,
        /* 0x041 */ PROC_HORSE_CUT,
        /* 0x042 */ PROC_HORSE_CUT_CHARGE_READY,
        /* 0x043 */ PROC_HORSE_CUT_TURN,
        /* 0x044 */ PROC_HORSE_DAMAGE,
        /* 0x045 */ PROC_HORSE_BOW_SUBJECT,
        /* 0x046 */ PROC_HORSE_BOW_MOVE,
        /* 0x047 */ PROC_HORSE_GRAB_MOVE,
        /* 0x048 */ PROC_HORSE_BOOMERANG_SUBJECT,
        /* 0x049 */ PROC_HORSE_BOOMERANG_MOVE,
        /* 0x04A */ PROC_HORSE_HOOKSHOT_SUBJECT,
        /* 0x04B */ PROC_HORSE_HOOKSHOT_MOVE,
        /* 0x04C */ PROC_HORSE_BOTTLE_DRINK,
        /* 0x04D */ PROC_HORSE_COMEBACK,
        /* 0x04E */ PROC_HORSE_KANDELAAR_POUR,
        /* 0x04F */ PROC_HORSE_RUN,
        /* 0x050 */ PROC_HORSE_HANG,
        /* 0x051 */ PROC_HORSE_GET_KEY,
        /* 0x052 */ PROC_HORSE_LOOK_DOWN,
        /* 0x053 */ PROC_BOAR_RUN,
        /* 0x054 */ PROC_SWORD_UNEQUIP_SP,
        /* 0x055 */ PROC_HANG_START,
        /* 0x056 */ PROC_HANG_FALL_START,
        /* 0x057 */ PROC_HANG_UP,
        /* 0x058 */ PROC_HANG_WAIT,
        /* 0x059 */ PROC_HANG_MOVE,
        /* 0x05A */ PROC_HANG_CLIMB,
        /* 0x05B */ PROC_HANG_WALL_CATCH,
        /* 0x05C */ PROC_HANG_READY,
        /* 0x05D */ PROC_HANG_LEVER_DOWN,
        /* 0x05E */ PROC_BOW_SUBJECT,
        /* 0x05F */ PROC_BOW_MOVE,
        /* 0x060 */ PROC_BOOMERANG_SUBJECT,
        /* 0x061 */ PROC_BOOMERANG_MOVE,
        /* 0x062 */ PROC_BOOMERANG_CATCH,
        /* 0x063 */ PROC_COPY_ROD_SUBJECT,
        /* 0x064 */ PROC_COPY_ROD_MOVE,
        /* 0x065 */ PROC_COPY_ROD_SWING,
        /* 0x066 */ PROC_COPY_ROD_REVIVE,
        /* 0x067 */ PROC_LADDER_UP_START,
        /* 0x068 */ PROC_LADDER_UP_END,
        /* 0x069 */ PROC_LADDER_DOWN_START,
        /* 0x06A */ PROC_LADDER_DOWN_END,
        /* 0x06B */ PROC_LADDER_MOVE,
        /* 0x06C */ PROC_GRAB_READY,
        /* 0x06D */ PROC_GRAB_UP,
        /* 0x06E */ PROC_GRAB_MISS,
        /* 0x06F */ PROC_GRAB_THROW,
        /* 0x070 */ PROC_GRAB_PUT,
        /* 0x071 */ PROC_GRAB_WAIT,
        /* 0x072 */ PROC_GRAB_REBOUND,
        /* 0x073 */ PROC_GRAB_STAND,
        /* 0x074 */ PROC_INSECT_CATCH,
        /* 0x075 */ PROC_PICK_UP,
        /* 0x076 */ PROC_PICK_PUT,
        /* 0x077 */ PROC_HUMAN_ST_ESCAPE,
        /* 0x078 */ PROC_DK_CAUGHT,
        /* 0x079 */ PROC_SWIM_UP,
        /* 0x07A */ PROC_SWIM_WAIT,
        /* 0x07B */ PROC_SWIM_MOVE,
        /* 0x07C */ PROC_SWIM_DIVE,
        /* 0x07D */ PROC_SWIM_HOOKSHOT_SUBJECT,
        /* 0x07E */ PROC_SWIM_HOOKSHOT_MOVE,
        /* 0x07F */ PROC_SWIM_DAMAGE,
        /* 0x080 */ PROC_CLIMB_UP_START,
        /* 0x081 */ PROC_CLIMB_DOWN_START,
        /* 0x082 */ PROC_CLIMB_MOVE_UPDOWN,
        /* 0x083 */ PROC_CLIMB_MOVE_SIDE,
        /* 0x084 */ PROC_CLIMB_WAIT,
        /* 0x085 */ PROC_CLIMB_TO_ROOF,
        /* 0x086 */ PROC_ROOF_HANG_START,
        /* 0x087 */ PROC_ROOF_HANG_WAIT,
        /* 0x088 */ PROC_ROOF_HANG_FRONT_MOVE,
        /* 0x089 */ PROC_ROOF_HANG_SIDE_MOVE,
        /* 0x08A */ PROC_ROOF_HANG_TURN,
        /* 0x08B */ PROC_ROOF_SWITCH_HANG,
        /* 0x08C */ PROC_CANOE_RIDE,
        /* 0x08D */ PROC_CANOE_JUMP_RIDE,
        /* 0x08E */ PROC_CANOE_GETOFF,
        /* 0x08F */ PROC_CANOE_WAIT,
        /* 0x090 */ PROC_CANOE_ROW,
        /* 0x091 */ PROC_CANOE_PADDLE_SHIFT,
        /* 0x092 */ PROC_CANOE_PADDLE_PUT,
        /* 0x093 */ PROC_CANOE_PADDLE_GRAB,
        /* 0x094 */ PROC_CANOE_ROD_GRAB,
        /* 0x095 */ PROC_CANOE_FISHING_WAIT,
        /* 0x096 */ PROC_CANOE_FISHING_REEL,
        /* 0x097 */ PROC_CANOE_FISHING_GET,
        /* 0x098 */ PROC_CANOE_SUBJECTIVITY,
        /* 0x099 */ PROC_CANOE_BOW_SUBJECT,
        /* 0x09A */ PROC_CANOE_BOW_MOVE,
        /* 0x09B */ PROC_CANOE_GRAB_MOVE,
        /* 0x09C */ PROC_CANOE_BOOMERANG_SUBJECT,
        /* 0x09D */ PROC_CANOE_BOOMERANG_MOVE,
        /* 0x09E */ PROC_CANOE_HOOKSHOT_SUBJECT,
        /* 0x09F */ PROC_CANOE_HOOKSHOT_MOVE,
        /* 0x0A0 */ PROC_CANOE_BOTTLE_DRINK,
        /* 0x0A1 */ PROC_CANOE_KANDELAAR_POUR,
        /* 0x0A2 */ PROC_FISHING_CAST,
        /* 0x0A3 */ PROC_FISHING_FOOD,
        /* 0x0A4 */ PROC_SPINNER_READY,
        /* 0x0A5 */ PROC_SPINNER_WAIT,
        /* 0x0A6 */ PROC_BOARD_RIDE,
        /* 0x0A7 */ PROC_BOARD_WAIT,
        /* 0x0A8 */ PROC_BOARD_ROW,
        /* 0x0A9 */ PROC_BOARD_TURN,
        /* 0x0AA */ PROC_BOARD_JUMP,
        /* 0x0AB */ PROC_BOARD_SUBJECTIVITY,
        /* 0x0AC */ PROC_BOARD_CUT,
        /* 0x0AD */ PROC_BOARD_CUT_TURN,
        /* 0x0AE */ PROC_CHAIN_UP,
        /* 0x0AF */ PROC_CHAIN_STRONG_PULL,
        /* 0x0B0 */ PROC_DOOR_OPEN,
        /* 0x0B1 */ PROC_MONKEY_MOVE,
        /* 0x0B2 */ PROC_DEMO_BOOMERANG_CATCH,
        /* 0x0B3 */ PROC_BOTTLE_DRINK,
        /* 0x0B4 */ PROC_BOTTLE_OPEN,
        /* 0x0B5 */ PROC_BOTTLE_SWING,
        /* 0x0B6 */ PROC_BOTTLE_GET,
        /* 0x0B7 */ PROC_KANDELAAR_SWING,
        /* 0x0B8 */ PROC_KANDELAAR_POUR,
        /* 0x0B9 */ PROC_GRASS_WHISTLE_GET,
        /* 0x0BA */ PROC_GRASS_WHISTLE_WAIT,
        /* 0x0BB */ PROC_HAWK_CATCH,
        /* 0x0BC */ PROC_HAWK_SUBJECT,
        /* 0x0BD */ PROC_FLOOR_DOWN_REBOUND,
        /* 0x0BE */ PROC_GORON_RIDE_WAIT,
        /* 0x0BF */ PROC_GOAT_MOVE,
        /* 0x0C0 */ PROC_GOAT_CATCH,
        /* 0x0C1 */ PROC_GOAT_STROKE,
        /* 0x0C2 */ PROC_GORON_MOVE,
        /* 0x0C3 */ PROC_BOSS_ATN_WAIT,
        /* 0x0C4 */ PROC_HOOKSHOT_SUBJECT,
        /* 0x0C5 */ PROC_HOOKSHOT_MOVE,
        /* 0x0C6 */ PROC_HOOKSHOT_FLY,
        /* 0x0C7 */ PROC_HOOKSHOT_ROOF_WAIT,
        /* 0x0C8 */ PROC_HOOKSHOT_ROOF_SHOOT,
        /* 0x0C9 */ PROC_HOOKSHOT_ROOF_BOOTS,
        /* 0x0CA */ PROC_HOOKSHOT_WALL_WAIT,
        /* 0x0CB */ PROC_HOOKSHOT_WALL_SHOOT,
        /* 0x0CC */ PROC_MAGNE_BOOTS_FLY,
        /* 0x0CD */ PROC_BOOTS_EQUIP,
        /* 0x0CE */ PROC_SUMOU_READY,
        /* 0x0CF */ PROC_SUMOU_MOVE,
        /* 0x0D0 */ PROC_SUMOU_SIDE_MOVE,
        /* 0x0D1 */ PROC_SUMOU_ACTION,
        /* 0x0D2 */ PROC_SUMOU_STAGGER,
        /* 0x0D3 */ PROC_SUMOU_WIN_LOSE,
        /* 0x0D4 */ PROC_SUMOU_SHIKO,
        /* 0x0D5 */ PROC_LOOK_UP,
        /* 0x0D6 */ PROC_LOOK_UP_TO_GET_ITEM,
        /* 0x0D7 */ PROC_HAND_PAT,
        /* 0x0D8 */ PROC_IRON_BALL_SUBJECT,
        /* 0x0D9 */ PROC_IRON_BALL_MOVE,
        /* 0x0DA */ PROC_IRON_BALL_THROW,
        /* 0x0DB */ PROC_IRON_BALL_RETURN,
        /* 0x0DC */ PROC_BOSS_BODY_HANG,
        /* 0x0DD */ PROC_OCTAIEAL_SPIT,
        /* 0x0DE */ PROC_SCREAM_WAIT,
        /* 0x0DF */ PROC_GOAT_STOP_READY,
        /* 0x0E0 */ PROC_ZORA_MOVE,
        /* 0x0E1 */ PROC_LOOK_AROUND_TURN,
        /* 0x0E2 */ PROC_TRADE_ITEM_OUT,
        /* 0x0E3 */ PROC_NOT_USE_ITEM,
        /* 0x0E4 */ PROC_SWORD_READY,
        /* 0x0E5 */ PROC_SWORD_PUSH,
        /* 0x0E6 */ PROC_GANON_FINISH,
        /* 0x0E7 */ PROC_CUT_FAST_READY,
        /* 0x0E8 */ PROC_MASTER_SWORD_STICK,
        /* 0x0E9 */ PROC_MASTER_SWORD_PULL,
        /* 0x0EA */ PROC_DUNGEON_WARP_READY,
        /* 0x0EB */ PROC_DUNGEON_WARP,
        /* 0x0EC */ PROC_DUNGEON_WARP_SCN_START,
        /* 0x0ED */ PROC_WOLF_HOWL_DEMO,
        /* 0x0EE */ PROC_WOLF_SERVICE_WAIT,
        /* 0x0EF */ PROC_WOLF_TIRED_WAIT,
        /* 0x0F0 */ PROC_WOLF_MIDNA_RIDE_SHOCK,
        /* 0x0F1 */ PROC_WOLF_WAIT,
        /* 0x0F2 */ PROC_WOLF_MOVE,
        /* 0x0F3 */ PROC_WOLF_DASH,
        /* 0x0F4 */ PROC_WOLF_DASH_REVERSE,
        /* 0x0F5 */ PROC_WOLF_WAIT_TURN,
        /* 0x0F6 */ PROC_WOLF_ATN_AC_MOVE,
        /* 0x0F7 */ PROC_WOLF_SIDESTEP,
        /* 0x0F8 */ PROC_WOLF_SIDESTEP_LAND,
        /* 0x0F9 */ PROC_WOLF_BACKJUMP,
        /* 0x0FA */ PROC_WOLF_BACKJUMP_LAND,
        /* 0x0FB */ PROC_WOLF_HOWL,
        /* 0x0FC */ PROC_WOLF_AUTO_JUMP,
        /* 0x0FD */ PROC_WOLF_FALL,
        /* 0x0FE */ PROC_WOLF_LAND,
        /* 0x0FF */ PROC_WOLF_SIT,
        /* 0x100 */ PROC_WOLF_LIE_START,
        /* 0x101 */ PROC_WOLF_LIE_MOVE,
        /* 0x102 */ PROC_WOLF_LIE_AUTO_MOVE,
        /* 0x103 */ PROC_WOLF_HANG_READY,
        /* 0x104 */ PROC_WOLF_STEP_MOVE,
        /* 0x105 */ PROC_WOLF_HANG_WALL_CATCH,
        /* 0x106 */ PROC_WOLF_HANG_FALL_START,
        /* 0x107 */ PROC_WOLF_DAMAGE,
        /* 0x108 */ PROC_WOLF_LARGE_DAMAGE_UP,
        /* 0x109 */ PROC_WOLF_LAND_DAMAGE,
        /* 0x10A */ PROC_WOLF_SCREAM_WAIT,
        /* 0x10B */ PROC_WOLF_SLIP,
        /* 0x10C */ PROC_WOLF_SLIP_TURN,
        /* 0x10D */ PROC_WOLF_SLIP_TURN_LAND,
        /* 0x10E */ PROC_WOLF_SLIDE_READY,
        /* 0x10F */ PROC_WOLF_SLIDE,
        /* 0x110 */ PROC_WOLF_SLIDE_LAND,
        /* 0x111 */ PROC_WOLF_WAIT_SLIP,
        /* 0x112 */ PROC_WOLF_SLOPE_START,
        /* 0x113 */ PROC_WOLF_ROPE_MOVE,
        /* 0x114 */ PROC_WOLF_ROPE_HANG,
        /* 0x115 */ PROC_WOLF_ROPE_TURN,
        /* 0x116 */ PROC_WOLF_ROPE_STAGGER,
        /* 0x117 */ PROC_WOLF_ROPE_SUBJECTIVITY,
        /* 0x118 */ PROC_WOLF_TAG_JUMP,
        /* 0x119 */ PROC_WOLF_TAG_JUMP_LAND,
        /* 0x11A */ PROC_WOLF_ROLL_ATTACK_CHARGE,
        /* 0x11B */ PROC_WOLF_ROLL_ATTACK_MOVE,
        /* 0x11C */ PROC_WOLF_JUMP_ATTACK,
        /* 0x11D */ PROC_WOLF_JUMP_AT_KICK,
        /* 0x11E */ PROC_WOLF_JUMP_AT_SLIDE_LAND,
        /* 0x11F */ PROC_WOLF_JUMP_AT_NORMAL_LAND,
        /* 0x120 */ PROC_WOLF_WAIT_ATTACK,
        /* 0x121 */ PROC_WOLF_ROLL_ATTACK,
        /* 0x122 */ PROC_WOLF_DOWN_ATTACK,
        /* 0x123 */ PROC_WOLF_DOWN_AT_LAND,
        /* 0x124 */ PROC_WOLF_DOWN_AT_MISS_LAND,
        /* 0x125 */ PROC_WOLF_LOCK_ATTACK,
        /* 0x126 */ PROC_WOLF_LOCK_ATTACK_TURN,
        /* 0x127 */ PROC_WOLF_SWIM_UP,
        /* 0x128 */ PROC_WOLF_SWIM_WAIT,
        /* 0x129 */ PROC_WOLF_SWIM_MOVE,
        /* 0x12A */ PROC_WOLF_SWIM_END_WAIT,
        /* 0x12B */ PROC_WOLF_GRAB_UP,
        /* 0x12C */ PROC_WOLF_GRAB_PUT,
        /* 0x12D */ PROC_WOLF_GRAB_THROW,
        /* 0x12E */ PROC_WOLF_CHAIN_UP,
        /* 0x12F */ PROC_WOLF_PUSH,
        /* 0x130 */ PROC_WOLF_CHAIN_READY,
        /* 0x131 */ PROC_WOLF_CHAIN_WAIT,
        /* 0x132 */ PROC_WOLF_DIG,
        /* 0x133 */ PROC_WOLF_DIG_THROUGH,
        /* 0x134 */ PROC_WOLF_ATTACK_REVERSE,
        /* 0x135 */ PROC_WOLF_ENEMY_THROW,
        /* 0x136 */ PROC_WOLF_ENEMY_HANG_BITE,
        /* 0x137 */ PROC_WOLF_GIANT_PUZZLE,
        /* 0x138 */ PROC_WOLF_CARGO_CARRY,
        /* 0x139 */ PROC_WOLF_GET_SMELL,
        /* 0x13A */ PROC_WOLF_SMELL_WAIT,
        /* 0x13B */ PROC_WOLF_SNOW_ESCAPE,
        /* 0x13C */ PROC_WOLF_GANON_CATCH,
        /* 0x13D */ PROC_TOOL_DEMO,
        /* 0x13E */ PROC_SUBJECTIVITY,
        /* 0x13F */ PROC_SWIM_SUBJECTIVITY,
        /* 0x140 */ PROC_PEEP_SUBJECTIVITY,
        /* 0x141 */ PROC_POLY_DAMAGE,
        /* 0x142 */ PROC_ELEC_DAMAGE,
        /* 0x143 */ PROC_PUSH_PULL_WAIT,
        /* 0x144 */ PROC_PUSH_MOVE,
        /* 0x145 */ PROC_TALK,
        /* 0x146 */ PROC_OPEN_TREASURE,
        /* 0x147 */ PROC_UNEQUIP,
        /* 0x148 */ PROC_GET_ITEM,
        /* 0x149 */ PROC_TURN_BACK,
        /* 0x14A */ PROC_LOOK_WAIT,
        /* 0x14B */ PROC_DEMO_PUSH_PULL_WAIT,
        /* 0x14C */ PROC_DEMO_PUSH_MOVE,
        /* 0x14D */ PROC_METAMORPHOSE,
        /* 0x14E */ PROC_METAMORPHOSE_ONLY,
        /* 0x14F */ PROC_WARP,
        /* 0x150 */ PROC_DEAD,
        /* 0x151 */ PROC_FOG_DEAD,
        /* 0x152 */ PROC_LOOK_AROUND,
        /* 0x153 */ PROC_CAUGHT,
        /* 0x154 */ PROC_SAND_WALL_HIT,
        /* 0x155 */ PROC_LAVA_RETURN,
        /* 0x156 */ PROC_SWIM_FREEZE_RETURN,
        /* 0x157 */ PROC_GET_READY_SIT,
        /* 0x158 */ PROC_TW_GATE,
        /* 0x159 */ PROC_LARGE_DAMAGE,
        /* 0x15A */ PROC_LARGE_DAMAGE_WALL,
        /* 0x15B */ PROC_NOD,
        /* 0x15C */ PROC_EYE_AWAY,
        /* 0x15D */ PROC_GLARE,
        /* 0x15E */ PROC_HORSE_CALL_WAIT,
        /* 0x15F */ PROC_QUAKE_WAIT,
    };

    enum daAlink_ITEM_BTN {
        /* 0x01 */ BTN_X = (1 << 0),
        /* 0x02 */ BTN_Y = (1 << 1),
        /* 0x04 */ BTN_Z = (1 << 2),
        /* 0x08 */ BTN_B = (1 << 3),
        /* 0x10 */ BTN_A = (1 << 4),
        /* 0x20 */ BTN_L = (1 << 5),
        /* 0x40 */ BTN_R = (1 << 6),
    };

    /**
     * Moving direction calculated from an angle
     */
    enum daAlink_DIR {
        /* 0x0 */ DIR_FORWARD,
        /* 0x1 */ DIR_BACKWARD,
        /* 0x2 */ DIR_LEFT,
        /* 0x3 */ DIR_RIGHT,
        /* 0x4 */ DIR_NONE,
    };

    enum daAlink_EFFPROC {
        EFFPROC_FRONT_ROLL,
        EFFPROC_SLIP,
        EFFPROC_SMALL_LAND,
        EFFPROC_RUN,
        EFFPROC_LAND,
        EFFPROC_SUMOU,
        EFFPROC_NONE,
    };

    class firePointEff_c {
    public:
        /* 0x00 */ u8 field_0x0;
        /* 0x02 */ u16 field_0x2;
        /* 0x04 */ u32 field_0x4;
        /* 0x08 */ u32 field_0x8;
        /* 0x0C */ cXyz field_0xc;
        /* 0x18 */ cXyz field_0x18;
        /* 0x24 */ cXyz field_0x24;
    };

    class hsChainShape_c : public J3DPacket {
    public:
        hsChainShape_c() {}
        /* 80107900 */ virtual void draw();
        /* 800D0CDC */ virtual ~hsChainShape_c() {}
    };  // Size: 0x10

    /* 8009D87C */ static BOOL getE3Zhint();
    /* 8009D884 */ static const char* getAlinkArcName();
    /* 8009DA60 */ static bool checkStageName(char const*);
    /* 8009DA98 */ void tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, dCcD_GObjInf*);
    /* 8009DB64 */ void coHitCallback(fopAc_ac_c*, dCcD_GObjInf*);
    /* 8009DC6C */ void setMatrixWorldAxisRot(f32 (*)[4], s16, s16, s16, int, cXyz const*);
    /* 8009DD90 */ int jointControll(int);
    /* 8009E7B8 */ void setUpperFront();
    /* 8009E91C */ void changeBlendRate(int);
    /* 8009EB18 */ void resetRootMtx();
    /* 8009EB58 */ bool modelCallBack(int);
    /* 8009ECA0 */ int headModelCallBack(int);
    /* 8009EF7C */ int wolfModelCallBack(int);
    /* 8009F034 */ void setHatAngle();
    /* 8009FFF8 */ void calcHairAngle(s16*);
    /* 800A002C */ void setHairAngle(cXyz*, f32, f32);
    /* 800A0744 */ void setLookPosFromOut(cXyz*);
    /* 800A07D8 */ bool checkAttentionPosAngle(cXyz*);
    /* 800A0868 */ bool checkActorPosAngle(fopAc_ac_c*, cXyz**);
    /* 800A093C */ cXyz* getNeckAimPos(cXyz*, int*, int);
    /* 800A142C */ s16 getNeckAimAngle(cXyz*, s16*, s16*, s16*, s16*);
    /* 800A1AEC */ void setEyeMove(cXyz*, s16, s16);
    /* 800A1F90 */ void setNeckAngle();
    /* 800A2198 */ bool commonLineCheck(cXyz*, cXyz*);
    /* 800A21E0 */ static s16 getMoveBGActorName(cBgS_PolyInfo&, int);
    /* 800A2280 */ fopAc_ac_c* checkGoronRide();
    /* 800A22E8 */ void setMoveSlantAngle();
    /* 800A2710 */ int setArmMatrix();
    /* 800A29DC */ int setFootMatrix();
    /* 800A2C24 */ void setMatrixOffset(f32*, f32);
    /* 800A2CE0 */ int setLegAngle(f32, daAlink_footData_c*, s16*, s16*, int);
    /* 800A3430 */ void footBgCheck();
    /* 800A39B8 */ void handBgCheck();
    /* 800A3C8C */ JKRHeap* setItemHeap();
    /* 800A3CE4 */ void setIdxMask(u16*, u16*);
    /* 800A3D0C */ J3DAnmTransform* getAnimeResource(daPy_anmHeap_c*, u16, u32);
    /* 800A3D7C */ J3DModel* initModel(J3DModelData*, u32, u32);
    /* 800A3E30 */ J3DModel* initModel(u16, u32);
    /* 800A3E98 */ J3DModel* initModelEnv(u16, u32);
    /* 800A3F00 */ int initDemoModel(J3DModel**, char const*, u32);
    /* 800A3F98 */ static int initDemoBck(mDoExt_bckAnm**, char const*);
    /* 800A4068 */ int createHeap();
    /* 800A4910 */ void setSelectEquipItem(int);
    /* 800A4BC8 */ BOOL checkBoarStart();
    /* 800A4C40 */ BOOL checkCanoeStart();
    /* 800A4CB4 */ void playerInit();
    /* 800A54F4 */ BOOL checkHorseStart(u32, int);
    /* 800A551C */ int setStartProcInit();
    /* 800A5CC8 */ int create();
    /* 800A662C */ s32 setRoomInfo();
    /* 800A67E0 */ void setShapeAngleOnGround();
    /* 800A6B0C */ void setStepsOffset();
    /* 800A6DCC */ void iceSlipBgCheck();
    /* 800A7050 */ void setIceSlipSpeed();
    /* 800A7358 */ void setPolygonSpeed();
    /* 800A7950 */ bool checkWindSpeedOnAngle() const;
    /* 800A79EC */ bool checkWindSpeedOnAngleAnime(int) const;
    /* 800A7A5C */ bool checkDashAnime() const;
    /* 800A7ABC */ f32 checkWindWallRate(cXyz const&);
    /* 800A7CB0 */ void setWindSpeed();
    /* 800A8310 */ void setBodyPartPos();
    /* 800A87F8 */ void setAttentionPos();
    /* 800A8CE4 */ void setMatrix();
    /* 800A9248 */ static int simpleAnmPlay(J3DAnmBase*);
    /* 800A92F0 */ void setSwordPos();
    /* 800A9450 */ void setItemMatrix(int);
    /* 800A9F4C */ void setWolfItemMatrix();
    /* 800AA2BC */ void setHandIndex(daAlink_c::daAlink_ANM);
    /* 800AA2E0 */ void setSwordAtCollision(int);
    /* 800AA5E8 */ BOOL checkNoCollisionCorret();
    /* 800AA6B4 */ void decSwordBlur();
    /* 800AA714 */ void resetWolfAtCollision();
    /* 800AA7EC */ void setWolfAtCollision();
    /* 800AA9DC */ void resetAtCollision(int);
    /* 800AAABC */ void setAtCollision();
    /* 800AB878 */ void setWolfCollisionPos();
    /* 800ABAE0 */ void initLockAt();
    /* 800ABB28 */ void cancelLockAt();
    /* 800ABB84 */ void setCollisionPos();
    /* 800ABDB8 */ void setCollision();
    /* 800AC394 */ void setFrameCtrl(daPy_frameCtrl_c* i_ctrl, u8 i_attr, s16 i_start, s16 i_end,
                                     f32 i_rate, f32 i_frame);
    /* 800AC450 */ const daAlink_BckData* getMainBckData(daAlink_c::daAlink_ANM) const;
    /* 800AC558 */ BOOL checkUnderMove0BckNoArc(daAlink_c::daAlink_ANM) const;
    /* 800AC5B4 */ BOOL checkUnderMove1BckNoArc(daAlink_c::daAlink_ANM) const;
    /* 800AC610 */ int getUnderUpperAnime(daAlink_c::daAlink_ANM, J3DAnmTransform**,
                                          J3DAnmTransform**, int, u32);
    /* 800AC738 */ void setDoubleAnimeBlendRatio(f32);
    /* 800AC754 */ void commonDoubleAnime(J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*,
                                          J3DAnmTransform*, f32, f32, f32, int);
    /* 800ACA14 */ int setDoubleAnime(f32, f32, f32, daAlink_c::daAlink_ANM, daAlink_c::daAlink_ANM,
                                      int, f32);
    /* 800ACD40 */ void commonSingleAnime(J3DAnmTransform*, J3DAnmTransform*, f32, f32, s16);
    /* 800ACF80 */ void setSingleAnimeBase(daAlink_c::daAlink_ANM anmID);
    /* 800ACFB0 */ void setSingleAnimeBaseMorf(daAlink_c::daAlink_ANM anmID, f32);
    /* 800ACFE0 */ void setSingleAnimeBaseSpeed(daAlink_c::daAlink_ANM anmID, f32 speed, f32 morf);
    /* 800AD00C */ int setSingleAnime(daAlink_c::daAlink_ANM anmID, f32 rate, f32 start, s16 endF,
                                      f32 morf);
    /* 800AD0F4 */ int setSingleAnimeParam(daAlink_c::daAlink_ANM anmID, daAlinkHIO_anm_c const*);
    /* 800AD128 */ void animePlay(J3DAnmTransform*, daPy_frameCtrl_c*);
    /* 800AD170 */ void allAnimePlay();
    /* 800AD2D8 */ void setUpperAnimeMorf(f32);
    /* 800AD340 */ void setUpperAnimeBase(u16);
    /* 800AD374 */ void setUpperAnimeBaseMorf(u16, f32);
    /* 800AD3A8 */ void setUpperAnimeBaseSpeed(u16, f32, f32);
    /* 800AD3D8 */ int setUpperAnime(u16, daAlink_c::daAlink_UPPER, f32, f32, s16, f32);
    /* 800AD6F0 */ void setUpperAnimeParam(u16, daAlink_c::daAlink_UPPER, daAlinkHIO_anm_c const*);
    /* 800AD724 */ int resetUpperAnime(daAlink_c::daAlink_UPPER, f32);
    /* 800AD8F4 */ void setUnderAnimeMorf(f32);
    /* 800AD964 */ int setUnderAnime(u16, daAlink_c::daAlink_UNDER, f32, f32, s16, f32);
    /* 800ADAB8 */ int setUnderAnimeParam(u16, daAlink_c::daAlink_UNDER, daAlinkHIO_anm_c const*);
    /* 800ADAEC */ int resetUnderAnime(daAlink_c::daAlink_UNDER, f32);
    /* 800ADB78 */ void setOldRootQuaternion(s16, s16, s16);
    /* 800ADC50 */ BOOL checkAtnLeftAnime();
    /* 800ADCEC */ BOOL checkAtnRightAnime();
    /* 800ADD88 */ f32 getMoveGroundAngleSpeedRate();
    /* 800ADE14 */ void setBlendMoveAnime(f32);
    /* 800AEA70 */ void setBlendAtnMoveAnime(f32);
    /* 800AF11C */ void setBlendAtnBackMoveAnime(f32);
    /* 800AF4B0 */ void setFaceBck(u16, int, u16);
    /* 800AF61C */ void setFaceBtp(u16, int, u16);
    /* 800AF7D0 */ void setFaceBtk(u16, int, u16);
    /* 800AF8A0 */ daAlink_FTANM setFaceBasicTexture(daAlink_c::daAlink_FTANM);
    /* 800AF9A8 */ void setFaceBasicAnime(daAlink_c::daAlink_ANM);
    /* 800AFAA8 */ void setFacePriTexture(daAlink_c::daAlink_FTANM);
    /* 800AFB14 */ void setFacePriAnime(daAlink_c::daAlink_ANM);
    /* 800AFB74 */ void resetFacePriBck();
    /* 800AFBD0 */ void resetFacePriBtp();
    /* 800AFC2C */ void resetFacePriBtk();
    /* 800AFC88 */ void resetFacePriTexture();
    /* 800AFCBC */ void resetFacePriAnime();
    /* 800AFCF0 */ void playFaceTextureAnime();
    /* 800B0098 */ s16 getGroundAngle(cBgS_PolyInfo*, s16);
    /* 800B0150 */ s16 getRoofAngle(cBgS_PolyInfo*, s16);
    /* 800B01FC */ BOOL getWallEdgePos(cXyz const&, cM3dGPla*, cM3dGPla*, cXyz*, int);
    /* 800B02BC */ void setFrontWallType();
    /* 800B1488 */ BOOL checkWaterPolygonUnder();
    /* 800B14B4 */ void setWaterY();
    /* 800B154C */ void setHangWaterY();
    /* 800B172C */ void setSandDownBgCheckWallH();
    /* 800B1770 */ void setBgCheckParam();
    /* 800B1B28 */ BOOL checkNotJumpSinkLimit();
    /* 800B1B68 */ BOOL checkNotItemSinkLimit();
    /* 800B1BAC */ void setSandShapeOffset();
    /* 800B1FB8 */ bool checkLv2MiddleBossBgRide(s16);
    /* 800B1FD8 */ bool getSlidePolygon(cM3dGPla*);
    /* 800B21EC */ BOOL checkSlope() const;
    /* 800B25CC */ BOOL itemTriggerCheck(u8);
    /* 800B25E8 */ BOOL itemButtonCheck(u8);
    /* 800B2604 */ BOOL itemButton();
    /* 800B2634 */ BOOL itemTrigger();
    /* 800B2664 */ BOOL spActionButton();
    /* 800B2688 */ BOOL spActionTrigger();
    /* 800B26AC */ BOOL midnaTalkTrigger() const;
    /* 800B26B8 */ BOOL swordSwingTrigger();
    /* 800B26DC */ void setItemActionButtonStatus(u8);
    /* 800B26FC */ BOOL itemActionTrigger();
    /* 800B271C */ void setStickData();
    /* 800B2EA4 */ void setAtnList();
    /* 800B3220 */ void setRStatus(u8);
    /* 800B3238 */ void setRStatusEmphasys(u8);
    /* 800B3250 */ void setDoStatus(u8);
    /* 800B3268 */ void setDoStatusEmphasys(u8);
    /* 800B3280 */ void setDoStatusContinuation(u8);
    /* 800B3298 */ void setBStatus(u8);
    /* 800B32B0 */ BOOL checkAtnWaitAnime();
    /* 800B3358 */ void setTiredVoice(daPy_frameCtrl_c*);
    /* 800B33E4 */ BOOL checkRestHPAnime();
    /* 800B3494 */ static int getDirectionFromAngle(s16 angle);
    /* 800B3500 */ bool checkAttentionState();
    /* 800B3630 */ s16 getShapeAngleYAtnActor();
    /* 800B3734 */ bool setShapeAngleToAtnActor(int);
    /* 800B3844 */ void initServiceWaitTime();
    /* 800B3904 */ bool checkZeroSpeedF() const;
    /* 800B3924 */ void setNormalSpeedF(f32, f32);
    /* 800B3F2C */ f32 getStickAngleDistanceRate();
    /* 800B3FD4 */ void setSpeedAndAngleNormal();
    /* 800B444C */ void setSpeedAndAngleAtn();
    /* 800B477C */ int checkRequestTalkActor(dAttList_c*, fopAc_ac_c*);
    /* 800B47B4 */ bool checkServiceWaitMode();
    /* 800B48D0 */ void setJumpMode();
    /* 800B4908 */ f32 getMetamorphoseNearDis() const;
    /* 800B4918 */ f32 getMetamorphoseFarDis() const;
    /* 800B4928 */ s16 getMetamorphoseFarAngle() const;
    /* 800B4938 */ void setMidnaMsg();
    /* 800B4950 */ BOOL notTalk();
    /* 800B4A08 */ BOOL setTalkStatus();
    /* 800B4B2C */ f32 getFrontRollRate();
    /* 800B4B7C */ void decideCommonDoStatus();
    /* 800B5284 */ void decideDoStatus();
    /* 800B58EC */ BOOL checkWaitAction();
    /* 800B5BC0 */ void setFallVoice();
    /* 800B5C34 */ void setLandPassiveData();
    /* 800B5C64 */ void setStepLandVibration();
    /* 800B5CCC */ BOOL checkLandAction(int);
    /* 800B5F6C */ BOOL checkSlideAction();
    /* 800B607C */ BOOL checkAutoJumpAction();
    /* 800B69CC */ BOOL checkCutJumpInFly();
    /* 800B6A30 */ BOOL checkFrontWallTypeAction();
    /* 800B6F28 */ int checkItemActionInitStart();
    /* 800B7090 */ int checkItemChangeAutoAction();
    /* 800B7168 */ void setFastShotTimer();
    /* 800B7190 */ void cancelItemUseQuake(int);
    /* 800B71EC */ int cancelUpperItemReadyAnime(int);
    /* 800B72E4 */ BOOL checkItemActorPointer();
    /* 800B7390 */ bool checkSwordTwirlAction();
    /* 800B74B4 */ BOOL checkUpperItemActionFly();
    /* 800B7528 */ void checkItemButtonChange();
    /* 800B75EC */ BOOL checkUpperItemAction();
    /* 800B7B7C */ void orderPeep();
    /* 800B7BF8 */ int orderTalk(int);
    /* 800B80C4 */ int orderZTalk();
    /* 800B8374 */ int checkNormalAction();
    /* 800B8930 */ bool checkReadyItem();
    /* 800B8988 */ BOOL checkItemAction();
    /* 800B9010 */ BOOL checkRAction();
    /* 800B9018 */ BOOL checkMoveDoAction();
    /* 800B9148 */ BOOL checkSideRollAction(int);
    /* 800B9254 */ BOOL checkNoUpperAnime() const;
    /* 800B92D0 */ BOOL checkOneHandItemEquipAnime() const;
    /* 800B92F8 */ BOOL checkItemEquipAnime() const;
    /* 800B9340 */ BOOL checkEquipAnime() const;
    /* 800B9398 */ BOOL checkWindDashAnime() const;
    /* 800B93CC */ BOOL checkSwordTwirlAnime() const;
    /* 800B93F4 */ void swordEquip(int);
    /* 800B9580 */ void swordUnequip();
    /* 800B9640 */ void itemEquip(u16 i_itemID);
    /* 800B96A4 */ void itemUnequip(u16 i_itemID, f32 i_playSpeed);
    /* 800B97EC */ bool checkFastUnequip();
    /* 800B983C */ void allUnequip(int);
    /* 800B994C */ BOOL checkItemChangeFromButton();
    /* 800B9D2C */ BOOL checkNextActionFromButton();
    /* 800B9F50 */ BOOL checkGroundSpecialMode();
    /* 800BA09C */ int commonCheckNextAction(int);
    /* 800BA0D0 */ int checkNextAction(int);
    /* 800BA6A0 */ void commonChangeItem();
    /* 800BA914 */ void setItemAction();
    /* 800BAF08 */ BOOL checkNextActionFromCrouch(int);
    /* 800BAF80 */ int checkUpperReadyThrowAnime() const;
    /* 800BB020 */ void getBodyAngleXBasePos(cXyz*);
    /* 800BB084 */ s16 getBodyAngleXAtnActor(int);
    /* 800BB2B0 */ void setBodyAngleXReadyAnime(int);
    /* 800BB324 */ void setMagicArmorBrk(int);
    /* 800BB408 */ BOOL checkMagicArmorHeavy() const;
    /* 800BB4B8 */ BOOL checkHeavyStateOn(int, int);
    /* 800BB644 */ void initGravity();
    /* 800BB770 */ void setSpecialGravity(f32, f32, int);
    /* 800BB7A0 */ void transAnimeProc(cXyz*, f32, f32);
    /* 800BBD40 */ void setFootSpeed();
    /* 800BBF68 */ void posMove();
    /* 800BD6FC */ void autoGroundHit();
    /* 800BDD70 */ bool startPeepChange();
    /* 800BDE20 */ void setLastSceneDamage(int, u32*);
    /* 800BDE48 */ void setLastSceneMode(u32*);
    /* 800BDF60 */ int startRestartRoom(u32, int, int, int);
    /* 800BE26C */ BOOL checkCoachGuardGame();
    /* 800BE2C0 */ void checkRoofRestart();
    /* 800BE3E4 */ BOOL checkRestartRoom();
    /* 800BE9D4 */ s16 getSceneExitMoveAngle();
    /* 800BEAF8 */ int checkSceneChange(int i_exitID);
    /* 800BF0B8 */ void voiceStartLevel(u32);
    /* 800BF0EC */ void seStartSwordCut(u32);
    /* 800BF194 */ void seStartMapInfo(u32);
    /* 800BF1CC */ void seStartMapInfoLevel(u32);
    /* 800BF204 */ void setBasAnime(daAlink_c::daAlink_UNDER);
    /* 800BF37C */ void initBasAnime();
    /* 800BF4E0 */ void resetBasAnime();
    /* 800BF500 */ BOOL checkSightLine(f32, cXyz*);
    /* 800BF79C */ void setMetamorphoseModel(int);
    /* 800BF854 */ void keepItemData();
    /* 800BF884 */ void returnKeepItemData();
    /* 800BF8D0 */ BOOL setItemModel();
    /* 800BF9F0 */ BOOL setItemActor();
    /* 800BFD74 */ void makeItemType();
    /* 800BFDB0 */ BOOL checkZoraWearAbility() const;
    /* 800BFDFC */ BOOL checkMagicArmorWearAbility() const;
    /* 800BFE48 */ J3DModelData* loadAramBmd(u16, u32);
    /* 800BFF04 */ void* loadAram(u16, u32);
    /* 800BFF70 */ J3DAnmTevRegKey* loadAramItemBrk(u16, J3DModel*);
    /* 800BFFCC */ J3DAnmTextureSRTKey* loadAramItemBtk(u16, J3DModel*);
    /* 800C0028 */ J3DAnmTexPattern* loadAramItemBtp(u16, J3DModel*);
    /* 800C0084 */ void changeItemBck(u16, f32);
    /* 800C0114 */ int checkGroupItem(int, int) const;
    /* 800C0164 */ int checkSetItemTrigger(int);
    /* 800C0208 */ int checkItemSetButton(int);
    /* 800C0284 */ static bool checkField();
    /* 800C02C8 */ static bool checkBossRoom();
    /* 800C0310 */ static bool checkDungeon();
    /* 800C0358 */ static bool checkCastleTown();
    /* 800C03A0 */ static bool checkCloudSea();
    /* 800C03E8 */ static bool checkRoomOnly();
    /* 800C044C */ static bool checkLv2DungeonRoomSpecial();
    /* 800C04B4 */ static bool checkRoomSpecial();
    /* 800C0520 */ static bool checkRoom();
    /* 800C0594 */ static bool checkNotBattleStage();
    /* 800C05DC */ static bool checkNotHeavyBootsStage();
    /* 800C0630 */ static bool checkNotAutoJumpStage();
    /* 800C0678 */ static bool checkCastleTownUseItem(u16);
    /* 800C077C */ int changeItemTriggerKeepProc(u8, int);
    /* 800C0A9C */ int checkNewItemChange(u8);
    /* 800C12DC */ void deleteEquipItem(int playSound, int deleteKantera);
    /* 800C1704 */ void setLight();
    /* 800C1CEC */ void setFrontRollCrashShock(u8);
    /* 800C1E0C */ void changeWarpMaterial(daAlink_c::daAlink_WARP_MAT_MODE);
    /* 800C1F6C */ void commonProcInit(daAlink_c::daAlink_PROC procID);
    /* 800C2DA4 */ BOOL commonProcInitNotSameProc(daAlink_PROC procID);
    /* 800C2DDC */ int procPreActionUnequipInit(int, fopAc_ac_c*);
    /* 800C2EAC */ int procPreActionUnequip();
    /* 800C3098 */ int procServiceWaitInit();
    /* 800C30F0 */ int procServiceWait();
    /* 800C3224 */ int procTiredWaitInit();
    /* 800C3338 */ int procTiredWait();
    /* 800C33B8 */ int procWaitInit();
    /* 800C3504 */ int procWait();
    /* 800C36CC */ int procMoveInit();
    /* 800C3730 */ int procMove();
    /* 800C3810 */ int procAtnMoveInit();
    /* 800C3868 */ int procAtnMove();
    /* 800C38CC */ int procAtnActorWaitInit();
    /* 800C397C */ int procAtnActorWait();
    /* 800C39EC */ int procAtnActorMoveInit();
    /* 800C3A44 */ int procAtnActorMove();
    /* 800C3A94 */ int procWaitTurnInit();
    /* 800C3B1C */ int procWaitTurn();
    /* 800C3C3C */ int procMoveTurnInit(int);
    /* 800C3D38 */ int procMoveTurn();
    /* 800C3DA0 */ int procSideStepInit(int);
    /* 800C3F60 */ int procSideStep();
    /* 800C40F0 */ int procSideStepLandInit();
    /* 800C4278 */ int procSideStepLand();
    /* 800C4378 */ int procSlideInit(s16);
    /* 800C4514 */ int procSlide();
    /* 800C47AC */ int procSlideLandInit(int);
    /* 800C4894 */ int procSlideLand();
    /* 800C494C */ int procFrontRollInit();
    /* 800C4B40 */ int procFrontRoll();
    /* 800C4F14 */ int procFrontRollCrashInit();
    /* 800C4FFC */ int procFrontRollCrash();
    /* 800C5160 */ int procFrontRollSuccessInit();
    /* 800C5240 */ int procFrontRollSuccess();
    /* 800C5328 */ int procSideRollInit(int);
    /* 800C5484 */ int procSideRoll();
    /* 800C5700 */ void backJumpSpeedDec();
    /* 800C57A4 */ int procBackJumpInit(int);
    /* 800C5964 */ int procBackJump();
    /* 800C5A54 */ int procBackJumpLandInit(int);
    /* 800C5AF0 */ int procBackJumpLand();
    /* 800C5C28 */ int procSlipInit();
    /* 800C5CA4 */ int procSlip();
    /* 800C5E68 */ int procAutoJumpInit(int);
    /* 800C61EC */ int procAutoJump();
    /* 800C66DC */ int procDiveJumpInit();
    /* 800C6798 */ int procDiveJump();
    /* 800C6850 */ int procRollJumpInit();
    /* 800C692C */ int procRollJump();
    /* 800C6A48 */ int procFallInit(int, f32);
    /* 800C6D20 */ int procFall();
    /* 800C6F18 */ int procLandInit(f32);
    /* 800C6FE4 */ int procLand();
    /* 800C70F8 */ int procSmallJumpInit(int);
    /* 800C72D4 */ int procSmallJump();
    /* 800C74D4 */ int procStepMoveInit();
    /* 800C755C */ int procStepMove();
    /* 800C7690 */ int procCrouchInit();
    /* 800C76F8 */ int procCrouch();
    /* 800C77F4 */ int procCoMetamorphoseInit();
    /* 800C7C64 */ int procCoMetamorphose();
    /* 800C82E8 */ int procCoMetamorphoseOnlyInit();
    /* 800C83A0 */ int procCoMetamorphoseOnly();
    /* 800C8460 */ int procFloorDownReboundInit();
    /* 800C84D0 */ int procFloorDownRebound();
    /* 800C854C */ int procGoronRideWaitInit(fopAc_ac_c*);
    /* 800C85D8 */ int procGoronRideWait();
    /* 800C8700 */ int execute();
    /* 800CAFC8 */ void setDrawHand();
    /* 800CB480 */ bool checkSwordDraw();
    /* 800CB53C */ bool checkShieldDraw();
    /* 800CB5F8 */ bool checkItemDraw();
    /* 800CB694 */ int initShadowScaleLight();
    /* 800CBA38 */ int moveShadowScaleLight();
    /* 800CBC18 */ void shadowDraw();
    /* 800CC25C */ void modelCalc(J3DModel*);
    /* 800CC298 */ void basicModelDraw(J3DModel*);
    /* 800CC2E0 */ void modelDraw(J3DModel*, int);
    /* 800CC364 */ void setWaterDropColor(J3DGXColorS10 const*);
    /* 800CC7DC */ void initTevCustomColor();
    /* 800CC7FC */ int draw();
    /* 800CD7AC */ ~daAlink_c();
    /* 800CE294 */ bool checkNoSubjectModeCamera();
    /* 800CE468 */ bool acceptSubjectModeChange();
    /* 800CE628 */ int checkSubjectAction();
    /* 800CE728 */ s16 checkBodyAngleX(s16);
    /* 800CE8A0 */ BOOL setBodyAngleToCamera();
    /* 800CEAF4 */ void setSubjectMode();
    /* 800CEB58 */ BOOL subjectCancelTrigger();
    /* 800CEBD8 */ int checkSubjectEnd(int);
    /* 800CECE4 */ void searchPeepObj(fopAc_ac_c*, void*);
    /* 800CED84 */ int procCoSubjectivityInit();
    /* 800CEE08 */ int procCoSubjectivity();
    /* 800CEF70 */ int procCoSwimSubjectivityInit();
    /* 800CF018 */ int procCoSwimSubjectivity();
    /* 800CF100 */ int procCoPeepSubjectivityInit();
    /* 800CF1B8 */ int procCoPeepSubjectivity();
    /* 800CF380 */ daAlink_c();
    /* 800D0110 */ BOOL checkWolfEnemyThrowAnime() const {
        return checkUpperAnime(0x2BD) || checkUpperAnime(0x2BE);
    }
    /* 800D014C */ void setMidnaTalkStatus(u8 status) { dComIfGp_setZStatus(status, 0); }
    /* 800D0164 */ void set3DStatus(u8 status, u8 direction) {
        dComIfGp_set3DStatus(status, direction, 0);
    }
    /* 800D2684 */ void checkCutTurnCharge();
    /* 800D0E08 */ void checkLightSwordMtrl();
    /* 800D0E98 */ BOOL checkSwordEquipAnime() const;
    /* 800D0ECC */ BOOL checkCutDashAnime() const;
    /* 800D0EFC */ BOOL checkCutDashEnemyHit(dCcD_GObjInf&);
    /* 800D0F5C */ static u32 getSwordAtType();
    /* 800D0F90 */ void initCutTurnAt(f32, int);
    /* 800D102C */ bool checkCutFinishJumpUp();
    /* 800D1088 */ void changeCutFast();
    /* 800D10E0 */ bool checkCutFastReady();
    /* 800D1268 */ void setSwordModel();
    /* 800D1310 */ void offSwordModel();
    /* 800D13AC */ BOOL checkCutTypeNoBlur() const;
    /* 800D13E4 */ bool checkCutTurnInput() const;
    /* 800D1424 */ int getCutTurnDirection() const;
    /* 800D1430 */ void resetCombo(int);
    /* 800D1454 */ void checkComboCnt();
    /* 800D152C */ void setCutType(u8);
    /* 800D1540 */ void setCylAtParam(u32, dCcG_At_Spl, u8, u8, int, f32, f32);
    /* 800D1688 */ void setSwordAtParam(dCcG_At_Spl i_spl, u8 i_hitMark, u8 i_AtSe, int i_atp,
                                        f32 param_4, f32 i_radius);
    /* 800D1788 */ static BOOL notSwordHitVibActor(fopAc_ac_c*);
    /* 800D17EC */ BOOL setSwordHitVibration(dCcD_GObjInf*);
    /* 800D1920 */ BOOL checkAtShieldHit(dCcD_GObjInf&);
    /* 800D1978 */ BOOL checkCutReverseAt(dCcD_GObjInf*);
    /* 800D19C8 */ BOOL changeCutReverseProc(daAlink_c::daAlink_ANM);
    /* 800D1E1C */ void setCutDash(int, int);
    /* 800D20B4 */ BOOL checkForceSwordSwing();
    /* 800D20FC */ void setComboReserb();
    /* 800D2188 */ BOOL checkComboReserb();
    /* 800D21D0 */ int commonCutAction();
    /* 800D2284 */ void setSwordVoiceSe(u32);
    /* 800D22BC */ void setSwordChargeVoiceSe();
    /* 800D2304 */ void setSwordComboVoice();
    /* 800D2368 */ bool checkCutTurnInputTrigger();
    /* 800D23C0 */ int checkCutAction();
    /* 800D26EC */ int getCutDirection();
    /* 800D2760 */ BOOL checkCutCancelNextMode(int);
    /* 800D27E4 */ BOOL checkDoCutAction();
    /* 800D2890 */ BOOL checkCutBackState();
    /* 800D28F4 */ BOOL checkCutHeadState();
    /* 800D29D4 */ BOOL checkDownAttackState();
    /* 800D2ABC */ BOOL checkCutLargeTurnState() const;
    /* 800D2B88 */ void cancelCutCharge();
    /* 800D2BFC */ void initCutAtnActorSearch();
    /* 800D2C54 */ void checkCutAtnActorChange();
    /* 800D2C78 */ void setCutJumpSpeed(int);
    /* 800D2F58 */ int procCutNormalInit(int);
    /* 800D31B8 */ int procCutNormal();
    /* 800D34D8 */ int procCutFinishInit(int);
    /* 800D382C */ int procCutFinish();
    /* 800D3ADC */ int procCutFinishJumpUpInit();
    /* 800D3CCC */ int procCutFinishJumpUp();
    /* 800D3DD8 */ int procCutFinishJumpUpLandInit();
    /* 800D3ECC */ int procCutFinishJumpUpLand();
    /* 800D4068 */ int procCutReverseInit(daAlink_c::daAlink_ANM);
    /* 800D41FC */ int procCutReverse();
    /* 800D42FC */ int procCutJumpInit(int);
    /* 800D43F8 */ int procCutJump();
    /* 800D452C */ int procCutJumpLandInit(int);
    /* 800D4684 */ int procCutJumpLand();
    /* 800D47DC */ int procCutTurnInit(int, int);
    /* 800D4A74 */ int procCutTurn();
    /* 800D4C68 */ int procCutTurnChargeInit();
    /* 800D4D04 */ int procCutTurnCharge();
    /* 800D4DDC */ int procCutTurnMoveInit(int);
    /* 800D4EFC */ int procCutTurnMove();
    /* 800D53C8 */ int procCutDownInit();
    /* 800D57F8 */ int procCutDown();
    /* 800D58A0 */ int procCutDownLandInit(fopEn_enemy_c*);
    /* 800D5ADC */ int procCutDownLand();
    /* 800D5C88 */ int procCutHeadInit();
    /* 800D5FC8 */ int procCutHead();
    /* 800D6130 */ int procCutHeadLandInit();
    /* 800D618C */ int procCutHeadLand();
    /* 800D6238 */ int procCutLargeJumpChargeInit();
    /* 800D62A0 */ int procCutLargeJumpCharge();
    /* 800D6374 */ int procCutLargeJumpInit();
    /* 800D6484 */ int procCutLargeJump();
    /* 800D66C0 */ int procCutLargeJumpLandInit(int);
    /* 800D67FC */ int procCutLargeJumpLand();
    /* 800D698C */ int procSwordUnequipSpInit();
    /* 800D6A38 */ int procSwordUnequipSp();
    /* 800D6D94 */ s16 getFreezeR() const;
    /* 800D6DA4 */ s16 getFreezeG() const;
    /* 800D6DB4 */ s16 getFreezeB() const;
    /* 800D6DC4 */ bool checkMiddleBossGoronRoom();
    /* 800D6E24 */ void freezeTimerDamage();
    /* 800D6F2C */ BOOL checkNoLandDamageSlidePolygon();
    /* 800D6FE0 */ void checkCutLandDamage();
    /* 800D70A0 */ BOOL checkCaughtEscapeCutTurn();
    /* 800D7208 */ f32 damageMagnification(int i_checkZoraMag, int);
    /* 800D72BC */ int setDamagePoint(int i_dmgAmount, int i_checkZoraMag, int i_setDmgTimer, int);
    /* 800D7478 */ void setDamagePointNormal(int);
    /* 800D74A4 */ void setLandDamagePoint(int);
    /* 800D74F4 */ cXyz* getDamageVec(dCcD_GObjInf*);
    /* 800D76C4 */ void setDashDamage();
    /* 800D7768 */ static BOOL checkIcePolygonDamage(cBgS_PolyInfo*);
    /* 800D77C8 */ BOOL checkMagicArmorNoDamage();
    /* 800D7820 */ int checkPolyDamage();
    /* 800D7A98 */ BOOL checkElecReturnDamage(dCcD_GObjInf&, fopAc_ac_c**);
    /* 800D7B18 */ void damageTimerCount();
    /* 800D7BE8 */ bool checkHugeAttack(int) const;
    /* 800D7C14 */ bool checkLargeAttack(int) const;
    /* 800D7C40 */ BOOL checkDamageAction();
    /* 800D8F3C */ int procDamageInit(dCcD_GObjInf*, int);
    /* 800D9514 */ int procDamage();
    /* 800D96DC */ int procCoLargeDamageInit(int, int, s16, s16, dCcD_GObjInf*, int);
    /* 800D9E88 */ int procCoLargeDamage();
    /* 800DA180 */ int procLargeDamageUpInit(int, int, s16, s16);
    /* 800DA554 */ int procLargeDamageUp();
    /* 800DA82C */ int procCoLargeDamageWallInit(int, int, s16, s16);
    /* 800DAC28 */ int procCoLargeDamageWall();
    /* 800DAC84 */ int procCoPolyDamageInit();
    /* 800DAD90 */ int procCoPolyDamage();
    /* 800DAE10 */ int procLandDamageInit(int);
    /* 800DB060 */ int procLandDamage();
    /* 800DB140 */ int procCoElecDamageInit(fopAc_ac_c*, dCcD_GObjInf*, int);
    /* 800DB418 */ int procCoElecDamage();
    /* 800DB5B0 */ int procStEscapeInit();
    /* 800DB610 */ int procStEscape();
    /* 800DB6A4 */ int procDkCaughtInit(fpc_ProcID);
    /* 800DB860 */ int procDkCaught();
    /* 800DBC98 */ void setScreamWaitAnime();
    /* 800DBD1C */ int procScreamWaitInit();
    /* 800DBDA4 */ int procScreamWait();
    /* 800DBE00 */ int procCoSandWallHitInit();
    /* 800DBE74 */ int procCoSandWallHit();
    /* 800DBED8 */ int procCoLavaReturnInit(int);
    /* 800DC214 */ int procCoLavaReturn();
    /* 800DC278 */ int procCoSwimFreezeReturnInit();
    /* 800DC474 */ int procCoSwimFreezeReturn();
    /* 800DC548 */ static BOOL checkEnemyGroup(fopAc_ac_c*);
    /* 800DC5A4 */ static BOOL checkSpecialNpc(fopAc_ac_c*);
    /* 800DC5DC */ BOOL checkShieldAttackEmphasys();
    /* 800DC678 */ BOOL checkGuardActionChange();
    /* 800DC79C */ void stickArrowIncrement(int);
    /* 800DC8C4 */ void setArrowShieldActor(fopAc_ac_c*, int);
    /* 800DCA2C */ BOOL checkWoodShieldEquipNotIronBall() const;
    /* 800DCA80 */ void getArrowShieldOffset(cXyz const*, csXyz const*, cXyz*, cXyz*) const;
    /* 800DCD74 */ void setArrowShieldPos(cXyz*, csXyz*, cXyz const*, cXyz const*) const;
    /* 800DCDF0 */ BOOL checkUpperGuardAnime() const;
    /* 800DCF04 */ BOOL checkPlayerGuardAndAttack() const;
    /* 800DCF64 */ BOOL checkGuardAccept();
    /* 800DD008 */ void setUpperGuardAnime(f32);
    /* 800DD018 */ void setShieldGuard();
    /* 800DD114 */ void setGuardSe(dCcD_GObjInf*);
    /* 800DD1D4 */ void setSmallGuard(dCcD_GObjInf*);
    /* 800DD3E4 */ int procGuardSlipInit(int, dCcD_GObjInf*);
    /* 800DD894 */ int procGuardSlip();
    /* 800DDA10 */ int procGuardAttackInit();
    /* 800DDBA8 */ int procGuardAttack();
    /* 800DDE58 */ int procGuardBreakInit();
    /* 800DDF2C */ int procGuardBreak();
    /* 800DE008 */ int procTurnMoveInit(int);
    /* 800DE380 */ int procTurnMove();
    /* 800DE64C */ void getArrowFlyData(f32*, f32*, int) const;
    /* 800DE740 */ f32 getArrowIncAtR() const;
    /* 800DE750 */ s16 getBombArrowFlyExplodeTime() const;
    /* 800DE760 */ f32 getArrowIncAtMaxStart() const;
    /* 800DE770 */ f32 getArrowIncAtMax() const;
    /* 800DE780 */ BOOL checkBowAndSlingItem(int);
    /* 800DE7D4 */ void setSlingModel();
    /* 800DE884 */ cXyz* checkBowCameraArrowPosP(s16*, s16*);
    /* 800DE9B8 */ BOOL checkBowReadyAnime() const;
    /* 800DE9E8 */ BOOL checkBowAnime() const;
    /* 800DEA3C */ void makeArrow();
    /* 800DEAE4 */ void deleteArrow();
    /* 800DEB8C */ void setBowOrSlingStatus();
    /* 800DEBC8 */ void changeArrowType();
    /* 800DED88 */ BOOL cancelBowMoveRideNotAtn();
    /* 800DEE1C */ BOOL cancelBowMove();
    /* 800DEEDC */ void setBowReadyAnime();
    /* 800DEFB8 */ void setBowReloadAnime();
    /* 800DF0BC */ BOOL checkUpperItemActionBow();
    /* 800DF798 */ void checkUpperItemActionBowFly();
    /* 800DF814 */ int checkNextActionBow();
    /* 800DFAE8 */ void setBowModel();
    /* 800DFBC8 */ bool checkBowGrabLeftHand() const;
    /* 800DFC28 */ void setBowHangAnime();
    /* 800DFC70 */ void setBowNormalAnime();
    /* 800DFCD8 */ void setBowSight();
    /* 800DFD6C */ int procBowSubjectInit();
    /* 800DFDDC */ int procBowSubject();
    /* 800DFE3C */ int procBowMoveInit();
    /* 800DFEC0 */ int procBowMove();
    /* 800DFFE0 */ BOOL checkBoomerangLockAccept();
    /* 800E0010 */ f32 getBoomSpeed();
    /* 800E00B0 */ f32 getBoomCatchSpeed() const;
    /* 800E00C0 */ f32 getBoomFlyMax() const;
    /* 800E011C */ f32 getBoomLockMax();
    /* 800E0190 */ s16 getBoomBgThroughTime() const;
    /* 800E01A0 */ bool checkBossBabaRoom();
    /* 800E01CC */ void cancelBoomerangLock(fopAc_ac_c*);
    /* 800E0210 */ fopAc_ac_c* getBoomerangActor();
    /* 800E0244 */ bool checkBoomerangChargeEnd();
    /* 800E02B8 */ BOOL checkBoomerangCarry(fopAc_ac_c*);
    /* 800E03D0 */ void initBoomerangUpperAnimeSpeed(int);
    /* 800E0440 */ BOOL checkBoomerangAnime() const;
    /* 800E04AC */ BOOL checkBoomerangThrowAnime() const;
    /* 800E04E8 */ void setBoomerangReadyQuake();
    /* 800E055C */ void setBoomerangReadyAnime();
    /* 800E05E8 */ void setThrowBoomerangAnime();
    /* 800E0630 */ void setBoomerangCatchAnime();
    /* 800E06B8 */ void throwBoomerang();
    /* 800E08C4 */ int returnBoomerang(int);
    /* 800E0A9C */ int checkUpperItemActionBoomerang();
    /* 800E0B58 */ void checkUpperItemActionBoomerangFly();
    /* 800E0BE4 */ int checkNextActionBoomerang();
    /* 800E0D8C */ int checkBoomerangCatchAction();
    /* 800E0E64 */ void setBoomerangSight();
    /* 800E0F10 */ int procBoomerangSubjectInit();
    /* 800E0FA0 */ int procBoomerangSubject();
    /* 800E1060 */ int procBoomerangMoveInit();
    /* 800E10F4 */ int procBoomerangMove();
    /* 800E11D8 */ int procBoomerangCatchInit();
    /* 800E1248 */ int procBoomerangCatch();
    /* 800E12E0 */ static BOOL checkLv6BossRoom();
    /* 800E1310 */ f32 getCopyRodBallSpeed() const;
    /* 800E1320 */ f32 getCopyRodBallReturnSpeed() const;
    /* 800E1330 */ f32 getCopyRodBallDisMax() const;
    /* 800E1374 */ fopAc_ac_c* getCopyRodControllActor();
    /* 800E1390 */ fopAc_ac_c* getCopyRodCameraActor();
    /* 800E13AC */ void initCopyRodUpperAnimeSpeed(int);
    /* 800E1408 */ static BOOL checkForestOldCentury();
    /* 800E1530 */ int checkCopyRodAnime() const;
    /* 800E158C */ void setCopyRodControllAnime();
    /* 800E15FC */ void setCopyRodControllUpperSpeedRate();
    /* 800E1748 */ void setCopyRodModel();
    /* 800E1840 */ void setCopyRodReadyAnime();
    /* 800E191C */ void throwCopyRod();
    /* 800E1A30 */ int returnCopyRod();
    /* 800E1ADC */ int checkUpperItemActionCopyRod();
    /* 800E1BB4 */ void checkUpperItemActionCopyRodFly();
    /* 800E1C44 */ int checkNextActionCopyRod();
    /* 800E1D6C */ void setCopyRodSight();
    /* 800E1E20 */ int procCopyRodSubjectInit();
    /* 800E1EB0 */ int procCopyRodSubject();
    /* 800E1F68 */ int procCopyRodMoveInit();
    /* 800E1FFC */ int procCopyRodMove();
    /* 800E20C8 */ int procCopyRodSwingInit();
    /* 800E21FC */ int procCopyRodSwing();
    /* 800E2308 */ int procCopyRodReviveInit();
    /* 800E23A4 */ int procCopyRodRevive();
    /* 800E23FC */ void concatMagneBootMtx();
    /* 800E243C */ void concatMagneBootInvMtx();
    /* 800E247C */ void multVecMagneBootInvMtx(cXyz*);
    /* 800E24B0 */ bool commonMagneLineCheck(cXyz*, cXyz*);
    /* 800E251C */ BOOL checkBootsMoveAnime(int);
    /* 800E2580 */ int setHeavyBoots(int);
    /* 800E2738 */ s16 getMagneBootsLocalAngleY(s16, int);
    /* 800E2808 */ void setMagneBootsMtx(cBgS_PolyInfo*, int);
    /* 800E2DC4 */ int cancelMagneBootsOn();
    /* 800E2F88 */ int checkMagneBootsFly();
    /* 800E3048 */ int procBootsEquipInit();
    /* 800E30DC */ int procBootsEquip();
    /* 800E3218 */ int procMagneBootsFlyInit();
    /* 800E3454 */ int procMagneBootsFly();
    /* 800E3760 */ s16 getBombExplodeTime() const;
    /* 800E3770 */ f32 getBombGravity() const;
    /* 800E3780 */ f32 getBombMaxFallSpeed() const;
    /* 800E3790 */ f32 getBombBoundRate() const;
    /* 800E37A0 */ f32 getBombStopSpeedY() const;
    /* 800E37B0 */ f32 getBombMaxSpeedY() const;
    /* 800E37C0 */ f32 getBombEffScale() const;
    /* 800E37D0 */ f32 getBombAtR() const;
    /* 800E37E0 */ s16 getEnemyBombColorR() const;
    /* 800E37F0 */ f32 getBombWaterGravity() const;
    /* 800E3800 */ f32 getBombWaterMaxFallSpeed() const;
    /* 800E3810 */ f32 getBombExplodeWaterEffectLimit() const;
    /* 800E3820 */ s16 getBombInsectLimitAngle() const;
    /* 800E38EC */ BOOL checkGrabLineCheck();
    /* 800E3BCC */ f32 getGrabThrowRate();
    /* 800E3C1C */ BOOL checkGrabThrowAnime() const;
    /* 800E3C6C */ BOOL checkGrabAnime() const;
    /* 800E3C9C */ BOOL checkGrabAnimeAndThrow() const;
    /* 800E3CF4 */ BOOL checkGrabCarryActor();
    /* 800E3D1C */ BOOL checkGrabSlowMoveActor();
    /* 800E3D6C */ BOOL checkGrabHeavyActor();
    /* 800E3D94 */ BOOL checkGrabSideActor();
    /* 800E3DBC */ void setGrabUpperAnime(f32);
    /* 800E3F20 */ BOOL checkGrabRooster();
    /* 800E3F50 */ void setGrabItemPos();
    /* 800E4BD4 */ void freeGrabItem();
    /* 800E4DEC */ void setGrabUpperSpeedRate();
    /* 800E4FA8 */ void setCarryArmAngle(f32, f32);
    /* 800E5150 */ BOOL checkGrabNotThrow();
    /* 800E5170 */ BOOL checkNextActionGrab();
    /* 800E53AC */ void initGrabNextMode();
    /* 800E53F8 */ void setGrabItemThrow();
    /* 800E57AC */ BOOL checkUpperGrabItemThrow(f32);
    /* 800E5830 */ void putObjLineCheck(dBgS_LinChk&, cXyz*, fopAc_ac_c*);
    /* 800E5B6C */ bool grabLineCheck(cXyz*, cXyz*);
    /* 800E5BB4 */ void setGrabItemActor(fopAc_ac_c*);
    /* 800E5CBC */ int procGrabReadyInit();
    /* 800E5EC8 */ int procGrabReady();
    /* 800E5FD0 */ int procGrabUpInit();
    /* 800E6230 */ int procGrabUp();
    /* 800E637C */ int procGrabMiss();
    /* 800E63F0 */ int procGrabThrowInit(int);
    /* 800E65F8 */ int procGrabThrow();
    /* 800E672C */ int procGrabPutInit();
    /* 800E6914 */ int procGrabPut();
    /* 800E6A9C */ int procGrabWaitInit();
    /* 800E6C34 */ int procGrabWait();
    /* 800E6D6C */ int procGrabReboundInit(int);
    /* 800E6E0C */ int procGrabRebound();
    /* 800E6EEC */ int procGrabStandInit();
    /* 800E6FE0 */ int procGrabStand();
    /* 800E70C0 */ BOOL checkInsectActorName(fopAc_ac_c*);
    /* 800E70FC */ int procInsectCatchInit();
    /* 800E71D4 */ int procInsectCatch();
    /* 800E7254 */ int procPickUpInit();
    /* 800E7460 */ int procPickUp();
    /* 800E75EC */ int procPickPutInit(int);
    /* 800E76E0 */ int procPickPut();
    /* 800E7894 */ BOOL checkSetChainPullAnime(s16);
    /* 800E794C */ s16 getChainStickAngleY(s16) const;
    /* 800E7994 */ u8 checkChainEmphasys();
    /* 800E79F8 */ BOOL searchFmChainPos();
    /* 800E7AEC */ BOOL setFmChainPosFromOut(fopAc_ac_c*, cXyz*, int);
    /* 800E7C30 */ int procFmChainUpInit();
    /* 800E7CC0 */ int procFmChainUp();
    /* 800E7DD8 */ int procFmChainStrongPullInit();
    /* 800E7E50 */ int procFmChainStrongPull();
    /* 800E7ED0 */ void setWallGrabStatus(u8, u8);
    /* 800E7EE4 */ int getWallGrabStatus();
    /* 800E7EF4 */ BOOL wallGrabTrigger();
    /* 800E7F18 */ BOOL wallGrabButton();
    /* 800E7F3C */ int setPushPullKeepData(dBgW_Base::PushPullLabel, int);
    /* 800E80A4 */ BOOL checkPushPullTurnBlock();
    /* 800E8148 */ BOOL checkPullBehindWall();
    /* 800E8298 */ void offGoatStopGame();
    /* 800E82B0 */ BOOL checkGoatCatchActor(fopAc_ac_c*);
    /* 800E8314 */ f32 getGoatCatchDistance2();
    /* 800E8334 */ int endPushPull();
    /* 800E8354 */ f32 getPushPullAnimeSpeed();
    /* 800E8428 */ int procCoPushPullWaitInit(int);
    /* 800E857C */ int procCoPushPullWait();
    /* 800E875C */ int procCoPushMoveInit(int, int);
    /* 800E89F0 */ int procCoPushMove();
    /* 800E8D1C */ int procPullMoveInit(int);
    /* 800E8F44 */ int procPullMove();
    /* 800E9210 */ void setGoatStopGameFail(fopAc_ac_c*);
    /* 800E9344 */ int procGoatMoveInit();
    /* 800E9434 */ int procGoatMove();
    /* 800E9894 */ int procGoatCatchInit(fopAc_ac_c*, f32);
    /* 800E9BD0 */ int procGoatCatch();
    /* 800EA2A8 */ int procGoatStrokeInit();
    /* 800EA3AC */ int procGoatStroke();
    /* 800EA3F4 */ int procGoronMoveInit();
    /* 800EA4CC */ int procGoronMove();
    /* 800EA844 */ BOOL checkSumouVsActor();
    /* 800EA8D0 */ void cancelSumouMode();
    /* 800EA908 */ BOOL sumouPunchTrigger();
    /* 800EA92C */ void setSumouPunchStatus();
    /* 800EA950 */ int procSumouReadyInit();
    /* 800EAA28 */ int procSumouReady();
    /* 800EAC4C */ int procSumouMoveInit();
    /* 800EAD84 */ int procSumouMove();
    /* 800EB208 */ int procSumouSideMoveInit();
    /* 800EB2BC */ int procSumouSideMove();
    /* 800EB624 */ int procSumouActionInit(BOOL i_doTrigger, BOOL i_punchTrigger, int unused);
    /* 800EBCE0 */ int procSumouAction();
    /* 800EC0F8 */ int procSumouStaggerInit();
    /* 800EC170 */ int procSumouStagger();
    /* 800EC20C */ int procSumouWinLoseInit();
    /* 800EC3D8 */ int procSumouWinLose();
    /* 800EC538 */ int procSumouShikoInit();
    /* 800EC5F4 */ int procSumouShiko();
    /* 800EC76C */ static BOOL checkHorseZeldaBowMode();
    /* 800EC7B0 */ static void setHorseZeldaDamage();
    /* 800EC7DC */ static BOOL checkHorseDashAccept();
    /* 800EC814 */ static BOOL checkCowGame();
    /* 800EC87C */ int getReinRideDirection();
    /* 800EC8F8 */ int checkReinRideBgCheck();
    /* 800ECA3C */ void commonInitForceRideRein();
    /* 800ECAAC */ int initForceRideBoar();
    /* 800ECB58 */ void initForceRideHorse();
    /* 800ECBD0 */ void rideGetOff();
    /* 800ECD90 */ BOOL checkHorseNotDamageReaction() const;
    /* 800ECDC4 */ BOOL checkHorseWaitLashAnime() const;
    /* 800ECDEC */ BOOL checkHorseReinLeftOnly() const;
    /* 800ECE10 */ int getReinHandType() const;
    /* 800ECF04 */ BOOL checkHorseLieAnime() const;
    /* 800ECF5C */ BOOL checkHorseSubjectivity() const;
    /* 800ECF9C */ void setHorseSwordUpAnime();
    /* 800ECFF4 */ void setHorseTurnUpperAnime(int);
    /* 800ED074 */ BOOL checkHorseNoUpperAnime() const;
    /* 800ED0D4 */ void getHorseReinHandPos(cXyz*, cXyz*);
    /* 800ED1F0 */ BOOL checkHorseNotGrab() const;
    /* 800ED310 */ void setHorseStirrup();
    /* 800ED4B8 */ void changeBoarRunRide();
    /* 800ED4DC */ int setSyncHorsePos();
    /* 800ED78C */ int setSyncBoarPos();
    /* 800ED90C */ int setSyncBoarRunPos();
    /* 800EDA24 */ BOOL setSyncRidePos();
    /* 800EDA78 */ void setHorseTurnAnime();
    /* 800EDB48 */ void getBaseHorseAnime(daAlink_c::daAlink_ANM*);
    /* 800EDD6C */ int checkHorseSpecialProc();
    /* 800EDE8C */ BOOL checkHorseServiceWaitAnime();
    /* 800EDEEC */ int setSyncHorse(int);
    /* 800EE64C */ int setSyncBoar(int);
    /* 800EE918 */ int setSyncRide(int);
    /* 800EEAE8 */ void setBaseHorseAnimeFrame();
    /* 800EEC98 */ void setBaseBoarAnime();
    /* 800EED98 */ void setBaseRideAnime();
    /* 800EEE30 */ bool checkHorseSwordUpSpped();
    /* 800EEE5C */ void setHorseSwordUp(int);
    /* 800EEF30 */ int setRideSubjectAngle(s16);
    /* 800EF050 */ void setBodyAngleRideReadyAnime();
    /* 800EF0E8 */ BOOL checkHorseGetOffWallCheck(cXyz*, cXyz*, s16);
    /* 800EF198 */ int checkHorseGetOffDirection();
    /* 800EF35C */ void boarForceGetOff();
    /* 800EF394 */ void horseGetOffEnd();
    /* 800EF450 */ int checkNextActionHorse();
    /* 800EF598 */ BOOL checkHorseGetOff();
    /* 800EF6B0 */ int checkHorseGetOffAndSetDoStatus();
    /* 800EF884 */ int setHorseGetOff(int);
    /* 800EF95C */ int procHorseRideInit();
    /* 800EFDC4 */ int procHorseRide();
    /* 800F038C */ int procHorseGetOffInit(int);
    /* 800F0620 */ int procHorseGetOff();
    /* 800F0980 */ int procHorseWaitInit();
    /* 800F0AA4 */ int procHorseWait();
    /* 800F0C6C */ int procHorseTurnInit();
    /* 800F0CE4 */ int procHorseTurn();
    /* 800F1060 */ int procHorseJumpInit();
    /* 800F10F8 */ int procHorseJump();
    /* 800F1188 */ int procHorseLandInit();
    /* 800F1204 */ int procHorseLand();
    /* 800F1294 */ int procHorseSubjectivityInit();
    /* 800F12F8 */ int procHorseSubjectivity();
    /* 800F13D8 */ int procHorseCutInit();
    /* 800F1688 */ int procHorseCut();
    /* 800F1894 */ int procHorseCutChargeReadyInit();
    /* 800F194C */ int procHorseCutChargeReady();
    /* 800F1AAC */ int procHorseCutTurnInit();
    /* 800F1BA4 */ int procHorseCutTurn();
    /* 800F1D18 */ int procHorseDamageInit(dCcD_GObjInf*);
    /* 800F2028 */ int procHorseDamage();
    /* 800F2150 */ int procHorseBowSubjectInit();
    /* 800F21B4 */ int procHorseBowSubject();
    /* 800F224C */ int procHorseBowMoveInit();
    /* 800F22A8 */ int procHorseBowMove();
    /* 800F2334 */ int procHorseGrabMoveInit();
    /* 800F2390 */ int procHorseGrabMove();
    /* 800F2454 */ int procHorseBoomerangSubjectInit();
    /* 800F24C8 */ int procHorseBoomerangSubject();
    /* 800F25B4 */ int procHorseBoomerangMoveInit();
    /* 800F2628 */ int procHorseBoomerangMove();
    /* 800F26F4 */ int procHorseHookshotSubjectInit();
    /* 800F2770 */ int procHorseHookshotSubject();
    /* 800F2824 */ int procHorseHookshotMoveInit();
    /* 800F2898 */ int procHorseHookshotMove();
    /* 800F2934 */ int procHorseBottleDrinkInit(u16);
    /* 800F2AD8 */ int procHorseBottleDrink();
    /* 800F2B4C */ int procHorseKandelaarPourInit();
    /* 800F2C78 */ int procHorseKandelaarPour();
    /* 800F2D84 */ int procHorseComebackInit();
    /* 800F2DE4 */ int procHorseComeback();
    /* 800F2EE0 */ int procHorseRunInit();
    /* 800F2F98 */ int procHorseRun();
    /* 800F3430 */ int procHorseHangInit(dCcD_GObjInf*, int);
    /* 800F3580 */ int procHorseHang();
    /* 800F36E4 */ int procHorseGetKeyInit();
    /* 800F3754 */ int procHorseGetKey();
    /* 800F3818 */ int procHorseLookDownInit();
    /* 800F3894 */ int procHorseLookDown();
    /* 800F38E8 */ int procBoarRunInit();
    /* 800F3998 */ int procBoarRun();
    /* 800F3BB0 */ f32 getCanoeMaxSpeed() const;
    /* 800F3BDC */ f32 getCanoeBackMaxSpeed() const;
    /* 800F3BEC */ f32 getCanoeCres() const;
    /* 800F3C18 */ f32 getCanoeSpeedRate() const;
    /* 800F3C44 */ s16 getCanoeMaxRotSpeed() const;
    /* 800F3CCC */ static cXyz* getCanoeLocalPaddleTop();
    /* 800F3CF8 */ BOOL checkCanoeRideTandem();
    /* 800F3D58 */ BOOL checkFishingRodAndLureItem() const;
    /* 800F3DA0 */ void initFishingRodHand();
    /* 800F3DFC */ MtxP getCanoePaddleMatrix();
    /* 800F3E4C */ BOOL checkFishingRodGrab(fopAc_ac_c*) const;
    /* 800F3EB8 */ BOOL checkCanoePaddleGrab(fopAc_ac_c*) const;
    /* 800F3F38 */ BOOL checkCanoeFishingRodGrabOrPut() const;
    /* 800F3FC4 */ void initCanoeRide();
    /* 800F4008 */ BOOL checkCanoeJumpRide();
    /* 800F40E4 */ void setArmReelAnime();
    /* 800F4140 */ void setFishingWaitAction();
    /* 800F4490 */ void setFishGetFace();
    /* 800F4564 */ void setRideCanoeBasePos(fopAc_ac_c*);
    /* 800F459C */ void setSyncCanoePos();
    /* 800F47D8 */ int canoeCommon();
    /* 800F4924 */ int checkNextActionCanoe();
    /* 800F4A50 */ int procCanoeRideInit();
    /* 800F4B90 */ int procCanoeRide();
    /* 800F4C78 */ int procCanoeJumpRideInit(fopAc_ac_c*);
    /* 800F4D84 */ int procCanoeJumpRide();
    /* 800F4DF8 */ int procCanoeGetOffInit();
    /* 800F5048 */ int procCanoeGetOff();
    /* 800F51E4 */ int procCanoeWaitInit(int);
    /* 800F542C */ int procCanoeWait();
    /* 800F571C */ int procCanoeRowInit(int);
    /* 800F5A1C */ int procCanoeRow();
    /* 800F5D04 */ int procCanoePaddleShiftInit(int);
    /* 800F5DB8 */ int procCanoePaddleShift();
    /* 800F5EA8 */ int procCanoePaddlePutInit(int);
    /* 800F5FEC */ int procCanoePaddlePut();
    /* 800F6140 */ int procCanoePaddleGrabInit();
    /* 800F6188 */ int procCanoePaddleGrab();
    /* 800F6320 */ int procCanoeRodGrabInit();
    /* 800F6394 */ int procCanoeRodGrab();
    /* 800F6464 */ int procCanoeFishingWaitInit();
    /* 800F659C */ int procCanoeFishingWait();
    /* 800F67C0 */ int procCanoeFishingReelInit();
    /* 800F6874 */ int procCanoeFishingReel();
    /* 800F69D4 */ int procCanoeFishingGetInit();
    /* 800F6A70 */ int procCanoeFishingGet();
    /* 800F6BEC */ int procCanoeSubjectivityInit();
    /* 800F6C30 */ int procCanoeSubjectivity();
    /* 800F6D10 */ int procCanoeBowSubjectInit();
    /* 800F6D64 */ int procCanoeBowSubject();
    /* 800F6DF0 */ int procCanoeBowMoveInit();
    /* 800F6E44 */ int procCanoeBowMove();
    /* 800F6EB0 */ int procCanoeGrabMoveInit();
    /* 800F6EFC */ int procCanoeGrabMove();
    /* 800F6FA4 */ int procCanoeBoomerangSubjectInit();
    /* 800F7010 */ int procCanoeBoomerangSubject();
    /* 800F70F0 */ int procCanoeBoomerangMoveInit();
    /* 800F715C */ int procCanoeBoomerangMove();
    /* 800F7208 */ int procCanoeHookshotSubjectInit();
    /* 800F7274 */ int procCanoeHookshotSubject();
    /* 800F731C */ int procCanoeHookshotMoveInit();
    /* 800F7388 */ int procCanoeHookshotMove();
    /* 800F7404 */ int procCanoeBottleDrinkInit(u16);
    /* 800F7550 */ int procCanoeBottleDrink();
    /* 800F75BC */ int procCanoeKandelaarPourInit();
    /* 800F7684 */ int procCanoeKandelaarPour();
    /* 800F7708 */ void setGroundFishingRodActor();
    /* 800F7760 */ int procFishingCastInit();
    /* 800F7814 */ int procFishingCast();
    /* 800F7988 */ int procFishingFoodInit();
    /* 800F7AA8 */ int procFishingFood();
    /* 800F7C50 */ f32 getCrawlMoveAnmSpeed();
    /* 800F7C74 */ f32 getCrawlMoveSpeed();
    /* 800F7CE8 */ void setCrawlMoveDirectionArrow();
    /* 800F7E48 */ BOOL changeCrawlAutoMoveProc(cXyz*);
    /* 800F81C0 */ int getCrawlMoveVec(cXyz*, cXyz*, cXyz*, int, int, u8*);
    /* 800F85C0 */ void crawlBgCheck(cXyz*, cXyz*, int);
    /* 800F8700 */ BOOL checkCrawlSideWall(cXyz*, cXyz*, cXyz*, cXyz*, s16*, s16*);
    /* 800F88F8 */ void decideCrawlDoStatus();
    /* 800F89E0 */ BOOL checkNotCrawlStand(cXyz*);
    /* 800F8A50 */ BOOL checkNotCrawlStand(cXyz*, cXyz*);
    /* 800F8B00 */ BOOL checkCrawlInHoll(cXyz*, cXyz*, cXyz*, int);
    /* 800F8D04 */ void setCrawlMoveHoll();
    /* 800F8DBC */ void setCrawlMoveAngle();
    /* 800F8F08 */ void stopHalfMoveAnime(f32);
    /* 800F8F84 */ void setCrawlAutoMoveAimPos();
    /* 800F9210 */ int procCrawlStartInit();
    /* 800F9384 */ int procCrawlStart();
    /* 800F9474 */ int procCrawlMoveInit(s16, s16);
    /* 800F95B8 */ int procCrawlMove();
    /* 800F99FC */ int procCrawlAutoMoveInit(int, cXyz*);
    /* 800F9ABC */ int procCrawlAutoMove();
    /* 800F9D7C */ int procCrawlEndInit(int, s16, s16);
    /* 800F9F30 */ int procCrawlEnd();
    /* 800F9FDC */ f32 getHangMoveAnmSpeed();
    /* 800F9FFC */ int getHangDirectionFromAngle();
    /* 800FA070 */ BOOL hangMoveBgCheck(s16, cXyz*);
    /* 800FA338 */ BOOL changeHangMoveProc(int);
    /* 800FA5C8 */ bool checkHangFootWall();
    /* 800FA6E4 */ void setHangGroundY();
    /* 800FA78C */ int changeHangEndProc();
    /* 800FA85C */ void checkHangStartSideWall(s16);
    /* 800FAA7C */ int procHangStartInit();
    /* 800FAE14 */ int procHangStart();
    /* 800FAECC */ int procHangFallStartInit(cM3dGPla*);
    /* 800FB1A4 */ int procHangFallStart();
    /* 800FB2A0 */ int procHangUpInit(int);
    /* 800FB328 */ int procHangUp();
    /* 800FB43C */ int procHangWaitInit();
    /* 800FB544 */ int procHangWait();
    /* 800FB650 */ int procHangMoveInit(int);
    /* 800FB790 */ int procHangMove();
    /* 800FBBC8 */ int procHangClimbInit(f32);
    /* 800FBCD4 */ int procHangClimb();
    /* 800FBE04 */ int procHangWallCatchInit();
    /* 800FC0D8 */ int procHangWallCatch();
    /* 800FC178 */ int procHangReadyInit();
    /* 800FC240 */ int procHangReady();
    /* 800FC2F4 */ int procHangLeverDownInit();
    /* 800FC390 */ int procHangLeverDown();
    /* 800FC5A4 */ int setDragonHangPos();
    /* 800FC6B4 */ int setOctaIealHangPos();
    /* 800FC748 */ int setBossBodyHangPos();
    /* 800FC77C */ int procBossBodyHangInit(fopAc_ac_c*);
    /* 800FC870 */ int procBossBodyHang();
    /* 800FCF58 */ int getLadderUnitCount() const;
    /* 800FCF84 */ int setLadderInit();
    /* 800FD048 */ void setLadderPosInit();
    /* 800FD1F0 */ void setLadderPos(int);
    /* 800FD288 */ f32 getLadderMoveAnmSpeed();
    /* 800FD2AC */ int changeLadderMoveProc(int);
    /* 800FD4A8 */ int setMoveBGLadderCorrect();
    /* 800FD5E4 */ int checkLadderFall();
    /* 800FD648 */ int procLadderUpStartInit();
    /* 800FD7B0 */ int procLadderUpStart();
    /* 800FD824 */ int procLadderUpEndInit(int);
    /* 800FD8E8 */ int procLadderUpEnd();
    /* 800FD9CC */ int procLadderDownStartInit();
    /* 800FDB74 */ int procLadderDownStart();
    /* 800FDC18 */ int procLadderDownEndInit(int);
    /* 800FDCCC */ int procLadderDownEnd();
    /* 800FDD90 */ int procLadderMoveInit(int, int, cXyz*);
    /* 800FDF50 */ int procLadderMove();
    /* 800FE010 */ f32 getClimbMoveUpDownAnmSpeed();
    /* 800FE034 */ f32 getClimbMoveSideAnmSpeed();
    /* 800FE058 */ BOOL checkClimbCode(cBgS_PolyInfo&);
    /* 800FE114 */ BOOL setClimbInit();
    /* 800FE174 */ void setClimbShapeOffset();
    /* 800FE3C4 */ int getClimbDirectionFromAngle();
    /* 800FE438 */ void changeClimbMoveProc(int);
    /* 800FE5A0 */ BOOL checkClimbMoveUpDownProc(int);
    /* 800FE6E8 */ BOOL checkClimbMoveSideProc(int);
    /* 800FE868 */ int setMoveBGClimbCorrect();
    /* 800FEB90 */ int checkBgCorrectClimbMove(cXyz*, cXyz*);
    /* 800FEC70 */ BOOL checkClimbRoof(f32);
    /* 800FED50 */ int checkClimbGround(cXyz*, f32);
    /* 800FEEC0 */ BOOL checkBgClimbMove(int);
    /* 800FF28C */ int setClimbStartNotGround();
    /* 800FF450 */ int procClimbUpStartInit(int);
    /* 800FF704 */ int procClimbUpStart();
    /* 800FF818 */ int procClimbDownStartInit(s16);
    /* 800FF9A8 */ int procClimbDownStart();
    /* 800FFAB0 */ int procClimbMoveUpDownInit(int);
    /* 800FFC58 */ int procClimbMoveUpDown();
    /* 800FFDB0 */ int procClimbMoveSideInit();
    /* 800FFF4C */ int procClimbMoveSide();
    /* 801000F8 */ int procClimbWaitInit(int, int);
    /* 80100258 */ int procClimbWait();
    /* 801003E4 */ int procClimbToRoofInit();
    /* 80100464 */ int procClimbToRoof();
    /* 801005CC */ f32 getRoofHangFMoveAnmSpeed() const;
    /* 801005F0 */ f32 getRoofHangSMoveAnmSpeed() const;
    /* 80100614 */ void setRoofHangHandOnSE(cBgS_PolyInfo*);
    /* 80100668 */ int checkRoofHangMovePos();
    /* 80100770 */ int commonRoofHangProc();
    /* 801008EC */ int checkNextActionRoofHang();
    /* 80100A10 */ int procRoofHangStartInit(cBgS_PolyInfo const&, cXyz const&, int);
    /* 80100AE4 */ int procRoofHangStart();
    /* 80100BB4 */ int procRoofHangWaitInit(int);
    /* 80100D38 */ int procRoofHangWait();
    /* 80100DA4 */ int procRoofHangFrontMoveInit();
    /* 80100EEC */ int procRoofHangFrontMove();
    /* 8010121C */ int procRoofHangSideMoveInit();
    /* 80101308 */ int procRoofHangSideMove();
    /* 801013B8 */ int procRoofHangTurnInit();
    /* 80101534 */ int procRoofHangTurn();
    /* 8010163C */ void setRoofHangSwitch();
    /* 801016AC */ int procRoofSwitchHangInit(fopAc_ac_c*);
    /* 801017AC */ int procRoofSwitchHang();
    /* 80101890 */ BOOL checkZoraWearMaskDraw();
    /* 801018E4 */ BOOL checkAcceptUseItemInWater(u16) const;
    /* 80101934 */ void swimDeleteItem();
    /* 801019B8 */ bool getZoraSwim() const;
    /* 80101A18 */ f32 getSwimFrontMaxSpeed() const;
    /* 80101AA8 */ f32 getSwimMaxFallSpeed() const;
    /* 80101B44 */ void checkOxygenTimer();
    /* 80101C94 */ void offOxygenTimer();
    /* 80101CB8 */ BOOL checkPossibleWaterInMode() const;
    /* 80101CF4 */ void setWaterInAnmRate(daPy_frameCtrl_c*, f32);
    /* 80101D70 */ void swimBgCheck(f32);
    /* 801023E4 */ void setSpeedAndAngleSwim();
    /* 801029C8 */ int checkNextActionSwim();
    /* 80102B1C */ int checkSwimAction(int);
    /* 80103058 */ int checkSwimUpAction();
    /* 801032C8 */ void swimOutAfter(int);
    /* 80103398 */ BOOL checkSwimFall();
    /* 801033CC */ int checkSwimOutAction();
    /* 80103698 */ void setSwimMoveAnime();
    /* 80103EE0 */ bool checkSwimButtonAccept();
    /* 80103F08 */ bool checkUpSwimButtonAccept();
    /* 80103F24 */ BOOL checkSwimButtonMove();
    /* 80103F94 */ BOOL checkZoraSwimMove();
    /* 80103FE8 */ BOOL checkSwimNeckUpDown() const;
    /* 80104034 */ void setSwimUpDownOffset();
    /* 801040F8 */ int procSwimUpInit();
    /* 801041E8 */ int procSwimUp();
    /* 801042F8 */ int procSwimWaitInit(int);
    /* 801044B4 */ int procSwimWait();
    /* 80104670 */ int procSwimMoveInit();
    /* 801047B8 */ int procSwimMove();
    /* 80104958 */ int procSwimDiveInit();
    /* 80104AA0 */ int procSwimDive();
    /* 80104C50 */ int procSwimHookshotSubjectInit();
    /* 80104D7C */ int procSwimHookshotSubject();
    /* 80104EB8 */ int procSwimHookshotMoveInit();
    /* 80104FC4 */ int procSwimHookshotMove();
    /* 8010519C */ int procSwimDamageInit(dCcD_GObjInf*);
    /* 80105728 */ int procSwimDamage();
    /* 801058A0 */ int procOctaIealSpitInit();
    /* 80105A00 */ int procOctaIealSpit();
    /* 80105A98 */ bool checkSnowCode() const;
    /* 80105ABC */ static bool checkSnowCodePolygon(cBgS_PolyInfo&);
    /* 80105B10 */ bool checkBoardRestart();
    /* 80105B58 */ int boardCommon(int);
    /* 80106534 */ void setCommonBoardAnime(int);
    /* 8010658C */ int checkNextActionBoard();
    /* 80106618 */ int checkBoardSwordTriggerAction();
    /* 80106650 */ int commonProcBoardInit(daAlink_c::daAlink_PROC);
    /* 801066B8 */ f32 getBoardRowAnmSpeed();
    /* 801066EC */ void setBoardLandAnime();
    /* 80106774 */ int procBoardRideInit();
    /* 801069D0 */ int procBoardRide();
    /* 80106A38 */ int procBoardWaitInit(fopAc_ac_c*);
    /* 80106BCC */ int procBoardWait();
    /* 80106E88 */ int procBoardRowInit();
    /* 80106F00 */ int procBoardRow();
    /* 80107060 */ int procBoardTurnInit();
    /* 801070DC */ int procBoardTurn();
    /* 80107218 */ int procBoardJumpInit(f32, int);
    /* 80107300 */ int procBoardJump();
    /* 801073D0 */ int procBoardSubjectivityInit();
    /* 80107418 */ int procBoardSubjectivity();
    /* 801074AC */ int procBoardCutInit();
    /* 8010755C */ int procBoardCut();
    /* 801075D4 */ int procBoardCutTurnInit();
    /* 80107744 */ int procBoardCutTurn();
    /* 801083C8 */ void hookshotAtHitCallBack(dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 801086DC */ void resetHookshotMode();
    /* 8010871C */ BOOL setEnemyBombHookshot(fopAc_ac_c*);
    /* 80108784 */ bool checkLv7BossRoom();
    /* 801087B0 */ BOOL checkHookshotStickBG(cBgS_PolyInfo&);
    /* 80108828 */ void cancelHookshotCarry();
    /* 80108864 */ void changeHookshotDrawModel();
    /* 801088A0 */ BOOL checkHookshotRoofLv7Boss();
    /* 801088C8 */ BOOL checkChaseHookshot();
    /* 80108980 */ BOOL checkOctaIealSpecialCollect();
    /* 801089E8 */ BOOL checkBossOctaIealRoom();
    /* 80108A18 */ BOOL checkHookshotWait() const;
    /* 80108A3C */ void setHookshotCatchNow();
    /* 80108B34 */ void setHookshotModel();
    /* 80108DB4 */ void setHookshotSight();
    /* 80108EEC */ void cancelHookshotShot();
    /* 80108F64 */ bool cancelHookshotMove();
    /* 8010903C */ BOOL checkHookshotReadyMaterialOffMode() const;
    /* 80109070 */ void setHookshotReadyMaterial();
    /* 801090EC */ int initHookshotUpperAnimeSpeed(int);
    /* 80109170 */ void initHookshotReady();
    /* 801091E4 */ void setHookshotReadyAnime();
    /* 80109284 */ int checkUpperItemActionHookshot();
    /* 801095C8 */ int checkNextActionHookshot();
    /* 801097A0 */ void setHookshotReturnEnd();
    /* 80109890 */ int setHookshotHangMoveBGCollect();
    /* 80109AAC */ void setHookshotTopPosFly();
    /* 80109BDC */ void setHookshotPos();
    /* 8010B2DC */ void setHookshotRoofWaitAnime();
    /* 8010B35C */ void setHookshotWallWaitAnime();
    /* 8010B3AC */ void hookshotRoofTurn();
    /* 8010B644 */ void initHookshotRoofWaitActor(fopAc_ac_c*);
    /* 8010B720 */ int checkNextHookPoint();
    /* 8010B84C */ int checkLandHookshotHang();
    /* 8010B96C */ int commonHookshotRoofWait();
    /* 8010BA6C */ int commonHookshotWallWait();
    /* 8010BAA8 */ int procHookshotSubjectInit();
    /* 8010BB48 */ int procHookshotSubject();
    /* 8010BC08 */ int procHookshotMoveInit();
    /* 8010BCA4 */ int procHookshotMove();
    /* 8010BD90 */ int procHookshotFlyInit();
    /* 8010BEF0 */ int procHookshotFly();
    /* 8010C830 */ int procHookshotRoofWaitInit(int, fopAc_ac_c*, int);
    /* 8010C9F4 */ int procHookshotRoofWait();
    /* 8010CC80 */ int procHookshotRoofShootInit(fopAc_ac_c*);
    /* 8010CD60 */ int procHookshotRoofShoot();
    /* 8010CF6C */ int procHookshotRoofBootsInit(fopAc_ac_c*);
    /* 8010D034 */ int procHookshotRoofBoots();
    /* 8010D174 */ int procHookshotWallWaitInit(int, s16, int);
    /* 8010D38C */ int procHookshotWallWait();
    /* 8010D5F4 */ int procHookshotWallShootInit();
    /* 8010D6CC */ int procHookshotWallShoot();
    /* 8010D93C */ f32 getSpinnerGravity() const;
    /* 8010D94C */ f32 getSpinnerMaxFallSpeed() const;
    /* 8010D95C */ f32 getSpinnerJumpRate() const;
    /* 8010D96C */ s16 getSpinnerRideMoveTime();
    /* 8010D9B0 */ f32 getSpinnerRideSpeedF();
    /* 8010D9F4 */ f32 getSpinnerRideDecSpeedMax() const;
    /* 8010DA04 */ f32 getSpinnerRideDecSpeedMin() const;
    /* 8010DA14 */ f32 getSpinnerRideDecSpeedRate() const;
    /* 8010DA24 */ s16 getSpinnerRideRotAngleMax() const;
    /* 8010DA34 */ s16 getSpinnerRideRotAngleMin() const;
    /* 8010DAFC */ bool checkLv4BossRoom();
    /* 8010DBC8 */ void setSpinnerSyncPos();
    /* 8010DC64 */ int procSpinnerReadyInit();
    /* 8010DDCC */ int procSpinnerReady();
    /* 8010DE64 */ void setSpinnerStatus(u8, u8);
    /* 8010DE78 */ int procSpinnerWaitInit();
    /* 8010DF4C */ int procSpinnerWait();
    /* 8010E48C */ int bottleModelCallBack();
    /* 8010E584 */ BOOL checkOilBottleItemNotGet(u16);
    /* 8010E5D8 */ void setBottleModel(u16);
    /* 8010EAC4 */ int commonBottleDrink(int);
    /* 8010F45C */ fopAc_ac_c* makeFairy(cXyz*, u32);
    /* 8010F54C */ int procBottleDrinkInit(u16);
    /* 8010F698 */ int procBottleDrink();
    /* 8010F6F4 */ int procBottleOpenInit(u16);
    /* 8010F8E4 */ int procBottleOpen();
    /* 8010FC38 */ int procBottleSwingInit(fopAc_ac_c*, int);
    /* 8010FF58 */ int procBottleSwing();
    /* 801102D0 */ int procBottleGetInit(int);
    /* 80110518 */ int procBottleGet();
    /* 8011078C */ BOOL checkWaterInKandelaarOffset(f32);
    /* 801107BC */ void checkWaterInKandelaar(f32);
    /* 80110840 */ void offKandelaarModel();
    /* 801108EC */ int kandelaarModelCallBack();
    /* 80110C6C */ BOOL checkKandelaarEquipAnime() const;
    /* 80110C94 */ void preKandelaarDraw();
    /* 80110E84 */ void setKandelaarModel();
    /* 80110F88 */ void resetOilBottleModel();
    /* 80110FE0 */ void commonKandelaarPourInit();
    /* 801110B8 */ int commonKandelaarPour(int);
    /* 8011130C */ void initKandelaarSwing();
    /* 80111440 */ int procKandelaarSwingInit();
    /* 801115CC */ int procKandelaarSwing();
    /* 8011167C */ int procKandelaarPourInit();
    /* 80111724 */ int procKandelaarPour();
    /* 80111784 */ void setGrassWhistleModel(int);
    /* 8011181C */ void setHorseWhistleModel();
    /* 80111894 */ int procGrassWhistleGetInit();
    /* 801119D8 */ int procGrassWhistleGet();
    /* 80111A9C */ int procGrassWhistleWaitInit(int, int, int, s16, cXyz*);
    /* 80111CA4 */ int procGrassWhistleWait();
    /* 80111FF0 */ int procCoHorseCallWaitInit(int);
    /* 801120C8 */ int procCoHorseCallWait();
    /* 801121B4 */ int procHawkCatchInit();
    /* 80112220 */ int procHawkCatch();
    /* 80112278 */ int procHawkSubjectInit();
    /* 80112304 */ int procHawkSubject();
    /* 80112474 */ bool checkIronBallThrowMode() const;
    /* 801124B4 */ bool checkIronBallThrowReturnMode() const;
    /* 80112568 */ void setIronBallWaitUpperAnime(int);
    /* 80112628 */ void checkIronBallDelete();
    /* 801126F8 */ void setIronBallReturn(int);
    /* 80112768 */ void setIronBallBgCheckPos();
    /* 801127F0 */ void setIronBallModel();
    /* 80112C84 */ int setIronBallGroundVec(cXyz const*, cXyz*);
    /* 80112E7C */ void setIronBallChainPos();
    /* 80113CA0 */ BOOL checkIronBallReturnChange();
    /* 80113D58 */ void setIronBallPos();
    /* 801150E4 */ BOOL checkIronBallAnime() const;
    /* 8011510C */ void setIronBallReadyAnime();
    /* 801151E0 */ void setIronBallBaseAnime();
    /* 80115254 */ BOOL checkUpperItemActionIronBall();
    /* 801153F8 */ int checkNextActionIronBall();
    /* 801154E4 */ int procIronBallSubjectInit();
    /* 80115564 */ int procIronBallSubject();
    /* 801155EC */ int procIronBallMoveInit();
    /* 80115674 */ int procIronBallMove();
    /* 8011577C */ int procIronBallThrowInit();
    /* 80115860 */ int procIronBallThrow();
    /* 801159F0 */ int procIronBallReturnInit();
    /* 80115AA0 */ int procIronBallReturn();
    /* 80115C20 */ BOOL checkEventRun() const;
    /* 80115C50 */ void createNpcTks(cXyz*, int, u32);
    /* 80115EC0 */ int checkDemoAction();
    /* 80116E60 */ bool checkDemoMoveMode(u32) const;
    /* 80116E9C */ void setDemoMoveData(u32*, cXyz const*);
    /* 80117064 */ void setNoDrawSwordShield(int, u16);
    /* 801171F4 */ void setDemoData();
    /* 80117B90 */ void resetDemoBck();
    /* 80117C34 */ void endHighModel();
    /* 80117C90 */ void resetSpecialEvent();
    /* 80117CF8 */ void endDemoMode();
    /* 801180EC */ fopAc_ac_c* getDemoLookActor();
    /* 80118170 */ BOOL checkFlyAtnWait();
    /* 801181A0 */ void setGetItemFace(u16);
    /* 801182D4 */ BOOL checkGrabTalkActor(fopAc_ac_c*);
    /* 80118308 */ int setTalkStartBack(cXyz*);
    /* 8011856C */ void setShapeAngleToTalkActor();
    /* 80118654 */ void setTalkAnime();
    /* 801186D4 */ u8 setTradeItemAnime();
    /* 80118778 */ void setTradeItemOutHand();
    /* 801187B4 */ BOOL checkEndMessage(u32);
    /* 80118840 */ u8 setDemoRightHandIndex(u16);
    /* 801188B0 */ u8 setDemoLeftHandIndex(u16);
    /* 8011894C */ void setDemoRide(u16);
    /* 801189F8 */ void setDemoBodyBck(dDemo_actor_c*, u16);
    /* 80118AD0 */ static BOOL checkFinalBattle();
    /* 80118B34 */ BOOL checkRestartDead(int, int);
    /* 80118BF4 */ void setDeadRideSyncPos();
    /* 80118C98 */ BOOL checkDeadHP();
    /* 80118D7C */ BOOL checkDeadAction(int);
    /* 80118FF8 */ void setHighModelBck(mDoExt_bckAnm*, u16);
    /* 801190A4 */ void setHighModelFaceBtk(u16);
    /* 80119134 */ void setDemoBrk(J3DAnmTevRegKey**, J3DModel*, u16);
    /* 801191C4 */ f32 setStickAnmData(J3DAnmBase*, int, int, u16, int);
    /* 801195C0 */ int procDemoCommon();
    /* 801195F8 */ int procCoToolDemoInit();
    /* 801196D8 */ int procCoToolDemo();
    /* 80119D98 */ int procCoTalkInit();
    /* 80119F64 */ int procCoTalk();
    /* 8011A214 */ int procCoOpenTreasureInit();
    /* 8011A42C */ int procCoOpenTreasure();
    /* 8011A4C0 */ int procCoUnequipInit();
    /* 8011A5CC */ int procCoUnequip();
    /* 8011A688 */ void setGetSubBgm(int);
    /* 8011A798 */ int procCoGetItemInit();
    /* 8011AC28 */ int procCoGetItem();
    /* 8011B3F0 */ int procCoTurnBackInit();
    /* 8011B46C */ int procCoTurnBack();
    /* 8011B57C */ int procDoorOpenInit();
    /* 8011B71C */ int procDoorOpen();
    /* 8011B914 */ int procCoLookWaitInit();
    /* 8011BA20 */ int procCoLookWait();
    /* 8011BABC */ int procCoDemoPushPullWaitInit();
    /* 8011BB40 */ int procCoDemoPushMoveInit();
    /* 8011BC14 */ void setMonkeyMoveAnime();
    /* 8011BC74 */ int procMonkeyMoveInit();
    /* 8011BD18 */ int procMonkeyMove();
    /* 8011BD6C */ int procDemoBoomerangCatchInit();
    /* 8011BDF0 */ int procDemoBoomerangCatch();
    /* 8011BE54 */ int procCoDeadInit(int);
    /* 8011C1B4 */ int procCoDead();
    /* 8011C62C */ int procCoLookAroundInit();
    /* 8011C760 */ int procCoLookAround();
    /* 8011C81C */ int procBossAtnWaitInit();
    /* 8011C890 */ int procCoQuakeWaitInit();
    /* 8011C904 */ int procCoCaughtInit();
    /* 8011C9D0 */ int procLookUpInit();
    /* 8011CA4C */ int procLookUp();
    /* 8011CA98 */ int procLookUpToGetItemInit();
    /* 8011CB20 */ int procLookUpToGetItem();
    /* 8011CBD4 */ int procHandPatInit();
    /* 8011CCA8 */ int procHandPat();
    /* 8011CDE0 */ int procCoFogDeadInit();
    /* 8011CF60 */ int procCoFogDead();
    /* 8011D0A0 */ int procWolfSmellWaitInit();
    /* 8011D110 */ int procCoNodInit();
    /* 8011D1F4 */ int procCoNod();
    /* 8011D268 */ int procCoEyeAwayInit();
    /* 8011D304 */ int procCoGlareInit();
    /* 8011D3CC */ int procCoGlare();
    /* 8011D474 */ int procGoatStopReadyInit();
    /* 8011D4D4 */ int procGoatStopReady();
    /* 8011D544 */ int procCoGetReadySitInit();
    /* 8011D64C */ int procCoGetReadySit();
    /* 8011D6D0 */ int procCoTwGateInit();
    /* 8011D7D4 */ int procCoTwGate();
    /* 8011D82C */ int procWolfSnowEscapeInit();
    /* 8011D8F8 */ int procWolfSnowEscape();
    /* 8011DB04 */ int procZoraMoveInit();
    /* 8011DB9C */ int procZoraMove();
    /* 8011DDD4 */ int procLookAroundTurnInit();
    /* 8011DED8 */ int procLookAroundTurn();
    /* 8011DF68 */ int procTradeItemOutInit();
    /* 8011E060 */ int procTradeItemOut();
    /* 8011E3D8 */ static BOOL checkLetterItem(int);
    /* 8011E448 */ int procNotUseItemInit(int);
    /* 8011E57C */ int procNotUseItem();
    /* 8011E6E0 */ int procSwordReadyInit();
    /* 8011E748 */ int procSwordReady();
    /* 8011E83C */ void setSwordPushAnime();
    /* 8011E8E0 */ int procSwordPushInit();
    /* 8011E960 */ int procSwordPush();
    /* 8011E9F8 */ int procGanonFinishInit();
    /* 8011EA78 */ int procGanonFinish();
    /* 8011EAE8 */ int procCutFastReadyInit();
    /* 8011EB8C */ int procCutFastReady();
    /* 8011EBDC */ int procMasterSwordStickInit();
    /* 8011EC60 */ int procMasterSwordStick();
    /* 8011ED18 */ int procMasterSwordPullInit();
    /* 8011ED8C */ int procMasterSwordPull();
    /* 8011EE40 */ static BOOL checkLv7DungeonShop();
    /* 8011EE94 */ int procDungeonWarpReadyInit();
    /* 8011EFB8 */ int procDungeonWarpReady();
    /* 8011F084 */ int procDungeonWarpInit();
    /* 8011F0F4 */ int procDungeonWarp();
    /* 8011F360 */ int procDungeonWarpSceneStartInit();
    /* 8011F460 */ int procDungeonWarpSceneStart();
    /* 8011F658 */ bool checkAcceptWarp();
    /* 8011F7D8 */ void dungeonReturnWarp();
    /* 8011F9EC */ void checkWarpStart();
    /* 8011FBC0 */ int warpModelTexScroll();
    /* 8011FD4C */ int procCoWarpInit(int, int);
    /* 80120124 */ int procCoWarp();
    /* 80120440 */ int commonWaitTurnInit();
    /* 80120474 */ int commonGrabPutInit();
    /* 80120500 */ int commonLargeDamageUpInit(int, int, s16, s16);
    /* 80120534 */ int commonFallInit(int);
    /* 80120580 */ JPABaseEmitter* setEmitter(u32*, u16, cXyz const*, csXyz const*);
    /* 80120634 */ JPABaseEmitter* setEmitterPolyColor(u32*, u16, cBgS_PolyInfo&, cXyz const*,
                                                       csXyz const*);
    /* 801206C4 */ JPABaseEmitter* setEmitterColor(u32*, u16, cXyz const*, csXyz const*);
    /* 80120778 */ void stopDrawParticle(u32);
    /* 801207BC */ void setEffectFrontRollParam();
    /* 80120880 */ void setEffectSlipParam();
    /* 80120B00 */ void setEffectRunParam();
    /* 80120DB0 */ void setEffectSmallLandParam();
    /* 80121000 */ void setEffectLandParam();
    /* 80121004 */ void setEffectSumouParam();
    /* 801211C0 */ void setFootEffectProcType(int);
    /* 80121214 */ void setWolfFootOn(int);
    /* 80121304 */ void setFootMark(cXyz*, u16, int);
    /* 80121388 */ void setEffect();
    /* 801221F0 */ void setSumouEffect();
    /* 801225E8 */ void setWaterfallEffect(cXyz const*, u32*);
    /* 80122654 */ void setWaterfallEffect();
    /* 8012277C */ void setMagneBootsEffect();
    /* 801228F4 */ void setSwordChargeEffect();
    /* 80122BBC */ void setElecDamageEffect();
    /* 80122F18 */ void clearCutTurnEffectID();
    /* 80122F78 */ void setCutTurnEffect();
    /* 801233A4 */ void setHorseCutTurnEffect();
    /* 80123434 */ void setCutLargeJumpLandEffect();
    /* 801236BC */ void setBootsLightEffect();
    /* 801237A8 */ void setLightningSwordEffect();
    /* 801238FC */ void setWolfRollAttackEffect();
    /* 801239B0 */ void setWolfDigEffect();
    /* 80123BF0 */ void setWolfSwimEndEffect(JPABaseEmitter**, JPABaseEmitter**);
    /* 80123C8C */ void setWolfLockAttackEffect();
    /* 80123D88 */ void setWolfJumpAttackEffect();
    /* 80123ED0 */ void setWolfBarrierHitEffect(dBgS_LinChk&);
    /* 80124144 */ void setCutWaterDropEffect();
    /* 801241E0 */ void setWaterDropEffect();
    /* 801244E4 */ void setSwordUpColorEffect();
    /* 801245EC */ void setSwordCutSplash();
    /* 80124738 */ void setMetamorphoseEffectStartLink();
    /* 801247A8 */ void setMetamorphoseEffect();
    /* 801248A8 */ void setRunSplash();
    /* 80124B68 */ void resetFairyEffect();
    /* 80124BA4 */ void setBottleEffect();
    /* 80124E28 */ void clearFirePointDamageEffect(int);
    /* 80124EA8 */ void initFirePointDamageEffectAll();
    /* 80124FA4 */ void initFirePointDamageEffect(cXyz const*, dCcD_GObjInf*);
    /* 80125128 */ void setFirePointDamageEffect();
    /* 80125338 */ void setFreezeEffect();
    /* 80125524 */ void setWoodShieldBurnEffect();
    /* 801255BC */ void clearWoodShieldBurnEffect();
    /* 80125628 */ void setWoodShieldBurnOutEffect();
    /* 80126740 */ void changeCommon();
    /* 80126928 */ void changeWolf();
    /* 80126F3C */ void changeLink(int);
    /* 80127C54 */ void onWolfEyeUp();
    /* 80127CAC */ void offWolfEyeUp();
    /* 80127CF0 */ BOOL wolfSenseTrigger();
    /* 80127D14 */ void setWolfSenceStatus(u8);
    /* 80127D2C */ BOOL wolfClawTrigger();
    /* 80127D50 */ void setWolfDigStatus(u8);
    /* 80127D68 */ BOOL checkWolfShapeReverse() const;
    /* 80127DC4 */ BOOL checkWolfSideStep() const;
    /* 80127E08 */ void setWolfTailAngle();
    /* 80127F20 */ BOOL checkWolfSlowDash();
    /* 80127F50 */ void setSpeedAndAngleWolf();
    /* 80128478 */ void setSpeedAndAngleWolfAtn();
    /* 80128798 */ BOOL checkWolfAtnWait();
    /* 8012880C */ BOOL checkUnderMove0BckNoArcWolf(daAlink_c::daAlink_WANM) const;
    /* 80128844 */ void setBlendWolfMoveAnime(f32);
    /* 80128F0C */ BOOL checkWolfAtnMoveBack(s16);
    /* 80128F5C */ void setWolfAtnMoveDirection();
    /* 80129114 */ void setBlendWolfAtnMoveAnime(f32);
    /* 8012933C */ void setBlendWolfAtnBackMoveAnime(f32);
    /* 8012948C */ int setDoubleAnimeWolf(f32, f32, f32, daAlink_c::daAlink_WANM,
                                          daAlink_c::daAlink_WANM, int, f32);
    /* 80129678 */ void setSingleAnimeWolfBase(daAlink_c::daAlink_WANM);
    /* 801296A8 */ void setSingleAnimeWolfBaseMorf(daAlink_c::daAlink_WANM, f32);
    /* 801296D8 */ void setSingleAnimeWolfBaseSpeed(daAlink_c::daAlink_WANM, f32, f32);
    /* 80129704 */ int setSingleAnimeWolf(daAlink_c::daAlink_WANM, f32, f32, s16, f32);
    /* 80129848 */ void setSingleAnimeWolfParam(daAlink_c::daAlink_WANM, daAlinkHIO_anm_c const*);
    /* 8012987C */ int checkWolfLandAction(int);
    /* 80129958 */ BOOL checkMidnaUseAbility() const;
    /* 801299A8 */ void checkWolfUseAbility();
    /* 80129A80 */ int checkWolfGroundSpecialMode();
    /* 80129B44 */ int checkNextActionWolf(int);
    /* 8012A02C */ BOOL wolfSideBgCheck(s16);
    /* 8012A228 */ BOOL checkWolfAttackReverse(int);
    /* 8012A330 */ int checkWolfBarrierHitReverse();
    /* 8012A41C */ BOOL checkWolfBarrierWallHit(cBgS_PolyInfo&);
    /* 8012A498 */ void wolfBgCheck();
    /* 8012ACCC */ void changeWolfBlendRate(int);
    /* 8012AD1C */ void setWolfFootMatrix();
    /* 8012B724 */ void wolfFootBgCheck();
    /* 8012BFA8 */ BOOL checkWolfWaitSlipPolygon();
    /* 8012C1F4 */ f32 setWolfWaitSlip();
    /* 8012C308 */ void checkWolfAtnDoCharge();
    /* 8012C30C */ void setWolfChainPos();
    /* 8012CB0C */ void setWolfAnmVoice();
    /* 8012CBE4 */ int procWolfServiceWaitInit(int);
    /* 8012CD28 */ int procWolfServiceWait();
    /* 8012CF68 */ int procWolfTiredWaitInit();
    /* 8012CFEC */ int procWolfTiredWait();
    /* 8012D050 */ int procWolfMidnaRideShockInit();
    /* 8012D104 */ int procWolfMidnaRideShock();
    /* 8012D1A8 */ int procWolfWaitInit();
    /* 8012D2A8 */ int procWolfWait();
    /* 8012D380 */ int procWolfMoveInit();
    /* 8012D3E4 */ int procWolfMove();
    /* 8012D474 */ int procWolfDashInit();
    /* 8012D590 */ int procWolfDash();
    /* 8012D8C0 */ int procWolfDashReverseInit(int);
    /* 8012DA5C */ int procWolfDashReverse();
    /* 8012DBA8 */ int procWolfAtnActorMoveInit();
    /* 8012DC44 */ int procWolfAtnActorMove();
    /* 8012DD08 */ int procWolfWaitTurnInit();
    /* 8012DDB4 */ int procWolfWaitTurn();
    /* 8012DEC8 */ int procWolfSideStepInit(int);
    /* 8012E0AC */ int procWolfSideStep();
    /* 8012E1E8 */ int procWolfSideStepLandInit(s16);
    /* 8012E2DC */ int procWolfSideStepLand();
    /* 8012E398 */ int procWolfBackJumpInit(int);
    /* 8012E508 */ int procWolfBackJump();
    /* 8012E5F4 */ int procWolfBackJumpLandInit(s16, s16);
    /* 8012E684 */ int procWolfBackJumpLand();
    /* 8012E754 */ int procWolfHowlInit(int);
    /* 8012E83C */ int procWolfHowl();
    /* 8012E9C8 */ int procWolfAutoJumpInit(int);
    /* 8012EB94 */ int procWolfAutoJump();
    /* 8012EDD0 */ int procWolfFallInit(int, f32);
    /* 8012EFB8 */ int procWolfFall();
    /* 8012F138 */ int procWolfLandInit();
    /* 8012F1F0 */ int procWolfLand();
    /* 8012F278 */ int procWolfSitInit(int);
    /* 8012F358 */ int procWolfSit();
    /* 8012F41C */ int procWolfStepMoveInit();
    /* 8012F500 */ int procWolfStepMove();
    /* 8012F634 */ int procWolfSlipInit();
    /* 8012F6EC */ int procWolfSlip();
    /* 8012F840 */ int procWolfSlipTurnInit(int);
    /* 8012F9C0 */ int procWolfSlipTurn();
    /* 8012FB18 */ int procWolfSlipTurnLandInit();
    /* 8012FBB4 */ int procWolfSlipTurnLand();
    /* 8012FC38 */ int procWolfSlideReadyInit(s16, int);
    /* 8012FD2C */ int procWolfSlideReady();
    /* 8012FE80 */ int procWolfSlideInit(s16, int);
    /* 8012FFA4 */ int procWolfSlide();
    /* 801300D4 */ int procWolfSlideLandInit();
    /* 80130138 */ int procWolfSlideLand();
    /* 801301E4 */ int procWolfWaitSlipInit();
    /* 80130268 */ int procWolfWaitSlip();
    /* 80130440 */ int procWolfSlopeStartInit(int);
    /* 801304D4 */ int procWolfSlopeStart();
    /* 80130654 */ void setWolfHowlNotHappen(int);
    /* 80130700 */ int procWolfHowlDemoInit();
    /* 80130BC4 */ int procWolfHowlDemo();
    /* 80131450 */ fopAc_ac_c* checkWolfRopeHit(dCcD_GObjInf*, cXyz const*, int) const;
    /* 80131628 */ int checkWolfRopeJumpHang();
    /* 801316A4 */ f32 getWolfRopeMoveSpeed();
    /* 80131718 */ int setWolfRopePosY();
    /* 801319F0 */ s16 initWolfRopeShapeAngle();
    /* 80131A6C */ void wolfRopeSwingInc(f32);
    /* 80131AFC */ void setWolfRopeOffsetY(int);
    /* 80131C00 */ int getDirectionRopeMove() const;
    /* 80131C74 */ int procWolfRopeMoveInit(int, int);
    /* 80131DA0 */ int procWolfRopeMove();
    /* 80132738 */ int procWolfRopeHangInit(int);
    /* 80132914 */ int procWolfRopeHang();
    /* 80132D68 */ int procWolfRopeTurnInit();
    /* 80132E88 */ int procWolfRopeTurn();
    /* 80133054 */ int procWolfRopeStaggerInit(int);
    /* 80133164 */ int procWolfRopeStagger();
    /* 8013384C */ int procWolfRopeSubjectivityInit();
    /* 80133930 */ int procWolfRopeSubjectivity();
    /* 80133D6C */ int getWolfTagJumpTime() const;
    /* 80133EF0 */ const cXyz* checkMidnaLockJumpPoint() const;
    /* 80134000 */ int procWolfTagJumpInit(fopAc_ac_c*);
    /* 80134838 */ int procWolfTagJump();
    /* 80134DB8 */ int procWolfTagJumpLandInit(fopAc_ac_c*);
    /* 80134EBC */ int procWolfTagJumpLand();
    /* 80135160 */ int procWolfGiantPuzzleInit();
    /* 801351F8 */ int procWolfGiantPuzzle();
    /* 80135458 */ void setWolfHangGroundY();
    /* 801354C8 */ int changeWolfHangEndProc();
    /* 801355EC */ int procWolfHangReadyInit();
    /* 80135668 */ int procWolfHangReady();
    /* 801356F0 */ int procWolfHangWallCatchInit(int);
    /* 80135AF4 */ int procWolfHangWallCatch();
    /* 80135CD8 */ int procWolfHangFallStartInit(cM3dGPla*);
    /* 80135F00 */ int procWolfHangFallStart();
    /* 80136064 */ void setWolfHeadDamage();
    /* 801360EC */ int procWolfDamageInit(dCcD_GObjInf*);
    /* 80136508 */ int procWolfDamage();
    /* 80136624 */ int procWolfLargeDamageUpInit(int, int, s16, s16);
    /* 801369E4 */ int procWolfLargeDamageUp();
    /* 80136C18 */ int procWolfLandDamageInit(int);
    /* 80136DE4 */ int procWolfLandDamage();
    /* 80136EC4 */ void setWolfScreamWaitAnime();
    /* 80136F54 */ int procWolfScreamWaitInit();
    /* 80136FF8 */ int procWolfScreamWait();
    /* 801370E4 */ f32 getWolfLieMoveAnmSpeed();
    /* 8013712C */ f32 getWolfLieMoveSpeed();
    /* 801371A0 */ BOOL checkMidnaDisappearMode() const;
    /* 801371FC */ BOOL checkWolfLieContinue(int);
    /* 801372B4 */ int checkNextActionWolfFromLie();
    /* 80137330 */ void setWolfLieMoveVoice(int);
    /* 801373F8 */ bool checkWolfLieCode();
    /* 80137420 */ int procWolfLieStartInit(int);
    /* 8013753C */ int procWolfLieStart();
    /* 80137634 */ int procWolfLieMoveInit(int);
    /* 801377F0 */ int procWolfLieMove();
    /* 80137C90 */ int procWolfLieAutoMoveInit(int, cXyz*);
    /* 80137D4C */ int procWolfLieAutoMove();
    /* 80138000 */ void setSpeedAndAngleSwimWolf();
    /* 80138188 */ f32 getWolfSwimMoveAnmSpeed();
    /* 801381F8 */ int decideDoStatusSwimWolf();
    /* 801383D8 */ int procWolfSwimUpInit();
    /* 80138484 */ int procWolfSwimUp();
    /* 8013852C */ int procWolfSwimWaitInit(int);
    /* 80138644 */ int procWolfSwimWait();
    /* 8013871C */ int procWolfSwimMoveInit();
    /* 801387A0 */ int procWolfSwimMove();
    /* 8013890C */ int procWolfSwimEndWaitInit(int);
    /* 80138A18 */ int procWolfSwimEndWait();
    /* 80138C04 */ void resetWolfEnemyBiteAll();
    /* 80138C44 */ void checkWolfEnemyThrowAction();
    /* 80138CB8 */ void setWolfLockDomeModel();
    /* 80138DC0 */ void setWolfBallModel();
    /* 80138F18 */ void resetWolfBallGrab();
    /* 80139048 */ void checkWolfLockData();
    /* 801391DC */ fopAc_ac_c* getWolfLockActorEnd();
    /* 801391E4 */ void searchWolfLockEnemy(fopAc_ac_c*, void*);
    /* 801392E4 */ void checkWolfComboCnt();
    /* 801393A4 */ BOOL checkWolfAttackAction();
    /* 801395B4 */ void setWolfEnemyThrowUpperAnime(daAlink_c::daAlink_WANM, f32);
    /* 80139600 */ BOOL setWolfEnemyHangBitePos(fopEn_enemy_c*);
    /* 801396F8 */ void setWolfBiteDamage(fopEn_enemy_c*);
    /* 801397A4 */ BOOL checkWolfLockAttackChargeState();
    /* 801398A8 */ int procWolfRollAttackChargeInit();
    /* 80139908 */ int procWolfRollAttackCharge();
    /* 801399C4 */ int procWolfRollAttackMoveInit();
    /* 80139A70 */ int procWolfRollAttackMove();
    /* 80139DE0 */ int procWolfJumpAttackInit(int);
    /* 8013A4F8 */ int procWolfJumpAttack();
    /* 8013A7EC */ int procWolfJumpAttackKickInit();
    /* 8013A8A0 */ int procWolfJumpAttackKick();
    /* 8013A8FC */ int procWolfJumpAttackSlideLandInit(int, int, int);
    /* 8013AAC4 */ int procWolfJumpAttackSlideLand();
    /* 8013AC44 */ int procWolfJumpAttackNormalLandInit(int);
    /* 8013ACF4 */ int procWolfJumpAttackNormalLand();
    /* 8013ADF0 */ int procWolfWaitAttackInit(int);
    /* 8013AFC0 */ int procWolfWaitAttack();
    /* 8013B2A0 */ int procWolfRollAttackInit(int, int);
    /* 8013B424 */ int procWolfRollAttack();
    /* 8013B528 */ int procWolfDownAttackInit();
    /* 8013B808 */ int procWolfDownAttack();
    /* 8013B964 */ int procWolfDownAtLandInit(fopEn_enemy_c*);
    /* 8013BA44 */ int procWolfDownAtLand();
    /* 8013BC94 */ int procWolfDownAtMissLandInit();
    /* 8013BD54 */ int procWolfDownAtMissLand();
    /* 8013BE24 */ int procWolfLockAttackInit(int);
    /* 8013C3E4 */ int procWolfLockAttack();
    /* 8013C630 */ int procWolfLockAttackTurnInit(int);
    /* 8013C7A4 */ int procWolfLockAttackTurn();
    /* 8013C8C8 */ int procWolfAttackReverseInit();
    /* 8013C9EC */ int procWolfAttackReverse();
    /* 8013CB48 */ int procWolfEnemyThrowInit(int);
    /* 8013CC5C */ int procWolfEnemyThrow();
    /* 8013CCF4 */ int procWolfEnemyHangBiteInit();
    /* 8013CDEC */ int procWolfEnemyHangBite();
    /* 8013D0D4 */ int procWolfGrabUpInit();
    /* 8013D3FC */ int procWolfGrabUp();
    /* 8013D588 */ int procWolfGrabPutInit();
    /* 8013D65C */ int procWolfGrabPut();
    /* 8013D818 */ int procWolfGrabThrowInit();
    /* 8013D86C */ int procWolfGrabThrow();
    /* 8013D930 */ int procWolfPushInit();
    /* 8013DA8C */ int procWolfPush();
    /* 8013DB6C */ int procWolfCargoCarryInit();
    /* 8013DC5C */ int procWolfCargoCarry();
    /* 8013DDF8 */ int procWolfChainUpInit();
    /* 8013DE70 */ int procWolfChainUp();
    /* 8013DF30 */ int procWolfGanonCatchInit();
    /* 8013E034 */ int procWolfGanonCatch();
    /* 8013E240 */ int procWolfChainReadyInit();
    /* 8013E2A8 */ int procWolfChainReady();
    /* 8013E6C0 */ int procWolfChainWaitInit();
    /* 8013E80C */ int procWolfChainWait();
    /* 8013ED44 */ int procWolfDigInit();
    /* 8013F1F0 */ int procWolfDig();
    /* 8013F4A8 */ int procWolfDigThroughInit(int);
    /* 8013F7C4 */ int procWolfDigThrough();
    /* 8013F90C */ void setSmellSave();
    /* 8013FA14 */ int procWolfGetSmellInit();
    /* 8013FC24 */ int procWolfGetSmell();
    /* 8013FF28 */ void setArcName(int);
    /* 8013FF90 */ void setShieldArcName();
    /* 8013FFD8 */ void setOriginalHeap(JKRExpHeap**, u32);
    /* 80140064 */ void setShieldChange();
    /* 80140070 */ int loadModelDVD();
    /* 801401F8 */ void setShieldModel();
    /* 80140274 */ int loadShieldModelDVD();
    /* 80140338 */ void changeModelDataDirect(int);
    /* 80140550 */ void changeModelDataDirectWolf(int);
    /* 801406A8 */ void initStatusWindow();
    /* 80140888 */ void statusWindowExecute(cXyz const*, s16);
    /* 80140984 */ void statusWindowDraw();
    /* 80140AC8 */ void resetStatusWindow();
    /* 8018280C */ fopAc_ac_c* getChainGrabActor() { return field_0x2844.getActor(); }
    /* 80182814 */ bool checkCokkoGlide() const {
        return mProcID == PROC_AUTO_JUMP && mProcVar2.field_0x300c != 0;
    }
    /* 8018283C */ BOOL checkCameraLargeDamage() const {
        return mProcID == PROC_LARGE_DAMAGE || mProcID == PROC_LARGE_DAMAGE_WALL ||
               mProcID == PROC_LARGE_DAMAGE_UP || mProcID == PROC_WOLF_LARGE_DAMAGE_UP;
    }
    /* 80182870 */ const cXyz& getHsSubChainTopPos() const { return mIronBallBgChkPos; }
    /* 80182888 */ BOOL checkCutHeadProc() const { return mProcID == PROC_CUT_HEAD; }
    /* 8018289C */ fopAc_ac_c* getRideActor() { return mRideAcKeep.getActor(); }

    virtual cXyz* getMidnaAtnPos() const { return (cXyz*)&mMidnaAtnPos; }
    virtual void setMidnaMsgNum(fopAc_ac_c* param_0, u16 pMsgNum) {
        mMidnaMsgNum = pMsgNum;
        mMidnaMsg = (daTagMmsg_c*)param_0;
    }
    virtual MtxP getModelMtx() { return mpLinkModel->getBaseTRMtx(); }
    virtual MtxP getInvMtx() { return mInvMtx; }
    virtual cXyz* getShadowTalkAtnPos() { return &field_0x375c; }
    virtual f32 getGroundY() { return mLinkAcch.GetGroundH(); }
    virtual MtxP getLeftItemMatrix();
    virtual MtxP getRightItemMatrix();
    virtual MtxP getLeftHandMatrix();
    virtual MtxP getRightHandMatrix();
    virtual MtxP getLinkBackBone1Matrix() { return mpLinkModel->getAnmMtx(1); }
    virtual MtxP getWolfMouthMatrix() { return mpLinkModel->getAnmMtx(13); }
    virtual MtxP getWolfBackbone2Matrix() { return mpLinkModel->getAnmMtx(2); }
    virtual MtxP getBottleMtx() {
        if (mHeldItemModel != NULL && checkBottleItem(mEquipItem)) {
            return mHeldItemModel->getBaseTRMtx();
        }

        return NULL;
    }
    virtual BOOL checkPlayerGuard() const;
    virtual u32 checkPlayerFly() const {
        return checkModeFlg(MODE_SWIMMING | MODE_ROPE_WALK | MODE_VINE_CLIMB | MODE_UNK_800 |
                            MODE_NO_COLLISION | MODE_CLIMB | MODE_JUMP);
    }
    virtual BOOL checkFrontRoll() const { return mProcID == PROC_FRONT_ROLL; }
    virtual BOOL checkWolfDash() const { return mProcID == PROC_WOLF_DASH; }
    virtual BOOL checkAutoJump() const {
        return mProcID == PROC_AUTO_JUMP || mProcID == PROC_WOLF_AUTO_JUMP;
    }
    virtual bool checkSideStep() const {
        return (mProcID == PROC_SIDESTEP || mProcID == PROC_WOLF_SIDESTEP) &&
               mProcVar1.field_0x300a != 0;
    }
    virtual bool checkWolfTriggerJump() const {
        return mProcID == PROC_WOLF_SIDESTEP || mProcID == PROC_WOLF_JUMP_ATTACK;
    }
    virtual BOOL checkGuardBreakMode() const { return mProcID == PROC_GUARD_BREAK; }
    virtual bool checkLv3Slide() const {
        return mProcID == PROC_SLIDE && mProcVar3.field_0x300e != 0;
    }
    virtual bool checkWolfHowlDemoMode() const { return mProcID == PROC_WOLF_HOWL_DEMO; }
    virtual bool checkChainBlockPushPull();
    virtual BOOL checkElecDamage() const { return mProcID == PROC_ELEC_DAMAGE; }
    virtual BOOL checkEmptyBottleSwing() const {
        return mEquipItem == fpcNm_ITEM_EMPTY_BOTTLE && mProcID == PROC_BOTTLE_SWING;
    }
    virtual BOOL checkBottleSwingMode() const { return mProcID == PROC_BOTTLE_SWING; }
    virtual BOOL checkHawkWait() const { return mProcID == PROC_HAWK_SUBJECT; }
    virtual BOOL checkGoatThrow() const {
        return mProcID == PROC_GOAT_CATCH && mProcVar2.field_0x300c != 0;
    }
    virtual BOOL checkGoatThrowAfter() const {
        return mProcID == PROC_GOAT_CATCH && field_0x3478 > 0.0f;
    }
    virtual BOOL checkWolfTagLockJump() const {
        return mProcID == PROC_WOLF_TAG_JUMP && field_0x3198 == 0;
    }
    virtual BOOL checkWolfTagLockJumpLand() const { return mProcID == PROC_WOLF_TAG_JUMP_LAND; }
    virtual BOOL checkWolfRope();
    virtual BOOL checkWolfRopeHang() const { return mProcID == PROC_WOLF_ROPE_HANG; }
    virtual BOOL checkRollJump() const { return mProcID == PROC_ROLL_JUMP; }
    virtual BOOL checkGoronRideWait() const { return mProcID == PROC_GORON_RIDE_WAIT; }
    virtual BOOL checkWolfChain() const { return mProcID == PROC_WOLF_CHAIN_WAIT; }
    virtual BOOL checkWolfWait() const { return mProcID == PROC_WOLF_WAIT; }
    virtual BOOL checkWolfJumpAttack() const { return mProcID == PROC_WOLF_JUMP_ATTACK; }
    virtual BOOL checkWolfRSit() const { return mProcID == PROC_WOLF_SIT; }
    virtual BOOL checkBottleDrinkEnd() const {
        return mProcID == PROC_BOTTLE_DRINK && mProcVar3.field_0x300e != 0;
    }
    virtual BOOL checkWolfDig() const { return mProcID == PROC_WOLF_DIG; }
    virtual BOOL checkCutCharge() const { return mProcID == PROC_CUT_TURN_MOVE; }
    virtual BOOL checkCutTurnCharge() const {
        return mProcID == PROC_CUT_TURN_MOVE && mProcVar2.field_0x300c == 0;
    }
    virtual BOOL checkCutLargeJumpCharge() const {
        return mProcID == PROC_CUT_TURN_MOVE && mProcVar2.field_0x300c != 0;
    }
    virtual BOOL checkComboCutTurn() const {
        return mProcID == PROC_CUT_TURN && mComboCutCount != 0;
    }
    virtual BOOL checkClimbMove() const {
        return mProcID == PROC_CLIMB_MOVE_UPDOWN || mProcID == PROC_LADDER_MOVE ||
               mProcID == PROC_CLIMB_MOVE_SIDE;
    }
    virtual BOOL checkGrassWhistle() const { return mProcID == PROC_GRASS_WHISTLE_WAIT; }
    virtual BOOL checkBoarRun() const { return mProcID == PROC_BOAR_RUN; }
    virtual f32 getBaseAnimeFrameRate() const { return mUnderFrameCtrl[0].getRate(); }
    virtual f32 getBaseAnimeFrame() const;
    virtual void setAnimeFrame(f32);
    virtual BOOL checkWolfLock(fopAc_ac_c*) const;
    virtual bool cancelWolfLock(fopAc_ac_c*);
    virtual s32 getAtnActorID() const { return mAtnActorID; }
    virtual s32 getItemID() const { return mItemAcKeep.getID(); }
    virtual u32 getGrabActorID() const {
        if (mEquipItem == 0x102) {
            return mItemAcKeep.getID();
        } else {
            return mGrabItemAcKeep.getID();
        }
    }
    virtual BOOL exchangeGrabActor(fopAc_ac_c*);
    virtual BOOL setForceGrab(fopAc_ac_c*, int, int);
    virtual void setForcePutPos(cXyz const& pPutPos) {
        mForcePutPos = pPutPos;
        onEndResetFlg1(ERFLG1_UNK_2000);
    }
    virtual u32 checkPlayerNoDraw();
    virtual void voiceStart(u32);
    virtual void seStartOnlyReverb(u32);
    virtual void seStartOnlyReverbLevel(u32);
    virtual void setOutPower(f32, short, int);
    virtual void setGrabCollisionOffset(f32, f32, cBgS_PolyInfo*);
    virtual void onFrollCrashFlg(u8, int);
    virtual MtxP getModelJointMtx(u16);
    virtual MtxP getHeadMtx() {
        return mpLinkModel->getAnmMtx(field_0x30b4);
        ;
    }
    virtual bool setHookshotCarryOffset(fpc_ProcID, cXyz const*);
    virtual BOOL checkCutJumpCancelTurn() const {
        return (mProcID == PROC_CUT_JUMP || mProcID == PROC_CUT_JUMP_LAND) && field_0x3198 != 2;
    }
    virtual bool checkIronBallReturn() const;
    virtual bool checkIronBallGroundStop() const;
    virtual BOOL checkSingleBoarBattleSecondBowReady() const {
        return mProcID == PROC_HORSE_BOW_SUBJECT && mProcVar2.field_0x300c != 0;
    }
    virtual void setClothesChange(int);
    virtual void setPlayerPosAndAngle(cXyz const*, short, int);
    virtual void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    virtual void setPlayerPosAndAngle(f32 (*)[4]);
    virtual bool setThrowDamage(short, f32, f32, int, int, int);
    virtual bool checkSetNpcTks(cXyz*, int, int);
    virtual int setRollJump(f32, f32, short);
    virtual void playerStartCollisionSE(u32 param_0, u32 param_1) {
        mZ2Link.startCollisionSE(param_0, param_1);
    }
    virtual void cancelDungeonWarpReadyNeck() {
        if (mProcID != PROC_DUNGEON_WARP_READY) {
            return;
        }
        offModeFlg(MODE_UNK_100);
    }
    virtual void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeAreaJump(u8 exitID, u8 exitDirection, fopAc_ac_c* scexAc) {
        mExitID = exitID | 0x8000;
        mExitDirection = exitDirection;
        mpScnChg = (daScex_c*)scexAc;
    }
    virtual void onSceneChangeDead(u8 param_0, int param_1) {
        if (mProcID != PROC_DEAD) {
            return;
        }
        mProcVar5.field_0x3012 = param_0;
        field_0x3198 = param_1;
    }
    virtual u32 checkHorseRide() const;
    virtual u32 checkBoarRide() const;
    virtual u32 checkCanoeRide() const;
    virtual u32 checkBoardRide() const;
    virtual u32 checkSpinnerRide() const;
    virtual daSpinner_c* getSpinnerActor() {
        daSpinner_c* spinnerActor;
        if (!checkSpinnerRide()) {
            spinnerActor = NULL;
        } else {
            spinnerActor = (daSpinner_c*)mRideAcKeep.getActor();
        }
        return (daSpinner_c*)spinnerActor;
    }
    virtual BOOL checkHorseRideNotReady() const {
        return checkHorseRide() && mProcID != PROC_HORSE_RIDE && mProcID != PROC_HORSE_GETOFF;
    }
    virtual bool checkArrowChargeEnd() const;
    virtual f32 getSearchBallScale() const { return mSearchBallScale; }
    virtual int checkFastShotTime() { return mFastShotTime; }
    virtual bool checkNoEquipItem() const { return mEquipItem == fpcNm_ITEM_NONE; }
    virtual bool checkKandelaarSwing(int) const;
    virtual s16 getBoardCutTurnOffsetAngleY() const {
        if (mProcID == PROC_BOARD_CUT_TURN) {
            return mProcVar5.field_0x3012;
        }
        return 0;
    }
    virtual cXyz* getMagneBootsTopVec() { return &mMagneBootsTopVec; }
    virtual cXyz* getKandelaarFlamePos();
    virtual bool checkUseKandelaar(int);
    virtual void setDkCaught(fopAc_ac_c*);
    virtual void onPressedDamage(cXyz const&, short);
    virtual bool checkPriActorOwn(fopAc_ac_c const* p_actor) const {
        return field_0x27f4 == p_actor;
    }
    virtual bool onWolfEnemyBiteAll(fopAc_ac_c*, daPy_FLG2);
    virtual bool checkWolfEnemyBiteAllOwn(fopAc_ac_c const* p_actor) const {
        return field_0x281c.getActorConst() == p_actor;
    }
    virtual void setWolfEnemyHangBiteAngle(short angle) {
        if (mProcID != PROC_WOLF_ENEMY_HANG_BITE) {
            return;
        }
        mProcVar4.field_0x3010 = angle;
    }
    virtual void setKandelaarMtx(f32 (*)[4], int, int);
    virtual bool getStickAngleFromPlayerShape(short*) const;
    virtual bool checkSpinnerPathMove();
    virtual bool checkSpinnerTriggerAttack();
    virtual void onSpinnerPathForceRemove();
    virtual int getIronBallBgHit() const;
    virtual cXyz* getIronBallCenterPos();
    virtual bool checkCanoeFishingGetLeft() const {
        return mProcID == PROC_CANOE_FISHING_GET && mProcVar3.field_0x300e == 0;
    }
    virtual bool checkCanoeFishingGetRight() const {
        return mProcID == PROC_CANOE_FISHING_GET && mProcVar3.field_0x300e == 1;
    }
    virtual u8 checkBeeChildDrink() const { return field_0x2fd3; }
    virtual void skipPortalObjWarp();
    virtual BOOL checkTreasureRupeeReturn(int) const;
    virtual void setSumouReady(fopAc_ac_c* p_actor) {
        mSpecialMode = SMODE_SUMO_READY;
        mCargoCarryAcKeep.setData(p_actor);
        mDemo.setDemoMode(1);
    }
    virtual bool checkAcceptDungeonWarpAlink(int) { return checkAcceptWarp(); }
    virtual s16 getSumouCounter() const { return mProcVar2.field_0x300c; }
    virtual s16 checkSumouWithstand() const { return mProcVar3.field_0x300e; }
    virtual void cancelGoronThrowEvent();
    virtual void setSumouGraspCancelCount(int param_0) {
        if (mProcID != PROC_SUMOU_MOVE) {
            return;
        }
        mProcVar2.field_0x300c = param_0;
    }
    virtual void setSumouPushBackDirection(short param_0) {
        if (mProcID != PROC_SUMOU_MOVE) {
            return;
        }
        mProcVar4.field_0x3010 = param_0;
    }
    virtual void setSumouLoseHeadUp() {
        if (mProcID != PROC_SUMOU_WIN_LOSE) {
            return;
        }
        mSpecialMode = SMODE_SUMO_LOSE;
    }
    virtual s16 getGiantPuzzleAimAngle() const { return mProcVar2.mPuzzleAimAngle; }
    virtual void setGoronSideMove(fopAc_ac_c* p_actor) {
        mSpecialMode = SMODE_GORON_THROW;
        mCargoCarryAcKeep.setData(p_actor);
    }
    virtual void setCargoCarry(fopAc_ac_c* p_actor) {
        mSpecialMode = SMODE_CARGO_CARRY;
        mCargoCarryAcKeep.setData(p_actor);
    }
    virtual cXyz* getHookshotTopPos();
    virtual bool checkHookshotReturnMode() const;
    virtual bool checkHookshotShootReturnMode() const;
    virtual bool checkOctaIealHang() const {
        return mProcID == PROC_BOSS_BODY_HANG && field_0x32cc == 0;
    }
    virtual void cancelOctaIealHang() {
        if (mProcID != PROC_BOSS_BODY_HANG) {
            return;
        }
        mProcVar3.field_0x300e = 1;
    }
    virtual void cancelDragonHangBackJump() {
        if (mProcID != PROC_BOSS_BODY_HANG) {
            return;
        }
        mProcVar3.field_0x300e = -1;
    }
    virtual void setOctaIealWildHang() {
        if (mProcID != PROC_BOSS_BODY_HANG) {
            return;
        }
        mProcVar0.field_0x3008 = 1;
    }
    virtual bool checkDragonHangRide() const {
        return mProcID == PROC_BOSS_BODY_HANG && field_0x32cc != 0;
    }
    virtual void changeDragonActor(fopAc_ac_c*);
    virtual u8 getClothesChangeWaitTimer() const { return mClothesChangeWaitTimer; }
    virtual u8 getShieldChangeWaitTimer() const { return mShieldChangeWaitTimer; }
    virtual u8 getSwordChangeWaitTimer() const { return mSwordChangeWaitTimer; }
    virtual BOOL checkMetamorphose() const {
        return mProcID == PROC_METAMORPHOSE && mProcVar1.field_0x300a == 0;
    }
    virtual BOOL checkWolfDownAttackPullOut() const { return mProcID == PROC_WOLF_DOWN_AT_LAND; }
    virtual BOOL checkBootsOrArmorHeavy() const;
    virtual s32 getBottleOpenAppearItem() const;
    virtual bool checkItemSwordEquip() const { return mEquipItem == 0x103; }
    virtual f32 getSinkShapeOffset() const { return mSinkShapeOffset; }
    virtual BOOL checkSinkDead() const { return field_0x2fbd == 0xFF; }
    virtual BOOL checkHorseStart() { return checkHorseStart(getLastSceneMode(), getStartMode()); }
    virtual Z2WolfHowlMgr* getWolfHowlMgrP() { return &mZ2WolfHowlMgr; }
    virtual BOOL checkWolfHowlSuccessAnime() const {
        return checkUnderMove0BckNoArcWolf(WANM_HOWL_SUCCESS);
    }
    virtual BOOL checkCopyRodTopUse();
    virtual bool checkCopyRodEquip() const { return mEquipItem == fpcNm_ITEM_COPY_ROD; }
    virtual BOOL checkCutJumpMode() const { return mProcID == PROC_CUT_JUMP; }

    static BOOL checkDebugMoveInput() {
        if (mDoCPd_c::isConnect(PAD_3)) {
            return mDoCPd_c::getHoldB(PAD_1) && mDoCPd_c::getAnalogR(PAD_1) > 0.8f &&
                   mDoCPd_c::getTrigA(PAD_1);
        }

        return FALSE;
    }

    u32 checkModeFlg(u32 pFlag) const { return mModeFlg & pFlag; }
    BOOL checkSmallUpperGuardAnime() const { return checkUpperAnime(0x16); }
    BOOL checkFmChainGrabAnime() const { return checkUpperAnime(0x62) || checkUpperAnime(0x2A0); }

    // this might be a fake match, but helps fix usage in many functions
#pragma push
#pragma optimization_level 2
    BOOL checkAttentionLock() { return mAttention->Lockon(); }
#pragma pop

    bool checkUpperAnime(u16 i_idx) const { return mUpperAnmHeap[UPPER_2].getIdx() == i_idx; }
    bool checkUnderAnime(u16 i_idx) const { return mUnderAnmHeap[UNDER_2].getIdx() == i_idx; }

    bool checkNoSetUpperAnime() const { return mUpperAnmHeap[UPPER_2].checkNoSetIdx(); }
    bool checkSwimMoveHandAnime() const { return checkUpperAnime(0x23F); }
    bool checkZoraSwimDamageAnime() const { return checkUpperAnime(0xBF); }
    bool checkIronBallWaitAnime() const { return checkUpperAnime(0x19C); }
    bool checkHorseTurnLAnime() const { return checkUpperAnime(0x24C); }
    bool checkHorseTurnRAnime() const { return checkUpperAnime(0x24D); }
    bool checkHorseTurnAnime() const { return checkHorseTurnLAnime() || checkHorseTurnRAnime(); }
    bool checkHookshotShootAnime() const { return checkUpperAnime(0x18C); }
    bool checkHookshotReadyAnime() const { return checkUpperAnime(0x18D); }
    BOOL checkHookshotAnime() const {
        return checkHookshotReadyAnime() || checkHookshotShootAnime();
    }
    BOOL checkBoomerangReadyAnime() const {
        return (mEquipItem == fpcNm_ITEM_BOOMERANG || mEquipItem == 0x102) && checkUpperAnime(0x54);
    }
    bool checkDkCaught2Anime() const { return checkUpperAnime(0x262); }
    BOOL checkCopyRodThrowAnime() const {
        return mEquipItem == fpcNm_ITEM_COPY_ROD && checkUpperAnime(0x53);
    }
    BOOL checkCutDashChargeAnime() const { return checkUpperAnime(0x83); }
    BOOL checkBoomerangAnimeAndReturnWait() const { return checkBoomerangAnime(); }
    BOOL checkTwoHandItemEquipAnime() const { return checkUpperAnime(0x245); }
    BOOL checkBarkAnime() const { return 0; }
    bool checkWolfGrabAnimeObj() const { return checkUpperAnime(0x2DA); }
    bool checkWolfGrabAnimeStick() const { return checkUpperAnime(0x2DB); }
    BOOL checkWolfGrabAnime() const { return checkWolfGrabAnimeObj() || checkWolfGrabAnimeStick(); }
    bool checkWolfSwimDashAnime() const { return checkUnderMove0BckNoArcWolf(WANM_SWIM_DASH); }
    bool checkKandelaarSwingAnime() const { return false; }
    bool checkBowChargeWaitAnime() const { return checkUpperAnime(0xA); }
    bool checkBowReloadAnime() const { return checkUpperAnime(0x9); }
    bool checkBowShootAnime() const { return checkUpperAnime(0xC); }
    bool checkBowWaitAnime() const { return checkUpperAnime(0xD); }
    BOOL checkGrabUpThrowAnime() const { return checkUpperAnime(0x170); }
    BOOL checkGrabSideThrowAnime() const {
        return checkUpperAnime(0x51) || mUpperAnmHeap[0].getIdx() == 0x51;
    }
    BOOL checkGrabHeavyThrowAnime() const { return checkUpperAnime(0x17B); }
    BOOL checkGrabAnimeUp() const { return checkUpperAnime(0x16C); }
    BOOL checkGrabAnimeSide() const { return checkUpperAnime(0x50); }
    BOOL checkGrabAnimeCarry() const { return checkUpperAnime(0x60); }
    bool checkHorseUnderDashStartAnime() const { return checkUnderAnime(0xDD); }
    bool checkHorseUnderLashAnime() const { return checkUnderAnime(0x1B3); }
    bool checkUpperHorseLieAnime() const { return checkUpperAnime(0x265); }
    bool checkHorseTiredAnime() const { return checkUpperAnime(0x263); }
    bool checkHorseSwordUpAnime() const { return checkUpperAnime(0xCC); }
    bool checkHorseUnderItemAnime() const { return checkUnderAnime(0x19); }
    BOOL checkHorseWalkStartAnm() const { return checkUnderMove0BckNoArc(ANM_WSTARTH); }
    bool checkIronBallPreSwingAnime() const { return checkUpperAnime(0x19A); }
    bool checkIronBallSwingAnime() const { return checkUpperAnime(0x19B); }
    bool checkDashDamageAnime() const { return checkUpperAnime(0xAD); }
    bool checkBoomerangCatchAnime() const { return checkUpperAnime(0x52); }
    BOOL checkCopyRodReadyAnime() const {
        return mEquipItem == fpcNm_ITEM_COPY_ROD && checkUpperAnime(0x54);
    }
    BOOL checkCanoeFishingWaitAnime() const {
        return checkUpperAnime(0x5D) || checkUpperAnime(0x260);
    }
    BOOL checkCopyRodControllAnime() const { return checkUpperAnime(0x202); }
    BOOL checkWolfHeadDamageAnime() const { return checkUpperAnime(0x2A7); }
    BOOL checkExchangeRodAnime() const { return checkUpperAnime(0x68); }
    BOOL checkReelAnime() const { return checkUpperAnime(0x1FB); }

    int checkWolfEyeUp() const { return mWolfEyeUp; }
    void onModeFlg(u32 flag) { mModeFlg |= flag; }
    void offModeFlg(u32 flag) { mModeFlg &= ~flag; }
    bool swordButton() { return itemButtonCheck(8); }
    daPy_actorKeep_c* getThrowBoomerangAcKeep() { return &mThrowBoomerangAcKeep; }
    s32 getStartRoomNo() { return fopAcM_GetParam(this) & 0x3F; }
    bool checkFisingRodLure() const { return mEquipItem == 0x105; }
    BOOL doTrigger() const { return mItemTrigger & BTN_A; }
    bool swordTrigger() { return itemTriggerCheck(BTN_B); }
    BOOL grassCancelTrigger() { return itemTriggerCheck(BTN_B); }
    BOOL arrowChangeTrigger() { return itemActionTrigger(); }
    bool peepSubjectCancelTrigger() { return itemTriggerCheck(0x8); }
    int getStartMode() { return (fopAcM_GetParam(this) >> 0xC) & 0x1F; }
    bool checkInputOnR() const { return field_0x33ac > 0.05f; }
    static int getSightBti() { return 0x5B; }
    bool checkBoomerangChargeEndWait() const {
        return mEquipItem != 0x102 && checkBoomerangAnime();
    }
    J3DAnmTransform* getNowAnmPackUpper(daAlink_UPPER param_0) {
        return mNowAnmPackUpper[param_0].getAnmTransform();
    }
    void setFacePriBck(u16 param_0) { setFaceBck(param_0, 1, 0xFFFF); }
    void setFacePriBtp(u16 param_0) { setFaceBtp(param_0, 1, 0xFFFF); }
    void setFacePriBtk(u16 param_0) { setFaceBtk(param_0, 1, 0xFFFF); }
    void setFaceBasicBck(u16 param_0) { setFaceBck(param_0, 0, 0xFFFF); }
    void setFaceBasicBtp(u16 param_0) { setFaceBtp(param_0, 0, 0xFFFF); }
    void setFaceBasicBtk(u16 param_0) { setFaceBtk(param_0, 0, 0xFFFF); }
    void setFaceDemoBck(u16 param_0) { setFaceBck(param_0, 0, 0); }
    void setFaceDemoBtp(u16 param_0) { setFaceBtp(param_0, 0, 0); }
    void setFaceDemoBtk(u16 param_0) { setFaceBtk(param_0, 0, 0); }

    void setGrabStatus(u8 i_status, u8 param_1) { setWallGrabStatus(i_status, param_1); }
    void setChainGrabStatus(u8 i_status) { setGrabStatus(i_status, 2); }

    void cancelFmChainGrabFromOut() {
        field_0x2fa3 = 0;
        field_0x2844.clearData();
    }

    s32 checkPlayerDemoMode() const { return mDemo.getDemoType(); }
    BOOL checkSpecialDemoMode() const { return mDemo.getDemoType() == 5; }
    static bool checkMidnaChargeAttack() { return dComIfGs_isEventBit(0x501); }
    u16 getMidnaMsgNum() const { return mMidnaMsgNum; }
    u32 getStartEvent() { return fopAcM_GetParam(this) >> 0x18; }
    BOOL checkClimbFall() { return checkLadderFall(); }

    bool checkMidnaWolfDashAnime() { return checkNoResetFlg1(FLG1_DASH_MODE); }
    bool checkMidnaClingAnime() { return mMidnaAnm == 1; }
    bool checkMidnaLowClingAnime() { return mMidnaAnm == 2; }
    bool checkMidnaLookAroundAnime() { return mMidnaAnm == 3; }
    bool checkMidnaPanicAnime() { return mMidnaAnm == 5; }
    bool checkMidnaWolfDeadAnime() { return mMidnaAnm == 6; }
    bool checkMidnaWolfSwimDeadAnime() { return mMidnaAnm == 7; }
    bool checkMidnaRopeWaitStaggerAnime() { return mMidnaAnm == 8; }
    bool checkMidnaRopeMoveStaggerAnime() { return mMidnaAnm == 9; }
    bool checkMidnaGanonCatchAnm() { return mMidnaAnm == 10; }
    bool checkMidnaGanonThrowLeftAnm() { return mMidnaAnm == 11; }
    bool checkMidnaGanonThrowRightAnm() { return mMidnaAnm == 12; }
    bool checkMidnaDigInAnime() { return mMidnaAnm == 13; }

    void clearMidnaMsgNum() {
        mMidnaMsgNum = 0xffff;
        mMidnaMsg = NULL;
    }

    void setEndGanonThrow() { mProcVar3.field_0x300e = 1; }

    s16 getProcNeckX() { return field_0x30a0; }
    s16 getMidnaProcNeckY() { return field_0x30d4; }
    f32 getEyeMoveRateY() { return field_0x33f4; }
    f32 getMidnaEyeMoveRateX() { return field_0x33f8; }

    J3DModel* getMidnaModel() {
        if (mClothesChangeWaitTimer != 0) {
            return NULL;
        } else {
            return mpWlMidnaModel;
        }
    }

    J3DModel* getMidnaMaskModel() { return mpWlMidnaMaskModel; }
    J3DModel* getMidnaHandModel() { return mpWlMidnaHandModel; }
    J3DModel* getMidnaHairHandModel() { return mpWlMidnaHairModel; }

    cXyz* getMidnaHairAtnPos() { return &mMidnaHairAtnPos; }

    const daAlink_AnmData* getAnmData(daAlink_ANM anmID) const { return &m_anmDataTable[anmID]; }
    const daAlink_FaceTexData* getFaceTexData(daAlink_FTANM i_anmID) const {
        return &m_faceTexDataTable[i_anmID];
    }

    s16 getCameraAngleX() const { return field_0x310a; }
    s16 getCameraAngleY() const { return field_0x310c; }
    cXyz* getSubjectEyePos() { return &field_0x3768; }

    u32 checkReinRide() const { return mRideStatus == 1 || mRideStatus == 2; }
    int getGrassHowlEventActor() const { return field_0x3198; }
    MtxP getShieldMtx() const { return mShieldModel->getBaseTRMtx(); }
    MtxP getMagneBootsMtx() { return mMagneBootMtx; }
    MtxP getMagneBootsInvMtx() { return mMagneBootInvMtx; }
    s16 getMagneBootsModelShapeAngle() const { return field_0x3118; }

    bool checkFishingCastMode() const {
        bool var_r5;
        bool var_r4 = 1;
        bool var_r3 = 0;

        if (mProcID == PROC_FISHING_CAST) {
            var_r5 = 0;

            if (mItemAcKeep.getActor() != NULL &&
                mItemAcKeep.getActor()->eventInfo.checkCommandDemoAccrpt() != 0)
            {
                var_r5 = 1;
            }

            if (!var_r5) {
                var_r3 = 1;
            }
        }

        if (!var_r3) {
            bool var_r3_2 = 0;
            if (mProcID != PROC_FISHING_CAST && checkNoResetFlg2(FLG2_UNK_20000000)) {
                var_r3_2 = 1;
            }

            if (!var_r3_2) {
                var_r4 = 0;
            }
        }

        return var_r4;
    }

    BOOL setCanoeCast() {
        if (mProcVar2.field_0x300c == 0 && checkCanoeFishingWaitAnime()) {
            mProcVar2.field_0x300c = 1;
            return TRUE;
        } else {
            return FALSE;
        }
    }

    bool checkFishingRodGrabLeft() const { return mItemVar0.field_0x3018 == 0; }

    void setCanoeFishingWaitAngle(s16 i_angle) { field_0x311a = i_angle; }

    void setFishingArnmAngle(s16 i_angle) { field_0x3160.set(0, 0, i_angle); }
    void setFishingArm1Angle(const csXyz& i_angle) { mFishingArm1Angle = i_angle; }
    void setFishingArm2Angle(const csXyz& i_angle) { field_0x3160 = i_angle; }

    void onFishingRodCastingEnd() { onNoResetFlg1(FLG1_UNK_8000); }
    void endFishingCastWait() { offNoResetFlg2(FLG2_UNK_20000000); }

    void startFishingCastWait() {
        if (checkFishingRodItem(mEquipItem)) {
            onNoResetFlg2(FLG2_UNK_20000000);
        }
    }

    f32 getFishingReelFrame() const { return mUpperFrameCtrl[2].getFrame(); }

    void changeFishGetFace(u8 param_0) { field_0x2fc8 = param_0; }

    BOOL checkSlideMode() {
        return mProcID == PROC_SLIDE || mProcID == PROC_SLIDE_LAND ||
               mProcID == PROC_WOLF_SLIDE_READY || mProcID == PROC_WOLF_SLIDE_LAND ||
               mProcID == PROC_WOLF_SLIDE;
    }

    BOOL checkHorseGetItem() const {
        return (mProcID == PROC_GET_ITEM && checkHorseRide()) || mProcID == PROC_HORSE_GET_KEY;
    }

    bool checkFisingRodJewl() const {
        return (mEquipItem == 0x5C || mEquipItem == 0x5F) || mEquipItem == 0x5E;
    }

    bool checkFisingRodWorm() const { return mItemMode == 0x74; }

    bool checkFisingRodBee() const { return mItemMode == 0x76; }

    void fishingCastWaitAnimeStart() {
        if (mProcID == PROC_FISHING_CAST) {
            mProcVar3.field_0x300e = 0;
        }
    }

    void fishingCastWaitAnimeStop() {
        if (mProcID == PROC_FISHING_CAST) {
            mProcVar3.field_0x300e = 1;
        }
    }

    MtxP getCopyRodMtx() {
        if (mHeldItemModel != NULL) {
            return mHeldItemModel->getAnmMtx(0);
        }
        return NULL;
    }

    cXyz* getRootPosP() { return &field_0x3834; }
    const cXyz& getBoomerangCatchPos() const { return field_0x3534; }
    f32 getCopyRodBallDisFlyMax() const { return mSearchBallScale; }

    void clearIronBallActor() { field_0x173c.SetActor(this); }
    BOOL checkCanoeRideOwn(const fopAc_ac_c* param_0) const {
        return checkCanoeRide() && mRideAcKeep.getActorConst() == param_0;
    }
    bool checkWolfDashMode() const { return checkNoResetFlg1(FLG1_DASH_MODE); }
    bool checkWolfLieWaterIn() const { return mWaterY > current.pos.y + 20.5f; }

    BOOL checkPowerGloveGet() { return false; }

    J3DModel* initModel(J3DModelData* p_modelData, u32 param_1) {
        return initModel(p_modelData, 0x80000, param_1);
    }

    J3DModel* initModelEnv(J3DModelData* p_modelData, u32 param_1) {
        return initModel(p_modelData, 0, param_1);
    }

    bool checkResetRootMtx(int param_0) const { return field_0x2f90 != 0 && param_0 == 1; }

    bool checkGrabGlide() { return checkGrabRooster(); }

    bool checkCopyRodRevive() const { return mProcID == PROC_COPY_ROD_REVIVE; }
    bool checkHorseGetOffMode() const { return mProcID == PROC_HORSE_GETOFF; }
    bool checkHorseHangMode() const { return mProcID == PROC_HORSE_HANG; }
    bool checkHorseBackInput() const { return mProcID == PROC_HORSE_WAIT; }
    bool checkHorseRideOn() const { return mProcID == PROC_HORSE_RIDE; }
    bool checkHorseTurnMode() const { return mProcID == PROC_HORSE_TURN; }
    bool checkGrabUp() const { return mProcID == PROC_GRAB_UP; }
    bool checkSpinnerRideWait() const {
        return mProcID == PROC_SPINNER_WAIT && mProcVar2.field_0x300c == 0;
    }
    bool checkCopyRodSwingMode() { return mProcID == PROC_COPY_ROD_SWING; }
    bool checkCopyRodSwingModeInit() {
        return mProcID == PROC_COPY_ROD_SWING && mProcVar2.field_0x300c != 0;
    }
    float transAnimeMoveX() { return field_0x3464; }
    float transAnimeMoveZ() { return field_0x3468; }
    bool checkRoofSwitchHang() const { return mProcID == PROC_ROOF_SWITCH_HANG; }
    bool checkCanoeWait() const { return mProcID == PROC_CANOE_WAIT; }
    bool checkCanoeSubjectivity() const { return mProcID == PROC_CANOE_SUBJECTIVITY; }

    fopAc_ac_c* getCopyRodActor() { return mCopyRodAcKeep.getActor(); }
    fopAc_ac_c* getHookshotRoofWaitActor() { return mCargoCarryAcKeep.getActor(); }

    BOOL checkRideOn() const { return mRideStatus != 0; }

    bool checkSwimDashMode() const { return checkNoResetFlg1(FLG1_DASH_MODE); }

    bool talkTrigger() const { return mItemTrigger & BTN_A; }
    J3DAnmTransform* getNowAnmPackUnder(daAlink_UNDER i_idx) {
        return mNowAnmPackUnder[i_idx].getAnmTransform();
    }
    bool doButton() const { return mItemButton & BTN_A; }
    void setGrassCancelStatus(u8 param_0) { setBStatus(param_0); }

    void seStartSystem(u32 i_seID) { mDoAud_seStart(i_seID, NULL, 0, 0); }
    bool checkIronBallEquip() const { return mEquipItem == fpcNm_ITEM_IRONBALL; }
    BOOL checkFishingRodEquip() const { return checkFishingRodItem(mEquipItem); }

    f32 getAnmSpeedStickRate(f32 param_0, f32 param_1) const {
        return param_0 + (field_0x33a8 * (param_1 - param_0));
    }

    bool escapeTrigger() {
        field_0x2fae |= 8;
        return mItemTrigger & (BTN_A | BTN_B);
    }

    void clearComboReserb() { offNoResetFlg2(FLG2_UNK_2); }

    void setDamageColorTime() { mDamageColorTime = 32 - (mDamageTimer % 16); }

    BOOL setEnemyBomb(fopAc_ac_c* i_actor) { return exchangeGrabActor(i_actor); }

    void decrementBombCnt() {
        if (mActiveBombNum != 0) {
            mActiveBombNum--;
        }
    }

    void decrementInsectBombCnt() {
        if (field_0x2fcf != 0) {
            field_0x2fcf--;
        }
    }

    // Gets the cardinal direction of the Left Stick relative to player facing angle
    int getDirectionFromShapeAngle() const {
        return getDirectionFromAngle(field_0x2fe2 - shape_angle.y);
    }

    // Gets the cardinal direction of the Left Stick relative to player angle
    int getDirectionFromCurrentAngle() const {
        return getDirectionFromAngle(field_0x2fe2 - current.angle.y);
    }

    bool checkAnmEnd(daPy_frameCtrl_c* i_frameCtrl) { return i_frameCtrl->checkAnmEnd(); }

    BOOL checkCrawlWaterIn() { return mWaterY > current.pos.y + 15.5f; }

    MtxP getWolfMidnaMatrix() { return mpLinkModel->getAnmMtx(0x19); }
    s16 getIceDamageWaitTimer() const { return mIceDamageWaitTimer; }
    const cXyz& getWindSpeed() const { return mWindSpeed; }
    const cXyz& getHsChainTopPos() const { return mHookshotTopPos; }
    const cXyz& getHsChainRootPos() const { return mHeldItemRootPos; }
    const cXyz& getHsSubChainRootPos() const { return field_0x3810; }
    const csXyz& getHsAngle() const { return field_0x316c; }

    s16 getHookshotStopTime() const { return field_0x3026; }
    bool getHookshotLeft() const { return field_0x3020 == 0; }

    static int getBallModelIdx() { return 0x25; }
    static int getBallBtkIdx() { return 0x49; }
    static int getBallBrkIdx() { return 0x41; }

    bool checkRootTransClearMode() { return field_0x2f99 & 7; }
    bool checkRootTransZClearMode() { return field_0x2f99 & 4; }
    bool checkRootTransXClearMode() { return field_0x2f99 & 1; }
    bool checkRootTransYClearMode() { return field_0x2f99 & 2; }
    bool checkRootTransClearContinueMode() { return field_0x2f99 & 8; }
    s16 checkWindStoneHowl() { return mProcVar4.field_0x3010; }
    u8 getCorrectCurveID() { return mZ2WolfHowlMgr.getCorrectCurveID(); }
    u8 getCorrectLineNum() { return mZ2WolfHowlMgr.getCorrectLineNum(); }
    u32 getWolfHowlTimer() { return mZ2WolfHowlMgr.getTimer(); }
    s8 getOnLineNum() { return mZ2WolfHowlMgr.getOnLineNum(); }
    SongNote getCorrectLine(u8 param_0) { return mZ2WolfHowlMgr.getCorrectLine(param_0); }
    void startWindStoneSound(s8 id, Vec* pos) { mZ2WolfHowlMgr.startWindStoneSound(id, pos); }
    J3DModelData* getItemModelData() { return mpItemModelData; }

    cXyz* getIronBallChainPos() const { return mIronBallChainPos; }
    csXyz* getIronBallChainAngle() const { return mIronBallChainAngle; }
    int getIronBallHandChainNum() const { return mItemMode; }
    const cXyz& getIronBallChainHandRootPos() const { return mHookshotTopPos; }

    fopAc_ac_c* getAtnActor() { return mTargetedActor; }

    void itemHitSE(u32 param_1, u32 param_2, Z2SoundObjBase* param_3) {
        mZ2Link.startHitItemSE(param_1, param_2, param_3, -1.0f);
    }

    BOOL checkStartFall() { return getStartMode() == 3; }

    u8 getBStatus() { return dComIfGp_getAStatus(); }
    void setRStatus(u8 param_0, u8 param_1) { dComIfGp_setRStatus(param_0, param_1); }

    BOOL checkWindSpeedMoveXZ() const { return mWindSpeed.abs2XZ() > 1.0f; }

    BOOL checkHorseRideReady() const { return checkHorseRideOn() || checkHorseGetOffMode(); }

    void getHorseReinCenterLeftPos(cXyz* o_pos) {
        mDoMtx_multVec(getLeftHandMatrix(), &m_handLeftInSidePos, o_pos);
    }

    void getHorseReinCenterRightPos(cXyz* o_pos) {
        mDoMtx_multVec(getRightHandMatrix(), &m_handRightInSidePos, o_pos);
    }

    cXyz* getLineTopPosP() { return mSight.getPosP(); }

    cXyz* getBoomerangLockPosP() { return &mHeldItemRootPos; }

    BOOL boomerangLockTrigger() { return itemActionTrigger(); }

    BOOL checkBoomerangLockTrigger() { return boomerangLockTrigger(); }

    BOOL checkDemoSpinnerKeep() const {
        return mDemo.getDemoMode() == 14 && mDemo.getParam0() == 1;
    }

    BOOL checkDemoSpinnerKeepSpeed() const {
        return mDemo.getDemoMode() == 14 && mDemo.getParam0() == 2;
    }

    bool checkSpinnerRideOwn(const fopAc_ac_c* param_0) {
        return checkSpinnerRide() && mRideAcKeep.getActorConst() == param_0;
    }

    BOOL checkSpinnerReady() const { return mProcID == PROC_SPINNER_READY; }

    BOOL checkGameOverWindow() const { return mProcID == PROC_DEAD && field_0x3478 < 0.01f; }

    f32 getSlideLimit() const { return field_0x3470; }

    bool checkWindSpeedOnXZ() const { return field_0x35b8.abs2XZ() > 1.0f; }

    inline void startRestartRoomFromOut(int, u32, int);

    u16 getReadyItem() { return dComIfGp_getSelectItem(mSelectItemId); }

    static daAlink_BckData const m_mainBckShield[20];
    static daAlink_BckData const m_mainBckSword[5];
    static daAlink_BckData const m_mainBckFishing[28];
    static daAlink_AnmData const m_anmDataTable[414];
    static daAlink_WlAnmData const m_wlAnmDataTable[147];
    static daAlink_FaceTexData const m_faceTexDataTable[];
    static Vec const m_handLeftOutSidePos;
    static Vec const m_handRightOutSidePos;
    static Vec const m_handLeftInSidePos;
    static Vec const m_handRightInSidePos;

    static daAlink_procInitTable m_procInitTable[];
    static daAlink_procFunc m_demoInitTable[];
    static EffParamProc m_fEffParamProc[];

    /* 0x0062C */ request_of_phase_process_class mPhaseReq;
    /* 0x00634 */ const char* mArcName;
    /* 0x00638 */ JKRExpHeap* mpArcHeap;
    /* 0x0063C */ request_of_phase_process_class mShieldPhaseReq;
    /* 0x00644 */ const char* mShieldArcName;
    /* 0x00648 */ JKRExpHeap* mpShieldArcHeap;
    /* 0x0064C */ J3DModelData* field_0x064C;
    /* 0x00650 */ J3DModel* mpLinkModel;
    /* 0x00654 */ J3DModel* mpLinkFaceModel;
    /* 0x00658 */ J3DModel* mpLinkHatModel;
    /* 0x0065C */ J3DModel* mpLinkHandModel;
    /* 0x00660 */ J3DModel* mpSwAModel;        // Ordon Sword model
    /* 0x00664 */ J3DModel* mpSwASheathModel;  // Ordon Sword sheath model
    /* 0x00668 */ J3DModel* mpSwMModel;        // Master Sword model
    /* 0x0066C */ J3DModel* mpSwMSheathModel;  // Master Sword sheath model
    /* 0x00670 */ J3DModel* mWoodSwordModel;
    /* 0x00674 */ J3DModel* mpWlChangeModel;
    /* 0x00678 */ J3DModel* mShieldModel;
    /* 0x0067C */ J3DAnmTevRegKey* mMagicArmorBodyBrk;
    /* 0x00680 */ J3DAnmTevRegKey* mMagicArmorHeadBrk;
    /* 0x00684 */ J3DModel* mpDemoFCBlendModel;
    /* 0x00688 */ J3DModel* mpDemoFCTongueModel;
    /* 0x0068C */ J3DAnmTextureSRTKey* field_0x068c;
    /* 0x00690 */ mDoExt_bckAnm* mpDemoFCTmpBck;
    /* 0x00694 */ J3DDeformData* mpDemoFCTmpBls;
    /* 0x00698 */ J3DAnmCluster* field_0x0698;
    /* 0x0069C */ mDoExt_blkAnm* field_0x069c;
    /* 0x006A0 */ J3DModel* mpDemoHLTmpModel;
    /* 0x006A4 */ mDoExt_bckAnm* mpDemoHLTmpBck;
    /* 0x006A8 */ J3DModel* mpDemoHRTmpModel;
    /* 0x006AC */ mDoExt_bckAnm* mpDemoHRTmpBck;
    /* 0x006B0 */ mDoExt_bckAnm* mpDemoHDTmpBck;
    /* 0x006B4 */ J3DAnmTransform* field_0x06b4;
    /* 0x006B8 */ J3DModel* mSwordModel;
    /* 0x006BC */ J3DModel* mSheathModel;
    /* 0x006C0 */ J3DModelData* field_0x06c0;
    /* 0x006C4 */ J3DAnmTextureSRTKey* m_nSwordBtk;
    /* 0x006C8 */ J3DAnmTextureSRTKey* m_mSwordBtk;
    /* 0x006CC */ J3DAnmTevRegKey* m_mSwordBrk;
    /* 0x006D0 */ J3DShape* field_0x06d0;
    /* 0x006D4 */ J3DShape* field_0x06d4;
    /* 0x006D8 */ J3DShape* field_0x06d8;
    /* 0x006DC */ J3DShape* field_0x06dc;
    /* 0x006E0 */ J3DShape* field_0x06e0;
    /* 0x006E4 */ J3DShape* field_0x06e4;
    /* 0x006E8 */ J3DShape* field_0x06e8;
    /* 0x006EC */ J3DShape* field_0x06ec;
    /* 0x006F0 */ J3DShape* field_0x06f0;
    /* 0x006F4 */ J3DAnmTevRegKey* field_0x06f4;
    /* 0x006F8 */ J3DAnmTevRegKey* field_0x06f8;
    /* 0x006FC */ J3DModel* mpKanteraModel;
    /* 0x00700 */ J3DModel* mpKanteraGlowModel;
    /* 0x00704 */ J3DAnmTextureSRTKey* mpKanteraGlowBtk;
    /* 0x00708 */ J3DModel* mHeldItemModel;
    /* 0x0070C */ J3DModel* mpHookTipModel;  // related to held item
    /* 0x00710 */ J3DModel* field_0x0710;    // related to held item
    /* 0x00714 */ J3DModel* field_0x0714;    // related to held item
    /* 0x00718 */ J3DAnmTextureSRTKey* field_0x0718;
    /* 0x0071C */ J3DAnmTextureSRTKey* field_0x071c;
    /* 0x00720 */ J3DAnmTextureSRTKey* field_0x0720;
    /* 0x00724 */ J3DAnmTevRegKey* field_0x0724;
    /* 0x00728 */ J3DAnmBase* field_0x0728;
    /* 0x0072C */ J3DAnmTexPattern* field_0x072c;
    /* 0x00730 */ mDoExt_bckAnm mItemBck;
    /* 0x0074C */ mDoExt_bckAnm mHookTipBck;
    /* 0x00768 */ J3DModelData* mpItemModelData;
    /* 0x0076C */ Z2SoundObjSimple* mpHookSound;
    /* 0x00770 */ hsChainShape_c* mpHookChain;
    /* 0x00774 */ dBgS_AcchCir* field_0x0774;
    /* 0x00778 */ dBgS_ObjAcch* field_0x0778;
    /* 0x0077C */ dBgS_ObjLinChk* mpHookshotLinChk;
    /* 0x00780 */ dBgS_ObjLinChk* field_0x780;
    /* 0x00784 */ J3DModel* mpLinkBootModels[2];
    /* 0x0078C */ J3DModel* mpWlChainModels[4];
    /* 0x0079C */ J3DModel* mpWlMidnaModel;
    /* 0x007A0 */ J3DModel* mpWlMidnaMaskModel;
    /* 0x007A4 */ J3DModel* mpWlMidnaHandModel;
    /* 0x007A8 */ J3DModel* mpWlMidnaHairModel;
    /* 0x007AC */ J3DAnmTevRegKey* mpDMidnaBrk;
    /* 0x007B0 */ J3DAnmTevRegKey* mpDMidnaMaskBrk;
    /* 0x007B4 */ J3DAnmTevRegKey* mpDMidnaHandBrk;
    /* 0x007B8 */ J3DAnmTevRegKey* mpDMidnaHairHandBrk;
    /* 0x007BC */ mDoExt_bckAnm* m_sWindowBck;
    /* 0x007C0 */ void* mpWarpTexData;
    /* 0x007C4 */ daPy_actorKeep_c mWolfLockAcKeep[10];
    /* 0x00814 */ dCcD_Stts field_0x814;
    /* 0x00850 */ dCcD_Cyl field_0x850[3];
    /* 0x00C04 */ dCcD_Cyl field_0xC04[3];
    /* 0x00FB8 */ dCcD_Sph field_0xFB8;
    /* 0x010F0 */ dCcD_Cyl mAtCyl;
    /* 0x0122C */ dCcD_Cps mAtCps[3];
    /* 0x015F8 */ dCcD_Cps mGuardAtCps;
    /* 0x0173C */ dCcD_Stts field_0x173c;  // related to ball and chain
    /* 0x01778 */ dCcD_Sph field_0x1778;
    /* 0x018B0 */ dBgS_AcchCir mAcchCir[3];
    /* 0x01970 */ dBgS_LinkAcch mLinkAcch;
    /* 0x01B48 */ dBgS_LinkLinChk mLinkLinChk;
    /* 0x01BB8 */ dBgS_RopeLinChk mRopeLinChk;
    /* 0x01C28 */ dBgS_BoomerangLinChk mBoomerangLinChk;
    /* 0x01C98 */ dBgS_ArrowLinChk mArrowLinChk;
    /* 0x01D08 */ dBgS_LinkGndChk mLinkGndChk;
    /* 0x01D5C */ dBgS_LinkRoofChk mLinkRoofChk;
    /* 0x01DAC */ dBgS_LinkLinChk mMagneLineChk;
    /* 0x01E1C */ cBgS_PolyInfo mPolyInfo1;
    /* 0x01E2C */ cBgS_PolyInfo mPolyInfo2;
    /* 0x01E3C */ cBgS_PolyInfo mPolyInfo3;
    /* 0x01E4C */ cBgS_PolyInfo mPolyInfo4;
    /* 0x01E5C */ dBgS_ObjLinChk mObjLinChk;
    /* 0x01ECC */ dBgS_ObjGndChk mObjGndChk;
    /* 0x01F20 */ mDoExt_MtxCalcAnmBlendTbl* field_0x1f20;
    /* 0x01F24 */ mDoExt_MtxCalcAnmBlendTblOld* field_0x1f24;
    /* 0x01F28 */ mDoExt_AnmRatioPack mNowAnmPackUnder[3];
    /* 0x01F40 */ mDoExt_AnmRatioPack mNowAnmPackUpper[3];
    /* 0x01F58 */ daPy_anmHeap_c mUnderAnmHeap[3];
    /* 0x01F94 */ daPy_anmHeap_c mUpperAnmHeap[3];
    /* 0x01FD0 */ daPy_frameCtrl_c mUnderFrameCtrl[3];
    /* 0x02018 */ daPy_frameCtrl_c mUpperFrameCtrl[3];
    /* 0x02060 */ mDoExt_MtxCalcOldFrame* field_0x2060;
    /* 0x02064 */ daAlink_sight_c mSight;
    #if PLATFORM_WII
        u8 unk_0x20f0[4];
    #endif
    /* 0x020F0 */ daPy_anmHeap_c mAnmHeap3;
    /* 0x02104 */ daPy_anmHeap_c mAnmHeap4;
    /* 0x02118 */ daPy_anmHeap_c mFaceBtpHeap;
    /* 0x0212C */ daPy_anmHeap_c mFaceBtkHeap;
    /* 0x02140 */ daPy_anmHeap_c mFaceBckHeap;
    /* 0x02154 */ J3DAnmTexPattern* field_0x2154;
    /* 0x02158 */ J3DAnmTextureSRTKey* mpFaceBtk;
    /* 0x0215C */ daPy_frameCtrl_c* field_0x215c;
    /* 0x02160 */ u16* field_0x2160;
    /* 0x02164 */ mDoExt_bckAnm field_0x2164;
    /* 0x02180 */ daAlink_matAnm_c* field_0x2180[2];
    /* 0x02188 */ dEyeHL_c mEyeHL1;
    /* 0x0219C */ dEyeHL_c mEyeHL2;
    /* 0x021B0 */ daPy_anmHeap_c mItemHeap[2];
    /* 0x021D8 */ daPy_anmHeap_c mAnmHeap9;
    /* 0x021EC */ daAlinkHIO_c* mpHIO;
    /* 0x021F0 */ daAlink_blur_c m_swordBlur;
    /* 0x027C8 */ dAlink_bottleWaterPcallBack_c field_0x27c8;
    /* 0x027E0 */ dAttention_c* mAttention;
    /* 0x027E4 */ dAttList_c* mAttList;
    /* 0x027E8 */ dAttList_c* mAttList2;
    /* 0x027EC */ fopAc_ac_c* mTargetedActor;
    /* 0x027F0 */ fopAc_ac_c* field_0x27f0;
    /* 0x027F4 */ fopAc_ac_c* field_0x27f4;
    /* 0x027F8 */ fopAc_ac_c* field_0x27f8;
    /* 0x027FC */ fopAc_ac_c* field_0x27fc;
    /* 0x02800 */ daTagMmsg_c* mMidnaMsg;
    /* 0x02804 */ fopAc_ac_c* field_0x2804;
    /* 0x02808 */ daScex_c* mpScnChg;
    /* 0x0280C */ daPy_actorKeep_c field_0x280c;
    /* 0x02814 */ daPy_actorKeep_c mRideAcKeep;
    /* 0x0281C */ daPy_actorKeep_c field_0x281c;
    /* 0x02824 */ daPy_actorKeep_c mItemAcKeep;  // name might be wrong
    /* 0x0282C */ daPy_actorKeep_c mGrabItemAcKeep;
    /* 0x02834 */ daPy_actorKeep_c mThrowBoomerangAcKeep;
    /* 0x0283C */ daPy_actorKeep_c mCopyRodAcKeep;
    /* 0x02844 */ daPy_actorKeep_c field_0x2844;
    /* 0x0284C */ daPy_actorKeep_c mHookTargetAcKeep;
    /* 0x02854 */ daPy_actorKeep_c mCargoCarryAcKeep;
    /* 0x0285C */ daPy_actorKeep_c field_0x285c;
    /* 0x02864 */ dMsgFlow_c mMsgFlow;
    /* 0x028B0 */ fpc_ProcID mShieldArrowIDs[16];
    /* 0x028F0 */ fpc_ProcID mMsgClassID;
    /* 0x028F4 */ int mAtnActorID;
    /* 0x028F8 */ fpc_ProcID field_0x28f8;
    /* 0x028FC */ fpc_ProcID field_0x28fc;
    /* 0x02900 */ u32 field_0x2900;
    /* 0x02904 */ daAlink_footData_c mFootData1[2];
    /* 0x02A4C */ daAlink_footData_c mFootData2[2];
    /* 0x02B94 */ f32 field_0x2b94;
    /* 0x02B98 */ f32 field_0x2b98;
    /* 0x02B98 */ f32 field_0x2b9c;
    /* 0x02BA0 */ f32 field_0x2ba0;
    /* 0x02BA4 */ f32 field_0x2ba4;
    /* 0x02BA8 */ f32 mSinkShapeOffset;
    /* 0x02BAC */ f32 mAcchCirWallH[3];
    /* 0x02BB8 */ Mtx mInvMtx;
    /* 0x02BE8 */ Mtx field_0x2be8;
    /* 0x02C18 */ Mtx mRootMtx;
    /* 0x02C48 */ Mtx mMagneBootMtx;
    /* 0x02C78 */ Mtx mMagneBootInvMtx;
    /* 0x02CA8 */ Z2CreatureLink mZ2Link;
    /* 0x02D78 */ u8* field_0x2d78;
    /* 0x02D7C */ daPy_frameCtrl_c* field_0x2d7c;
    /* 0x02D80 */ void* field_0x2d80;
    /* 0x02D84 */ Z2WolfHowlMgr mZ2WolfHowlMgr;
    /* 0x02E44 */ dJntCol_c field_0x2e44;
    /* 0x02E54 */ dPaPoF_c field_0x2e54;
    /* 0x02F1C */ dPaPo_c* field_0x2f1c;
    /* 0x02F20 */ dPa_hermiteEcallBack_c field_0x2f20;
    /* 0x02F38 */ dPa_hermiteEcallBack_c field_0x2f38;
    /* 0x02F50 */ const Vec* field_0x2f50;
    /* 0x02F54 */ const Vec* field_0x2f54;
    /* 0x02F58 */ dPath* field_0x2f58;
    /* 0x02F5C */ LIGHT_INFLUENCE field_0x2f5c;
    /* 0x02F7C */ u8 field_0x2f7c[16];
    /* 0x02F8C */ u8 field_0x2f8c;
    /* 0x02F8D */ u8 mItemTrigger;
    /* 0x02F8E */ u8 mItemButton;
    /* 0x02F8F */ u8 field_0x2f8f;
    /* 0x02F90 */ u8 field_0x2f90;
    /* 0x02F91 */ u8 field_0x2f91;
    /* 0x02F92 */ u8 field_0x2f92;
    /* 0x02F93 */ u8 field_0x2f93;
    /* 0x02F94 */ u8 field_0x2f94;
    /* 0x02F95 */ u8 field_0x2f95;
    /* 0x02F96 */ u8 field_0x2f96;
    /* 0x02F97 */ u8 field_0x2f97;
    /* 0x02F98 */ u8 field_0x2f98;
    /* 0x02F99 */ u8 field_0x2f99;
    /* 0x02F9A */ s8 mVoiceReverbIntensity;
    /* 0x02F9B */ u8 mMidnaAnm;
    /* 0x02F9C */ u8 mSelectItemId;
    /* 0x02F9D */ u8 field_0x2f9d;
    /* 0x02F9E */ u8 mEffProc;
    /* 0x02F9F */ u8 field_0x2f9f;
    /* 0x02FA0 */ u8 field_0x2fa0;
    /* 0x02FA1 */ u8 mRunCutComboCount;
    /* 0x02FA2 */ u8 mActiveBombNum;
    /* 0x02FA3 */ u8 field_0x2fa3;
    /* 0x02FA4 */ u8 mRollCrashFlg;
    /* 0x02FA5 */ u8 mPolySound;
    /* 0x02FA6 */ u8 field_0x2fa6;
    /* 0x02FA7 */ u8 field_0x2fa7;
    /* 0x02FA8 */ u8 mGndPolySpecialCode;
    /* 0x02FA9 */ u8 mWolfEyeUpTimer;
    /* 0x02FAA */ u8 mRideStatus;
    /* 0x02FAB */ u8 field_0x2fab;
    /* 0x02FAC */ u8 mExitDirection;
    /* 0x02FAD */ u8 mPeepExitID;
    /* 0x02FAE */ u8 field_0x2fae;
    /* 0x02FAF */ u8 field_0x2faf;
    /* 0x02FB0 */ u8 field_0x2fb0;
    /* 0x02FB1 */ u8 mWolfLockNum;
    /* 0x02FB2 */ u8 mMidnaTalkDelayTimer;
    /* 0x02FB3 */ u8 field_0x2fb3;
    /* 0x02FB4 */ u8 field_0x2fb4;
    /* 0x02FB5 */ u8 mDamageColorTime;
    /* 0x02FB6 */ u8 field_0x2fb6;
    /* 0x02FB7 */ u8 field_0x2fb7;
    /* 0x02FB8 */ u8 field_0x2fb8;
    /* 0x02FB9 */ u8 field_0x2fb9;
    /* 0x02FBA */ u8 mHotspringRecoverTimer;
    /* 0x02FBB */ u8 field_0x2fbb;
    /* 0x02FBC */ u8 field_0x2fbc;
    /* 0x02FBD */ u8 field_0x2fbd;
    /* 0x02FBE */ u8 field_0x2fbe;
    /* 0x02FBF */ u8 mClothesChangeWaitTimer;
    /* 0x02FC0 */ u8 field_0x2fc0;
    /* 0x02FC1 */ u8 field_0x2fc1;
    /* 0x02FC2 */ u8 field_0x2fc2;
    /* 0x02FC3 */ u8 field_0x2fc3;
    /* 0x02FC4 */ u8 field_0x2fc4;
    /* 0x02FC5 */ u8 field_0x2fc5;
    /* 0x02FC6 */ u8 field_0x2fc6;
    /* 0x02FC7 */ u8 field_0x2fc7;
    /* 0x02FC8 */ u8 field_0x2fc8;
    /* 0x02FC9 */ u8 field_0x2fc9;
    /* 0x02FCA */ u8 field_0x2fca;
    /* 0x02FCB */ u8 field_0x2fcb;
    /* 0x02FCC */ u8 field_0x2fcc;
    /* 0x02FCD */ u8 field_0x2fcd;
    /* 0x02FCE */ u8 field_0x2fce;
    /* 0x02FCF */ u8 field_0x2fcf;
    /* 0x02FD0 */ u8 field_0x2fd0;
    /* 0x02FD1 */ u8 mShieldChangeWaitTimer;
    /* 0x02FD2 */ u8 field_0x2fd2;
    /* 0x02FD3 */ u8 field_0x2fd3;
    /* 0x02FD4 */ u8 field_0x2fd4;
    /* 0x02FD5 */ u8 field_0x2fd5;
    /* 0x02FD6 */ u8 mSwordChangeWaitTimer;
    /* 0x02FD7 */ u8 field_0x2fd7;
    /* 0x02FD8 */ u8 field_0x2fd8;
    /* 0x02FD9 */ u8 field_0x2fd9[3];
    /* 0x02FDC */ u16 mEquipItem;
    /* 0x02FDE */ u16 field_0x2fde;
    /* 0x02FE0 */ s16 mStickAngle;
    /* 0x02FE2 */ s16 field_0x2fe2;  // related to current stick angle
    /* 0x02FE4 */ s16 field_0x2fe4;
    /* 0x02FE6 */ s16 field_0x2fe6;
    /* 0x02FE8 */ u16 mProcID;
    /* 0x02FEA */ u16 field_0x2fea;
    /* 0x02FEC */ s16 field_0x2fec;
    /* 0x02FEE */ s16 field_0x2fee;
    /* 0x02FF0 */ s16 field_0x2ff0;
    /* 0x02FF2 */ s16 field_0x2ff2;
    /* 0x02FF4 */ s16 field_0x2ff4;
    /* 0x02FF6 */ s16 field_0x2ff6;
    /* 0x02FF8 */ s16 field_0x2ff8;
    /* 0x02FFA */ s16 field_0x2ffa;
    /* 0x02FFC */ s16 field_0x2ffc;
    /* 0x02FFE */ s16 field_0x2ffe;
    /* 0x03000 */ s16 field_0x3000;
    /* 0x03002 */ s16 field_0x3002;
    /* 0x03004 */ s16 field_0x3004;
    /* 0x03006 */ s16 mIceDamageWaitTimer;
    // `mProcVar`'s are variables that are context dependent for each `PROC` action.
    // (The exact setup may need to be simplified later)
    union {
        s16 field_0x3008;
        s16 mHowlExitID;
        s16 mIceFreezeTimer;
    } /* 0x03008 */ mProcVar0;
    union {
        s16 field_0x300a;
        s16 mBoardSwordChargeTime;
        s16 mDigActorName;
    } /* 0x0300A */ mProcVar1;
    union {
        s16 field_0x300c;
        s16 mPuzzleAimAngle;
        s16 mDigType;
    } /* 0x0300C */ mProcVar2;
    union {
        s16 field_0x300e;
        s16 mDigChangeArea;
    } /* 0x0300E */ mProcVar3;
    union {
        s16 field_0x3010;
        s16 mDigExitID;
    } /* 0x03010 */ mProcVar4;
    union {
        s16 field_0x3012;
    } /* 0x03012 */ mProcVar5;
    /* 0x03014 */ s16 mFallVoiceInit;
    /* 0x03016 */ u8 field_0x3016[2];
    union {
        s16 field_0x3018;
        s16 mBottleItemHealAmount;
    } /* 0x03018 */ mItemVar0;
    /* 0x0301A */ s16 mItemMode;
    /* 0x0301C */ s16 field_0x301c;
    /* 0x0301E */ s16 field_0x301e;
    /* 0x03020 */ s16 field_0x3020;
    /* 0x03022 */ s16 field_0x3022;
    /* 0x03024 */ s16 field_0x3024;
    /* 0x03026 */ s16 field_0x3026;
    /* 0x03028 */ s16 field_0x3028;
    /* 0x0302A */ u8 field_0x302a[2];
    /* 0x0302C */ s16 field_0x302c[10];
    /* 0x03040 */ s16 field_0x3040[10];
    /* 0x03054 */ s16 field_0x3054[3];
    /* 0x0305A */ s16 field_0x305a[3];
    /* 0x03060 */ s16 field_0x3060;
    /* 0x03062 */ s16 field_0x3062;
    /* 0x03064 */ s16 field_0x3064;
    /* 0x03066 */ s16 field_0x3066[3];
    /* 0x0306C */ s16 field_0x306c;
    /* 0x0306E */ s16 field_0x306e;
    /* 0x03070 */ s16 field_0x3070;
    /* 0x03072 */ s16 field_0x3072;
    /* 0x03074 */ s16 field_0x3074;
    /* 0x03076 */ s16 field_0x3076;
    /* 0x03078 */ s16 field_0x3078;
    /* 0x0307A */ s16 mStickSpinTimer;
    /* 0x0307C */ s16 mPrevStickAngle;
    /* 0x0307E */ s16 field_0x307e;
    /* 0x03080 */ s16 field_0x3080;
    /* 0x03082 */ s16 field_0x3082;
    /* 0x03084 */ u16 field_0x3084;
    /* 0x03086 */ u16 field_0x3086;
    /* 0x03088 */ s16 field_0x3088;
    /* 0x0308A */ s16 field_0x308a;
    /* 0x0308C */ s16 field_0x308c;
    /* 0x0308E */ s16 mFastShotTime;
    /* 0x03090 */ s16 field_0x3090;
    /* 0x03092 */ s16 field_0x3092;
    /* 0x03094 */ s16 field_0x3094[3];
    /* 0x0309A */ s16 field_0x309a[3];
    /* 0x030A0 */ s16 field_0x30a0;
    /* 0x030A2 */ s16 field_0x30a2;
    /* 0x030A4 */ s16 field_0x30a4;
    /* 0x030A6 */ s16 field_0x30a6;
    /* 0x030A8 */ u16 field_0x30a8;
    /* 0x030AA */ u16 field_0x30aa;
    /* 0x030AC */ s16 mWolfEyeUp;
    /* 0x030AE */ s16 field_0x30ae;
    /* 0x030B0 */ s16 field_0x30b0;
    /* 0x030B2 */ s16 field_0x30b2;
    /* 0x030B4 */ u16 field_0x30b4;
    /* 0x030B6 */ u16 field_0x30b6;
    /* 0x030B8 */ u16 field_0x30b8;
    /* 0x030BA */ u16 field_0x30ba;
    /* 0x030BC */ u16 field_0x30bc;
    /* 0x030BE */ u16 field_0x30be;
    /* 0x030C0 */ u16 field_0x30c0;
    /* 0x030C2 */ u16 field_0x30c2;
    /* 0x030C4 */ u16 field_0x30c4;
    /* 0x030C6 */ u16 field_0x30c6;
    /* 0x030C8 */ s16 field_0x30c8;
    /* 0x030CA */ s16 field_0x30ca;
    /* 0x030CC */ s16 field_0x30cc;
    /* 0x030CE */ u16 mKeepItem;
    /* 0x030D0 */ s16 field_0x30d0;
    /* 0x030D2 */ s16 field_0x30d2;
    /* 0x030D4 */ s16 field_0x30d4;
    /* 0x030D6 */ s16 field_0x30d6;
    /* 0x030D8 */ u8 field_0x30d8[0x14];
    /* 0x030EC */ s16 field_0x30ec;
    /* 0x030EE */ s16 field_0x30ee;
    /* 0x030F0 */ u16 field_0x30f0;
    /* 0x030F2 */ u8 field_0x30f2[2];
    /* 0x030F4 */ s16 mSwordFlourishTimer;
    /* 0x030F6 */ s16 field_0x30f6;
    /* 0x030F8 */ s16 field_0x30f8;
    /* 0x030FA */ s16 field_0x30fa;
    /* 0x030FC */ u16 field_0x30fc;
    /* 0x030FE */ u16 field_0x30fe;
    /* 0x03100 */ s16 field_0x3100;
    /* 0x03102 */ s16 field_0x3102;
    /* 0x03104 */ s16 field_0x3104;
    /* 0x03106 */ u16 field_0x3106;
    /* 0x03108 */ s16 field_0x3108;
    /* 0x0310A */ s16 field_0x310a;
    /* 0x0310C */ s16 field_0x310c;
    /* 0x0310E */ s16 field_0x310e;
    /* 0x03110 */ s16 field_0x3110;
    /* 0x03112 */ u16 mExitID;
    /* 0x03114 */ s16 field_0x3114;
    /* 0x03116 */ s16 field_0x3116;
    /* 0x03118 */ s16 field_0x3118;
    /* 0x0311A */ s16 field_0x311a;
    /* 0x0311C */ s16 field_0x311c;
    /* 0x0311E */ s16 field_0x311e;
    /* 0x03120 */ u16 mMidnaMsgNum;
    /* 0x03122 */ s16 field_0x3122;
    /* 0x03124 */ s16 field_0x3124;
    /* 0x03126 */ s16 field_0x3126;
    /* 0x03128 */ s16 field_0x3128;
    /* 0x0312A */ csXyz field_0x312a[2];
    /* 0x03136 */ csXyz field_0x3136[2];
    /* 0x03142 */ csXyz field_0x3142[4];
    /* 0x0315A */ csXyz mFishingArm1Angle;
    /* 0x03160 */ csXyz field_0x3160;
    /* 0x03166 */ csXyz field_0x3166;
    /* 0x0316C */ csXyz field_0x316c;
    /* 0x03172 */ u8 field_0x3172[2];
    /* 0x03174 */ int field_0x3174;
    /* 0x03178 */ int field_0x3178;
    /* 0x0317C */ int field_0x317c;
    /* 0x03180 */ int field_0x3180;
    /* 0x03184 */ int field_0x3184;
    /* 0x03188 */ int field_0x3188;
    /* 0x0318C */ int field_0x318c;
    /* 0x03190 */ int field_0x3190;
    /* 0x03194 */ int field_0x3194;
    /* 0x03198 */ int field_0x3198;
    /* 0x0319C */ int field_0x319c;
    /* 0x031A0 */ u32 mModeFlg;
    /* 0x031A4 */ int field_0x31a4;
    /* 0x031A8 */ u32 field_0x31a8[2];
    /* 0x031B0 */ u32 field_0x31b0[3];
    /* 0x031BC */ u32 field_0x31bc;
    /* 0x031C0 */ u32 field_0x31c0;
    /* 0x031C4 */ u32 field_0x31c4;
    /* 0x031C8 */ u32 field_0x31c8;
    /* 0x031CC */ u32 field_0x31cc;
    /* 0x031D0 */ u32 field_0x31d0;
    /* 0x031D4 */ u32 field_0x31d4;
    /* 0x031D8 */ u32 field_0x31d8[3];
    /* 0x031E4 */ u32 field_0x31e4;
    /* 0x031E8 */ u32 field_0x31e8[4];
    /* 0x031F8 */ u32 field_0x31f8;
    /* 0x031FC */ u32 field_0x31fc;
    /* 0x03200 */ u32 field_0x3200;
    /* 0x03204 */ u32 field_0x3204[6];
    /* 0x0321C */ u32 field_0x321c;
    /* 0x03220 */ u32 field_0x3220;
    /* 0x03224 */ u32 field_0x3224;
    /* 0x03228 */ u32 field_0x3228[2][3];
    /* 0x03240 */ u32 field_0x3240[6];
    /* 0x03258 */ u32 field_0x3258;
    /* 0x0325C */ u32 field_0x325c;
    /* 0x03260 */ u32 field_0x3260[2];
    /* 0x03268 */ u32 field_0x3268;
    /* 0x0326C */ u32 field_0x326c[4];
    /* 0x0327C */ u32 field_0x327c[3];
    /* 0x03288 */ u32 field_0x3288;
    /* 0x0328C */ u32 field_0x328c;
    /* 0x03290 */ u32 field_0x3290;
    /* 0x03294 */ u32 field_0x3294;
    /* 0x03298 */ u32 field_0x3298[2];
    /* 0x032A0 */ J3DGXColorS10 field_0x32a0[2];
    /* 0x032B0 */ J3DGXColorS10 field_0x32b0[2];
    /* 0x032C0 */ s16 field_0x32c0[2];
    /* 0x032C4 */ u16 field_0x32c4[2];
    /* 0x032C8 */ u32 field_0x32c8;
    /* 0x032CC */ u32 field_0x32cc;
    /* 0x032D0 */ u32 field_0x32d0;
    /* 0x032D4 */ u32 field_0x32d4;
    /* 0x032D8 */ firePointEff_c field_0x32d8[4];
    /* 0x03398 */ f32 mNormalSpeed;
    /* 0x0339C */ f32 mSpeedModifier;
    /* 0x033A0 */ f32 field_0x33a0;
    /* 0x033A4 */ f32 field_0x33a4;
    /* 0x033A8 */ f32 field_0x33a8;
    /* 0x033AC */ f32 field_0x33ac;
    /* 0x033B0 */ f32 field_0x33b0;
    /* 0x033B4 */ f32 mWaterY;
    /* 0x033B8 */ f32 field_0x33b8;
    /* 0x033BC */ f32 field_0x33bc;
    /* 0x033C0 */ f32 field_0x33c0;
    /* 0x033C4 */ f32 mFallHeight;
    /* 0x033C8 */ f32 field_0x33c8;
    /* 0x033CC */ f32 field_0x33cc;
    /* 0x033D0 */ f32 field_0x33d0;
    /* 0x033D4 */ f32 field_0x33d4;
    /* 0x033D8 */ f32 field_0x33d8;
    /* 0x033DC */ f32 field_0x33dc;
    /* 0x033E0 */ f32 field_0x33e0;
    /* 0x033E4 */ f32 field_0x33e4;
    /* 0x033E8 */ f32 field_0x33e8;
    /* 0x033EC */ f32 field_0x33ec;
    /* 0x033F0 */ f32 field_0x33f0;
    /* 0x033F4 */ f32 field_0x33f4;
    /* 0x033F8 */ f32 field_0x33f8;
    /* 0x033FC */ f32 field_0x33fc;
    /* 0x03400 */ f32 field_0x3400;
    /* 0x03404 */ f32 field_0x3404;
    /* 0x03408 */ f32 field_0x3408;
    /* 0x0340C */ f32 field_0x340c;
    /* 0x03410 */ f32 field_0x3410;
    /* 0x03414 */ f32 field_0x3414;
    /* 0x03418 */ f32 field_0x3418;
    /* 0x0341C */ f32 field_0x341c;
    /* 0x03420 */ f32 field_0x3420;
    /* 0x03424 */ f32 field_0x3424;
    /* 0x03428 */ f32 field_0x3428;
    /* 0x0342C */ f32 field_0x342c;
    /* 0x03430 */ f32 field_0x3430;
    /* 0x03434 */ f32 mHeavySpeedMultiplier;
    /* 0x03438 */ f32 field_0x3438;
    /* 0x0343C */ f32 field_0x343c;
    /* 0x03440 */ f32 field_0x3440;
    /* 0x03444 */ f32 field_0x3444;
    /* 0x03448 */ f32 field_0x3448;
    /* 0x0344C */ f32 field_0x344c;
    /* 0x03450 */ u8 field_0x3450[4];
    /* 0x03454 */ f32 field_0x3454;
    /* 0x03458 */ f32 field_0x3458;
    /* 0x0345C */ f32 field_0x345c;
    /* 0x03460 */ f32 field_0x3460;
    /* 0x03464 */ f32 field_0x3464;
    /* 0x03468 */ f32 field_0x3468;
    /* 0x0346C */ f32 field_0x346c;
    /* 0x03470 */ f32 field_0x3470;
    /* 0x03474 */ f32 mSwordUpColorIntensity;
    /* 0x03478 */ f32 field_0x3478;
    /* 0x0347C */ f32 field_0x347c;
    /* 0x03480 */ f32 field_0x3480;
    /* 0x03484 */ f32 field_0x3484;
    /* 0x03488 */ f32 field_0x3488;
    /* 0x0348C */ f32 field_0x348c;
    /* 0x03490 */ f32 mSearchBallScale;
    /* 0x03494 */ f32 field_0x3494;
    /* 0x03498 */ cXyz field_0x3498;
    /* 0x034A4 */ cXyz field_0x34a4;
    /* 0x034B0 */ cXyz field_0x34b0;
    /* 0x034BC */ cXyz field_0x34bc;
    /* 0x034C8 */ cXyz field_0x34c8;
    /* 0x034D4 */ cXyz field_0x34d4;
    /* 0x034E0 */ cXyz field_0x34e0;
    /* 0x034EC */ cXyz field_0x34ec;
    /* 0x034F8 */ cXyz mLastJumpPos;
    /* 0x03504 */ cXyz field_0x3504;
    /* 0x03510 */ cXyz field_0x3510;
    /* 0x0351C */ cXyz field_0x351c;
    /* 0x03528 */ cXyz field_0x3528;
    /* 0x03534 */ cXyz field_0x3534;
    /* 0x03540 */ cXyz field_0x3540;
    /* 0x0354C */ cXyz field_0x354c[4];
    /* 0x0357C */ cXyz mLookPosFromOut;
    /* 0x03588 */ cXyz field_0x3588;
    /* 0x03594 */ cXyz field_0x3594;
    /* 0x035A0 */ cXyz field_0x35a0;
    /* 0x035AC */ cXyz mWindSpeed;
    /* 0x035B8 */ cXyz field_0x35b8;
    /* 0x035C4 */ cXyz field_0x35c4;
    /* 0x035D0 */ cXyz field_0x35d0;
    /* 0x035DC */ cXyz field_0x35dc;
    /* 0x035E8 */ cXyz field_0x35e8;
    /* 0x035F4 */ cXyz mMidnaAtnPos;
    /* 0x03600 */ cXyz mMidnaHairAtnPos;
    /* 0x0360C */ cXyz mKandelaarFlamePos;
    /* 0x03618 */ cXyz field_0x3618;
    /* 0x03624 */ cXyz field_0x3624;
    /* 0x03630 */ cXyz field_0x3630;
    /* 0x0363C */ cXyz field_0x363c[4];
    /* 0x0366C */ cXyz field_0x366c[4];
    /* 0x0369C */ cXyz field_0x369c;
    /* 0x036A8 */ cXyz mMagneBootsTopVec;
    /* 0x036B4 */ cXyz field_0x36b4;
    /* 0x036C0 */ cXyz field_0x36c0[4];
    /* 0x036F0 */ cXyz field_0x36f0[4];
    /* 0x03720 */ cXyz field_0x3720;
    /* 0x0372C */ cXyz field_0x372c;
    /* 0x03738 */ cXyz field_0x3738;
    /* 0x03744 */ cXyz field_0x3744;
    /* 0x03750 */ cXyz field_0x3750;
    /* 0x0375C */ cXyz field_0x375c;
    /* 0x03768 */ cXyz field_0x3768;
    /* 0x03774 */ cXyz mForcePutPos;
    /* 0x03780 */ cXyz field_0x3780;
    /* 0x0378C */ cXyz field_0x378c;
    /* 0x03798 */ cXyz field_0x3798;
    /* 0x037A4 */ cXyz field_0x37a4;
    /* 0x037B0 */ cXyz field_0x37b0[2];
    /* 0x037C8 */ cXyz field_0x37c8;
    /* 0x037D4 */ cXyz field_0x37d4;
    /* 0x037E0 */ cXyz mHeldItemRootPos;
    /* 0x037EC */ cXyz mHookshotTopPos;
    /* 0x037F8 */ cXyz mIronBallCenterPos;
    /* 0x03804 */ cXyz mIronBallBgChkPos;
    /* 0x03810 */ cXyz field_0x3810;
    /* 0x0381C */ cXyz field_0x381c;
    /* 0x03828 */ cXyz field_0x3828;
    /* 0x03834 */ cXyz field_0x3834;
    /* 0x03840 */ cXyz* mIronBallChainPos;
    /* 0x03844 */ csXyz* mIronBallChainAngle;
    /* 0x03848 */ cXyz* field_0x3848;
    /* 0x0384C */ cXyz* field_0x384c;
    /* 0x03850 */ daAlink_procFunc mpProcFunc;
};  // Size: 0x385C

static bool daAlink_checkLightBallA(fopAc_ac_c* p_actor);
static bool daAlink_checkLightBallB(fopAc_ac_c* p_actor);
static fopAc_ac_c* daAlink_searchCoach(fopAc_ac_c* param_0, void* param_1);

struct daAlink_cutParamTbl {
    /* 0x0 */ daAlink_c::daAlink_ANM m_anmID;
    /* 0x4 */ int field_0x4;
    /* 0x8 */ u8 m_cutType;
    /* 0x9 */ u8 m_atSe;
    /* 0xA */ u8 field_0xa;
    /* 0xB */ u8 field_0xb;
    /* 0xC */ f32 m_morf;
};  // Size: 0x10

struct daAlink_cutHorseParamTbl {
    /* 0x0 */ daAlink_c::daAlink_FTANM m_faceanm;
    /* 0x4 */ u16 m_upperAnm;
    /* 0x6 */ u16 m_faceBtk;
    /* 0x8 */ u8 field_0x8;
    /* 0x9 */ u8 field_0x9;
    /* 0xA */ u8 m_cutType;
};  // Size: 0xC

struct daAlinkHIO_anm_c {
    /* 0x00 */ s16 mEndFrame;
    /* 0x04 */ f32 mSpeed;
    /* 0x08 */ f32 mStartFrame;
    /* 0x0C */ f32 mInterpolation;
    /* 0x10 */ f32 mCancelFrame;
};  // size: 0x14

struct daAlinkHIO_basic_c1 {
    /* 0x00 */ bool mOneHitKill;
    /* 0x02 */ s16 mNeckMaxHorizontal;
    /* 0x04 */ s16 mNeckMaxUp;
    /* 0x06 */ s16 mNeckMaxDown;
    /* 0x08 */ s16 field_0x08;
    /* 0x0A */ s16 mHotspringRecoverTime;
    /* 0x0C */ s16 mWiiCamSpeedV;
    /* 0x0E */ s16 mWiiCamSpeedH;
    /* 0x10 */ s16 mTransformBlockFarAngle;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 mAnmBlendFactor;
    /* 0x1C */ f32 mWaitTurnSpeed;
    /* 0x20 */ f32 mStandDefenseBlend;
    /* 0x24 */ f32 mWaterSurfaceEffectHeight;
    /* 0x28 */ f32 mWolfWaterSurfaceEffectHeight;
    /* 0x2C */ f32 mMaxWindInfluenceDist;
    /* 0x30 */ f32 mNoWindInfluenceDist;
    /* 0x34 */ f32 mMaxWindSpeed;
    /* 0x38 */ f32 mLavaDeathDepth;
    /* 0x3C */ f32 mLinkWolfTransformSpeed;
    /* 0x40 */ f32 mWolfLinkTransformSpeed;
    /* 0x44 */ f32 mIndoorSpeedFactor;
    /* 0x48 */ f32 mSandSinkSpeed;
    /* 0x4C */ f32 mSandSurfaceSpeed;
    /* 0x50 */ f32 mTransformBlockNearDis;
    /* 0x54 */ f32 mTransformBlockFarDis;
};

class daAlinkHIO_basic_c0 {
public:
    static daAlinkHIO_basic_c1 const m;
};

class daAlinkHIO_backJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mBackflipAnm;
    /* 0x14 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x28 */ f32 mBackflipSpeedH;
    /* 0x2C */ f32 mBackflipSpeedV;
    /* 0x30 */ f32 mFallHeight;
    /* 0x34 */ f32 mFallInterpolation;
};  // Size: 0x38

class daAlinkHIO_backJump_c0 {
public:
    static daAlinkHIO_backJump_c1 const m;
};

class daAlinkHIO_autoJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mJumpAnm;
    /* 0x14 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x28 */ daAlinkHIO_anm_c mDiveAnm;
    /* 0x3C */ daAlinkHIO_anm_c mDiveConnectAnm;
    /* 0x50 */ bool mAlwaysMaxSpeedJump;
    /* 0x52 */ s16 mJumpAngle;
    /* 0x54 */ s16 mSpinJumpRotateSpeed;
    /* 0x56 */ s16 mSpinJumpLandStopTime;
    /* 0x58 */ s16 mCuccoJumpAngle;
    /* 0x5C */ f32 mJumpSpeedLimit;
    /* 0x60 */ f32 mMinJumpSpeed;
    /* 0x64 */ f32 mJumpSpeedRate;
    /* 0x68 */ f32 mAirborneInterpolation;
    /* 0x6C */ f32 mJumpFallInterpolation;
    /* 0x70 */ f32 mFallInterpolation;
    /* 0x74 */ f32 mGravity;
    /* 0x78 */ f32 mMaxFallSpeed;
    /* 0x7C */ f32 mMaxJumpSpeed;
    /* 0x80 */ f32 mSpinJumpInterpolation;
    /* 0x84 */ f32 mSpinJumpFallInterpolation;
    /* 0x88 */ f32 mSpinJumpAddSpeed;
    /* 0x8C */ f32 mSpinJumpAccel;
    /* 0x90 */ f32 mHangHeightLimit;
    /* 0x94 */ f32 mGrabHeightLimit;
    /* 0x98 */ f32 mOoccooJumpMaxSpeed;
    /* 0x9C */ f32 mDiveSpeedV;
    /* 0xA0 */ f32 mDiveSpeedH;
    /* 0xA4 */ f32 mDiveGravity;
    /* 0xA8 */ f32 mCuccoJumpMaxSpeed;
    /* 0xAC */ f32 mCuccoFallMaxSpeed;
    /* 0xB0 */ f32 mCuccoStartSpeed;
};  // size = 0xB4

class daAlinkHIO_autoJump_c0 {
public:
    static daAlinkHIO_autoJump_c1 const m;
};

class daAlinkHIO_smallJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mSmallJumpAnm;
    /* 0x14 */ daAlinkHIO_anm_c mStepClimbAnm;
    /* 0x28 */ daAlinkHIO_anm_c mStepLandAnm;
    /* 0x3C */ f32 mSpeedH;
    /* 0x40 */ f32 mTargetHeightOffset;
    /* 0x44 */ f32 mFallInterpolation;
};  // Size: 0x48

class daAlinkHIO_smallJump_c0 {
public:
    static daAlinkHIO_smallJump_c1 const m;
};

class daAlinkHIO_cut_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mEquipAnm;
    /* 0x14 */ daAlinkHIO_anm_c mUnequipAnm;
    /* 0x28 */ daAlinkHIO_anm_c mRecoilAnm;
    /* 0x3C */ daAlinkHIO_anm_c mStabAnm;
    /* 0x50 */ bool mForceHitCombo;
    /* 0x52 */ s16 mComboDuration;
    /* 0x54 */ s16 mBlurAlpha;
    /* 0x56 */ s16 mNormalSwingDuration;
    /* 0x58 */ s16 mDashBlurAlpha;
    /* 0x5A */ s16 mUnkTime;  // might be related to flourish
    /* 0x5C */ s16 mFlourishTime;
    /* 0x5E */ s16 mUnkBodyDownwards;  // ?
    /* 0x60 */ s16 mUnkBodyUpwards;    // ?
    /* 0x62 */ s16 mSpinSlashWait;     // ? maybe related to wii?
    /* 0x64 */ f32 mRecoilSpeed;
    /* 0x68 */ f32 mRecoilDeceleration;
    /* 0x6C */ f32 mFlourishAnmSpeed;
    /* 0x70 */ f32 mFlourishEndAnmSpeed;
    /* 0x74 */ f32 mSwordLength;
    /* 0x78 */ f32 mSwordRadius;
    /* 0x7C */ f32 mSwordLengthHorseback;
    /* 0x80 */ f32 mSwordRadiusHorseback;
    /* 0x84 */ f32 mRunCutLength;
    /* 0x88 */ f32 mRunCutRadius;
    /* 0x8C */ f32 mFastUnequipAnmSpeed;
    /* 0x90 */ f32 mSwordLengthHorsebackFight;
    /* 0x94 */ f32 mSwordRadiusHorsebackFight;
    /* 0x98 */ f32 mFlourishControlStartFrame;
};  // Size: 0x9C

class daAlinkHIO_cut_c0 {
public:
    static daAlinkHIO_cut_c1 const m;
};

class daAlinkHIO_cutJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x14 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x28 */ f32 mBaseJumpSpeedH;
    /* 0x2C */ f32 mBaseJumpSpeedV;
    /* 0x30 */ f32 mAirJumpSpeedH;
    /* 0x34 */ f32 mAirJumpSpeedV;
    /* 0x38 */ f32 mStartAttackFrame;
    /* 0x3C */ f32 mEndAttackFrame;
    /* 0x40 */ f32 mJumpSpinDelay;
};  // Size: 0x44

class daAlinkHIO_cutJump_c0 {
public:
    static daAlinkHIO_cutJump_c1 const m;
};

class daAlinkHIO_cutLargeJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mChargeAnm;
    /* 0x14 */ daAlinkHIO_anm_c mChargeMoveAnm;
    /* 0x28 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x3C */ daAlinkHIO_anm_c mLandAnm;
    /* 0x50 */ f32 mCutSpeedH;
    /* 0x54 */ f32 mCutSpeedV;
    /* 0x58 */ f32 mJumpAttackStartFrame;
    /* 0x5C */ f32 mJumpAttackEndFrame;
    /* 0x60 */ f32 mCutInitFrame;
    /* 0x64 */ f32 mLandAttackInitFrame;
    /* 0x68 */ f32 mLandAttackEndFrame;
    /* 0x6C */ f32 mLandAttackRadius;
    /* 0x70 */ f32 mSpinSlashCheckFrame;
};  // Size: 0x74

class daAlinkHIO_cutLargeJump_c0 {
public:
    static daAlinkHIO_cutLargeJump_c1 const m;
};

class daAlinkHIO_cutNormal_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x14 */ f32 mSpeed;
    /* 0x18 */ f32 mAttackStartFrame;
    /* 0x1C */ f32 mAttackEndFrame;
};  // Size: 0x20

class daAlinkHIO_cutNmV_c0 {
public:
    static daAlinkHIO_cutNormal_c1 const m;
};

class daAlinkHIO_cutNmL_c0 {
public:
    static daAlinkHIO_cutNormal_c1 const m;
};

class daAlinkHIO_cutNmR_c0 {
public:
    static daAlinkHIO_cutNormal_c1 const m;
};

class daAlinkHIO_cutNmSL_c0 {
public:
    static daAlinkHIO_cutNormal_c1 const m;
};

class daAlinkHIO_cutNmSR_c0 {
public:
    static daAlinkHIO_cutNormal_c1 const m;
};

class daAlinkHIO_cutFinish_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x14 */ s16 mStopTime;
    /* 0x16 */ s16 mComboStopTime;
    /* 0x18 */ f32 mSpeed;
    /* 0x1C */ f32 mAttackStartFrame;
    /* 0x20 */ f32 mAttackEndFrame;
    /* 0x24 */ f32 mComboCheckFrame;
    /* 0x28 */ f32 mComboStartFrame;
};  // Size: 0x2C

class daAlinkHIO_cutFnL_c0 {
public:
    static daAlinkHIO_cutFinish_c1 const m;
};

class daAlinkHIO_cutFnV_c0 {
public:
    static daAlinkHIO_cutFinish_c1 const m;
};

class daAlinkHIO_cutFnS_c0 {
public:
    static daAlinkHIO_cutFinish_c1 const m;
};

class daAlinkHIO_cutFnSl_c0 {
public:
    static daAlinkHIO_cutFinish_c1 const m;
};

class daAlinkHIO_cutFnSm_c0 {
public:
    static daAlinkHIO_cutFinish_c1 const m;
};

class daAlinkHIO_cutFnR_c0 {
public:
    static daAlinkHIO_cutFinish_c1 const m;
};

class daAlinkHIO_cutFnJU_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x14 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x28 */ s16 mStopTime;
    /* 0x2A */ s16 mComboStopTime;
    /* 0x2C */ f32 mSpeedH;
    /* 0x30 */ f32 mSpeedV;
    /* 0x34 */ f32 mAttackStartFrame;
    /* 0x38 */ f32 mAttackEndFrame;
    /* 0x3C */ f32 mComboCheckFrame;
    /* 0x40 */ f32 mComboStartFrame;
    /* 0x44 */ f32 mFallHeight;
    /* 0x48 */ f32 mFallInterpolation;
    /* 0x4C */ f32 mAttackRadius;
    /* 0x50 */ f32 mAttackOffset;
};  // Size: 0x54

class daAlinkHIO_cutFnJU_c0 {
public:
    static daAlinkHIO_cutFnJU_c1 const m;
};

class daAlinkHIO_cutTurn_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mRightTurnAnm;
    /* 0x14 */ daAlinkHIO_anm_c mChargeAnm;
    /* 0x28 */ daAlinkHIO_anm_c mLeftTurnAnm;
    /* 0x3C */ s16 mStopTime;
    /* 0x3E */ s16 field_0x3E;
    /* 0x40 */ f32 mRightTurnInputStartFrame;
    /* 0x44 */ f32 mRightAttackStartFrame;
    /* 0x48 */ f32 mRightAttackEndFrame;
    /* 0x4C */ f32 mMoveFBAnmSpeed;
    /* 0x50 */ f32 mMoveFBInterpolation;
    /* 0x54 */ f32 mMoveLRAnmSpeed;
    /* 0x58 */ f32 mMoveLRInterpolation;
    /* 0x5C */ f32 mMaxSpeed;
    /* 0x60 */ f32 mChargeMoveAccel;
    /* 0x64 */ f32 mChargeMoveDecel;
    /* 0x68 */ f32 mSpeed;
    /* 0x6C */ f32 mRightComboStartFrame;
    /* 0x70 */ f32 mAttackRadius;
    /* 0x74 */ f32 mLeftTurnInputStartFrame;
    /* 0x78 */ f32 mLeftAttackStartFrame;
    /* 0x7C */ f32 mLeftAttackEndFrame;
    /* 0x80 */ f32 mLeftComboStartFrame;
    /* 0x84 */ f32 mAttackRadiusAccel;
    /* 0x88 */ f32 mLightAttackRadius;
    /* 0x8C */ f32 mLightAttackRadiusAccel;
    /* 0x90 */ f32 mLargeAttackRadius;
    /* 0x94 */ f32 mLargeAttackAccel;
};  // Size: 0x98

class daAlinkHIO_cutTurn_c0 {
public:
    static daAlinkHIO_cutTurn_c1 const m;
};

class daAlinkHIO_hoCut_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x14 */ f32 mAttackStartFrame;
    /* 0x18 */ f32 mAttackEndFrame;
    /* 0x1C */ f32 mAfterCutMorf;
};

class daAlinkHIO_hoCutLA_c0 {
public:
    static daAlinkHIO_hoCut_c1 const m;
};

class daAlinkHIO_hoCutLB_c0 {
public:
    static daAlinkHIO_hoCut_c1 const m;
};

class daAlinkHIO_hoCutRA_c0 {
public:
    static daAlinkHIO_hoCut_c1 const m;
};

class daAlinkHIO_hoCutRB_c0 {
public:
    static daAlinkHIO_hoCut_c1 const m;
};

class daAlinkHIO_hoCutCharge_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ s16 field_0x3C;
    /* 0x3E */ s16 field_0x3E;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
};  // Size: 0x54

class daAlinkHIO_hoCutCharge_c0 {
public:
    static daAlinkHIO_hoCutCharge_c1 const m;
};

class daAlinkHIO_cutDash_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x14 */ f32 mAttackStartFrame;
    /* 0x18 */ f32 mAttackEndFrame;
};  // Size: 0x1C

class daAlinkHIO_cutDaL_c0 {
public:
    static daAlinkHIO_cutDash_c1 const m;
};

class daAlinkHIO_cutDaR_c0 {
public:
    static daAlinkHIO_cutDash_c1 const m;
};

class daAlinkHIO_cutDaCharge_c0 {
public:
    static daAlinkHIO_cutDash_c1 const m;
};

class daAlinkHIO_cutDown_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mJumpAnm;
    /* 0x14 */ daAlinkHIO_anm_c mFallAnm;
    /* 0x28 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x3C */ daAlinkHIO_anm_c mMissAnm;
    /* 0x50 */ daAlinkHIO_anm_c mRecoverAnm;
    /* 0x64 */ s16 mSuccessStopTime;
    /* 0x66 */ s16 mFailStopTime;
    /* 0x68 */ f32 mRecoverSpeedH;
    /* 0x6C */ f32 mRecoverSpeedV;
    /* 0x70 */ f32 mSpeedV;
};  // Size: 0x74

class daAlinkHIO_cutDown_c0 {
public:
    static daAlinkHIO_cutDown_c1 const m;
};

class daAlinkHIO_cutHead_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mJumpAnm;
    /* 0x14 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x28 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x3C */ f32 mGravity;
    /* 0x40 */ f32 mMaxHeight;
    /* 0x44 */ f32 mMaxDistance;
    /* 0x48 */ f32 mAddSpeedV;
    /* 0x4C */ f32 mAddSpeedH;
    /* 0x50 */ f32 mAttackStartFrame;
    /* 0x54 */ f32 mAttackEndFrame;
    /* 0x58 */ f32 mSwordRadius;
    /* 0x5C */ f32 mSwordLength;
};  // Size: 0x60

class daAlinkHIO_cutHead_c0 {
public:
    static daAlinkHIO_cutHead_c1 const m;
};

class daAlinkHIO_guardAttack_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mAttackAnm;
    /* 0x14 */ f32 mSpeed;
    /* 0x18 */ f32 mAttackStartFrame;
    /* 0x1C */ f32 mAttackEndFrame;
    /* 0x20 */ f32 mSlashCheckFrame;
};  // Size: 0x24

class daAlinkHIO_gAtPush_c0 {
public:
    static daAlinkHIO_guardAttack_c1 const m;
};

class daAlinkHIO_gAtKick_c0 {
public:
    static daAlinkHIO_guardAttack_c1 const m;
};

class daAlinkHIO_guard_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mGuardHitAnm;
    /* 0x14 */ daAlinkHIO_anm_c mCrouchGuardHitAnm;  // Unused
    /* 0x28 */ daAlinkHIO_anm_c mRecoilAnm;
    /* 0x3C */ daAlinkHIO_anm_c mGuardBreakAnm;
    /* 0x50 */ s16 mGuardLRAngleMax;
    /* 0x52 */ s16 mGuardFBAngleMax;
    /* 0x54 */ s16 mGuardBodyInterpolation;
    /* 0x56 */ s16 mSmallGuardLRAngleMax;
    /* 0x58 */ s16 mSmallGuardFBAngleMax;
    /* 0x5C */ f32 mCrouchGuardAnmSpeed;       // Unused
    /* 0x60 */ f32 mCrouchGuardInterpolation;  // Unused
    /* 0x64 */ f32 mGuardSpeedNormal;
    /* 0x68 */ f32 mGuardSpeedLarge;
    /* 0x6C */ f32 mGuardSpeedHuge;
    /* 0x70 */ f32 mAttackPosOffset;
    /* 0x74 */ f32 mAttackRadius;
    /* 0x78 */ f32 mMagneGuardSpeed;
    /* 0x7C */ f32 mMagneHvyGuardSpeed;
};  // Size: 0x80

class daAlinkHIO_guard_c0 {
public:
    static daAlinkHIO_guard_c1 const m;
};

class daAlinkHIO_crouch_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCrawlStartAnm;
    /* 0x14 */ daAlinkHIO_anm_c mCrawlEndAnm;
    /* 0x28 */ s16 mCrawlTurnRate;
    /* 0x2A */ s16 mCrawlTurnMax;
    /* 0x2C */ s16 mCrawlTurnMin;
    /* 0x30 */ f32 mCrouchAnmSpeed;
    /* 0x34 */ f32 mCrouchInterpolation;
    /* 0x38 */ f32 mStandInterpolation;
    /* 0x3C */ f32 mCrawlMoveRate;
    /* 0x40 */ f32 mCrawlAnmSpeedMax;
    /* 0x44 */ f32 mCrawlAnmSpeedMin;
    /* 0x48 */ f32 mCrawlInterpolation;
};  // Size: 0x4C

class daAlinkHIO_crouch_c0 {
public:
    static daAlinkHIO_crouch_c1 const m;
};

class daAlinkHIO_move_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mSlideAnm;
    /* 0x14 */ s16 mMaxTurnAngle;
    /* 0x16 */ s16 mMinTurnAngle;
    /* 0x18 */ s16 mTurnAngleRate;
    /* 0x1C */ f32 mWaitAnmSpeed;
    /* 0x20 */ f32 mWalkAnmSpeed;
    /* 0x24 */ f32 mRunAnmSpeed;
    /* 0x28 */ f32 mWalkChangeRate;
    /* 0x2C */ f32 mRunChangeRate;
    /* 0x30 */ f32 mMaxSpeed;
    /* 0x34 */ f32 mAcceleration;
    /* 0x38 */ f32 mDeceleration;
    /* 0x3C */ f32 mSlideThresholdSpeed;  // speed needed to trigger a slide
    /* 0x40 */ f32 mSlideSpeed;
    /* 0x44 */ f32 mSlideDeceleration;
    /* 0x48 */ f32 mFootPositionRatio;
    /* 0x4C */ f32 mWaitBInterpolation;
    /* 0x50 */ f32 mMinWalkRate;
    /* 0x54 */ f32 mMinTiredWalkRate;
};  // Size: 0x58

class daAlinkHIO_move_c0 {
public:
    static daAlinkHIO_move_c1 const m;
};

class daAlinkHIO_sideStep_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mSideJumpAnm;
    /* 0x14 */ daAlinkHIO_anm_c mSideLandAnm;
    /* 0x28 */ daAlinkHIO_anm_c mBackJumpAnm;
    /* 0x3C */ daAlinkHIO_anm_c mBackLandAnm;
    /* 0x50 */ f32 mSideJumpSpeedH;
    /* 0x54 */ f32 mSideJumpSpeedV;
    /* 0x58 */ f32 mBackJumpSpeedH;
    /* 0x5C */ f32 mBackJumpSpeedV;
    /* 0x60 */ f32 mFallHeight;
    /* 0x64 */ f32 mFallInterpolation;
};  // Size: 0x68

class daAlinkHIO_sideStep_c0 {
public:
    static daAlinkHIO_sideStep_c1 const m;
};

class daAlinkHIO_atnMove_c1 {
public:
    /* 0x00 */ s16 mMaxTurnAngle;
    /* 0x02 */ s16 mMinTurnAngle;
    /* 0x04 */ s16 mTurnAngleRate;
    /* 0x08 */ f32 mWaitAnmSpeed;
    /* 0x0C */ f32 mWalkAnmSpeed;
    /* 0x10 */ f32 mRunAnmSpeed;
    /* 0x14 */ f32 mWalkChangeRate;
    /* 0x18 */ f32 mRunChangeRate;
    /* 0x1C */ f32 mMaxSpeed;
    /* 0x20 */ f32 mAcceleration;
    /* 0x24 */ f32 mDeceleration;
    /* 0x28 */ f32 mBackWalkAnmSpeed;
    /* 0x2C */ f32 mBackRunAnmSpeed;
    /* 0x30 */ f32 mBackWalkChangeRate;
    /* 0x34 */ f32 mBackRunChangeRate;
    /* 0x38 */ f32 mMaxBackwardsSpeed;
    /* 0x3C */ f32 mBackAcceleration;
    /* 0x40 */ f32 mBackDeceleration;
    /* 0x44 */ f32 mMinWalkFrame;
    /* 0x48 */ f32 mMinBackWalkFrame;
    /* 0x4C */ f32 mWalkForwardAnmSpeed;
    /* 0x50 */ f32 mRunForwardAnmSpeed;
};  // Size: 0x54

class daAlinkHIO_atnMove_c0 {
public:
    static daAlinkHIO_atnMove_c1 const m;
};

class daAlinkHIO_noActAtnMove_c1 {
public:
    /* 0x00 */ s16 mMaxTurnAngle;
    /* 0x02 */ s16 mMinTurnAngle;
    /* 0x04 */ s16 mTurnAngleRate;
    /* 0x08 */ f32 mWaitAnmSpeed;
    /* 0x0C */ f32 mWalkAnmSpeed;
    /* 0x10 */ f32 mRunAnmSpeed;
    /* 0x14 */ f32 mWalkChangeRate;
    /* 0x18 */ f32 mRunChangeRate;
    /* 0x1C */ f32 mMaxSpeed;
    /* 0x20 */ f32 mAcceleration;
    /* 0x24 */ f32 mDeceleration;
    /* 0x28 */ f32 mBackWalkAnmSpeed;
    /* 0x2C */ f32 mBackRunAnmSpeed;
    /* 0x30 */ f32 mBackWalkChangeRate;
    /* 0x34 */ f32 mBackRunChangeRate;
    /* 0x38 */ f32 mMaxBackwardsSpeed;
    /* 0x3C */ f32 mBackAcceleration;
    /* 0x40 */ f32 mBackDeceleration;
    /* 0x44 */ f32 mMinWalkFrame;
    /* 0x48 */ f32 mMinBackWalkFrame;
    /* 0x4C */ f32 mWalkForwardAnmSpeed;
    /* 0x50 */ f32 mRunForwardAnmSpeed;
};  // Size: 0x54

class daAlinkHIO_noActAtnMove_c0 {
public:
    static daAlinkHIO_noActAtnMove_c1 const m;
};

class daAlinkHIO_wallMove_c1 {
public:
    /* 0x00 */ f32 mMinAnmSpeed;
    /* 0x04 */ f32 mMaxAnmSpeed;
    /* 0x08 */ f32 mInterpolation;
    /* 0x0C */ f32 mMinSpeed;
    /* 0x10 */ f32 mMaxSpeed;
};

class daAlinkHIO_wallMove_c0 {
public:
    static daAlinkHIO_wallMove_c1 const m;
};

class daAlinkHIO_wallFall_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mOneHandGrabAnm;
    /* 0x14 */ daAlinkHIO_anm_c mTwoHandGrabAnm;
};  // Size: 0x28

class daAlinkHIO_wallFall_c0 {
public:
    static daAlinkHIO_wallFall_c1 const m;
};

class daAlinkHIO_wallCatch_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mGrabAAnm;
    /* 0x14 */ daAlinkHIO_anm_c mGrabBAnm;
    /* 0x28 */ daAlinkHIO_anm_c mClimbAnm;
    /* 0x3C */ daAlinkHIO_anm_c mJumpAnm;
    /* 0x50 */ f32 mClimbStartFrame;
};  // Size: 0x54

class daAlinkHIO_wallCatch_c0 {
public:
    static daAlinkHIO_wallCatch_c1 const m;
};

class daAlinkHIO_wallHang_c1 {
public:
    /* 0x00 */ s16 small_jump_input_time;
    /* 0x02 */ s16 grab_input_time;
    /* 0x04 */ f32 auto_walk_height;
    /* 0x08 */ f32 small_jump_height;
    /* 0x0C */ f32 climb_height;
    /* 0x10 */ f32 jump_climb_height;
    /* 0x14 */ f32 jump_hang_height;
    /* 0x18 */ f32 hang_foot_pos_height;
};  // Size: 0x1C

class daAlinkHIO_wallHang_c0 {
public:
    static daAlinkHIO_wallHang_c1 const m;
};

class daAlinkHIO_roofHang_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ s16 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
};  // Size: 0x4C

class daAlinkHIO_roofHang_c0 {
public:
    static daAlinkHIO_roofHang_c1 const m;
};

class daAlinkHIO_turnMove_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mTurnAnm;
    /* 0x14 */ s16 mTurnSpeedRate;
    /* 0x16 */ s16 mMaxTurnSpeed;
    /* 0x18 */ s16 mMinTurnSpeed;
    /* 0x1A */ s16 mMaxHalfTurnSpeed;
    /* 0x1C */ f32 mHalfTurnAnmSpeed;
    /* 0x20 */ f32 mTwirlCutDelayF;
    /* 0x24 */ f32 mSideRollAnmSpeed;
    /* 0x28 */ f32 mSideRollSpeed;
};  // Size: 0x2C

class daAlinkHIO_turnMove_c0 {
public:
    static daAlinkHIO_turnMove_c1 const m;
};

class daAlinkHIO_slide_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mForwardSlideAnm;
    /* 0x14 */ daAlinkHIO_anm_c mBackwardSlideAnm;
    /* 0x28 */ daAlinkHIO_anm_c mForwardLandAnm;
    /* 0x3C */ daAlinkHIO_anm_c mBackwardLandAnm;
    /* 0x50 */ f32 mMaxSpeed;
    /* 0x54 */ f32 mAcceleration;
    /* 0x58 */ f32 mSlideAngle;
    /* 0x5C */ f32 mClimbAngle;
    /* 0x60 */ f32 mClimbAnmMinSpeed;
    /* 0x64 */ f32 mMaxClimbSpeed;
    /* 0x68 */ f32 mLV2MinibossFloorSlideAngle;
    /* 0x6C */ f32 mLV2MinibossFloorWeakSlideAngle;
    /* 0x70 */ f32 mLV2MinibossFloorWeakSlideSpeed;
    /* 0x74 */ f32 mMaxClimbAnmSpeed;
};  // Size: 0x78

class daAlinkHIO_slide_c0 {
public:
    static daAlinkHIO_slide_c1 const m;
};

class daAlinkHIO_frontRoll_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mRollAnm;
    /* 0x14 */ daAlinkHIO_anm_c mCrashAnm;
    /* 0x28 */ daAlinkHIO_anm_c mCrashHitAnm;  // ?
    /* 0x3C */ s16 mCrashAngleThreshold;
    /* 0x3E */ s16 mTurnRate;
    /* 0x40 */ s16 mTurnMaxAngle;
    /* 0x42 */ s16 mTurnMinAngle;
    /* 0x44 */ f32 mInitSpeed;
    /* 0x48 */ f32 mSpeedRate;
    /* 0x4C */ f32 mMinSpeed;
    /* 0x50 */ f32 mCrashSpeedThreshold;
    /* 0x54 */ f32 mCrashInitF;
    /* 0x58 */ f32 mCrashEndF;
    /* 0x5C */ f32 mCrashSpeedH;
    /* 0x60 */ f32 mCrashSpeedV;
    /* 0x64 */ f32 mBootsAttackInitF;
    /* 0x68 */ f32 mBootsAttackEndF;
    /* 0x6C */ f32 mBootsAttackRadius;
};  // Size: 0x70

class daAlinkHIO_frontRoll_c0 {
public:
    static daAlinkHIO_frontRoll_c1 const m;
};

class daAlinkHIO_swim_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mResurfaceAnm;
    /* 0x14 */ daAlinkHIO_anm_c mDiveAnm;
    /* 0x28 */ daAlinkHIO_anm_c mUnderwaterDiveAnm;
    /* 0x3C */ daAlinkHIO_anm_c mDashAnm;
    /* 0x50 */ s16 mTurnRate;
    /* 0x52 */ s16 mTurnMin;
    /* 0x54 */ s16 mTurnMax;
    /* 0x56 */ s16 mUnderwaterTurnRate;
    /* 0x58 */ s16 mUnderwaterTurnMin;
    /* 0x5A */ s16 mUnderwaterTurnMax;
    /* 0x5C */ s16 field_0x5c;  // related to dash
    /* 0x5E */ s16 field_0x5e;  // related to dash
    /* 0x60 */ f32 mInitHeight;
    /* 0x64 */ f32 mResurfaceHeight;
    /* 0x68 */ f32 mMaxForwardSpeed;
    /* 0x6C */ f32 mMaxStrafeSpeed;
    /* 0x70 */ f32 mMaxBackwardSpeed;
    /* 0x74 */ f32 mMaxUnderwaterSpeed;
    /* 0x78 */ f32 mUnderwaterMaxSinkSpeed;
    /* 0x7C */ f32 mAcceleration;
    /* 0x80 */ f32 mDeceleration;
    /* 0x84 */ f32 mMaxSinkSpeed;
    /* 0x88 */ f32 mMaxFloatUpSpeed;
    /* 0x8C */ f32 mBuoyancy;  // ?
    /* 0x90 */ f32 mWaitAnmSpeed;
    /* 0x94 */ f32 mWaitInterpolation;
    /* 0x98 */ f32 mWaitVibrationIntensity;
    /* 0x9C */ f32 mForwardMinAnmSpeed;
    /* 0xA0 */ f32 mForwardMaxAnmSpeed;
    /* 0xA4 */ f32 mStrafeMinAnmSpeed;
    /* 0xA8 */ f32 mStrafeMaxAnmSpeed;
    /* 0xAC */ f32 mBackwardMinAnmSpeed;
    /* 0xB0 */ f32 mBackwardMaxAnmSpeed;
    /* 0xB4 */ f32 mUnderwaterMinAnmSpeed;
    /* 0xB8 */ f32 mUnderwaterMaxAnmSpeed;
    /* 0xBC */ f32 mMoveInterpolation;
    /* 0xC0 */ f32 mClimbHeight;
    /* 0xC4 */ f32 mUnderwaterClimbHeight;
    /* 0xC8 */ f32 mForwardMinSpeed;
    /* 0xCC */ f32 mInitMaxSinkSpeed;
    /* 0xD0 */ f32 mBootsMaxSinkSpeed;
    /* 0xD4 */ f32 mNormalFloatDepth;
    /* 0xD8 */ f32 mZoraFloatDepth;
    /* 0xDC */ f32 mUnderwaterButtonSpeed;
    /* 0xE0 */ f32 mUnderwaterButtonAnmSpeed;  // ?
    /* 0xE4 */ f32 mBootsGravity;
    /* 0xE8 */ f32 mSurfaceSwimSpeedRate;
    /* 0xEC */ f32 mDMaxSpeed;  // ?
    /* 0xF0 */ f32 mDDeceleration;
    /* 0xF4 */ f32 mDMinAnmSpeed;
    /* 0xF8 */ f32 mDMaxAnmSpeed;
};  // Size: 0xFC

class daAlinkHIO_swim_c0 {
public:
    static daAlinkHIO_swim_c1 const m;
};

class daAlinkHIO_ladder_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
};  // Size: 0x70

class daAlinkHIO_ladder_c0 {
public:
    static daAlinkHIO_ladder_c1 const m;
};

class daAlinkHIO_pushpull_c1 {
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x06 */ s16 field_0x6;
    /* 0x08 */ s16 field_0x8;
    /* 0x0A */ s16 field_0xA;
    /* 0x0C */ s16 field_0xC;
    /* 0x0E */ s16 field_0xE;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
};  // Size: 0x3C

class daAlinkHIO_pushpull_c0 {
public:
    static daAlinkHIO_pushpull_c1 const m;
};

class daAlinkHIO_grab_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ daAlinkHIO_anm_c field_0x64;
    /* 0x78 */ daAlinkHIO_anm_c field_0x78;
    /* 0x8C */ daAlinkHIO_anm_c field_0x8C;
    /* 0xA0 */ daAlinkHIO_anm_c field_0xA0;
    /* 0xB4 */ daAlinkHIO_anm_c field_0xB4;
    /* 0xC8 */ daAlinkHIO_anm_c field_0xC8;
    /* 0xDC */ s16 field_0xDC;
    /* 0xDE */ s16 field_0xDE;
    /* 0xE0 */ f32 field_0xE0;
};  // Size: 0xE4

class daAlinkHIO_grab_c0 {
public:
    static daAlinkHIO_grab_c1 const m;
};

class daAlinkHIO_horse_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mWalkAnm;
    /* 0x14 */ daAlinkHIO_anm_c mRunAnm;
    /* 0x28 */ daAlinkHIO_anm_c mWhipAnm;
    /* 0x3C */ daAlinkHIO_anm_c mWhipRunAnm;
    /* 0x50 */ s16 mSwordUpTime;
    /* 0x52 */ s16 mSearchRangeAngle;
    /* 0x54 */ s16 mNoWalkTime;
    /* 0x56 */ s16 mWhipWaitTime;
    /* 0x58 */ s16 field_0x58;
    /* 0x5A */ s16 field_0x5A;
    /* 0x5C */ f32 mSwordUpAnmSpeed;
    /* 0x60 */ f32 mSwordUpInterpolation;
    /* 0x64 */ f32 mHorseWalkStartFrame;
    /* 0x68 */ f32 mTiredWaitInterpolation;
};  // Size: 0x6C

class daAlinkHIO_horse_c0 {
public:
    static daAlinkHIO_horse_c1 const m;
};

class daAlinkHIO_canoe_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mLeftRightChangeAnm;
    /* 0x14 */ s16 mMaxTurnAngle;
    /* 0x16 */ s16 mMaxTurnAngle_RiverRide;
    /* 0x18 */ f32 mStickRowAnmSpeed;
    /* 0x1C */ f32 mBtnRowAnmSpeed;
    /* 0x20 */ f32 mSpeedRate;
    /* 0x24 */ f32 mMaxSpeed;
    /* 0x28 */ f32 mDeceleration;
    /* 0x2C */ f32 mStickRowStartAnmSpeed;
    /* 0x30 */ f32 mBtnRowStartAnmSpeed;
    /* 0x34 */ f32 mBackSpeedRate;
    /* 0x38 */ f32 mBackMaxSpeed;
    /* 0x3C */ f32 mMaxSpeed_RiverRide;
    /* 0x40 */ f32 mSpeedRate_RiverRide;
    /* 0x44 */ f32 mDeceleration_RiverRide;
};  // Size: 0x48

class daAlinkHIO_canoe_c0 {
public:
    static daAlinkHIO_canoe_c1 const m;
};

class daAlinkHIO_damage_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mFloorDmgAnm;
    /* 0x14 */ daAlinkHIO_anm_c mDashDmgAnm;
    /* 0x28 */ u8 mInvincible;
    /* 0x2A */ s16 mInvincibleTime;
    /* 0x2C */ s16 mWolfFloorInvincibleTime;
    /* 0x2E */ s16 mFreezeTime;
    /* 0x30 */ s16 mFreezeInitR;
    /* 0x32 */ s16 mFreezeInitG;
    /* 0x34 */ s16 mFreezeInitB;
    /* 0x36 */ s16 mDamageR0;
    /* 0x38 */ s16 mDamageG0;
    /* 0x3A */ s16 mDamageB0;
    /* 0x3C */ s16 mDamageR1;
    /* 0x3E */ s16 mDamageG1;
    /* 0x40 */ s16 mDamageB1;
    /* 0x42 */ s16 mDamageR2;
    /* 0x44 */ s16 mDamageG2;
    /* 0x46 */ s16 mDamageB2;
    /* 0x48 */ s16 mFreezeR;
    /* 0x4A */ s16 mFreezeG;
    /* 0x4C */ s16 mFreezeB;
    /* 0x50 */ f32 mRecoverStandAnmSpeed;
    /* 0x54 */ f32 mInvertedFallInterpolation;
};  // Size: 0x58

class daAlinkHIO_damage_c0 {
public:
    static daAlinkHIO_damage_c1 const m;
};

class daAlinkHIO_damNormal_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ s16 field_0x50;
    /* 0x52 */ s16 field_0x52;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
};  // Size: 0x64

class daAlinkHIO_damNormal_c0 {
public:
    static daAlinkHIO_damNormal_c1 const m;
};

class daAlinkHIO_damLaHu_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ daAlinkHIO_anm_c field_0x64;
    /* 0x78 */ daAlinkHIO_anm_c field_0x78;
    /* 0x8C */ daAlinkHIO_anm_c field_0x8C;
    /* 0xA0 */ s16 field_0xA0;
    /* 0xA4 */ f32 field_0xA4;
    /* 0xA8 */ f32 field_0xA8;
    /* 0xAC */ f32 field_0xAC;
    /* 0xB0 */ f32 field_0xB0;
    /* 0xB4 */ f32 field_0xB4;
    /* 0xB8 */ f32 field_0xB8;
};

class daAlinkHIO_damLarge_c0 {
public:
    static daAlinkHIO_damLaHu_c1 const m;
};

class daAlinkHIO_damHuge_c0 {
public:
    static daAlinkHIO_damLaHu_c1 const m;
};

class daAlinkHIO_damHorse_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ s16 field_0x2A;
};  // Size: 0x2C

class daAlinkHIO_damHorse_c0 {
public:
    static daAlinkHIO_damHorse_c1 const m;
};

class daAlinkHIO_damFall_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x14 */ daAlinkHIO_anm_c mStandAnm;
    /* 0x28 */ s16 mSmallStopTime;
    /* 0x2A */ s16 mBigStopTime;
    /* 0x2C */ f32 mMinRollHeight;
    /* 0x30 */ f32 mMaxRollHeight;
    /* 0x34 */ f32 mSmallDmgHeight;
    /* 0x38 */ f32 mBigDmgHeight;
    /* 0x3C */ f32 mSmallDmgLandStartFrame;
    /* 0x40 */ f32 mFallAnmTransitionHeight;
    /* 0x44 */ f32 mFallAnmMorf;
};  // Size: 0x48

class daAlinkHIO_damFall_c0 {
public:
    static daAlinkHIO_damFall_c1 const m;
};

class daAlinkHIO_damCaught_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
};  // Size: 0x24

class daAlinkHIO_damCaught_c0 {
public:
    static daAlinkHIO_damCaught_c1 const m;
};

class daAlinkHIO_damSwim_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ daAlinkHIO_anm_c field_0x64;
    /* 0x78 */ s16 field_0x78;
    /* 0x7A */ s16 field_0x7A;
    /* 0x7C */ f32 field_0x7C;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
};  // Size: 0x8C

class daAlinkHIO_damSwim_c0 {
public:
    static daAlinkHIO_damSwim_c1 const m;
};

class daAlinkHIO_huLight_c1 {
public:
    /* 0x00 */ u8 field_0x0;
    /* 0x00 */ u8 field_0x1;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x06 */ s16 field_0x6;
    /* 0x08 */ s16 field_0x8;
    /* 0x0A */ s16 field_0xA;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};  // Size: 0x1C

class daAlinkHIO_huLight_c0 {
public:
    static daAlinkHIO_huLight_c1 const m;
};

class daAlinkHIO_fmChain_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
};  // Size: 0x28

class daAlinkHIO_fmChain_c0 {
public:
    static daAlinkHIO_fmChain_c1 const m;
};

class daAlinkHIO_pickUp_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
};  // Size: 0x30

class daAlinkHIO_pickUp_c0 {
public:
    static daAlinkHIO_pickUp_c1 const m;
};

class daAlinkHIO_wolf_c1 {
public:
    /* 0x00 */ s16 mMaxNeckTurnH;
    /* 0x02 */ s16 mMaxNeckTurnUp;
    /* 0x04 */ s16 mMaxNeckTurnDown;
    /* 0x06 */ s16 mMaxTiredNeckTurnH;
    /* 0x08 */ s16 mMaxTiredNeckTurnUp;
    /* 0x0A */ s16 mMaxTiredNeckTurnDown;
    /* 0x0C */ s16 mSensesLingerTime;  // ?
    /* 0x0E */ s16 mLightDropR;
    /* 0x10 */ s16 mLightDropG;
    /* 0x12 */ s16 mLightDropB;
    /* 0x14 */ f32 mUnderwaterInputRate;
};  // Size: 0x18

class daAlinkHIO_wolf_c0 {
public:
    static daAlinkHIO_wolf_c1 const m;
};

class daAlinkHIO_wlMove_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ s16 field_0x50;
    /* 0x52 */ s16 field_0x52;
    /* 0x54 */ s16 field_0x54;
    /* 0x56 */ s16 field_0x56;
    /* 0x58 */ s16 field_0x58;
    /* 0x5A */ s16 field_0x5A;
    /* 0x5C */ s16 field_0x5C;
    /* 0x5E */ s16 field_0x5E;
    /* 0x60 */ s16 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7C;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ f32 field_0x8C;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9C;
    /* 0xA0 */ f32 field_0xA0;
    /* 0xA4 */ f32 field_0xA4;
    /* 0xA8 */ f32 field_0xA8;
    /* 0xAC */ f32 field_0xAC;
    /* 0xB0 */ f32 field_0xB0;
    /* 0xB4 */ f32 field_0xB4;
    /* 0xB8 */ f32 field_0xB8;
    /* 0xBC */ f32 field_0xBC;
    /* 0xC0 */ f32 field_0xC0;
    /* 0xC4 */ f32 field_0xC4;
    /* 0xC8 */ f32 field_0xC8;
    /* 0xCC */ f32 field_0xCC;
    /* 0xD0 */ f32 field_0xD0;
    /* 0xD4 */ f32 field_0xD4;
    /* 0xD8 */ f32 field_0xD8;
    /* 0xDC */ f32 field_0xDC;
    /* 0xE0 */ f32 field_0xE0;
    /* 0xE4 */ f32 field_0xE4;
    /* 0xE8 */ f32 field_0xE8;
    /* 0xEC */ f32 field_0xEC;
    /* 0xF0 */ f32 field_0xF0;
    /* 0xF4 */ f32 field_0xF4;
    /* 0xF8 */ f32 field_0xF8;
    /* 0xFC */ f32 field_0xFC;
};  // Size: 0x100

class daAlinkHIO_wlMove_c0 {
public:
    static daAlinkHIO_wlMove_c1 const m;
};

class daAlinkHIO_wlMoveNoP_c1 {
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
};  // Size: 0x48

class daAlinkHIO_wlMoveNoP_c0 {
public:
    static daAlinkHIO_wlMoveNoP_c1 const m;
};

class daAlinkHIO_wlAtnMove_c1 {
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};  // Size: 0x38

class daAlinkHIO_wlAtnMove_c0 {
public:
    static daAlinkHIO_wlAtnMove_c1 const m;
};

class daAlinkHIO_wlAutoJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x00;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ u8 field_0x3c;
    /* 0x3E */ s16 field_0x3e;
    /* 0x40 */ s16 field_0x40;
    /* 0x42 */ s16 field_0x42;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4c;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5c;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
};  // size = 0x7C

class daAlinkHIO_wlAutoJump_c0 {
public:
    static daAlinkHIO_wlAutoJump_c1 const m;
};

class daAlinkHIO_wlSlide_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ s16 field_0x50;
    /* 0x52 */ s16 field_0x52;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
};  // Size: 0x7C

class daAlinkHIO_wlSlide_c0 {
public:
    static daAlinkHIO_wlSlide_c1 const m;
};

class daAlinkHIO_wlSideStep_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
};  // Size: 0x68

class daAlinkHIO_wlSideStep_c0 {
public:
    static daAlinkHIO_wlSideStep_c1 const m;
};

class daAlinkHIO_wlBackJump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};  // Size: 0x38

class daAlinkHIO_wlBackJump_c0 {
public:
    static daAlinkHIO_wlBackJump_c1 const m;
};

class daAlinkHIO_wlRope_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};  // Size: 0x38

class daAlinkHIO_wlRope_c0 {
public:
    static daAlinkHIO_wlRope_c1 const m;
};

class daAlinkHIO_wlPush_c1 {
public:
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
};  // Size: 0x14

class daAlinkHIO_wlPush_c0 {
public:
    static daAlinkHIO_wlPush_c1 const m;
};

class daAlinkHIO_wlPoint_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
};  // Size: 0x7C

class daAlinkHIO_wlPoint_c0 {
public:
    static daAlinkHIO_wlPoint_c1 const m;
};

class daAlinkHIO_wlWallHang_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ daAlinkHIO_anm_c field_0x64;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7C;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ f32 field_0x8C;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
};  // Size: 0x9C

class daAlinkHIO_wlWallHang_c0 {
public:
    static daAlinkHIO_wlWallHang_c1 const m;
};

class daAlinkHIO_wlSwim_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ s16 field_0x3C;
    /* 0x3E */ s16 field_0x3E;
    /* 0x40 */ s16 field_0x40;
    /* 0x42 */ s16 field_0x42;
    /* 0x44 */ s16 field_0x44;
    /* 0x46 */ s16 field_0x46;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7C;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ f32 field_0x8C;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9C;
    /* 0xA0 */ f32 field_0xA0;
    /* 0xA4 */ f32 field_0xA4;
};  // Size: 0xA8

class daAlinkHIO_wlSwim_c0 {
public:
    static daAlinkHIO_wlSwim_c1 const m;
};

class daAlinkHIO_wlAttack_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x14 */ s16 mUnkTime;
    /* 0x16 */ s16 mComboDuration;
    /* 0x18 */ f32 mFallHeight;
    /* 0x1C */ f32 mFallInterpolation;
    /* 0x20 */ f32 mReadyInterpolation;
    /* 0x24 */ f32 mAttackRange;
    /* 0x28 */ f32 mJumpBackSpeedH;
    /* 0x2C */ f32 mJumpBackSpeedV;
    /* 0x30 */ f32 mJumpAttackSpeedV;
    /* 0x34 */ f32 mJumpAttackSpeedH;
};  // Size: 0x38

class daAlinkHIO_wlAttack_c0 {
public:
    static daAlinkHIO_wlAttack_c1 const m;
};

class daAlinkHIO_wlAtBite_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ s16 field_0x2A;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
};  // Size: 0x5C

class daAlinkHIO_wlAtBite_c0 {
public:
    static daAlinkHIO_wlAtBite_c1 const m;
};

class daAlinkHIO_wlAtCjump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
};  // Size: 0x64

class daAlinkHIO_wlAtCjump_c0 {
public:
    static daAlinkHIO_wlAtCjump_c1 const m;
};

class daAlinkHIO_wlHowl_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
};  // Size: 0x60

class daAlinkHIO_wlHowl_c0 {
public:
    static daAlinkHIO_wlHowl_c1 const m;
};

class daAlinkHIO_wlGrab_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
};  // Size: 0x64

class daAlinkHIO_wlGrab_c0 {
public:
    static daAlinkHIO_wlGrab_c1 const m;
};

class daAlinkHIO_wlChain_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ s16 field_0x3C;
    /* 0x3E */ s16 field_0x3E;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
};  // Size: 0x5C

class daAlinkHIO_wlChain_c0 {
public:
    static daAlinkHIO_wlChain_c1 const m;
};

class daAlinkHIO_wlBall_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ s16 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
};  // Size: 0x38

class daAlinkHIO_wlBall_c0 {
public:
    static daAlinkHIO_wlBall_c1 const m;
};

class daAlinkHIO_wlLie_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ s16 field_0x2A;
    /* 0x2C */ s16 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
};  // Size: 0x4C

class daAlinkHIO_wlLie_c0 {
public:
    static daAlinkHIO_wlLie_c1 const m;
};

class daAlinkHIO_wlLight_c1 {
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x06 */ s16 field_0x6;
    /* 0x08 */ s16 field_0x8;
    /* 0x0A */ s16 field_0xA;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};  // Size: 0x1C

class daAlinkHIO_wlLight_c0 {
public:
    static daAlinkHIO_wlLight_c1 const m;
};

class daAlinkHIO_wlAtDown_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ daAlinkHIO_anm_c field_0x64;
    /* 0x78 */ daAlinkHIO_anm_c field_0x78;
    /* 0x8C */ s16 field_0x8C;
    /* 0x8E */ s16 field_0x8E;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
};  // Size: 0x9C

class daAlinkHIO_wlAtDown_c0 {
public:
    static daAlinkHIO_wlAtDown_c1 const m;
};

class daAlinkHIO_wlAtWait_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
};

class daAlinkHIO_wlAtWaTl_c0 {
public:
    static daAlinkHIO_wlAtWait_c1 const m;
};

class daAlinkHIO_wlAtWaSc_c0 {
public:
    static daAlinkHIO_wlAtWait_c1 const m;
};

class daAlinkHIO_wlAtWaLr_c0 {
public:
    static daAlinkHIO_wlAtWait_c1 const m;
};

class daAlinkHIO_wlAtRoll_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_wlAtRoll_c0 {
public:
    static daAlinkHIO_wlAtRoll_c1 const m;
};

class daAlinkHIO_wlAtNjump_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
};  // Size: 0x3C

class daAlinkHIO_wlAtNjump_c0 {
public:
    static daAlinkHIO_wlAtNjump_c1 const m;
};

class daAlinkHIO_wlAtLock_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
};  // Size: 0x54

class daAlinkHIO_wlAtLock_c0 {
public:
    static daAlinkHIO_wlAtLock_c1 const m;
};

class daAlinkHIO_wlAtLand_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ f32 field_0x3C;
};  // Size: 0x40

class daAlinkHIO_wlAtLand_c0 {
public:
    static daAlinkHIO_wlAtLand_c1 const m;
};

class daAlinkHIO_wlDamage_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_wlDamage_c0 {
public:
    static daAlinkHIO_wlDamage_c1 const m;
};

class daAlinkHIO_wlDamNormal_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
};  // Size: 0x60

class daAlinkHIO_wlDamNormal_c0 {
public:
    static daAlinkHIO_wlDamNormal_c1 const m;
};

class daAlinkHIO_wlDamLaHu_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ s16 field_0x50;
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
};

class daAlinkHIO_wlDamLarge_c0 {
public:
    static daAlinkHIO_wlDamLaHu_c1 const m;
};

class daAlinkHIO_wlDamHuge_c0 {
public:
    static daAlinkHIO_wlDamLaHu_c1 const m;
};

class daAlinkHIO_wlDamFall_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ s16 field_0x2A;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3C;
};  // Size: 0x40

class daAlinkHIO_wlDamFall_c0 {
public:
    static daAlinkHIO_wlDamFall_c1 const m;
};

class daAlinkHIO_wlDamCaught_c1 {
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xC;
};  // Size: 0x10

class daAlinkHIO_wlDamCaught_c0 {
public:
    static daAlinkHIO_wlDamCaught_c1 const m;
};

class daAlinkHIO_zwLight_c1 {  // may be wrong
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ s16 field_0x4;
    /* 0x06 */ s16 field_0x6;
    /* 0x08 */ s16 field_0x8;
    /* 0x0A */ s16 field_0xA;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};  // Size: 0x1C

class daAlinkHIO_zwLight_c0 {
public:
    static daAlinkHIO_zwLight_c1 const m;
};

class daAlinkHIO_board_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mJumpAnm;  // might be wrong
    /* 0x14 */ daAlinkHIO_anm_c mAirborneAnm;
    /* 0x28 */ daAlinkHIO_anm_c mLandAnm;
    /* 0x3C */ daAlinkHIO_anm_c mSpinAnm;
    /* 0x50 */ f32 mMaxSpeed;
    /* 0x54 */ f32 mPushAccel;
    /* 0x58 */ f32 mMinJumpSpeedY;
    /* 0x5C */ f32 mMaxJumpSpeedY;
    /* 0x60 */ f32 mStandAnmSpeed;
    /* 0x64 */ f32 mStandInterpolation;
    /* 0x68 */ f32 mSitAnmSpeed;
    /* 0x6C */ f32 mSitInterpolation;
    /* 0x70 */ f32 mStartMinSpeed;
    /* 0x74 */ f32 mStartAddSpeed;
    /* 0x78 */ f32 mPushAnmMaxSpeed;
    /* 0x7C */ f32 mFastPushSwitchSpeed;
    /* 0x80 */ f32 mFastPushInterpolation;
    /* 0x84 */ f32 mPushInterpolation;
    /* 0x88 */ f32 mPushAnmMinSpeed;
    /* 0x8C */ f32 mMaxPushSpeed;
    /* 0x90 */ f32 mSpinMinJumpSpeedY;
    /* 0x94 */ f32 mSpinMaxJumpSpeedY;
    /* 0x98 */ f32 mEffectMaxSpeed;
};  // Size: 0x9C

class daAlinkHIO_board_c0 {
public:
    static daAlinkHIO_board_c1 const m;
};

class daAlinkHIO_item_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mOneHandEquipAnm;
    /* 0x14 */ daAlinkHIO_anm_c mTwoHandEquipAnm;
    /* 0x28 */ s16 mItemFPTransitionTimer;
    /* 0x2A */ s16 mItemFPMaxUnk;
    /* 0x2C */ s16 mItemFPUpMaxUnk;
    /* 0x2E */ s16 mWiiItemFPDownMaxUnk;
    /* 0x30 */ s16 mWiiItemFPUpMaxUnk;
    /* 0x34 */ f32 mOneHandReleaseAnmSpeed;
    /* 0x38 */ f32 mTwoHandReleaseAnmSpeed;
};  // Size: 0x3C

class daAlinkHIO_item_c0 {
public:
    static daAlinkHIO_item_c1 const m;
};

class daAlinkHIO_kandelaar_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mShakeAnm;
    /* 0x14 */ daAlinkHIO_anm_c mBeginUnkAnm;
    /* 0x28 */ daAlinkHIO_anm_c mEndUnkAnm;
    /* 0x3C */ s16 mColorReg1R;
    /* 0x3E */ s16 mColorReg1G;
    /* 0x40 */ s16 mColorReg1B;
    /* 0x42 */ s16 mColorReg2R;
    /* 0x44 */ s16 mColorReg2G;
    /* 0x46 */ s16 mColorReg2B;
    /* 0x48 */ s16 mNormalOilLoss;
    /* 0x4A */ s16 mShakeOilLoss;
    /* 0x4C */ f32 mFlameTrackRate;
};  // Size: 0x50

class daAlinkHIO_kandelaar_c0 {
public:
    static daAlinkHIO_kandelaar_c1 const m;
};

class daAlinkHIO_bottle_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mStartDrinkAnm;
    /* 0x14 */ daAlinkHIO_anm_c mEndDrinkAnm;
    /* 0x28 */ daAlinkHIO_anm_c mOpenBottleAnm;
    /* 0x3C */ daAlinkHIO_anm_c mPourAnm;
    /* 0x50 */ daAlinkHIO_anm_c mSwingDownAnm;
    /* 0x64 */ daAlinkHIO_anm_c mSwingSideAnm;
    /* 0x78 */ daAlinkHIO_anm_c mGetAnm;
    /* 0x8C */ daAlinkHIO_anm_c mDrinkNastyAnm;
    /* 0xA0 */ daAlinkHIO_anm_c mScoopAnm;
};  // Size: 0xB4

class daAlinkHIO_bottle_c0 {
public:
    static daAlinkHIO_bottle_c1 const m;
};

class daAlinkHIO_boom_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mThrowAnm;
    /* 0x14 */ daAlinkHIO_anm_c mCatchAnm;
    /* 0x28 */ s16 mChargeTime;
    /* 0x2A */ s16 mBgThroughTime;
    /* 0x2C */ f32 mIdleAnmSpeed;
    /* 0x30 */ f32 mStartInterpolation;
    /* 0x34 */ f32 mFlySpeed;
    /* 0x38 */ f32 mChargeFlySpeed;
    /* 0x3C */ f32 mFlyDistMax;
    /* 0x40 */ f32 mHorsebackFlyDistMax;
    /* 0x44 */ f32 mLockDistMax;
    /* 0x48 */ f32 mCatchSpeed;
};  // Size: 0x4C

class daAlinkHIO_boom_c0 {
public:
    static daAlinkHIO_boom_c1 const m;
};

class daAlinkHIO_bow_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mShootAnm;
    /* 0x14 */ daAlinkHIO_anm_c mLoadAnm;
    /* 0x28 */ s16 mChargeArrowTime;
    /* 0x2A */ s16 mBombArrowHoldTime;
    /* 0x2C */ s16 mBombArrowFlyExplodeTime;
    /* 0x30 */ f32 mStartInterpolation;
    /* 0x34 */ f32 mArrowSpeed;
    /* 0x38 */ f32 mArrowDistance;
    /* 0x3C */ f32 mChargeArrowSpeed;
    /* 0x40 */ f32 mChargeArrowDistance;
    /* 0x44 */ f32 mArrowAttackRadius;
    /* 0x48 */ f32 mBombArrowSpeed;
    /* 0x4C */ f32 mBombArrowDistance;
    /* 0x50 */ f32 mChargeBombArrowSpeed;
    /* 0x54 */ f32 mChargeBombArrowDistance;
    /* 0x58 */ f32 mScopeArrowSpeed;
    /* 0x5C */ f32 mScopeArrowDistance;
    /* 0x60 */ f32 mArrowIncAttackMaxStart;
    /* 0x64 */ f32 mArrowIncAttackMax;
    /* 0x68 */ f32 mSlingshotSpeed;
    /* 0x6C */ f32 mSlingshotDistance;
};  // Size: 0x70

class daAlinkHIO_bow_c0 {
public:
    static daAlinkHIO_bow_c1 const m;
};

class daAlinkHIO_ironBall_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mCatchAnm;
    /* 0x14 */ s16 mThrowChainNum;
    /* 0x16 */ s16 mReturnChainRemoveNum;
    /* 0x18 */ f32 mWaitAnmSpeed;
    /* 0x1C */ f32 mPrepareAnmSpeed;
    /* 0x20 */ f32 mPrepareInterpolation;
    /* 0x24 */ f32 mTurnAnmSpeed;
    /* 0x28 */ f32 mTurnInterpolation;
    /* 0x2C */ f32 mPreThrowAnmSpeed;
    /* 0x30 */ f32 mPreThrowAnmInterpolation;
    /* 0x34 */ f32 mThrowAnmSpeed;
    /* 0x38 */ f32 mThrowInterpolation;
    /* 0x3C */ f32 mPullAnmSpeed;
    /* 0x40 */ f32 mPullInterpolation;
    /* 0x44 */ f32 mChainSpeedRate;
    /* 0x48 */ f32 mChainGravity;
    /* 0x4C */ f32 mReturnChainAccelY;
    /* 0x50 */ f32 mReturnChainRate;
    /* 0x54 */ f32 mThrowChainAccelZ;
    /* 0x58 */ f32 mThrowChainAccelY;
    /* 0x5C */ f32 mThrowChainGravity;
    /* 0x60 */ f32 mBallGravity;
    /* 0x64 */ f32 mThrowBallGravity;
    /* 0x68 */ f32 mBallMaxFallSpeed;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 mThrowSpeedZ;
    /* 0x74 */ f32 mThrowSpeedY;
    /* 0x78 */ f32 mReturnBallGravity;
    /* 0x7C */ f32 mAttackRadius;
    /* 0x80 */ f32 mFeetPosRatio;
    /* 0x84 */ f32 mWalkAnmSpeedMax;
    /* 0x88 */ f32 mWalkAnmSpeedMin;
};  // Size: 0x8C

class daAlinkHIO_ironBall_c0 {
public:
    static daAlinkHIO_ironBall_c1 const m;
};

class daAlinkHIO_copyRod_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mSwingAnm;
    /* 0x14 */ daAlinkHIO_anm_c mBigSwingAnm;
    /* 0x28 */ f32 mBallSpeed;
    /* 0x2c */ f32 mBallMaxDistance;
    /* 0x30 */ f32 mBallReturnSpeed;
    /* 0x34 */ f32 mBossBallMaxDistance;
};  // Size: 0x38

class daAlinkHIO_copyRod_c0 {
public:
    static daAlinkHIO_copyRod_c1 const m;
};

class daAlinkHIO_bomb_c1 {
public:
    /* 0x00 */ s16 mExplodeTime;
    /* 0x02 */ s16 mEnemyBombColorR;
    /* 0x04 */ s16 mBombInsectLimitAngle;
    /* 0x08 */ f32 mGravity;
    /* 0x0C */ f32 mMaxFallSpeed;
    /* 0x10 */ f32 mBoundRate;
    /* 0x14 */ f32 mStopSpeedY;
    /* 0x18 */ f32 mMaxSpeedY;
    /* 0x1C */ f32 mEffScale;
    /* 0x20 */ f32 mAttackRadius;
    /* 0x24 */ f32 mPokeBombTrackRate;
    /* 0x28 */ f32 mWaterGravity;
    /* 0x2C */ f32 mWaterMaxFallSpeed;
    /* 0x30 */ f32 mThrowSpeedH;
    /* 0x34 */ f32 mThrowSpeedV;
    /* 0x38 */ f32 mWaterThrowSpeedH;
    /* 0x3C */ f32 mWaterThrowSpeedV;
    /* 0x40 */ f32 mWolfThrowSpeedH;
    /* 0x44 */ f32 mWolfThrowSpeedV;
    /* 0x48 */ f32 mExplodeWaterEffectLimit;
};  // Size: 0x4C

class daAlinkHIO_bomb_c0 {
public:
    static daAlinkHIO_bomb_c1 const m;
};

class daAlinkHIO_magneBoots_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mEquipAnm;
    /* 0x14 */ f32 mInputFactor;
    /* 0x18 */ f32 mFeetPositionRatio;
    /* 0x1C */ f32 mWalkAnmSpeedMax;
    /* 0x20 */ f32 mWalkAnmSpeedMin;
    /* 0x24 */ f32 mWaterInputFactor;
    /* 0x28 */ f32 mWaterStartWalkAnmRate;
    /* 0x2C */ f32 mWaterWalkAnmRate;
    /* 0x30 */ f32 mMaxMagneFlySpeed;
    /* 0x34 */ f32 mMagneFlyAccelRate;
    /* 0x38 */ f32 mWaterVelocityY;
    /* 0x3C */ f32 mWaterVelocityX;
    /* 0x40 */ f32 mWaterVelRateSword;
    /* 0x44 */ f32 mZoraWaterInputFactor;
    /* 0x48 */ f32 mZoraWaterAnmSpeed;
};  // Size: 0x4C

class daAlinkHIO_magneBoots_c0 {
public:
    static daAlinkHIO_magneBoots_c1 const m;
};

class daAlinkHIO_spinner_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mKickAnm;
    /* 0x14 */ s16 mRideMoveTime;
    /* 0x16 */ s16 mBoardWaitTime;
    /* 0x18 */ s16 mRideRotAngleMax;
    /* 0x1A */ s16 mRideRotAngleMin;
    /* 0x1C */ s16 mBossRideMoveTime;
    /* 0x20 */ f32 mGravity;
    /* 0x24 */ f32 mMaxFallSpeed;
    /* 0x28 */ f32 mJumpRate;
    /* 0x2C */ f32 mRideSpeed;
    /* 0x30 */ f32 mDecelSpeedMax;
    /* 0x34 */ f32 mDecelSpeedMin;
    /* 0x38 */ f32 mDecelRate;
    /* 0x3C */ f32 mBossRideSpeed;
};  // Size: 0x40

class daAlinkHIO_spinner_c0 {
public:
    static daAlinkHIO_spinner_c1 const m;
};

class daAlinkHIO_hookshot_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mShootAnm;
    /* 0x14 */ daAlinkHIO_anm_c mRoofHangAnm;
    /* 0x28 */ daAlinkHIO_anm_c mWallHangAnm;
    /* 0x3C */ u8 mForceStick;
    /* 0x40 */ f32 mWaitAnmSpeed;
    /* 0x44 */ f32 mStartInterpolation;
    /* 0x48 */ f32 mMaxLength;
    /* 0x4C */ f32 mShootSpeed;
    /* 0x50 */ f32 mReturnSpeed;
    /* 0x54 */ f32 mStickReturnSpeed;
    /* 0x58 */ f32 mRoofHangRiseSpeed;
    /* 0x5C */ f32 mRoofHangDecendSpeed;
    /* 0x60 */ f32 mBossMaxLength;
    /* 0x64 */ f32 mBossShootSpeed;
    /* 0x68 */ f32 mBossReturnSpeed;
    /* 0x6C */ f32 mBossStickReturnSpeed;
};  // Size: 0x70

class daAlinkHIO_hookshot_c0 {
public:
    static daAlinkHIO_hookshot_c1 const m;
};

inline BOOL dComIfGs_isTransformLV(int i_no);
inline BOOL dComIfGs_isEventBit(const u16);

static fopAc_ac_c* daAlink_searchPortal(fopAc_ac_c* param_0, void* param_1);
static fopAc_ac_c* daAlink_searchCanoe(fopAc_ac_c* param_0, void* param_1);
static void* daAlink_searchBoar(fopAc_ac_c* param_0, void* param_1);
static fopAc_ac_c* daAlink_searchLightBall(fopAc_ac_c* p_actor, void* param_1);

#endif /* D_A_D_A_ALINK_H */
