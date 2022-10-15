#ifndef D_A_D_A_ALINK_H
#define D_A_D_A_ALINK_H

#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "Z2AudioLib/Z2Creature.h"
#include "Z2AudioLib/Z2WolfHowlMgr.h"
#include "d/a/d_a_player.h"
#include "d/bg/d_bg_s.h"
#include "d/cc/d_cc_d.h"
#include "d/cc/d_cc_mass_s.h"
#include "d/d_attention.h"
#include "d/d_drawlist.h"
#include "d/d_eye_hl.h"
#include "d/d_jnt_col.h"
#include "d/kankyo/d_kankyo.h"
#include "d/meter/d_meter2_info.h"
#include "d/msg/d_msg_flow.h"
#include "d/particle/d_particle.h"
#include "d/particle/d_particle_copoly.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"
#include "f_op/f_op_scene.h"
#include "rel/d/a/kytag/d_a_kytag05/d_a_kytag05.h"
#include "rel/d/a/tag/d_a_tag_mmsg/d_a_tag_mmsg.h"

class fopEn_enemy_c;
class daAlinkHIO_anm_c;
class J3DAnmTevRegKey;
class dDemo_actor_c;
class daScex_c;
class J2DScreen;
class J2DPane;
class J2DAnmBase;

class daAlink_lockCursor_c : public dDlst_base_c {
public:
    daAlink_lockCursor_c() {}
    /* 80125F14 */ BOOL create();
    /* 80126358 */ void update();
    /* 80126424 */ virtual void draw();
    /* 800CFE68 */ virtual ~daAlink_lockCursor_c();

    void initFrame() {
        field_0x4 = false;
        field_0x2c = 4.0f;
        field_0x30 = 0.0f;
    }

private:
    /* 0x04 */ bool field_0x4;
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
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
};

class daAlink_sight_c : public daPy_sightPacket_c {
public:
    daAlink_sight_c() {}
    /* 80126650 */ bool create();
    /* 80126710 */ void onLockFlg();

    /* 801266C0 */ virtual void draw();
    /* 800CFDF4 */ virtual ~daAlink_sight_c();

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
    /* 800CFD58 */ virtual ~daAlink_blur_c();

    // private:
    /* 0x010 */ void* m_blurTex;
    /* 0x014 */ int field_0x14;
    /* 0x018 */ u8 field_0x18[4];
    /* 0x01C */ int field_0x1c;
    /* 0x020 */ u8 field_0x20[4];
    /* 0x024 */ f32 field_0x24;
    /* 0x028 */ u8 field_0x28[4];
    /* 0x02C */ cXyz field_0x2c;
    /* 0x038 */ cXyz field_0x38[0x3C];
    /* 0x308 */ cXyz field_0x308[0x3C];
};  // Size = 0x5D8

class dAlink_bottleWaterPcallBack_c : public JPAParticleCallBack {
public:
    dAlink_bottleWaterPcallBack_c() { initialize(0.0f); }
    /* 80124A2C */ virtual void execute(JPABaseEmitter*, JPABaseParticle*);
    /* 800CFCF8 */ virtual ~dAlink_bottleWaterPcallBack_c();

    void initialize(f32 minY) {
        mHitFlg = 0;
        mAppearFlg = 0;
        mKeepMinY = minY;
    }

private:
    /* 0x04 */ s16 mHitFlg;
    /* 0x06 */ s16 mAppearFlg;
    /* 0x08 */ f32 mKeepMinY;
    /* 0x0C */ cXyz mHitPos;
};  // Size = 0x18

class daAlink_footData_c {
public:
    /* 800CFCB8 */ ~daAlink_footData_c();
    /* 800CFCF4 */ daAlink_footData_c();

private:
    /* 0x00 */ u8 field_0x00[0x8];
    /* 0x08 */ cXyz field_0x8;
    /* 0x14 */ Mtx field_0x14;
    /* 0x44 */ Mtx field_0x44;
    /* 0x74 */ Mtx field_0x74;
};  // Size: 0xA4

STATIC_ASSERT(sizeof(daAlink_footData_c) == 0xA4);

class daAlink_matAnm_c : public J3DMaterialAnm {
public:
    daAlink_matAnm_c() { init(); }

    /* 8009D8E4 */ void init();
    /* 800D0180 */ void offSetFlg();

    /* 800D0B8C */ virtual ~daAlink_matAnm_c();
    /* 8009D90C */ virtual void calc(J3DMaterial*) const;

    static void decMorfFrame() {}

private:
    /* 0x0F4 */ f32 field_0xf4;
    /* 0x0F8 */ f32 field_0xf8;
    /* 0x0FC */ f32 mNowOffsetX;
    /* 0x100 */ f32 mNowOffsetY;
    /* 0x104 */ int mSetFlag;
};

struct daAlink_BckData {
    /* 0x0 */ u16 m_underID;
    /* 0x0 */ u16 m_upperID;
};

struct daAlink_AnmData {
    /* 0x0 */ daAlink_BckData field_0x0;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u16 field_0x6;
    /* 0x8 */ u16 field_0x8;
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
};

class daAlinkHIO_cut_c {
public:
    /* 80140BD4 */ ~daAlinkHIO_cut_c();
};

class daAlinkHIO_c {
public:
    /* 80140B88 */ daAlinkHIO_c();
    /* 80140C10 */ ~daAlinkHIO_c();
};

class daAlink_c;
typedef int (daAlink_c::*daAlink_procFunc)();

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
        /* 0x113 */ ANM_WAIT_D_B,  // ghost rats?
        /* 0x114 */ ANM_HORSE_WAIT_D_B,  // ?
        /* 0x115 */ ANM_MG_KICK, // ?
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
        /* 0x128 */ ANM_S_JUMP_END,  // ?
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
        /* 0x13F */ ANM_SUMOU_MIAU,  // ?
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
        /* 0x17A */ ANM_GET_MASTER_SWORD, // ?
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
        /* 0x19C */ ANM_ODOROKU,  // ?
        /* 0x19D */ ANM_ASHIMOTO,  // ?
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


    enum daAlink_FTANM {};
    enum daAlink_WARP_MAT_MODE {};

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
        /* 0x7F */ WANM_WAIT_A_TO_S,  // ?
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
        /* 0x00001000 */ MODE_UNK_1000 = 0x1000,  // affects things like anim set when controlling rod statue
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

    class firePointEff_c {
    public:
        /* 800CFC3C */ ~firePointEff_c();
        /* 800CFC78 */ firePointEff_c();
        /* 0x00 */ u8 field_0x0;
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
        /* 800D0CDC */ virtual ~hsChainShape_c();
    };  // Size: 0x10

    /* 8009D87C */ bool getE3Zhint();
    /* 8009D884 */ char* getAlinkArcName();
    /* 8009DA60 */ static bool checkStageName(char const*);
    /* 8009DA98 */ void tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, dCcD_GObjInf*);
    /* 8009DB64 */ void coHitCallback(fopAc_ac_c*, dCcD_GObjInf*);
    /* 8009DC6C */ void setMatrixWorldAxisRot(f32 (*)[4], s16, s16, s16, int, cXyz const*);
    /* 8009DD90 */ void jointControll(int);
    /* 8009E7B8 */ void setUpperFront();
    /* 8009E91C */ void changeBlendRate(int);
    /* 8009EB18 */ void resetRootMtx();
    /* 8009EB58 */ bool modelCallBack(int);
    /* 8009ECA0 */ void headModelCallBack(int);
    /* 8009EF7C */ void wolfModelCallBack(int);
    /* 8009F034 */ void setHatAngle();
    /* 8009FFF8 */ void calcHairAngle(s16*);
    /* 800A002C */ void setHairAngle(cXyz*, f32, f32);
    /* 800A0744 */ void setLookPosFromOut(cXyz*);
    /* 800A07D8 */ bool checkAttentionPosAngle(cXyz*);
    /* 800A0868 */ void checkActorPosAngle(fopAc_ac_c*, cXyz**);
    /* 800A093C */ void getNeckAimPos(cXyz*, int*, int);
    /* 800A142C */ void getNeckAimAngle(cXyz*, s16*, s16*, s16*, s16*);
    /* 800A1AEC */ void setEyeMove(cXyz*, s16, s16);
    /* 800A1F90 */ void setNeckAngle();
    /* 800A2198 */ bool commonLineCheck(cXyz*, cXyz*);
    /* 800A21E0 */ static s16 getMoveBGActorName(cBgS_PolyInfo&, int);
    /* 800A2280 */ fopAc_ac_c* checkGoronRide();
    /* 800A22E8 */ void setMoveSlantAngle();
    /* 800A2710 */ void setArmMatrix();
    /* 800A29DC */ void setFootMatrix();
    /* 800A2C24 */ void setMatrixOffset(f32*, f32);
    /* 800A2CE0 */ void setLegAngle(f32, daAlink_footData_c*, s16*, s16*, int);
    /* 800A3430 */ void footBgCheck();
    /* 800A39B8 */ void handBgCheck();
    /* 800A3C8C */ JKRHeap* setItemHeap();
    /* 800A3CE4 */ void setIdxMask(u16*, u16*);
    /* 800A3D0C */ void* getAnimeResource(daPy_anmHeap_c*, u16, u32);
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
    /* 800A662C */ void setRoomInfo();
    /* 800A67E0 */ void setShapeAngleOnGround();
    /* 800A6B0C */ void setStepsOffset();
    /* 800A6DCC */ void iceSlipBgCheck();
    /* 800A7050 */ void setIceSlipSpeed();
    /* 800A7358 */ void setPolygonSpeed();
    /* 800A7950 */ void checkWindSpeedOnAngle() const;
    /* 800A79EC */ void checkWindSpeedOnAngleAnime(int) const;
    /* 800A7A5C */ bool checkDashAnime() const;
    /* 800A7ABC */ void checkWindWallRate(cXyz const&);
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
    /* 800AA5E8 */ void checkNoCollisionCorret();
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
    /* 800AC394 */ void setFrameCtrl(daPy_frameCtrl_c*, u8, s16, s16, f32, f32);
    /* 800AC450 */ const daAlink_BckData* getMainBckData(daAlink_c::daAlink_ANM) const;
    /* 800AC558 */ BOOL checkUnderMove0BckNoArc(daAlink_c::daAlink_ANM) const;
    /* 800AC5B4 */ BOOL checkUnderMove1BckNoArc(daAlink_c::daAlink_ANM) const;
    /* 800AC610 */ int getUnderUpperAnime(daAlink_c::daAlink_ANM, J3DAnmTransform**,
                                           J3DAnmTransform**, int, u32);
    /* 800AC738 */ void setDoubleAnimeBlendRatio(f32);
    /* 800AC754 */ void commonDoubleAnime(J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*,
                                          J3DAnmTransform*, f32, f32, f32, int);
    /* 800ACA14 */ void setDoubleAnime(f32, f32, f32, daAlink_c::daAlink_ANM,
                                       daAlink_c::daAlink_ANM, int, f32);
    /* 800ACD40 */ void commonSingleAnime(J3DAnmTransform*, J3DAnmTransform*, f32, f32, s16);
    /* 800ACF80 */ void setSingleAnimeBase(daAlink_c::daAlink_ANM anmID);
    /* 800ACFB0 */ void setSingleAnimeBaseMorf(daAlink_c::daAlink_ANM anmID, f32);
    /* 800ACFE0 */ void setSingleAnimeBaseSpeed(daAlink_c::daAlink_ANM anmID, f32 speed, f32 morf);
    /* 800AD00C */ int setSingleAnime(daAlink_c::daAlink_ANM anmID, f32 rate, f32 start, s16 endF, f32 morf);
    /* 800AD0F4 */ int setSingleAnimeParam(daAlink_c::daAlink_ANM anmID, daAlinkHIO_anm_c const*);
    /* 800AD128 */ void animePlay(J3DAnmTransform*, daPy_frameCtrl_c*);
    /* 800AD170 */ void allAnimePlay();
    /* 800AD2D8 */ void setUpperAnimeMorf(f32);
    /* 800AD340 */ void setUpperAnimeBase(u16);
    /* 800AD374 */ void setUpperAnimeBaseMorf(u16, f32);
    /* 800AD3A8 */ void setUpperAnimeBaseSpeed(u16, f32, f32);
    /* 800AD3D8 */ void setUpperAnime(u16, daAlink_c::daAlink_UPPER, f32, f32, s16, f32);
    /* 800AD6F0 */ void setUpperAnimeParam(u16, daAlink_c::daAlink_UPPER, daAlinkHIO_anm_c const*);
    /* 800AD724 */ void resetUpperAnime(daAlink_c::daAlink_UPPER, f32);
    /* 800AD8F4 */ void setUnderAnimeMorf(f32);
    /* 800AD964 */ int setUnderAnime(u16, daAlink_c::daAlink_UNDER, f32, f32, s16, f32);
    /* 800ADAB8 */ int setUnderAnimeParam(u16, daAlink_c::daAlink_UNDER, daAlinkHIO_anm_c const*);
    /* 800ADAEC */ void resetUnderAnime(daAlink_c::daAlink_UNDER, f32);
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
    /* 800AF8A0 */ void setFaceBasicTexture(daAlink_c::daAlink_FTANM);
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
    /* 800B0150 */ void getRoofAngle(cBgS_PolyInfo*, s16);
    /* 800B01FC */ void getWallEdgePos(cXyz const&, cM3dGPla*, cM3dGPla*, cXyz*, int);
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
    /* 800B2634 */ void itemTrigger();
    /* 800B2664 */ void spActionButton();
    /* 800B2688 */ void spActionTrigger();
    /* 800B26AC */ BOOL midnaTalkTrigger() const;
    /* 800B26B8 */ BOOL swordSwingTrigger();
    /* 800B26DC */ void setItemActionButtonStatus(u8);
    /* 800B26FC */ void itemActionTrigger();
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
    /* 800B33E4 */ void checkRestHPAnime();
    /* 800B3494 */ static int getDirectionFromAngle(s16 angle);
    /* 800B3500 */ void checkAttentionState();
    /* 800B3630 */ void getShapeAngleYAtnActor();
    /* 800B3734 */ void setShapeAngleToAtnActor(int);
    /* 800B3844 */ void initServiceWaitTime();
    /* 800B3904 */ bool checkZeroSpeedF() const;
    /* 800B3924 */ void setNormalSpeedF(f32, f32);
    /* 800B3F2C */ void getStickAngleDistanceRate();
    /* 800B3FD4 */ void setSpeedAndAngleNormal();
    /* 800B444C */ void setSpeedAndAngleAtn();
    /* 800B477C */ int checkRequestTalkActor(dAttList_c*, fopAc_ac_c*);
    /* 800B47B4 */ void checkServiceWaitMode();
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
    /* 800B5CCC */ void checkLandAction(int);
    /* 800B5F6C */ BOOL checkSlideAction();
    /* 800B607C */ BOOL checkAutoJumpAction();
    /* 800B69CC */ bool checkCutJumpInFly();
    /* 800B6A30 */ BOOL checkFrontWallTypeAction();
    /* 800B6F28 */ void checkItemActionInitStart();
    /* 800B7090 */ void checkItemChangeAutoAction();
    /* 800B7168 */ void setFastShotTimer();
    /* 800B7190 */ void cancelItemUseQuake(int);
    /* 800B71EC */ void cancelUpperItemReadyAnime(int);
    /* 800B72E4 */ void checkItemActorPointer();
    /* 800B7390 */ bool checkSwordTwirlAction();
    /* 800B74B4 */ BOOL checkUpperItemActionFly();
    /* 800B7528 */ void checkItemButtonChange();
    /* 800B75EC */ void checkUpperItemAction();
    /* 800B7B7C */ void orderPeep();
    /* 800B7BF8 */ int orderTalk(int);
    /* 800B80C4 */ int orderZTalk();
    /* 800B8374 */ void checkNormalAction();
    /* 800B8930 */ bool checkReadyItem();
    /* 800B8988 */ void checkItemAction();
    /* 800B9010 */ bool checkRAction();
    /* 800B9018 */ void checkMoveDoAction();
    /* 800B9148 */ BOOL checkSideRollAction(int);
    /* 800B9254 */ BOOL checkNoUpperAnime() const;
    /* 800B92D0 */ void checkOneHandItemEquipAnime() const;
    /* 800B92F8 */ void checkItemEquipAnime() const;
    /* 800B9340 */ BOOL checkEquipAnime() const;
    /* 800B9398 */ BOOL checkWindDashAnime() const;
    /* 800B93CC */ void checkSwordTwirlAnime() const;
    /* 800B93F4 */ void swordEquip(int);
    /* 800B9580 */ void swordUnequip();
    /* 800B9640 */ void itemEquip(u16);
    /* 800B96A4 */ void itemUnequip(u16, f32);
    /* 800B97EC */ bool checkFastUnequip();
    /* 800B983C */ void allUnequip(int);
    /* 800B994C */ BOOL checkItemChangeFromButton();
    /* 800B9D2C */ BOOL checkNextActionFromButton();
    /* 800B9F50 */ BOOL checkGroundSpecialMode();
    /* 800BA09C */ void commonCheckNextAction(int);
    /* 800BA0D0 */ int checkNextAction(int);
    /* 800BA6A0 */ void commonChangeItem();
    /* 800BA914 */ void setItemAction();
    /* 800BAF08 */ void checkNextActionFromCrouch(int);
    /* 800BAF80 */ int checkUpperReadyThrowAnime() const;
    /* 800BB020 */ void getBodyAngleXBasePos(cXyz*);
    /* 800BB084 */ void getBodyAngleXAtnActor(int);
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
    /* 800BDD70 */ void startPeepChange();
    /* 800BDE20 */ void setLastSceneDamage(int, u32*);
    /* 800BDE48 */ void setLastSceneMode(u32*);
    /* 800BDF60 */ void startRestartRoom(u32, int, int, int);
    /* 800BE26C */ void checkCoachGuardGame();
    /* 800BE2C0 */ void checkRoofRestart();
    /* 800BE3E4 */ bool checkRestartRoom();
    /* 800BE9D4 */ s16 getSceneExitMoveAngle();
    /* 800BEAF8 */ int checkSceneChange(int i_exitID);
    /* 800BF0B8 */ void voiceStartLevel(u32);
    /* 800BF0EC */ void seStartSwordCut(u32);
    /* 800BF194 */ void seStartMapInfo(u32);
    /* 800BF1CC */ void seStartMapInfoLevel(u32);
    /* 800BF204 */ void setBasAnime(daAlink_c::daAlink_UNDER);
    /* 800BF37C */ void initBasAnime();
    /* 800BF4E0 */ void resetBasAnime();
    /* 800BF500 */ void checkSightLine(f32, cXyz*);
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
    /* 800BFFCC */ void loadAramItemBtk(u16, J3DModel*);
    /* 800C0028 */ void loadAramItemBtp(u16, J3DModel*);
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
    /* 800C05DC */ bool checkNotHeavyBootsStage();
    /* 800C0630 */ bool checkNotAutoJumpStage();
    /* 800C0678 */ static bool checkCastleTownUseItem(u16);
    /* 800C077C */ void changeItemTriggerKeepProc(u8, int);
    /* 800C0A9C */ void checkNewItemChange(u8);
    /* 800C12DC */ void deleteEquipItem(int playSound, int deleteKantera);
    /* 800C1704 */ void setLight();
    /* 800C1CEC */ void setFrontRollCrashShock(u8);
    /* 800C1E0C */ void changeWarpMaterial(daAlink_c::daAlink_WARP_MAT_MODE);
    /* 800C1F6C */ void commonProcInit(daAlink_c::daAlink_PROC procID);
    /* 800C2DA4 */ BOOL commonProcInitNotSameProc(daAlink_PROC procID);
    /* 800C2DDC */ int procPreActionUnequipInit(int, fopAc_ac_c*);
    /* 800C2EAC */ void procPreActionUnequip();
    /* 800C3098 */ int procServiceWaitInit();
    /* 800C30F0 */ int procServiceWait();
    /* 800C3224 */ void procTiredWaitInit();
    /* 800C3338 */ int procTiredWait();
    /* 800C33B8 */ int procWaitInit();
    /* 800C3504 */ void procWait();
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
    /* 800C4514 */ void procSlide();
    /* 800C47AC */ int procSlideLandInit(int);
    /* 800C4894 */ int procSlideLand();
    /* 800C494C */ int procFrontRollInit();
    /* 800C4B40 */ void procFrontRoll();
    /* 800C4F14 */ void procFrontRollCrashInit();
    /* 800C4FFC */ void procFrontRollCrash();
    /* 800C5160 */ void procFrontRollSuccessInit();
    /* 800C5240 */ void procFrontRollSuccess();
    /* 800C5328 */ int procSideRollInit(int);
    /* 800C5484 */ void procSideRoll();
    /* 800C5700 */ void backJumpSpeedDec();
    /* 800C57A4 */ int procBackJumpInit(int);
    /* 800C5964 */ void procBackJump();
    /* 800C5A54 */ void procBackJumpLandInit(int);
    /* 800C5AF0 */ void procBackJumpLand();
    /* 800C5C28 */ void procSlipInit();
    /* 800C5CA4 */ void procSlip();
    /* 800C5E68 */ void procAutoJumpInit(int);
    /* 800C61EC */ void procAutoJump();
    /* 800C66DC */ void procDiveJumpInit();
    /* 800C6798 */ void procDiveJump();
    /* 800C6850 */ void procRollJumpInit();
    /* 800C692C */ void procRollJump();
    /* 800C6A48 */ int procFallInit(int, f32);
    /* 800C6D20 */ void procFall();
    /* 800C6F18 */ void procLandInit(f32);
    /* 800C6FE4 */ void procLand();
    /* 800C70F8 */ int procSmallJumpInit(int);
    /* 800C72D4 */ void procSmallJump();
    /* 800C74D4 */ void procStepMoveInit();
    /* 800C755C */ void procStepMove();
    /* 800C7690 */ void procCrouchInit();
    /* 800C76F8 */ void procCrouch();
    /* 800C77F4 */ int procCoMetamorphoseInit();
    /* 800C7C64 */ void procCoMetamorphose();
    /* 800C82E8 */ void procCoMetamorphoseOnlyInit();
    /* 800C83A0 */ void procCoMetamorphoseOnly();
    /* 800C8460 */ int procFloorDownReboundInit();
    /* 800C84D0 */ void procFloorDownRebound();
    /* 800C854C */ void procGoronRideWaitInit(fopAc_ac_c*);
    /* 800C85D8 */ void procGoronRideWait();
    /* 800C8700 */ int execute();
    /* 800CAFC8 */ void setDrawHand();
    /* 800CB480 */ bool checkSwordDraw();
    /* 800CB53C */ bool checkShieldDraw();
    /* 800CB5F8 */ bool checkItemDraw();
    /* 800CB694 */ void initShadowScaleLight();
    /* 800CBA38 */ void moveShadowScaleLight();
    /* 800CBC18 */ void shadowDraw();
    /* 800CC25C */ void modelCalc(J3DModel*);
    /* 800CC298 */ void basicModelDraw(J3DModel*);
    /* 800CC2E0 */ void modelDraw(J3DModel*, int);
    /* 800CC364 */ void setWaterDropColor(J3DGXColorS10 const*);
    /* 800CC7DC */ void initTevCustomColor();
    /* 800CC7FC */ void draw();
    /* 800CD7AC */ ~daAlink_c();
    /* 800CE294 */ void checkNoSubjectModeCamera();
    /* 800CE468 */ void acceptSubjectModeChange();
    /* 800CE628 */ void checkSubjectAction();
    /* 800CE728 */ void checkBodyAngleX(s16);
    /* 800CE8A0 */ void setBodyAngleToCamera();
    /* 800CEAF4 */ void setSubjectMode();
    /* 800CEB58 */ void subjectCancelTrigger();
    /* 800CEBD8 */ void checkSubjectEnd(int);
    /* 800CECE4 */ void searchPeepObj(fopAc_ac_c*, void*);
    /* 800CED84 */ void procCoSubjectivityInit();
    /* 800CEE08 */ void procCoSubjectivity();
    /* 800CEF70 */ void procCoSwimSubjectivityInit();
    /* 800CF018 */ void procCoSwimSubjectivity();
    /* 800CF100 */ void procCoPeepSubjectivityInit();
    /* 800CF1B8 */ void procCoPeepSubjectivity();
    /* 800CF380 */ daAlink_c();
    /* 800CFEB0 */ BOOL checkRideOn() const;
    /* 800CFF4C */ BOOL checkAttentionLock();
    /* 800D0020 */ BOOL checkFmChainGrabAnime() const;
    /* 800D0048 */ BOOL checkSmallUpperGuardAnime() const;
    /* 800D00EC */ u32 checkReinRide() const;
    /* 800D0110 */ BOOL checkWolfEnemyThrowAnime() const;
    /* 800D0138 */ int checkSpecialDemoMode() const;
    /* 800D014C */ void setMidnaTalkStatus(u8);
    /* 800D0164 */ void set3DStatus(u8, u8);
    /* 800D018C */ u32 checkModeFlg(u32) const;
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
    /* 800D1688 */ void setSwordAtParam(dCcG_At_Spl, u8, u8, int, f32, f32);
    /* 800D1788 */ static bool notSwordHitVibActor(fopAc_ac_c*);
    /* 800D17EC */ void setSwordHitVibration(dCcD_GObjInf*);
    /* 800D1920 */ BOOL checkAtShieldHit(dCcD_GObjInf&);
    /* 800D1978 */ bool checkCutReverseAt(dCcD_GObjInf*);
    /* 800D19C8 */ BOOL changeCutReverseProc(daAlink_c::daAlink_ANM);
    /* 800D1E1C */ void setCutDash(int, int);
    /* 800D20B4 */ BOOL checkForceSwordSwing();
    /* 800D20FC */ void setComboReserb();
    /* 800D2188 */ BOOL checkComboReserb();
    /* 800D21D0 */ bool commonCutAction();
    /* 800D2284 */ void setSwordVoiceSe(u32);
    /* 800D22BC */ void setSwordChargeVoiceSe();
    /* 800D2304 */ void setSwordComboVoice();
    /* 800D2368 */ bool checkCutTurnInputTrigger();
    /* 800D23C0 */ void checkCutAction();
    /* 800D26EC */ void getCutDirection();
    /* 800D2760 */ void checkCutCancelNextMode(int);
    /* 800D27E4 */ void checkDoCutAction();
    /* 800D2890 */ static BOOL checkCutBackState();
    /* 800D28F4 */ void checkCutHeadState();
    /* 800D29D4 */ void checkDownAttackState();
    /* 800D2ABC */ void checkCutLargeTurnState() const;
    /* 800D2B88 */ void cancelCutCharge();
    /* 800D2BFC */ void initCutAtnActorSearch();
    /* 800D2C54 */ void checkCutAtnActorChange();
    /* 800D2C78 */ void setCutJumpSpeed(int);
    /* 800D2F58 */ void procCutNormalInit(int);
    /* 800D31B8 */ void procCutNormal();
    /* 800D34D8 */ void procCutFinishInit(int);
    /* 800D382C */ void procCutFinish();
    /* 800D3ADC */ void procCutFinishJumpUpInit();
    /* 800D3CCC */ void procCutFinishJumpUp();
    /* 800D3DD8 */ void procCutFinishJumpUpLandInit();
    /* 800D3ECC */ void procCutFinishJumpUpLand();
    /* 800D4068 */ void procCutReverseInit(daAlink_c::daAlink_ANM);
    /* 800D41FC */ void procCutReverse();
    /* 800D42FC */ bool procCutJumpInit(int);
    /* 800D43F8 */ bool procCutJump();
    /* 800D452C */ void procCutJumpLandInit(int);
    /* 800D4684 */ void procCutJumpLand();
    /* 800D47DC */ void procCutTurnInit(int, int);
    /* 800D4A74 */ void procCutTurn();
    /* 800D4C68 */ void procCutTurnChargeInit();
    /* 800D4D04 */ void procCutTurnCharge();
    /* 800D4DDC */ void procCutTurnMoveInit(int);
    /* 800D4EFC */ void procCutTurnMove();
    /* 800D53C8 */ void procCutDownInit();
    /* 800D57F8 */ void procCutDown();
    /* 800D58A0 */ void procCutDownLandInit(fopEn_enemy_c*);
    /* 800D5ADC */ void procCutDownLand();
    /* 800D5C88 */ void procCutHeadInit();
    /* 800D5FC8 */ void procCutHead();
    /* 800D6130 */ void procCutHeadLandInit();
    /* 800D618C */ void procCutHeadLand();
    /* 800D6238 */ void procCutLargeJumpChargeInit();
    /* 800D62A0 */ void procCutLargeJumpCharge();
    /* 800D6374 */ void procCutLargeJumpInit();
    /* 800D6484 */ bool procCutLargeJump();
    /* 800D66C0 */ void procCutLargeJumpLandInit(int);
    /* 800D67FC */ void procCutLargeJumpLand();
    /* 800D698C */ void procSwordUnequipSpInit();
    /* 800D6A38 */ void procSwordUnequipSp();
    /* 800D6D94 */ void getFreezeR() const;
    /* 800D6DA4 */ void getFreezeG() const;
    /* 800D6DB4 */ void getFreezeB() const;
    /* 800D6DC4 */ void checkMiddleBossGoronRoom();
    /* 800D6E24 */ void freezeTimerDamage();
    /* 800D6F2C */ void checkNoLandDamageSlidePolygon();
    /* 800D6FE0 */ void checkCutLandDamage();
    /* 800D70A0 */ void checkCaughtEscapeCutTurn();
    /* 800D7208 */ f32 damageMagnification(int, int);
    /* 800D72BC */ void setDamagePoint(int, int, int, int);
    /* 800D7478 */ void setDamagePointNormal(int);
    /* 800D74A4 */ void setLandDamagePoint(int);
    /* 800D74F4 */ void getDamageVec(dCcD_GObjInf*);
    /* 800D76C4 */ void setDashDamage();
    /* 800D7768 */ void checkIcePolygonDamage(cBgS_PolyInfo*);
    /* 800D77C8 */ BOOL checkMagicArmorNoDamage();
    /* 800D7820 */ void checkPolyDamage();
    /* 800D7A98 */ void checkElecReturnDamage(dCcD_GObjInf&, fopAc_ac_c**);
    /* 800D7B18 */ void damageTimerCount();
    /* 800D7BE8 */ void checkHugeAttack(int) const;
    /* 800D7C14 */ void checkLargeAttack(int) const;
    /* 800D7C40 */ BOOL checkDamageAction();
    /* 800D8F3C */ void procDamageInit(dCcD_GObjInf*, int);
    /* 800D9514 */ void procDamage();
    /* 800D96DC */ void procCoLargeDamageInit(int, int, s16, s16, dCcD_GObjInf*, int);
    /* 800D9E88 */ void procCoLargeDamage();
    /* 800DA180 */ void procLargeDamageUpInit(int, int, s16, s16);
    /* 800DA554 */ void procLargeDamageUp();
    /* 800DA82C */ void procCoLargeDamageWallInit(int, int, s16, s16);
    /* 800DAC28 */ void procCoLargeDamageWall();
    /* 800DAC84 */ void procCoPolyDamageInit();
    /* 800DAD90 */ void procCoPolyDamage();
    /* 800DAE10 */ void procLandDamageInit(int);
    /* 800DB060 */ void procLandDamage();
    /* 800DB140 */ void procCoElecDamageInit(fopAc_ac_c*, dCcD_GObjInf*, int);
    /* 800DB418 */ void procCoElecDamage();
    /* 800DB5B0 */ void procStEscapeInit();
    /* 800DB610 */ void procStEscape();
    /* 800DB6A4 */ void procDkCaughtInit(unsigned int);
    /* 800DB860 */ void procDkCaught();
    /* 800DBC98 */ void setScreamWaitAnime();
    /* 800DBD1C */ void procScreamWaitInit();
    /* 800DBDA4 */ void procScreamWait();
    /* 800DBE00 */ void procCoSandWallHitInit();
    /* 800DBE74 */ void procCoSandWallHit();
    /* 800DBED8 */ void procCoLavaReturnInit(int);
    /* 800DC214 */ void procCoLavaReturn();
    /* 800DC278 */ void procCoSwimFreezeReturnInit();
    /* 800DC474 */ void procCoSwimFreezeReturn();
    /* 800DC548 */ static BOOL checkEnemyGroup(fopAc_ac_c*);
    /* 800DC5A4 */ static BOOL checkSpecialNpc(fopAc_ac_c*);
    /* 800DC5DC */ bool checkShieldAttackEmphasys();
    /* 800DC678 */ BOOL checkGuardActionChange();
    /* 800DC79C */ void stickArrowIncrement(int);
    /* 800DC8C4 */ void setArrowShieldActor(fopAc_ac_c*, int);
    /* 800DCA2C */ void checkWoodShieldEquipNotIronBall() const;
    /* 800DCA80 */ void getArrowShieldOffset(cXyz const*, csXyz const*, cXyz*, cXyz*) const;
    /* 800DCD74 */ void setArrowShieldPos(cXyz*, csXyz*, cXyz const*, cXyz const*) const;
    /* 800DCDF0 */ BOOL checkUpperGuardAnime() const;
    /* 800DCF04 */ void checkPlayerGuardAndAttack() const;
    /* 800DCF64 */ void checkGuardAccept();
    /* 800DD008 */ void setUpperGuardAnime(f32);
    /* 800DD018 */ void setShieldGuard();
    /* 800DD114 */ void setGuardSe(dCcD_GObjInf*);
    /* 800DD1D4 */ void setSmallGuard(dCcD_GObjInf*);
    /* 800DD3E4 */ void procGuardSlipInit(int, dCcD_GObjInf*);
    /* 800DD894 */ void procGuardSlip();
    /* 800DDA10 */ void procGuardAttackInit();
    /* 800DDBA8 */ void procGuardAttack();
    /* 800DDE58 */ void procGuardBreakInit();
    /* 800DDF2C */ void procGuardBreak();
    /* 800DE008 */ bool procTurnMoveInit(int);
    /* 800DE380 */ void procTurnMove();
    /* 800DE64C */ void getArrowFlyData(f32*, f32*, int) const;
    /* 800DE740 */ void getArrowIncAtR() const;
    /* 800DE750 */ void getBombArrowFlyExplodeTime() const;
    /* 800DE760 */ void getArrowIncAtMaxStart() const;
    /* 800DE770 */ void getArrowIncAtMax() const;
    /* 800DE780 */ BOOL checkBowAndSlingItem(int);
    /* 800DE7D4 */ void setSlingModel();
    /* 800DE884 */ void checkBowCameraArrowPosP(s16*, s16*);
    /* 800DE9B8 */ void checkBowReadyAnime() const;
    /* 800DE9E8 */ void checkBowAnime() const;
    /* 800DEA3C */ void makeArrow();
    /* 800DEAE4 */ void deleteArrow();
    /* 800DEB8C */ void setBowOrSlingStatus();
    /* 800DEBC8 */ void changeArrowType();
    /* 800DED88 */ void cancelBowMoveRideNotAtn();
    /* 800DEE1C */ void cancelBowMove();
    /* 800DEEDC */ void setBowReadyAnime();
    /* 800DEFB8 */ void setBowReloadAnime();
    /* 800DF0BC */ void checkUpperItemActionBow();
    /* 800DF798 */ void checkUpperItemActionBowFly();
    /* 800DF814 */ void checkNextActionBow();
    /* 800DFAE8 */ void setBowModel();
    /* 800DFBC8 */ bool checkBowGrabLeftHand() const;
    /* 800DFC28 */ void setBowHangAnime();
    /* 800DFC70 */ void setBowNormalAnime();
    /* 800DFCD8 */ void setBowSight();
    /* 800DFD6C */ void procBowSubjectInit();
    /* 800DFDDC */ void procBowSubject();
    /* 800DFE3C */ void procBowMoveInit();
    /* 800DFEC0 */ void procBowMove();
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
    /* 800E08C4 */ void returnBoomerang(int);
    /* 800E0A9C */ void checkUpperItemActionBoomerang();
    /* 800E0B58 */ void checkUpperItemActionBoomerangFly();
    /* 800E0BE4 */ void checkNextActionBoomerang();
    /* 800E0D8C */ void checkBoomerangCatchAction();
    /* 800E0E64 */ void setBoomerangSight();
    /* 800E0F10 */ void procBoomerangSubjectInit();
    /* 800E0FA0 */ void procBoomerangSubject();
    /* 800E1060 */ void procBoomerangMoveInit();
    /* 800E10F4 */ void procBoomerangMove();
    /* 800E11D8 */ void procBoomerangCatchInit();
    /* 800E1248 */ void procBoomerangCatch();
    /* 800E12E0 */ static BOOL checkLv6BossRoom();
    /* 800E1310 */ f32 getCopyRodBallSpeed() const;
    /* 800E1320 */ f32 getCopyRodBallReturnSpeed() const;
    /* 800E1330 */ f32 getCopyRodBallDisMax() const;
    /* 800E1374 */ fopAc_ac_c* getCopyRodControllActor();
    /* 800E1390 */ fopAc_ac_c* getCopyRodCameraActor();
    /* 800E13AC */ void initCopyRodUpperAnimeSpeed(int);
    /* 800E1408 */ static BOOL checkForestOldCentury();
    /* 800E1530 */ void checkCopyRodAnime() const;
    /* 800E158C */ void setCopyRodControllAnime();
    /* 800E15FC */ void setCopyRodControllUpperSpeedRate();
    /* 800E1748 */ void setCopyRodModel();
    /* 800E1840 */ void setCopyRodReadyAnime();
    /* 800E191C */ void throwCopyRod();
    /* 800E1A30 */ void returnCopyRod();
    /* 800E1ADC */ void checkUpperItemActionCopyRod();
    /* 800E1BB4 */ void checkUpperItemActionCopyRodFly();
    /* 800E1C44 */ void checkNextActionCopyRod();
    /* 800E1D6C */ void setCopyRodSight();
    /* 800E1E20 */ void procCopyRodSubjectInit();
    /* 800E1EB0 */ void procCopyRodSubject();
    /* 800E1F68 */ void procCopyRodMoveInit();
    /* 800E1FFC */ void procCopyRodMove();
    /* 800E20C8 */ void procCopyRodSwingInit();
    /* 800E21FC */ void procCopyRodSwing();
    /* 800E2308 */ void procCopyRodReviveInit();
    /* 800E23A4 */ void procCopyRodRevive();
    /* 800E23FC */ void concatMagneBootMtx();
    /* 800E243C */ void concatMagneBootInvMtx();
    /* 800E247C */ void multVecMagneBootInvMtx(cXyz*);
    /* 800E24B0 */ int commonMagneLineCheck(cXyz*, cXyz*);
    /* 800E251C */ void checkBootsMoveAnime(int);
    /* 800E2580 */ void setHeavyBoots(int);
    /* 800E2738 */ s16 getMagneBootsLocalAngleY(s16, int);
    /* 800E2808 */ void setMagneBootsMtx(cBgS_PolyInfo*, int);
    /* 800E2DC4 */ void cancelMagneBootsOn();
    /* 800E2F88 */ int checkMagneBootsFly();
    /* 800E3048 */ void procBootsEquipInit();
    /* 800E30DC */ void procBootsEquip();
    /* 800E3218 */ int procMagneBootsFlyInit();
    /* 800E3454 */ void procMagneBootsFly();
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
    /* 800E38EC */ void checkGrabLineCheck();
    /* 800E3BCC */ void getGrabThrowRate();
    /* 800E3C1C */ void checkGrabThrowAnime() const;
    /* 800E3C6C */ void checkGrabAnime() const;
    /* 800E3C9C */ void checkGrabAnimeAndThrow() const;
    /* 800E3CF4 */ BOOL checkGrabCarryActor();
    /* 800E3D1C */ void checkGrabSlowMoveActor();
    /* 800E3D6C */ void checkGrabHeavyActor();
    /* 800E3D94 */ void checkGrabSideActor();
    /* 800E3DBC */ void setGrabUpperAnime(f32);
    /* 800E3F20 */ BOOL checkGrabRooster();
    /* 800E3F50 */ void setGrabItemPos();
    /* 800E4BD4 */ void freeGrabItem();
    /* 800E4DEC */ void setGrabUpperSpeedRate();
    /* 800E4FA8 */ void setCarryArmAngle(f32, f32);
    /* 800E5150 */ void checkGrabNotThrow();
    /* 800E5170 */ void checkNextActionGrab();
    /* 800E53AC */ void initGrabNextMode();
    /* 800E53F8 */ void setGrabItemThrow();
    /* 800E57AC */ void checkUpperGrabItemThrow(f32);
    /* 800E5830 */ void putObjLineCheck(dBgS_LinChk&, cXyz*, fopAc_ac_c*);
    /* 800E5B6C */ void grabLineCheck(cXyz*, cXyz*);
    /* 800E5BB4 */ void setGrabItemActor(fopAc_ac_c*);
    /* 800E5CBC */ void procGrabReadyInit();
    /* 800E5EC8 */ void procGrabReady();
    /* 800E5FD0 */ void procGrabUpInit();
    /* 800E6230 */ void procGrabUp();
    /* 800E637C */ void procGrabMiss();
    /* 800E63F0 */ void procGrabThrowInit(int);
    /* 800E65F8 */ void procGrabThrow();
    /* 800E672C */ void procGrabPutInit();
    /* 800E6914 */ void procGrabPut();
    /* 800E6A9C */ void procGrabWaitInit();
    /* 800E6C34 */ void procGrabWait();
    /* 800E6D6C */ void procGrabReboundInit(int);
    /* 800E6E0C */ void procGrabRebound();
    /* 800E6EEC */ void procGrabStandInit();
    /* 800E6FE0 */ void procGrabStand();
    /* 800E70C0 */ bool checkInsectActorName(fopAc_ac_c*);
    /* 800E70FC */ void procInsectCatchInit();
    /* 800E71D4 */ bool procInsectCatch();
    /* 800E7254 */ void procPickUpInit();
    /* 800E7460 */ void procPickUp();
    /* 800E75EC */ void procPickPutInit(int);
    /* 800E76E0 */ void procPickPut();
    /* 800E7894 */ void checkSetChainPullAnime(s16);
    /* 800E794C */ s16 getChainStickAngleY(s16) const;
    /* 800E7994 */ u8 checkChainEmphasys();
    /* 800E79F8 */ void searchFmChainPos();
    /* 800E7AEC */ void setFmChainPosFromOut(fopAc_ac_c*, cXyz*, int);
    /* 800E7C30 */ void procFmChainUpInit();
    /* 800E7CC0 */ void procFmChainUp();
    /* 800E7DD8 */ void procFmChainStrongPullInit();
    /* 800E7E50 */ void procFmChainStrongPull();
    /* 800E7ED0 */ void setWallGrabStatus(u8, u8);
    /* 800E7EE4 */ int getWallGrabStatus();
    /* 800E7EF4 */ void wallGrabTrigger();
    /* 800E7F18 */ void wallGrabButton();
    /* 800E7F3C */ void setPushPullKeepData(dBgW_Base::PushPullLabel, int);
    /* 800E80A4 */ void checkPushPullTurnBlock();
    /* 800E8148 */ void checkPullBehindWall();
    /* 800E8298 */ void offGoatStopGame();
    /* 800E82B0 */ BOOL checkGoatCatchActor(fopAc_ac_c*);
    /* 800E8314 */ f32 getGoatCatchDistance2();
    /* 800E8334 */ void endPushPull();
    /* 800E8354 */ void getPushPullAnimeSpeed();
    /* 800E8428 */ void procCoPushPullWaitInit(int);
    /* 800E857C */ void procCoPushPullWait();
    /* 800E875C */ void procCoPushMoveInit(int, int);
    /* 800E89F0 */ void procCoPushMove();
    /* 800E8D1C */ void procPullMoveInit(int);
    /* 800E8F44 */ void procPullMove();
    /* 800E9210 */ void setGoatStopGameFail(fopAc_ac_c*);
    /* 800E9344 */ void procGoatMoveInit();
    /* 800E9434 */ void procGoatMove();
    /* 800E9894 */ void procGoatCatchInit(fopAc_ac_c*, f32);
    /* 800E9BD0 */ void procGoatCatch();
    /* 800EA2A8 */ void procGoatStrokeInit();
    /* 800EA3AC */ void procGoatStroke();
    /* 800EA3F4 */ void procGoronMoveInit();
    /* 800EA4CC */ void procGoronMove();
    /* 800EA844 */ void checkSumouVsActor();
    /* 800EA8D0 */ void cancelSumouMode();
    /* 800EA908 */ void sumouPunchTrigger();
    /* 800EA92C */ void setSumouPunchStatus();
    /* 800EA950 */ void procSumouReadyInit();
    /* 800EAA28 */ void procSumouReady();
    /* 800EAC4C */ void procSumouMoveInit();
    /* 800EAD84 */ void procSumouMove();
    /* 800EB208 */ void procSumouSideMoveInit();
    /* 800EB2BC */ void procSumouSideMove();
    /* 800EB624 */ void procSumouActionInit(int, int, int);
    /* 800EBCE0 */ void procSumouAction();
    /* 800EC0F8 */ void procSumouStaggerInit();
    /* 800EC170 */ void procSumouStagger();
    /* 800EC20C */ void procSumouWinLoseInit();
    /* 800EC3D8 */ void procSumouWinLose();
    /* 800EC538 */ void procSumouShikoInit();
    /* 800EC5F4 */ void procSumouShiko();
    /* 800EC76C */ void checkHorseZeldaBowMode();
    /* 800EC7B0 */ void setHorseZeldaDamage();
    /* 800EC7DC */ bool checkHorseDashAccept();
    /* 800EC814 */ void checkCowGame();
    /* 800EC87C */ void getReinRideDirection();
    /* 800EC8F8 */ void checkReinRideBgCheck();
    /* 800ECA3C */ void commonInitForceRideRein();
    /* 800ECAAC */ void initForceRideBoar();
    /* 800ECB58 */ void initForceRideHorse();
    /* 800ECBD0 */ void rideGetOff();
    /* 800ECD90 */ void checkHorseNotDamageReaction() const;
    /* 800ECDC4 */ void checkHorseWaitLashAnime() const;
    /* 800ECDEC */ void checkHorseReinLeftOnly() const;
    /* 800ECE10 */ void getReinHandType() const;
    /* 800ECF04 */ BOOL checkHorseLieAnime() const;
    /* 800ECF5C */ void checkHorseSubjectivity() const;
    /* 800ECF9C */ void setHorseSwordUpAnime();
    /* 800ECFF4 */ void setHorseTurnUpperAnime(int);
    /* 800ED074 */ BOOL checkHorseNoUpperAnime() const;
    /* 800ED0D4 */ void getHorseReinHandPos(cXyz*, cXyz*);
    /* 800ED1F0 */ void checkHorseNotGrab() const;
    /* 800ED310 */ void setHorseStirrup();
    /* 800ED4B8 */ void changeBoarRunRide();
    /* 800ED4DC */ void setSyncHorsePos();
    /* 800ED78C */ void setSyncBoarPos();
    /* 800ED90C */ void setSyncBoarRunPos();
    /* 800EDA24 */ void setSyncRidePos();
    /* 800EDA78 */ void setHorseTurnAnime();
    /* 800EDB48 */ void getBaseHorseAnime(daAlink_c::daAlink_ANM*);
    /* 800EDD6C */ void checkHorseSpecialProc();
    /* 800EDE8C */ void checkHorseServiceWaitAnime();
    /* 800EDEEC */ void setSyncHorse(int);
    /* 800EE64C */ void setSyncBoar(int);
    /* 800EE918 */ void setSyncRide(int);
    /* 800EEAE8 */ void setBaseHorseAnimeFrame();
    /* 800EEC98 */ void setBaseBoarAnime();
    /* 800EED98 */ void setBaseRideAnime();
    /* 800EEE30 */ void checkHorseSwordUpSpped();
    /* 800EEE5C */ void setHorseSwordUp(int);
    /* 800EEF30 */ void setRideSubjectAngle(s16);
    /* 800EF050 */ void setBodyAngleRideReadyAnime();
    /* 800EF0E8 */ void checkHorseGetOffWallCheck(cXyz*, cXyz*, s16);
    /* 800EF198 */ void checkHorseGetOffDirection();
    /* 800EF35C */ void boarForceGetOff();
    /* 800EF394 */ void horseGetOffEnd();
    /* 800EF450 */ void checkNextActionHorse();
    /* 800EF598 */ void checkHorseGetOff();
    /* 800EF6B0 */ void checkHorseGetOffAndSetDoStatus();
    /* 800EF884 */ void setHorseGetOff(int);
    /* 800EF95C */ void procHorseRideInit();
    /* 800EFDC4 */ void procHorseRide();
    /* 800F038C */ void procHorseGetOffInit(int);
    /* 800F0620 */ void procHorseGetOff();
    /* 800F0980 */ void procHorseWaitInit();
    /* 800F0AA4 */ void procHorseWait();
    /* 800F0C6C */ void procHorseTurnInit();
    /* 800F0CE4 */ void procHorseTurn();
    /* 800F1060 */ void procHorseJumpInit();
    /* 800F10F8 */ void procHorseJump();
    /* 800F1188 */ void procHorseLandInit();
    /* 800F1204 */ void procHorseLand();
    /* 800F1294 */ void procHorseSubjectivityInit();
    /* 800F12F8 */ void procHorseSubjectivity();
    /* 800F13D8 */ void procHorseCutInit();
    /* 800F1688 */ void procHorseCut();
    /* 800F1894 */ void procHorseCutChargeReadyInit();
    /* 800F194C */ void procHorseCutChargeReady();
    /* 800F1AAC */ void procHorseCutTurnInit();
    /* 800F1BA4 */ void procHorseCutTurn();
    /* 800F1D18 */ void procHorseDamageInit(dCcD_GObjInf*);
    /* 800F2028 */ void procHorseDamage();
    /* 800F2150 */ void procHorseBowSubjectInit();
    /* 800F21B4 */ void procHorseBowSubject();
    /* 800F224C */ void procHorseBowMoveInit();
    /* 800F22A8 */ void procHorseBowMove();
    /* 800F2334 */ void procHorseGrabMoveInit();
    /* 800F2390 */ void procHorseGrabMove();
    /* 800F2454 */ void procHorseBoomerangSubjectInit();
    /* 800F24C8 */ void procHorseBoomerangSubject();
    /* 800F25B4 */ void procHorseBoomerangMoveInit();
    /* 800F2628 */ void procHorseBoomerangMove();
    /* 800F26F4 */ void procHorseHookshotSubjectInit();
    /* 800F2770 */ void procHorseHookshotSubject();
    /* 800F2824 */ void procHorseHookshotMoveInit();
    /* 800F2898 */ void procHorseHookshotMove();
    /* 800F2934 */ void procHorseBottleDrinkInit(u16);
    /* 800F2AD8 */ void procHorseBottleDrink();
    /* 800F2B4C */ void procHorseKandelaarPourInit();
    /* 800F2C78 */ void procHorseKandelaarPour();
    /* 800F2D84 */ void procHorseComebackInit();
    /* 800F2DE4 */ void procHorseComeback();
    /* 800F2EE0 */ void procHorseRunInit();
    /* 800F2F98 */ void procHorseRun();
    /* 800F3430 */ void procHorseHangInit(dCcD_GObjInf*, int);
    /* 800F3580 */ void procHorseHang();
    /* 800F36E4 */ void procHorseGetKeyInit();
    /* 800F3754 */ void procHorseGetKey();
    /* 800F3818 */ void procHorseLookDownInit();
    /* 800F3894 */ void procHorseLookDown();
    /* 800F38E8 */ void procBoarRunInit();
    /* 800F3998 */ void procBoarRun();
    /* 800F3BB0 */ void getCanoeMaxSpeed() const;
    /* 800F3BDC */ void getCanoeBackMaxSpeed() const;
    /* 800F3BEC */ void getCanoeCres() const;
    /* 800F3C18 */ void getCanoeSpeedRate() const;
    /* 800F3C44 */ void getCanoeMaxRotSpeed() const;
    /* 800F3CCC */ void getCanoeLocalPaddleTop();
    /* 800F3CF8 */ void checkCanoeRideTandem();
    /* 800F3D58 */ BOOL checkFishingRodAndLureItem() const;
    /* 800F3DA0 */ void initFishingRodHand();
    /* 800F3DFC */ void getCanoePaddleMatrix();
    /* 800F3E4C */ void checkFishingRodGrab(fopAc_ac_c*) const;
    /* 800F3EB8 */ void checkCanoePaddleGrab(fopAc_ac_c*) const;
    /* 800F3F38 */ void checkCanoeFishingRodGrabOrPut() const;
    /* 800F3FC4 */ void initCanoeRide();
    /* 800F4008 */ BOOL checkCanoeJumpRide();
    /* 800F40E4 */ void setArmReelAnime();
    /* 800F4140 */ void setFishingWaitAction();
    /* 800F4490 */ void setFishGetFace();
    /* 800F4564 */ void setRideCanoeBasePos(fopAc_ac_c*);
    /* 800F459C */ void setSyncCanoePos();
    /* 800F47D8 */ void canoeCommon();
    /* 800F4924 */ void checkNextActionCanoe();
    /* 800F4A50 */ void procCanoeRideInit();
    /* 800F4B90 */ void procCanoeRide();
    /* 800F4C78 */ void procCanoeJumpRideInit(fopAc_ac_c*);
    /* 800F4D84 */ void procCanoeJumpRide();
    /* 800F4DF8 */ void procCanoeGetOffInit();
    /* 800F5048 */ void procCanoeGetOff();
    /* 800F51E4 */ void procCanoeWaitInit(int);
    /* 800F542C */ void procCanoeWait();
    /* 800F571C */ void procCanoeRowInit(int);
    /* 800F5A1C */ void procCanoeRow();
    /* 800F5D04 */ void procCanoePaddleShiftInit(int);
    /* 800F5DB8 */ void procCanoePaddleShift();
    /* 800F5EA8 */ void procCanoePaddlePutInit(int);
    /* 800F5FEC */ void procCanoePaddlePut();
    /* 800F6140 */ void procCanoePaddleGrabInit();
    /* 800F6188 */ void procCanoePaddleGrab();
    /* 800F6320 */ void procCanoeRodGrabInit();
    /* 800F6394 */ void procCanoeRodGrab();
    /* 800F6464 */ void procCanoeFishingWaitInit();
    /* 800F659C */ void procCanoeFishingWait();
    /* 800F67C0 */ void procCanoeFishingReelInit();
    /* 800F6874 */ void procCanoeFishingReel();
    /* 800F69D4 */ void procCanoeFishingGetInit();
    /* 800F6A70 */ void procCanoeFishingGet();
    /* 800F6BEC */ void procCanoeSubjectivityInit();
    /* 800F6C30 */ void procCanoeSubjectivity();
    /* 800F6D10 */ void procCanoeBowSubjectInit();
    /* 800F6D64 */ void procCanoeBowSubject();
    /* 800F6DF0 */ void procCanoeBowMoveInit();
    /* 800F6E44 */ void procCanoeBowMove();
    /* 800F6EB0 */ void procCanoeGrabMoveInit();
    /* 800F6EFC */ void procCanoeGrabMove();
    /* 800F6FA4 */ void procCanoeBoomerangSubjectInit();
    /* 800F7010 */ void procCanoeBoomerangSubject();
    /* 800F70F0 */ void procCanoeBoomerangMoveInit();
    /* 800F715C */ void procCanoeBoomerangMove();
    /* 800F7208 */ void procCanoeHookshotSubjectInit();
    /* 800F7274 */ void procCanoeHookshotSubject();
    /* 800F731C */ void procCanoeHookshotMoveInit();
    /* 800F7388 */ void procCanoeHookshotMove();
    /* 800F7404 */ void procCanoeBottleDrinkInit(u16);
    /* 800F7550 */ void procCanoeBottleDrink();
    /* 800F75BC */ void procCanoeKandelaarPourInit();
    /* 800F7684 */ void procCanoeKandelaarPour();
    /* 800F7708 */ void setGroundFishingRodActor();
    /* 800F7760 */ void procFishingCastInit();
    /* 800F7814 */ void procFishingCast();
    /* 800F7988 */ void procFishingFoodInit();
    /* 800F7AA8 */ void procFishingFood();
    /* 800F7C50 */ void getCrawlMoveAnmSpeed();
    /* 800F7C74 */ void getCrawlMoveSpeed();
    /* 800F7CE8 */ void setCrawlMoveDirectionArrow();
    /* 800F7E48 */ void changeCrawlAutoMoveProc(cXyz*);
    /* 800F81C0 */ void getCrawlMoveVec(cXyz*, cXyz*, cXyz*, int, int, u8*);
    /* 800F85C0 */ void crawlBgCheck(cXyz*, cXyz*, int);
    /* 800F8700 */ void checkCrawlSideWall(cXyz*, cXyz*, cXyz*, cXyz*, s16*, s16*);
    /* 800F88F8 */ void decideCrawlDoStatus();
    /* 800F89E0 */ void checkNotCrawlStand(cXyz*);
    /* 800F8A50 */ void checkNotCrawlStand(cXyz*, cXyz*);
    /* 800F8B00 */ void checkCrawlInHoll(cXyz*, cXyz*, cXyz*, int);
    /* 800F8D04 */ void setCrawlMoveHoll();
    /* 800F8DBC */ void setCrawlMoveAngle();
    /* 800F8F08 */ void stopHalfMoveAnime(f32);
    /* 800F8F84 */ void setCrawlAutoMoveAimPos();
    /* 800F9210 */ void procCrawlStartInit();
    /* 800F9384 */ void procCrawlStart();
    /* 800F9474 */ void procCrawlMoveInit(s16, s16);
    /* 800F95B8 */ void procCrawlMove();
    /* 800F99FC */ void procCrawlAutoMoveInit(int, cXyz*);
    /* 800F9ABC */ void procCrawlAutoMove();
    /* 800F9D7C */ void procCrawlEndInit(int, s16, s16);
    /* 800F9F30 */ void procCrawlEnd();
    /* 800F9FDC */ void getHangMoveAnmSpeed();
    /* 800F9FFC */ void getHangDirectionFromAngle();
    /* 800FA070 */ void hangMoveBgCheck(s16, cXyz*);
    /* 800FA338 */ void changeHangMoveProc(int);
    /* 800FA5C8 */ void checkHangFootWall();
    /* 800FA6E4 */ void setHangGroundY();
    /* 800FA78C */ void changeHangEndProc();
    /* 800FA85C */ void checkHangStartSideWall(s16);
    /* 800FAA7C */ void procHangStartInit();
    /* 800FAE14 */ void procHangStart();
    /* 800FAECC */ void procHangFallStartInit(cM3dGPla*);
    /* 800FB1A4 */ void procHangFallStart();
    /* 800FB2A0 */ void procHangUpInit(int);
    /* 800FB328 */ void procHangUp();
    /* 800FB43C */ void procHangWaitInit();
    /* 800FB544 */ void procHangWait();
    /* 800FB650 */ void procHangMoveInit(int);
    /* 800FB790 */ void procHangMove();
    /* 800FBBC8 */ void procHangClimbInit(f32);
    /* 800FBCD4 */ void procHangClimb();
    /* 800FBE04 */ void procHangWallCatchInit();
    /* 800FC0D8 */ void procHangWallCatch();
    /* 800FC178 */ void procHangReadyInit();
    /* 800FC240 */ void procHangReady();
    /* 800FC2F4 */ void procHangLeverDownInit();
    /* 800FC390 */ void procHangLeverDown();
    /* 800FC5A4 */ void setDragonHangPos();
    /* 800FC6B4 */ void setOctaIealHangPos();
    /* 800FC748 */ void setBossBodyHangPos();
    /* 800FC77C */ void procBossBodyHangInit(fopAc_ac_c*);
    /* 800FC870 */ void procBossBodyHang();
    /* 800FCF58 */ void getLadderUnitCount() const;
    /* 800FCF84 */ void setLadderInit();
    /* 800FD048 */ void setLadderPosInit();
    /* 800FD1F0 */ void setLadderPos(int);
    /* 800FD288 */ void getLadderMoveAnmSpeed();
    /* 800FD2AC */ void changeLadderMoveProc(int);
    /* 800FD4A8 */ void setMoveBGLadderCorrect();
    /* 800FD5E4 */ void checkLadderFall();
    /* 800FD648 */ void procLadderUpStartInit();
    /* 800FD7B0 */ void procLadderUpStart();
    /* 800FD824 */ void procLadderUpEndInit(int);
    /* 800FD8E8 */ void procLadderUpEnd();
    /* 800FD9CC */ void procLadderDownStartInit();
    /* 800FDB74 */ void procLadderDownStart();
    /* 800FDC18 */ void procLadderDownEndInit(int);
    /* 800FDCCC */ void procLadderDownEnd();
    /* 800FDD90 */ void procLadderMoveInit(int, int, cXyz*);
    /* 800FDF50 */ void procLadderMove();
    /* 800FE010 */ void getClimbMoveUpDownAnmSpeed();
    /* 800FE034 */ void getClimbMoveSideAnmSpeed();
    /* 800FE058 */ void checkClimbCode(cBgS_PolyInfo&);
    /* 800FE114 */ void setClimbInit();
    /* 800FE174 */ void setClimbShapeOffset();
    /* 800FE3C4 */ void getClimbDirectionFromAngle();
    /* 800FE438 */ void changeClimbMoveProc(int);
    /* 800FE5A0 */ void checkClimbMoveUpDownProc(int);
    /* 800FE6E8 */ void checkClimbMoveSideProc(int);
    /* 800FE868 */ void setMoveBGClimbCorrect();
    /* 800FEB90 */ void checkBgCorrectClimbMove(cXyz*, cXyz*);
    /* 800FEC70 */ void checkClimbRoof(f32);
    /* 800FED50 */ void checkClimbGround(cXyz*, f32);
    /* 800FEEC0 */ void checkBgClimbMove(int);
    /* 800FF28C */ void setClimbStartNotGround();
    /* 800FF450 */ void procClimbUpStartInit(int);
    /* 800FF704 */ void procClimbUpStart();
    /* 800FF818 */ void procClimbDownStartInit(s16);
    /* 800FF9A8 */ void procClimbDownStart();
    /* 800FFAB0 */ void procClimbMoveUpDownInit(int);
    /* 800FFC58 */ void procClimbMoveUpDown();
    /* 800FFDB0 */ void procClimbMoveSideInit();
    /* 800FFF4C */ void procClimbMoveSide();
    /* 801000F8 */ void procClimbWaitInit(int, int);
    /* 80100258 */ void procClimbWait();
    /* 801003E4 */ void procClimbToRoofInit();
    /* 80100464 */ void procClimbToRoof();
    /* 801005CC */ void getRoofHangFMoveAnmSpeed() const;
    /* 801005F0 */ void getRoofHangSMoveAnmSpeed() const;
    /* 80100614 */ void setRoofHangHandOnSE(cBgS_PolyInfo*);
    /* 80100668 */ void checkRoofHangMovePos();
    /* 80100770 */ void commonRoofHangProc();
    /* 801008EC */ void checkNextActionRoofHang();
    /* 80100A10 */ void procRoofHangStartInit(cBgS_PolyInfo const&, cXyz const&, int);
    /* 80100AE4 */ void procRoofHangStart();
    /* 80100BB4 */ void procRoofHangWaitInit(int);
    /* 80100D38 */ void procRoofHangWait();
    /* 80100DA4 */ void procRoofHangFrontMoveInit();
    /* 80100EEC */ void procRoofHangFrontMove();
    /* 8010121C */ void procRoofHangSideMoveInit();
    /* 80101308 */ void procRoofHangSideMove();
    /* 801013B8 */ void procRoofHangTurnInit();
    /* 80101534 */ void procRoofHangTurn();
    /* 8010163C */ void setRoofHangSwitch();
    /* 801016AC */ void procRoofSwitchHangInit(fopAc_ac_c*);
    /* 801017AC */ void procRoofSwitchHang();
    /* 80101890 */ BOOL checkZoraWearMaskDraw();
    /* 801018E4 */ void checkAcceptUseItemInWater(u16) const;
    /* 80101934 */ void swimDeleteItem();
    /* 801019B8 */ bool getZoraSwim() const;
    /* 80101A18 */ void getSwimFrontMaxSpeed() const;
    /* 80101AA8 */ void getSwimMaxFallSpeed() const;
    /* 80101B44 */ void checkOxygenTimer();
    /* 80101C94 */ void offOxygenTimer();
    /* 80101CB8 */ bool checkPossibleWaterInMode() const;
    /* 80101CF4 */ void setWaterInAnmRate(daPy_frameCtrl_c*, f32);
    /* 80101D70 */ void swimBgCheck(f32);
    /* 801023E4 */ void setSpeedAndAngleSwim();
    /* 801029C8 */ void checkNextActionSwim();
    /* 80102B1C */ void checkSwimAction(int);
    /* 80103058 */ void checkSwimUpAction();
    /* 801032C8 */ void swimOutAfter(int);
    /* 80103398 */ void checkSwimFall();
    /* 801033CC */ void checkSwimOutAction();
    /* 80103698 */ void setSwimMoveAnime();
    /* 80103EE0 */ void checkSwimButtonAccept();
    /* 80103F08 */ void checkUpSwimButtonAccept();
    /* 80103F24 */ void checkSwimButtonMove();
    /* 80103F94 */ void checkZoraSwimMove();
    /* 80103FE8 */ void checkSwimNeckUpDown() const;
    /* 80104034 */ void setSwimUpDownOffset();
    /* 801040F8 */ void procSwimUpInit();
    /* 801041E8 */ void procSwimUp();
    /* 801042F8 */ void procSwimWaitInit(int);
    /* 801044B4 */ void procSwimWait();
    /* 80104670 */ void procSwimMoveInit();
    /* 801047B8 */ void procSwimMove();
    /* 80104958 */ void procSwimDiveInit();
    /* 80104AA0 */ void procSwimDive();
    /* 80104C50 */ void procSwimHookshotSubjectInit();
    /* 80104D7C */ void procSwimHookshotSubject();
    /* 80104EB8 */ void procSwimHookshotMoveInit();
    /* 80104FC4 */ void procSwimHookshotMove();
    /* 8010519C */ void procSwimDamageInit(dCcD_GObjInf*);
    /* 80105728 */ void procSwimDamage();
    /* 801058A0 */ void procOctaIealSpitInit();
    /* 80105A00 */ void procOctaIealSpit();
    /* 80105A98 */ void checkSnowCode() const;
    /* 80105ABC */ void checkSnowCodePolygon(cBgS_PolyInfo&);
    /* 80105B10 */ void checkBoardRestart();
    /* 80105B58 */ void boardCommon(int);
    /* 80106534 */ void setCommonBoardAnime(int);
    /* 8010658C */ void checkNextActionBoard();
    /* 80106618 */ void checkBoardSwordTriggerAction();
    /* 80106650 */ void commonProcBoardInit(daAlink_c::daAlink_PROC);
    /* 801066B8 */ void getBoardRowAnmSpeed();
    /* 801066EC */ void setBoardLandAnime();
    /* 80106774 */ void procBoardRideInit();
    /* 801069D0 */ void procBoardRide();
    /* 80106A38 */ void procBoardWaitInit(fopAc_ac_c*);
    /* 80106BCC */ void procBoardWait();
    /* 80106E88 */ void procBoardRowInit();
    /* 80106F00 */ void procBoardRow();
    /* 80107060 */ void procBoardTurnInit();
    /* 801070DC */ void procBoardTurn();
    /* 80107218 */ void procBoardJumpInit(f32, int);
    /* 80107300 */ void procBoardJump();
    /* 801073D0 */ void procBoardSubjectivityInit();
    /* 80107418 */ void procBoardSubjectivity();
    /* 801074AC */ void procBoardCutInit();
    /* 8010755C */ void procBoardCut();
    /* 801075D4 */ void procBoardCutTurnInit();
    /* 80107744 */ void procBoardCutTurn();
    /* 801083C8 */ void hookshotAtHitCallBack(dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 801086DC */ void resetHookshotMode();
    /* 8010871C */ bool setEnemyBombHookshot(fopAc_ac_c*);
    /* 80108784 */ bool checkLv7BossRoom();
    /* 801087B0 */ bool checkHookshotStickBG(cBgS_PolyInfo&);
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
    /* 8010903C */ void checkHookshotReadyMaterialOffMode() const;
    /* 80109070 */ void setHookshotReadyMaterial();
    /* 801090EC */ void initHookshotUpperAnimeSpeed(int);
    /* 80109170 */ void initHookshotReady();
    /* 801091E4 */ void setHookshotReadyAnime();
    /* 80109284 */ void checkUpperItemActionHookshot();
    /* 801095C8 */ void checkNextActionHookshot();
    /* 801097A0 */ void setHookshotReturnEnd();
    /* 80109890 */ void setHookshotHangMoveBGCollect();
    /* 80109AAC */ void setHookshotTopPosFly();
    /* 80109BDC */ void setHookshotPos();
    /* 8010B2DC */ void setHookshotRoofWaitAnime();
    /* 8010B35C */ void setHookshotWallWaitAnime();
    /* 8010B3AC */ void hookshotRoofTurn();
    /* 8010B644 */ void initHookshotRoofWaitActor(fopAc_ac_c*);
    /* 8010B720 */ void checkNextHookPoint();
    /* 8010B84C */ void checkLandHookshotHang();
    /* 8010B96C */ void commonHookshotRoofWait();
    /* 8010BA6C */ void commonHookshotWallWait();
    /* 8010BAA8 */ void procHookshotSubjectInit();
    /* 8010BB48 */ void procHookshotSubject();
    /* 8010BC08 */ void procHookshotMoveInit();
    /* 8010BCA4 */ void procHookshotMove();
    /* 8010BD90 */ void procHookshotFlyInit();
    /* 8010BEF0 */ void procHookshotFly();
    /* 8010C830 */ void procHookshotRoofWaitInit(int, fopAc_ac_c*, int);
    /* 8010C9F4 */ void procHookshotRoofWait();
    /* 8010CC80 */ void procHookshotRoofShootInit(fopAc_ac_c*);
    /* 8010CD60 */ void procHookshotRoofShoot();
    /* 8010CF6C */ void procHookshotRoofBootsInit(fopAc_ac_c*);
    /* 8010D034 */ void procHookshotRoofBoots();
    /* 8010D174 */ void procHookshotWallWaitInit(int, s16, int);
    /* 8010D38C */ void procHookshotWallWait();
    /* 8010D5F4 */ void procHookshotWallShootInit();
    /* 8010D6CC */ void procHookshotWallShoot();
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
    /* 8010E48C */ void bottleModelCallBack();
    /* 8010E584 */ void checkOilBottleItemNotGet(u16);
    /* 8010E5D8 */ void setBottleModel(u16);
    /* 8010EAC4 */ void commonBottleDrink(int);
    /* 8010F45C */ void makeFairy(cXyz*, u32);
    /* 8010F54C */ void procBottleDrinkInit(u16);
    /* 8010F698 */ void procBottleDrink();
    /* 8010F6F4 */ void procBottleOpenInit(u16);
    /* 8010F8E4 */ void procBottleOpen();
    /* 8010FC38 */ void procBottleSwingInit(fopAc_ac_c*, int);
    /* 8010FF58 */ void procBottleSwing();
    /* 801102D0 */ void procBottleGetInit(int);
    /* 80110518 */ void procBottleGet();
    /* 8011078C */ void checkWaterInKandelaarOffset(f32);
    /* 801107BC */ void checkWaterInKandelaar(f32);
    /* 80110840 */ void offKandelaarModel();
    /* 801108EC */ void kandelaarModelCallBack();
    /* 80110C6C */ BOOL checkKandelaarEquipAnime() const;
    /* 80110C94 */ void preKandelaarDraw();
    /* 80110E84 */ void setKandelaarModel();
    /* 80110F88 */ void resetOilBottleModel();
    /* 80110FE0 */ void commonKandelaarPourInit();
    /* 801110B8 */ void commonKandelaarPour(int);
    /* 8011130C */ void initKandelaarSwing();
    /* 80111440 */ void procKandelaarSwingInit();
    /* 801115CC */ void procKandelaarSwing();
    /* 8011167C */ void procKandelaarPourInit();
    /* 80111724 */ void procKandelaarPour();
    /* 80111784 */ void setGrassWhistleModel(int);
    /* 8011181C */ void setHorseWhistleModel();
    /* 80111894 */ int procGrassWhistleGetInit();
    /* 801119D8 */ int procGrassWhistleGet();
    /* 80111A9C */ void procGrassWhistleWaitInit(int, int, int, s16, cXyz*);
    /* 80111CA4 */ void procGrassWhistleWait();
    /* 80111FF0 */ void procCoHorseCallWaitInit(int);
    /* 801120C8 */ void procCoHorseCallWait();
    /* 801121B4 */ void procHawkCatchInit();
    /* 80112220 */ void procHawkCatch();
    /* 80112278 */ void procHawkSubjectInit();
    /* 80112304 */ void procHawkSubject();
    /* 80112474 */ void checkIronBallThrowMode() const;
    /* 801124B4 */ void checkIronBallThrowReturnMode() const;
    /* 80112568 */ void setIronBallWaitUpperAnime(int);
    /* 80112628 */ void checkIronBallDelete();
    /* 801126F8 */ void setIronBallReturn(int);
    /* 80112768 */ void setIronBallBgCheckPos();
    /* 801127F0 */ void setIronBallModel();
    /* 80112C84 */ void setIronBallGroundVec(cXyz const*, cXyz*);
    /* 80112E7C */ void setIronBallChainPos();
    /* 80113CA0 */ void checkIronBallReturnChange();
    /* 80113D58 */ void setIronBallPos();
    /* 801150E4 */ BOOL checkIronBallAnime() const;
    /* 8011510C */ void setIronBallReadyAnime();
    /* 801151E0 */ void setIronBallBaseAnime();
    /* 80115254 */ void checkUpperItemActionIronBall();
    /* 801153F8 */ void checkNextActionIronBall();
    /* 801154E4 */ void procIronBallSubjectInit();
    /* 80115564 */ void procIronBallSubject();
    /* 801155EC */ void procIronBallMoveInit();
    /* 80115674 */ void procIronBallMove();
    /* 8011577C */ void procIronBallThrowInit();
    /* 80115860 */ void procIronBallThrow();
    /* 801159F0 */ void procIronBallReturnInit();
    /* 80115AA0 */ void procIronBallReturn();
    /* 80115C20 */ BOOL checkEventRun() const;
    /* 80115C50 */ void createNpcTks(cXyz*, int, u32);
    /* 80115EC0 */ int checkDemoAction();
    /* 80116E60 */ void checkDemoMoveMode(u32) const;
    /* 80116E9C */ void setDemoMoveData(u32*, cXyz const*);
    /* 80117064 */ void setNoDrawSwordShield(int, u16);
    /* 801171F4 */ void setDemoData();
    /* 80117B90 */ void resetDemoBck();
    /* 80117C34 */ void endHighModel();
    /* 80117C90 */ void resetSpecialEvent();
    /* 80117CF8 */ void endDemoMode();
    /* 801180EC */ void getDemoLookActor();
    /* 80118170 */ bool checkFlyAtnWait();
    /* 801181A0 */ void setGetItemFace(u16);
    /* 801182D4 */ void checkGrabTalkActor(fopAc_ac_c*);
    /* 80118308 */ void setTalkStartBack(cXyz*);
    /* 8011856C */ void setShapeAngleToTalkActor();
    /* 80118654 */ void setTalkAnime();
    /* 801186D4 */ void setTradeItemAnime();
    /* 80118778 */ void setTradeItemOutHand();
    /* 801187B4 */ void checkEndMessage(u32);
    /* 80118840 */ void setDemoRightHandIndex(u16);
    /* 801188B0 */ void setDemoLeftHandIndex(u16);
    /* 8011894C */ void setDemoRide(u16);
    /* 801189F8 */ void setDemoBodyBck(dDemo_actor_c*, u16);
    /* 80118AD0 */ BOOL checkFinalBattle();
    /* 80118B34 */ BOOL checkRestartDead(int, int);
    /* 80118BF4 */ void setDeadRideSyncPos();
    /* 80118C98 */ BOOL checkDeadHP();
    /* 80118D7C */ BOOL checkDeadAction(int);
    /* 80118FF8 */ void setHighModelBck(mDoExt_bckAnm*, u16);
    /* 801190A4 */ void setHighModelFaceBtk(u16);
    /* 80119134 */ void setDemoBrk(J3DAnmTevRegKey**, J3DModel*, u16);
    /* 801191C4 */ void setStickAnmData(J3DAnmBase*, int, int, u16, int);
    /* 801195C0 */ int procDemoCommon();
    /* 801195F8 */ void procCoToolDemoInit();
    /* 801196D8 */ void procCoToolDemo();
    /* 80119D98 */ void procCoTalkInit();
    /* 80119F64 */ void procCoTalk();
    /* 8011A214 */ void procCoOpenTreasureInit();
    /* 8011A42C */ void procCoOpenTreasure();
    /* 8011A4C0 */ void procCoUnequipInit();
    /* 8011A5CC */ void procCoUnequip();
    /* 8011A688 */ void setGetSubBgm(int);
    /* 8011A798 */ void procCoGetItemInit();
    /* 8011AC28 */ void procCoGetItem();
    /* 8011B3F0 */ void procCoTurnBackInit();
    /* 8011B46C */ void procCoTurnBack();
    /* 8011B57C */ void procDoorOpenInit();
    /* 8011B71C */ void procDoorOpen();
    /* 8011B914 */ void procCoLookWaitInit();
    /* 8011BA20 */ void procCoLookWait();
    /* 8011BABC */ void procCoDemoPushPullWaitInit();
    /* 8011BB40 */ void procCoDemoPushMoveInit();
    /* 8011BC14 */ void setMonkeyMoveAnime();
    /* 8011BC74 */ void procMonkeyMoveInit();
    /* 8011BD18 */ void procMonkeyMove();
    /* 8011BD6C */ void procDemoBoomerangCatchInit();
    /* 8011BDF0 */ void procDemoBoomerangCatch();
    /* 8011BE54 */ void procCoDeadInit(int);
    /* 8011C1B4 */ void procCoDead();
    /* 8011C62C */ void procCoLookAroundInit();
    /* 8011C760 */ void procCoLookAround();
    /* 8011C81C */ void procBossAtnWaitInit();
    /* 8011C890 */ void procCoQuakeWaitInit();
    /* 8011C904 */ void procCoCaughtInit();
    /* 8011C9D0 */ void procLookUpInit();
    /* 8011CA4C */ void procLookUp();
    /* 8011CA98 */ void procLookUpToGetItemInit();
    /* 8011CB20 */ void procLookUpToGetItem();
    /* 8011CBD4 */ void procHandPatInit();
    /* 8011CCA8 */ void procHandPat();
    /* 8011CDE0 */ void procCoFogDeadInit();
    /* 8011CF60 */ void procCoFogDead();
    /* 8011D0A0 */ void procWolfSmellWaitInit();
    /* 8011D110 */ void procCoNodInit();
    /* 8011D1F4 */ void procCoNod();
    /* 8011D268 */ void procCoEyeAwayInit();
    /* 8011D304 */ void procCoGlareInit();
    /* 8011D3CC */ void procCoGlare();
    /* 8011D474 */ void procGoatStopReadyInit();
    /* 8011D4D4 */ void procGoatStopReady();
    /* 8011D544 */ void procCoGetReadySitInit();
    /* 8011D64C */ void procCoGetReadySit();
    /* 8011D6D0 */ void procCoTwGateInit();
    /* 8011D7D4 */ int procCoTwGate();
    /* 8011D82C */ void procWolfSnowEscapeInit();
    /* 8011D8F8 */ void procWolfSnowEscape();
    /* 8011DB04 */ void procZoraMoveInit();
    /* 8011DB9C */ void procZoraMove();
    /* 8011DDD4 */ void procLookAroundTurnInit();
    /* 8011DED8 */ void procLookAroundTurn();
    /* 8011DF68 */ void procTradeItemOutInit();
    /* 8011E060 */ void procTradeItemOut();
    /* 8011E3D8 */ void checkLetterItem(int);
    /* 8011E448 */ void procNotUseItemInit(int);
    /* 8011E57C */ void procNotUseItem();
    /* 8011E6E0 */ void procSwordReadyInit();
    /* 8011E748 */ void procSwordReady();
    /* 8011E83C */ void setSwordPushAnime();
    /* 8011E8E0 */ void procSwordPushInit();
    /* 8011E960 */ void procSwordPush();
    /* 8011E9F8 */ void procGanonFinishInit();
    /* 8011EA78 */ bool procGanonFinish();
    /* 8011EAE8 */ void procCutFastReadyInit();
    /* 8011EB8C */ int procCutFastReady();
    /* 8011EBDC */ int procMasterSwordStickInit();
    /* 8011EC60 */ int procMasterSwordStick();
    /* 8011ED18 */ int procMasterSwordPullInit();
    /* 8011ED8C */ void procMasterSwordPull();
    /* 8011EE40 */ static BOOL checkLv7DungeonShop();
    /* 8011EE94 */ int procDungeonWarpReadyInit();
    /* 8011EFB8 */ void procDungeonWarpReady();
    /* 8011F084 */ void procDungeonWarpInit();
    /* 8011F0F4 */ int procDungeonWarp();
    /* 8011F360 */ void procDungeonWarpSceneStartInit();
    /* 8011F460 */ void procDungeonWarpSceneStart();
    /* 8011F658 */ bool checkAcceptWarp();
    /* 8011F7D8 */ void dungeonReturnWarp();
    /* 8011F9EC */ void checkWarpStart();
    /* 8011FBC0 */ void warpModelTexScroll();
    /* 8011FD4C */ void procCoWarpInit(int, int);
    /* 80120124 */ void procCoWarp();
    /* 80120440 */ void commonWaitTurnInit();
    /* 80120474 */ void commonGrabPutInit();
    /* 80120500 */ void commonLargeDamageUpInit(int, int, s16, s16);
    /* 80120534 */ void commonFallInit(int);
    /* 80120580 */ void setEmitter(u32*, u16, cXyz const*, csXyz const*);
    /* 80120634 */ void setEmitterPolyColor(u32*, u16, cBgS_PolyInfo&, cXyz const*, csXyz const*);
    /* 801206C4 */ void setEmitterColor(u32*, u16, cXyz const*, csXyz const*);
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
    /* 80127D2C */ void wolfClawTrigger();
    /* 80127D50 */ void setWolfDigStatus(u8);
    /* 80127D68 */ BOOL checkWolfShapeReverse() const;
    /* 80127DC4 */ BOOL checkWolfSideStep() const;
    /* 80127E08 */ void setWolfTailAngle();
    /* 80127F20 */ BOOL checkWolfSlowDash();
    /* 80127F50 */ void setSpeedAndAngleWolf();
    /* 80128478 */ void setSpeedAndAngleWolfAtn();
    /* 80128798 */ void checkWolfAtnWait();
    /* 8012880C */ BOOL checkUnderMove0BckNoArcWolf(daAlink_c::daAlink_WANM) const;
    /* 80128844 */ void setBlendWolfMoveAnime(f32);
    /* 80128F0C */ void checkWolfAtnMoveBack(s16);
    /* 80128F5C */ void setWolfAtnMoveDirection();
    /* 80129114 */ void setBlendWolfAtnMoveAnime(f32);
    /* 8012933C */ void setBlendWolfAtnBackMoveAnime(f32);
    /* 8012948C */ void setDoubleAnimeWolf(f32, f32, f32, daAlink_c::daAlink_WANM,
                                           daAlink_c::daAlink_WANM, int, f32);
    /* 80129678 */ void setSingleAnimeWolfBase(daAlink_c::daAlink_WANM);
    /* 801296A8 */ void setSingleAnimeWolfBaseMorf(daAlink_c::daAlink_WANM, f32);
    /* 801296D8 */ void setSingleAnimeWolfBaseSpeed(daAlink_c::daAlink_WANM, f32, f32);
    /* 80129704 */ void setSingleAnimeWolf(daAlink_c::daAlink_WANM, f32, f32, s16, f32);
    /* 80129848 */ void setSingleAnimeWolfParam(daAlink_c::daAlink_WANM, daAlinkHIO_anm_c const*);
    /* 8012987C */ void checkWolfLandAction(int);
    /* 80129958 */ BOOL checkMidnaUseAbility() const;
    /* 801299A8 */ void checkWolfUseAbility();
    /* 80129A80 */ int checkWolfGroundSpecialMode();
    /* 80129B44 */ void checkNextActionWolf(int);
    /* 8012A02C */ void wolfSideBgCheck(s16);
    /* 8012A228 */ void checkWolfAttackReverse(int);
    /* 8012A330 */ void checkWolfBarrierHitReverse();
    /* 8012A41C */ void checkWolfBarrierWallHit(cBgS_PolyInfo&);
    /* 8012A498 */ void wolfBgCheck();
    /* 8012ACCC */ void changeWolfBlendRate(int);
    /* 8012AD1C */ void setWolfFootMatrix();
    /* 8012B724 */ void wolfFootBgCheck();
    /* 8012BFA8 */ void checkWolfWaitSlipPolygon();
    /* 8012C1F4 */ void setWolfWaitSlip();
    /* 8012C308 */ void checkWolfAtnDoCharge();
    /* 8012C30C */ void setWolfChainPos();
    /* 8012CB0C */ void setWolfAnmVoice();
    /* 8012CBE4 */ void procWolfServiceWaitInit(int);
    /* 8012CD28 */ void procWolfServiceWait();
    /* 8012CF68 */ void procWolfTiredWaitInit();
    /* 8012CFEC */ void procWolfTiredWait();
    /* 8012D050 */ void procWolfMidnaRideShockInit();
    /* 8012D104 */ void procWolfMidnaRideShock();
    /* 8012D1A8 */ void procWolfWaitInit();
    /* 8012D2A8 */ void procWolfWait();
    /* 8012D380 */ void procWolfMoveInit();
    /* 8012D3E4 */ void procWolfMove();
    /* 8012D474 */ void procWolfDashInit();
    /* 8012D590 */ void procWolfDash();
    /* 8012D8C0 */ void procWolfDashReverseInit(int);
    /* 8012DA5C */ void procWolfDashReverse();
    /* 8012DBA8 */ void procWolfAtnActorMoveInit();
    /* 8012DC44 */ void procWolfAtnActorMove();
    /* 8012DD08 */ void procWolfWaitTurnInit();
    /* 8012DDB4 */ void procWolfWaitTurn();
    /* 8012DEC8 */ void procWolfSideStepInit(int);
    /* 8012E0AC */ void procWolfSideStep();
    /* 8012E1E8 */ void procWolfSideStepLandInit(s16);
    /* 8012E2DC */ void procWolfSideStepLand();
    /* 8012E398 */ void procWolfBackJumpInit(int);
    /* 8012E508 */ void procWolfBackJump();
    /* 8012E5F4 */ void procWolfBackJumpLandInit(s16, s16);
    /* 8012E684 */ void procWolfBackJumpLand();
    /* 8012E754 */ void procWolfHowlInit(int);
    /* 8012E83C */ void procWolfHowl();
    /* 8012E9C8 */ void procWolfAutoJumpInit(int);
    /* 8012EB94 */ void procWolfAutoJump();
    /* 8012EDD0 */ void procWolfFallInit(int, f32);
    /* 8012EFB8 */ void procWolfFall();
    /* 8012F138 */ void procWolfLandInit();
    /* 8012F1F0 */ void procWolfLand();
    /* 8012F278 */ void procWolfSitInit(int);
    /* 8012F358 */ void procWolfSit();
    /* 8012F41C */ void procWolfStepMoveInit();
    /* 8012F500 */ void procWolfStepMove();
    /* 8012F634 */ void procWolfSlipInit();
    /* 8012F6EC */ void procWolfSlip();
    /* 8012F840 */ void procWolfSlipTurnInit(int);
    /* 8012F9C0 */ void procWolfSlipTurn();
    /* 8012FB18 */ void procWolfSlipTurnLandInit();
    /* 8012FBB4 */ void procWolfSlipTurnLand();
    /* 8012FC38 */ void procWolfSlideReadyInit(s16, int);
    /* 8012FD2C */ void procWolfSlideReady();
    /* 8012FE80 */ void procWolfSlideInit(s16, int);
    /* 8012FFA4 */ void procWolfSlide();
    /* 801300D4 */ void procWolfSlideLandInit();
    /* 80130138 */ void procWolfSlideLand();
    /* 801301E4 */ void procWolfWaitSlipInit();
    /* 80130268 */ void procWolfWaitSlip();
    /* 80130440 */ void procWolfSlopeStartInit(int);
    /* 801304D4 */ void procWolfSlopeStart();
    /* 80130654 */ void setWolfHowlNotHappen(int);
    /* 80130700 */ void procWolfHowlDemoInit();
    /* 80130BC4 */ void procWolfHowlDemo();
    /* 80131450 */ void checkWolfRopeHit(dCcD_GObjInf*, cXyz const*, int) const;
    /* 80131628 */ void checkWolfRopeJumpHang();
    /* 801316A4 */ void getWolfRopeMoveSpeed();
    /* 80131718 */ void setWolfRopePosY();
    /* 801319F0 */ void initWolfRopeShapeAngle();
    /* 80131A6C */ void wolfRopeSwingInc(f32);
    /* 80131AFC */ void setWolfRopeOffsetY(int);
    /* 80131C00 */ void getDirectionRopeMove() const;
    /* 80131C74 */ void procWolfRopeMoveInit(int, int);
    /* 80131DA0 */ void procWolfRopeMove();
    /* 80132738 */ void procWolfRopeHangInit(int);
    /* 80132914 */ void procWolfRopeHang();
    /* 80132D68 */ void procWolfRopeTurnInit();
    /* 80132E88 */ void procWolfRopeTurn();
    /* 80133054 */ void procWolfRopeStaggerInit(int);
    /* 80133164 */ void procWolfRopeStagger();
    /* 8013384C */ void procWolfRopeSubjectivityInit();
    /* 80133930 */ void procWolfRopeSubjectivity();
    /* 80133D6C */ void getWolfTagJumpTime() const;
    /* 80133EF0 */ cXyz* checkMidnaLockJumpPoint() const;
    /* 80134000 */ void procWolfTagJumpInit(fopAc_ac_c*);
    /* 80134838 */ void procWolfTagJump();
    /* 80134DB8 */ void procWolfTagJumpLandInit(fopAc_ac_c*);
    /* 80134EBC */ void procWolfTagJumpLand();
    /* 80135160 */ int procWolfGiantPuzzleInit();
    /* 801351F8 */ void procWolfGiantPuzzle();
    /* 80135458 */ void setWolfHangGroundY();
    /* 801354C8 */ void changeWolfHangEndProc();
    /* 801355EC */ void procWolfHangReadyInit();
    /* 80135668 */ void procWolfHangReady();
    /* 801356F0 */ void procWolfHangWallCatchInit(int);
    /* 80135AF4 */ void procWolfHangWallCatch();
    /* 80135CD8 */ void procWolfHangFallStartInit(cM3dGPla*);
    /* 80135F00 */ void procWolfHangFallStart();
    /* 80136064 */ void setWolfHeadDamage();
    /* 801360EC */ void procWolfDamageInit(dCcD_GObjInf*);
    /* 80136508 */ void procWolfDamage();
    /* 80136624 */ void procWolfLargeDamageUpInit(int, int, s16, s16);
    /* 801369E4 */ void procWolfLargeDamageUp();
    /* 80136C18 */ void procWolfLandDamageInit(int);
    /* 80136DE4 */ void procWolfLandDamage();
    /* 80136EC4 */ void setWolfScreamWaitAnime();
    /* 80136F54 */ int procWolfScreamWaitInit();
    /* 80136FF8 */ void procWolfScreamWait();
    /* 801370E4 */ void getWolfLieMoveAnmSpeed();
    /* 8013712C */ void getWolfLieMoveSpeed();
    /* 801371A0 */ void checkMidnaDisappearMode() const;
    /* 801371FC */ void checkWolfLieContinue(int);
    /* 801372B4 */ void checkNextActionWolfFromLie();
    /* 80137330 */ void setWolfLieMoveVoice(int);
    /* 801373F8 */ void checkWolfLieCode();
    /* 80137420 */ void procWolfLieStartInit(int);
    /* 8013753C */ void procWolfLieStart();
    /* 80137634 */ void procWolfLieMoveInit(int);
    /* 801377F0 */ void procWolfLieMove();
    /* 80137C90 */ void procWolfLieAutoMoveInit(int, cXyz*);
    /* 80137D4C */ void procWolfLieAutoMove();
    /* 80138000 */ void setSpeedAndAngleSwimWolf();
    /* 80138188 */ void getWolfSwimMoveAnmSpeed();
    /* 801381F8 */ void decideDoStatusSwimWolf();
    /* 801383D8 */ void procWolfSwimUpInit();
    /* 80138484 */ void procWolfSwimUp();
    /* 8013852C */ void procWolfSwimWaitInit(int);
    /* 80138644 */ void procWolfSwimWait();
    /* 8013871C */ void procWolfSwimMoveInit();
    /* 801387A0 */ void procWolfSwimMove();
    /* 8013890C */ void procWolfSwimEndWaitInit(int);
    /* 80138A18 */ void procWolfSwimEndWait();
    /* 80138C04 */ void resetWolfEnemyBiteAll();
    /* 80138C44 */ void checkWolfEnemyThrowAction();
    /* 80138CB8 */ void setWolfLockDomeModel();
    /* 80138DC0 */ void setWolfBallModel();
    /* 80138F18 */ void resetWolfBallGrab();
    /* 80139048 */ void checkWolfLockData();
    /* 801391DC */ fopAc_ac_c* getWolfLockActorEnd();
    /* 801391E4 */ void searchWolfLockEnemy(fopAc_ac_c*, void*);
    /* 801392E4 */ void checkWolfComboCnt();
    /* 801393A4 */ void checkWolfAttackAction();
    /* 801395B4 */ void setWolfEnemyThrowUpperAnime(daAlink_c::daAlink_WANM, f32);
    /* 80139600 */ void setWolfEnemyHangBitePos(fopEn_enemy_c*);
    /* 801396F8 */ void setWolfBiteDamage(fopEn_enemy_c*);
    /* 801397A4 */ void checkWolfLockAttackChargeState();
    /* 801398A8 */ void procWolfRollAttackChargeInit();
    /* 80139908 */ void procWolfRollAttackCharge();
    /* 801399C4 */ void procWolfRollAttackMoveInit();
    /* 80139A70 */ void procWolfRollAttackMove();
    /* 80139DE0 */ void procWolfJumpAttackInit(int);
    /* 8013A4F8 */ void procWolfJumpAttack();
    /* 8013A7EC */ void procWolfJumpAttackKickInit();
    /* 8013A8A0 */ void procWolfJumpAttackKick();
    /* 8013A8FC */ void procWolfJumpAttackSlideLandInit(int, int, int);
    /* 8013AAC4 */ void procWolfJumpAttackSlideLand();
    /* 8013AC44 */ void procWolfJumpAttackNormalLandInit(int);
    /* 8013ACF4 */ void procWolfJumpAttackNormalLand();
    /* 8013ADF0 */ void procWolfWaitAttackInit(int);
    /* 8013AFC0 */ void procWolfWaitAttack();
    /* 8013B2A0 */ void procWolfRollAttackInit(int, int);
    /* 8013B424 */ void procWolfRollAttack();
    /* 8013B528 */ void procWolfDownAttackInit();
    /* 8013B808 */ void procWolfDownAttack();
    /* 8013B964 */ void procWolfDownAtLandInit(fopEn_enemy_c*);
    /* 8013BA44 */ void procWolfDownAtLand();
    /* 8013BC94 */ void procWolfDownAtMissLandInit();
    /* 8013BD54 */ void procWolfDownAtMissLand();
    /* 8013BE24 */ void procWolfLockAttackInit(int);
    /* 8013C3E4 */ void procWolfLockAttack();
    /* 8013C630 */ void procWolfLockAttackTurnInit(int);
    /* 8013C7A4 */ void procWolfLockAttackTurn();
    /* 8013C8C8 */ void procWolfAttackReverseInit();
    /* 8013C9EC */ void procWolfAttackReverse();
    /* 8013CB48 */ void procWolfEnemyThrowInit(int);
    /* 8013CC5C */ void procWolfEnemyThrow();
    /* 8013CCF4 */ void procWolfEnemyHangBiteInit();
    /* 8013CDEC */ void procWolfEnemyHangBite();
    /* 8013D0D4 */ void procWolfGrabUpInit();
    /* 8013D3FC */ void procWolfGrabUp();
    /* 8013D588 */ void procWolfGrabPutInit();
    /* 8013D65C */ void procWolfGrabPut();
    /* 8013D818 */ void procWolfGrabThrowInit();
    /* 8013D86C */ void procWolfGrabThrow();
    /* 8013D930 */ void procWolfPushInit();
    /* 8013DA8C */ void procWolfPush();
    /* 8013DB6C */ int procWolfCargoCarryInit();
    /* 8013DC5C */ void procWolfCargoCarry();
    /* 8013DDF8 */ void procWolfChainUpInit();
    /* 8013DE70 */ void procWolfChainUp();
    /* 8013DF30 */ void procWolfGanonCatchInit();
    /* 8013E034 */ void procWolfGanonCatch();
    /* 8013E240 */ void procWolfChainReadyInit();
    /* 8013E2A8 */ void procWolfChainReady();
    /* 8013E6C0 */ void procWolfChainWaitInit();
    /* 8013E80C */ void procWolfChainWait();
    /* 8013ED44 */ void procWolfDigInit();
    /* 8013F1F0 */ void procWolfDig();
    /* 8013F4A8 */ void procWolfDigThroughInit(int);
    /* 8013F7C4 */ void procWolfDigThrough();
    /* 8013F90C */ void setSmellSave();
    /* 8013FA14 */ void procWolfGetSmellInit();
    /* 8013FC24 */ void procWolfGetSmell();
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
    /* 8018280C */ void getChainGrabActor();
    /* 80182814 */ void checkCokkoGlide() const;
    /* 8018283C */ void checkCameraLargeDamage() const;
    /* 80182870 */ void getHsSubChainTopPos() const;
    /* 80182888 */ void checkCutHeadProc() const;
    /* 8018289C */ void getRideActor();

    virtual cXyz* getMidnaAtnPos() const;
    virtual void setMidnaMsgNum(fopAc_ac_c*, u16);
    virtual MtxP getModelMtx();
    virtual MtxP getInvMtx();
    virtual cXyz* getShadowTalkAtnPos();
    virtual f32 getGroundY();
    virtual MtxP getLeftItemMatrix();
    virtual MtxP getRightItemMatrix();
    virtual MtxP getLeftHandMatrix();
    virtual MtxP getRightHandMatrix();
    virtual MtxP getLinkBackBone1Matrix();
    virtual MtxP getWolfMouthMatrix();
    virtual MtxP getWolfBackbone2Matrix();
    virtual MtxP getBottleMtx();
    virtual BOOL checkPlayerGuard() const;
    virtual u32 checkPlayerFly() const;
    virtual BOOL checkFrontRoll() const;
    virtual BOOL checkWolfDash() const;
    virtual BOOL checkAutoJump() const;
    virtual bool checkSideStep() const;
    virtual bool checkWolfTriggerJump() const;
    virtual BOOL checkGuardBreakMode() const;
    virtual bool checkLv3Slide() const;
    virtual bool checkWolfHowlDemoMode() const;
    virtual bool checkChainBlockPushPull();
    virtual BOOL checkElecDamage() const;
    virtual BOOL checkEmptyBottleSwing() const;
    virtual BOOL checkBottleSwingMode() const;
    virtual BOOL checkHawkWait() const;
    virtual BOOL checkGoatThrow() const;
    virtual BOOL checkGoatThrowAfter() const;
    virtual BOOL checkWolfTagLockJump() const;
    virtual BOOL checkWolfTagLockJumpLand() const;
    virtual bool checkWolfRope();
    virtual BOOL checkWolfRopeHang() const;
    virtual BOOL checkRollJump() const;
    virtual BOOL checkGoronRideWait() const;
    virtual BOOL checkWolfChain() const;
    virtual BOOL checkWolfWait() const;
    virtual BOOL checkWolfJumpAttack() const;
    virtual BOOL checkWolfRSit() const;
    virtual BOOL checkBottleDrinkEnd() const;
    virtual BOOL checkWolfDig() const;
    virtual BOOL checkCutCharge() const;
    virtual BOOL checkCutTurnCharge() const;
    virtual BOOL checkCutLargeJumpCharge() const;
    virtual BOOL checkComboCutTurn() const;
    virtual BOOL checkClimbMove() const;
    virtual BOOL checkGrassWhistle() const;
    virtual BOOL checkBoarRun() const;
    virtual f32 getBaseAnimeFrameRate() const;
    virtual f32 getBaseAnimeFrame() const;
    virtual void setAnimeFrame(f32);
    virtual bool checkWolfLock(fopAc_ac_c*) const;
    virtual bool cancelWolfLock(fopAc_ac_c*);
    virtual s32 getAtnActorID() const;
    virtual s32 getItemID() const;
    virtual s32 getGrabActorID() const;
    virtual bool exchangeGrabActor(fopAc_ac_c*);
    virtual bool setForceGrab(fopAc_ac_c*, int, int);
    virtual void setForcePutPos(cXyz const&);
    virtual BOOL checkPlayerNoDraw();
    virtual void voiceStart(u32);
    virtual void seStartOnlyReverb(u32);
    virtual void seStartOnlyReverbLevel(u32);
    virtual void setOutPower(f32, short, int);
    virtual void setGrabCollisionOffset(f32, f32, cBgS_PolyInfo*);
    virtual void onFrollCrashFlg(u8, int);
    virtual MtxP getModelJointMtx(u16);
    virtual MtxP getHeadMtx();
    virtual bool setHookshotCarryOffset(unsigned int, cXyz const*);
    virtual BOOL checkCutJumpCancelTurn() const;
    virtual bool checkIronBallReturn() const;
    virtual bool checkIronBallGroundStop() const;
    virtual BOOL checkSingleBoarBattleSecondBowReady() const;
    virtual void setClothesChange(int);
    virtual void setPlayerPosAndAngle(cXyz const*, short, int);
    virtual void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    virtual void setPlayerPosAndAngle(f32 (*)[4]);
    virtual bool setThrowDamage(short, f32, f32, int, int, int);
    virtual bool checkSetNpcTks(cXyz*, int, int);
    virtual int setRollJump(f32, f32, short);
    virtual void playerStartCollisionSE(u32, u32);
    virtual void cancelDungeonWarpReadyNeck();
    virtual void onSceneChangeArea(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeAreaJump(u8, u8, fopAc_ac_c*);
    virtual void onSceneChangeDead(u8, int);
    virtual u32 checkHorseRide() const;
    virtual u32 checkBoarRide() const;
    virtual u32 checkCanoeRide() const;
    virtual u32 checkBoardRide() const;
    virtual u32 checkSpinnerRide() const;
    virtual fopAc_ac_c* getSpinnerActor();
    virtual BOOL checkHorseRideNotReady() const;
    virtual bool checkArrowChargeEnd() const;
    virtual f32 getSearchBallScale() const;
    virtual s16 checkFastShotTime();
    virtual bool checkNoEquipItem() const;
    virtual bool checkKandelaarSwing(int) const;
    virtual s16 getBoardCutTurnOffsetAngleY() const;
    virtual cXyz* getMagneBootsTopVec();
    virtual bool getKandelaarFlamePos();
    virtual bool checkUseKandelaar(int);
    virtual void setDkCaught(fopAc_ac_c*);
    virtual void onPressedDamage(cXyz const&, short);
    virtual bool checkPriActorOwn(fopAc_ac_c const*) const;
    virtual bool onWolfEnemyBiteAll(fopAc_ac_c*, daPy_FLG2);
    virtual bool checkWolfEnemyBiteAllOwn(fopAc_ac_c const*) const;
    virtual void setWolfEnemyHangBiteAngle(short);
    virtual void setKandelaarMtx(f32 (*)[4], int, int);
    virtual bool getStickAngleFromPlayerShape(short*) const;
    virtual bool checkSpinnerPathMove();
    virtual bool checkSpinnerTriggerAttack();
    virtual void onSpinnerPathForceRemove();
    virtual bool getIronBallBgHit() const;
    virtual bool getIronBallCenterPos();
    virtual bool checkCanoeFishingGetLeft() const;
    virtual bool checkCanoeFishingGetRight() const;
    virtual u8 checkBeeChildDrink() const;
    virtual void skipPortalObjWarp();
    virtual bool checkTreasureRupeeReturn(int) const;
    virtual void setSumouReady(fopAc_ac_c*);
    virtual bool checkAcceptDungeonWarpAlink(int);
    virtual s16 getSumouCounter() const;
    virtual s16 checkSumouWithstand() const;
    virtual void cancelGoronThrowEvent();
    virtual void setSumouGraspCancelCount(int);
    virtual void setSumouPushBackDirection(short);
    virtual void setSumouLoseHeadUp();
    virtual s16 getGiantPuzzleAimAngle() const;
    virtual void setGoronSideMove(fopAc_ac_c*);
    virtual void setCargoCarry(fopAc_ac_c*);
    virtual cXyz* getHookshotTopPos();
    virtual bool checkHookshotReturnMode() const;
    virtual bool checkHookshotShootReturnMode() const;
    virtual bool checkOctaIealHang() const;
    virtual void cancelOctaIealHang();
    virtual void cancelDragonHangBackJump();
    virtual void setOctaIealWildHang();
    virtual bool checkDragonHangRide() const;
    virtual void changeDragonActor(fopAc_ac_c*);
    virtual u8 getClothesChangeWaitTimer() const;
    virtual u8 getShieldChangeWaitTimer() const;
    virtual u8 getSwordChangeWaitTimer() const;
    virtual BOOL checkMetamorphose() const;
    virtual BOOL checkWolfDownAttackPullOut() const;
    virtual BOOL checkBootsOrArmorHeavy() const;
    virtual s32 getBottleOpenAppearItem() const;
    virtual bool checkItemSwordEquip() const;
    virtual f32 getSinkShapeOffset() const;
    virtual BOOL checkSinkDead() const;
    virtual BOOL checkHorseStart();
    virtual Z2WolfHowlMgr* getWolfHowlMgrP();
    virtual BOOL checkWolfHowlSuccessAnime() const;
    virtual BOOL checkCopyRodTopUse();
    virtual bool checkCopyRodEquip() const;
    virtual BOOL checkCutJumpMode() const;

    // inlined dupes
    u32 i_checkModeFlg(u32 pFlag) const { return mModeFlg & pFlag; }
    bool i_checkSmallUpperGuardAnime() const { return checkUpperAnime(0x16); }
    bool i_checkFmChainGrabAnime() const { return checkUpperAnime(0x62) || checkUpperAnime(0x2A0); }
    BOOL i_checkAttentionLock() { return mAttention->Lockon(); }

    bool checkUpperAnime(u16 pIdx) const { return mUpperAnmHeap[UPPER_2].getIdx() == pIdx; }
    bool checkIronBallWaitAnime() const { return checkUpperAnime(0x19C); }
    bool checkHorseTurnLAnime() const { return checkUpperAnime(0x24C); }
    bool checkHorseTurnRAnime() const { return checkUpperAnime(0x24D); }
    bool checkHorseTurnAnime() const { return checkHorseTurnLAnime() || checkHorseTurnRAnime(); }
    bool checkHookshotShootAnime() const { return checkUpperAnime(0x18C); }
    bool checkHookshotReadyAnime() const { return checkUpperAnime(0x18D); }
    bool checkHookshotAnime() const {
        return checkHookshotReadyAnime() || checkHookshotShootAnime();
    }
    BOOL checkBoomerangReadyAnime() const {
        return (mEquipItem == BOOMERANG || mEquipItem == 0x102) && checkUpperAnime(0x54);
    }
    bool checkDkCaught2Anime() const { return checkUpperAnime(0x262); }

    s16 checkWolfEyeUp() const { return mWolfEyeUp; }
    void onModeFlg(u32 flag) { mModeFlg |= flag; }
    void offModeFlg(u32 flag) { mModeFlg &= ~flag; }
    bool swordButton() { return itemButtonCheck(8); }
    daPy_actorKeep_c* getThrowBoomerangAcKeep() { return &mThrowBoomerangAcKeep; }
    s32 getStartRoomNo() { return fopAcM_GetParam(this) & 0x3F; }
    bool checkFisingRodLure() const { return mEquipItem == 0x105; }
    bool doTrigger() const { return mItemTrigger & 0x10; }
    u32 getStartMode() { return (fopAcM_GetParam(this) >> 0xC) & 0x1F; }
    bool checkInputOnR() const { return field_0x33ac > 0.05f; }
    static int getSightBti() { return 0x5B; }
    bool checkBoomerangChargeEndWait() const {
        return mEquipItem != 0x102 && checkBoomerangAnime();
    }
    J3DAnmTransform* getNowAnmPackUpper(daAlink_UPPER param_0) {
        return mNowAnmPackUpper[param_0].getAnmTransform();
    }
    void setFacePriBck(u16 param_0) { setFaceBck(param_0, 1, 0xFFFF); }
    void cancelFmChainGrabFromOut() {
        field_0x2fa3 = 0;
        field_0x2844.clearData();
    }
    s32 checkPlayerDemoMode() const { return mDemo.getDemoType(); }
    u16 getMidnaMsgNum() const { return mMidnaMsgNum; }
    u32 getStartEvent() { return fopAcM_GetParam(this) >> 0x18; }
    const daAlink_AnmData* getAnmData(daAlink_ANM anmID) const { return &m_anmDataTable[anmID]; }

    BOOL i_checkReinRide() const { return mRideStatus == 1 || mRideStatus == 2; }
    int getGrassHowlEventActor() const { return field_0x3198; }

    bool checkFishingCastMode() const {
        bool var_r5;
        bool var_r4 = 1;
        bool var_r3 = 0;

        if (mProcID == PROC_FISHING_CAST) {
            var_r5 = 0;

            if (mItemAcKeep.getActor() != NULL &&
                mItemAcKeep.getActor()->mEvtInfo.i_checkCommandDemoAccrpt() != 0) {
                var_r5 = 1;
            }

            if (!var_r5) {
                var_r3 = 1;
            }
        }

        if (!var_r3) {
            bool var_r3_2 = 0;
            if (mProcID != PROC_FISHING_CAST && i_checkNoResetFlg2(FLG2_UNK_20000000)) {
                var_r3_2 = 1;
            }

            if (!var_r3_2) {
                var_r4 = 0;
            }
        }

        return var_r4;
    }

    J3DModel* initModel(J3DModelData* p_modelData, u32 param_1) {
        return initModel(p_modelData, 0x80000, param_1);
    }

    J3DModel* initModelEnv(J3DModelData* p_modelData, u32 param_1) {
        return initModel(p_modelData, 0, param_1);
    }

    bool checkWindSpeedOnXZ() const { return field_0x35b8.abs2XZ() > 1.0f; }

    bool checkResetRootMtx(int param_0) const { return field_0x2f90 != 0 && param_0 == 1; }

    bool talkTrigger() const { return mItemTrigger & BTN_A; }
    J3DAnmTransform* getNowAnmPackUnder(daAlink_UNDER i_idx) { return mNowAnmPackUnder[i_idx].getAnmTransform(); }

    inline void startRestartRoomFromOut(int, u32, int);
    inline u16 getReadyItem();

    static daAlink_BckData const m_mainBckShield[20];
    static daAlink_BckData const m_mainBckSword[5];
    static daAlink_BckData const m_mainBckFishing[28];
    static daAlink_AnmData const m_anmDataTable[414];
    static daAlink_WlAnmData const m_wlAnmDataTable[147];
    static u8 const m_faceTexDataTable[652];
    static u8 const m_handLeftOutSidePos[12];
    static u8 const m_handRightOutSidePos[12];
    static u8 const m_handLeftInSidePos[12];
    static u8 const m_handRightInSidePos[12];
    static u8 m_procInitTable[5632];
    static u8 m_demoInitTable[1140];
    static u8 m_fEffParamProc[72];

private:
    /* 0x0062C */ request_of_phase_process_class mPhaseReq;
    /* 0x00634 */ char* mArcName;
    /* 0x00638 */ JKRExpHeap* field_0x0638;
    /* 0x0063C */ request_of_phase_process_class mShieldPhaseReq;
    /* 0x00644 */ char* mShieldArcName;
    /* 0x00648 */ JKRExpHeap* field_0x0648;
    /* 0x0064C */ J3DModelData* field_0x064C;
    /* 0x00650 */ J3DModel* mpLinkModel;
    /* 0x00654 */ J3DModel* mpLinkFaceModel;
    /* 0x00658 */ J3DModel* mpLinkHatModel;
    /* 0x0065C */ J3DModel* field_0x065c;
    /* 0x00660 */ J3DModel* mpSwAModel;  // Ordon Sword model
    /* 0x00664 */ J3DModel* mpSwASheathModel;  // Ordon Sword sheath model
    /* 0x00668 */ J3DModel* mpSwMModel;  // Master Sword model
    /* 0x0066C */ J3DModel* mpSwMSheathModel;  // Master Sword sheath model
    /* 0x00670 */ J3DModel* mWoodSwordModel;
    /* 0x00674 */ J3DModel* mpWlChangeModel;
    /* 0x00678 */ J3DModel* mShieldModel;
    /* 0x0067C */ J3DAnmBase* field_0x067c;
    /* 0x00680 */ J3DAnmBase* field_0x0680;
    /* 0x00684 */ J3DModel* mpDemoFCBlendModel;
    /* 0x00688 */ J3DModel* mpDemoFCTongueModel;
    /* 0x0068C */ J3DAnmBase* field_0x068c;
    /* 0x00690 */ mDoExt_bckAnm* mpDemoFCTmpBck;
    /* 0x00694 */ J3DDeformData* mpDemoFCTmpBls;
    /* 0x00698 */ void* field_0x0698;
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
    /* 0x006D0 */ void* field_0x06d0;
    /* 0x006D4 */ void* field_0x06d4;
    /* 0x006D8 */ void* field_0x06d8;
    /* 0x006DC */ void* field_0x06dc;
    /* 0x006E0 */ void* field_0x06e0;
    /* 0x006E4 */ J3DShape* field_0x06e4;
    /* 0x006E8 */ void* field_0x06e8;
    /* 0x006EC */ J3DShape* field_0x06ec;
    /* 0x006F0 */ J3DShape* field_0x06f0;
    /* 0x006F4 */ J3DAnmBase* field_0x06f4;
    /* 0x006F8 */ J3DAnmBase* field_0x06f8;
    /* 0x006FC */ J3DModel* field_0x06fc;  // related to human link
    /* 0x00700 */ J3DModel* field_0x0700;
    /* 0x00704 */ J3DAnmBase* field_0x0704;
    /* 0x00708 */ J3DModel* mHeldItemModel;
    /* 0x0070C */ J3DModel* field_0x070c;  // related to held item
    /* 0x00710 */ J3DModel* field_0x0710;  // related to held item
    /* 0x00714 */ J3DModel* field_0x0714;  // related to held item
    /* 0x00718 */ J3DAnmBase* field_0x0718;
    /* 0x0071C */ J3DAnmBase* field_0x071c;
    /* 0x00720 */ J3DAnmBase* field_0x0720;
    /* 0x00724 */ J3DAnmTevRegKey* field_0x0724;
    /* 0x00728 */ J3DAnmBase* field_0x0728;
    /* 0x0072C */ J3DAnmBase* field_0x072c;
    /* 0x00730 */ mDoExt_bckAnm field_0x730;
    /* 0x0074C */ mDoExt_bckAnm field_0x74C;
    /* 0x00768 */ J3DModelData* field_0x0768;
    /* 0x0076C */ Z2SoundObjSimple* field_0x076c;
    /* 0x00770 */ hsChainShape_c* field_0x770;
    /* 0x00774 */ u8 field_0x0774[0x77C - 0x774];
    /* 0x0077C */ dBgS_ObjLinChk* mpHookshotLinChk;
    /* 0x00780 */ u8 field_0x780[4];
    /* 0x00784 */ J3DModel* field_0x784[2];
    /* 0x0078C */ J3DModel* mpWlChain1Model;
    /* 0x00790 */ J3DModel* mpWlChain2Model;
    /* 0x00794 */ J3DModel* mpWlChain3Model;
    /* 0x00798 */ J3DModel* mpWlChain4Model;
    /* 0x0079C */ J3DModel* field_0x79c;  // related to wolf
    /* 0x007A0 */ J3DModel* mpWlMidnaHatModel;
    /* 0x007A4 */ J3DModel* field_0x7a4;  // related to wolf
    /* 0x007A8 */ J3DModel* mpWlMidnaHairModel;
    /* 0x007AC */ J3DAnmTevRegKey* field_0x7ac;
    /* 0x007B0 */ J3DAnmTevRegKey* field_0x7b0;
    /* 0x007B4 */ J3DAnmTevRegKey* field_0x7b4;
    /* 0x007B8 */ J3DAnmTevRegKey* field_0x7b8;
    /* 0x007BC */ mDoExt_bckAnm* m_sWindowBck;
    /* 0x007C0 */ u32 mpWarpTexData;
    /* 0x007C4 */ daPy_actorKeep_c mWolfLockAcKeep[10];
    /* 0x00814 */ dCcD_Stts field_0x814;
    /* 0x00850 */ dCcD_Cyl field_0x850[3];
    /* 0x00C04 */ dCcD_Cyl field_0xC04[3];
    /* 0x00FB8 */ dCcD_Sph field_0xFB8;
    /* 0x010F0 */ dCcD_Cyl field_0x10F0;
    /* 0x0122C */ dCcD_Cps field_0x122C[3];
    /* 0x015F8 */ dCcD_Cps mGuardAttackAtCps;
    /* 0x0173C */ dCcD_Stts field_0x173c;  // related to ball and chain
    /* 0x01778 */ dCcD_Sph field_0x1778;
    /* 0x018B0 */ dBgS_AcchCir field_0x18B0[3];
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
    /* 0x020F0 */ daPy_anmHeap_c mAnmHeap3;
    /* 0x02104 */ daPy_anmHeap_c mAnmHeap4;
    /* 0x02118 */ daPy_anmHeap_c mAnmHeap5;
    /* 0x0212C */ daPy_anmHeap_c mAnmHeap6;
    /* 0x02140 */ daPy_anmHeap_c mAnmHeap7;
    /* 0x02154 */ mDoExt_bckAnm field_0x2154;
    /* 0x02170 */ u8 field_0x2170[0x10];
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
    /* 0x0284C */ daPy_actorKeep_c field_0x284c;
    /* 0x02854 */ daPy_actorKeep_c mCargoCarryAcKeep;
    /* 0x0285C */ daPy_actorKeep_c field_0x285c;
    /* 0x02864 */ dMsgFlow_c mMsgFlow;
    /* 0x028B0 */ int field_0x28b0[0x10];
    /* 0x028F0 */ int field_0x28f0;
    /* 0x028F4 */ int mAtnActorID;
    /* 0x028F8 */ int field_0x28f8;
    /* 0x028FC */ int field_0x28fc;
    /* 0x02900 */ u32 field_0x2900;
    /* 0x02904 */ daAlink_footData_c mFootData1[2];
    /* 0x02A4C */ daAlink_footData_c mFootData2[2];
    /* 0x02B94 */ f32* field_0x2b94;
    /* 0x02B98 */ f32 field_0x2b98;
    /* 0x02B98 */ f32 field_0x2b9c;
    /* 0x02BA0 */ f32* field_0x2ba0;
    /* 0x02BA4 */ f32* field_0x2ba4;
    /* 0x02BA8 */ f32 mSinkShapeOffset;
    /* 0x02BAC */ f32 field_0x2bac[3];
    /* 0x02BB8 */ Mtx mInvMtx;
    /* 0x02BE8 */ Mtx field_0x2be8;
    /* 0x02C18 */ Mtx mRootMtx;
    /* 0x02C48 */ Mtx mMagneBootMtx;
    /* 0x02C78 */ Mtx mMagneBootInvMtx;
    /* 0x02CA8 */ Z2CreatureLink mZ2Link;
    /* 0x02D78 */ void* field_0x2d78;
    /* 0x02D7C */ daPy_frameCtrl_c* field_0x2d7c;
    /* 0x02D80 */ int field_0x2d80;
    /* 0x02D84 */ Z2WolfHowlMgr mZ2WolfHowlMgr;
    /* 0x02E44 */ dJntCol_c field_0x2e44;
    /* 0x02E54 */ dPaPo_c field_0x2e54;
    /* 0x02E8C */ u8 field_0x2e8c[0x90];
    /* 0x02F1C */ dPaPo_c* field_0x2f1c;
    /* 0x02F20 */ dPa_hermiteEcallBack_c field_0x2f20;
    /* 0x02F38 */ dPa_hermiteEcallBack_c field_0x2f38;
    /* 0x02F50 */ Vec* field_0x2f50;
    /* 0x02F54 */ Vec* field_0x2f54;
    /* 0x02F58 */ u16* field_0x2f58;
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
    /* 0x02F9B */ u8 field_0x2f9b;
    /* 0x02F9C */ u8 mSelectItemId;
    /* 0x02F9D */ u8 field_0x2f9d;
    /* 0x02F9E */ u8 field_0x2f9e;
    /* 0x02F9F */ u8 field_0x2f9f;
    /* 0x02FA0 */ u8 field_0x2fa0;
    /* 0x02FA1 */ u8 mRunCutComboCount;
    /* 0x02FA2 */ u8 mActiveBombNum;
    /* 0x02FA3 */ u8 field_0x2fa3;
    /* 0x02FA4 */ u8 mRollCrashFlg;
    /* 0x02FA5 */ u8 mPolySound;
    /* 0x02FA6 */ u8 field_0x2fa6;
    /* 0x02FA7 */ u8 field_0x2fa7;
    /* 0x02FA8 */ u8 field_0x2fa8;
    /* 0x02FA9 */ u8 mWolfEyeUpTimer;
    /* 0x02FAA */ u8 mRideStatus;
    /* 0x02FAB */ u8 field_0x2fab;
    /* 0x02FAC */ u8 mExitDirection;
    /* 0x02FAD */ u8 field_0x2fad;
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
    /* 0x02FE2 */ s16 field_0x2fe2;
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
    /* 0x03006 */ s16 field_0x3006;
    /* 0x03008 */ s16 field_0x3008;
    /* 0x0300A */ s16 field_0x300a;
    /* 0x0300C */ s16 mCommonCounter;  // might need more accurate name
    /* 0x0300E */ s16 field_0x300e;
    /* 0x03010 */ s16 field_0x3010;
    /* 0x03012 */ s16 field_0x3012;
    /* 0x03014 */ s16 mFallVoiceInit;
    /* 0x03016 */ u8 field_0x3016[2];
    /* 0x03018 */ s16 field_0x3018;
    /* 0x0301A */ s16 mHookshotMode;
    /* 0x0301C */ s16 field_0x301c;
    /* 0x0301E */ s16 field_0x301e;
    /* 0x03020 */ s16 field_0x3020;
    /* 0x03022 */ s16 field_0x3022;
    /* 0x03024 */ s16 field_0x3024;
    /* 0x03026 */ s16 field_0x3026;
    /* 0x03028 */ s16 field_0x3028;
    /* 0x0302A */ u8 field_0x302a[2];
    /* 0x0302C */ s16 field_0x302c;
    /* 0x0302E */ s16 field_0x302e;
    /* 0x03030 */ s16 field_0x3030;
    /* 0x03032 */ s16 field_0x3032;
    /* 0x03034 */ s16 field_0x3034;
    /* 0x03036 */ s16 field_0x3036;
    /* 0x03038 */ u8 field_0x3038[2];
    /* 0x0303A */ s16 field_0x303a;
    /* 0x0303C */ u8 field_0x303c[4];
    /* 0x03040 */ s16 field_0x3040;
    /* 0x03042 */ s16 field_0x3042;
    /* 0x03044 */ s16 field_0x3044;
    /* 0x03046 */ s16 field_0x3046;
    /* 0x03048 */ s16 field_0x3048;
    /* 0x0304A */ s16 field_0x304a;
    /* 0x0304C */ u8 field_0x304c[2];
    /* 0x0304E */ s16 field_0x304e;
    /* 0x03050 */ u8 field_0x3050[4];
    /* 0x03054 */ s16 field_0x3054;
    /* 0x03056 */ s16 field_0x3056;
    /* 0x03058 */ u8 field_0x3058[2];
    /* 0x0305A */ s16 field_0x305a;
    /* 0x0305C */ s16 field_0x305c;
    /* 0x0305E */ u8 field_0x305e[2];
    /* 0x03060 */ s16 field_0x3060;
    /* 0x03062 */ s16 field_0x3062;
    /* 0x03064 */ s16 field_0x3064;
    /* 0x03066 */ s16 field_0x3066;
    /* 0x03068 */ u8 field_0x3068[4];
    /* 0x0306C */ s16 field_0x306c;
    /* 0x0306E */ s16 field_0x306e;
    /* 0x03070 */ s16 field_0x3070;
    /* 0x03072 */ s16 field_0x3072;
    /* 0x03074 */ s16 field_0x3074;
    /* 0x03076 */ s16 field_0x3076;
    /* 0x03078 */ s16 field_0x3078;
    /* 0x0307A */ s16 field_0x307a;
    /* 0x0307C */ s16 field_0x307c;
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
    /* 0x03094 */ s16 field_0x3094;
    /* 0x03096 */ u8 field_0x3096[4];
    /* 0x0309A */ s16 field_0x309a;
    /* 0x0309C */ u8 field_0x309c[4];
    /* 0x030A0 */ s16 field_0x30a0;
    /* 0x030A2 */ s16 field_0x30a2;
    /* 0x030A4 */ s16 field_0x30a4;
    /* 0x030A6 */ s16 field_0x30a6;
    /* 0x030A8 */ u16 field_0x30a8;
    /* 0x030AA */ u16 field_0x30aa;
    /* 0x030AC */ s16 mWolfEyeUp;
    /* 0x030AE */ u16 field_0x30ae;
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
    /* 0x030CE */ u16 field_0x30ce;
    /* 0x030D0 */ s16 field_0x30d0;
    /* 0x030D2 */ s16 field_0x30d2;
    /* 0x030D4 */ u16 field_0x30d4;
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
    /* 0x0315A */ csXyz field_0x315a;
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
    /* 0x031A8 */ u8 field_0x31a8[8];
    /* 0x031B0 */ int field_0x31b0;
    /* 0x031B4 */ u8 field_0x31b4[8];
    /* 0x031BC */ u32 field_0x31bc;
    /* 0x031C0 */ u32 field_0x31c0;
    /* 0x031C4 */ u32 field_0x31c4;
    /* 0x031C8 */ u32 field_0x31c8;
    /* 0x031CC */ u32 field_0x31cc;
    /* 0x031D0 */ u32 field_0x31d0;
    /* 0x031D4 */ u32 field_0x31d4;
    /* 0x031D8 */ u8 field_0x31d8[12];
    /* 0x031E4 */ u32 field_0x31e4;
    /* 0x031E8 */ u8 field_0x31e8[16];
    /* 0x031F8 */ u32 field_0x31f8;
    /* 0x031FC */ u32 field_0x31fc;
    /* 0x03200 */ u32 field_0x3200;
    /* 0x03204 */ u32 field_0x3204;
    /* 0x03208 */ u32 field_0x3208;
    /* 0x0320C */ u8 field_0x320c[16];
    /* 0x0321C */ u32 field_0x321c;
    /* 0x03220 */ u32 field_0x3220;
    /* 0x03224 */ u32 field_0x3224;
    /* 0x03228 */ u8 field_0x3228[24];
    /* 0x03240 */ u32 field_0x3240;
    /* 0x03244 */ u8 field_0x3244[20];
    /* 0x03258 */ u32 field_0x3258;
    /* 0x0325C */ u32 field_0x325c;
    /* 0x03260 */ u8 field_0x3260[40];
    /* 0x03288 */ u32 field_0x3288;
    /* 0x0328C */ u32 field_0x328c;
    /* 0x03290 */ u32 field_0x3290;
    /* 0x03294 */ u32 field_0x3294;
    /* 0x03298 */ u8 field_0x3298[8];
    /* 0x032A0 */ J3DGXColorS10 field_0x32a0[2];
    /* 0x032B0 */ J3DGXColorS10 field_0x32b0[2];
    /* 0x032C0 */ s16 field_0x32c0;
    /* 0x032C2 */ u8 field_0x32c2[2];
    /* 0x032C4 */ u16 field_0x32c4;
    /* 0x032C6 */ u16 field_0x32c6;
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
    /* 0x035AC */ cXyz field_0x35ac;
    /* 0x035B8 */ cXyz field_0x35b8;
    /* 0x035C4 */ cXyz field_0x35c4;
    /* 0x035D0 */ cXyz field_0x35d0;
    /* 0x035DC */ cXyz field_0x35dc;
    /* 0x035E8 */ cXyz field_0x35e8;
    /* 0x035F4 */ cXyz mMidnaAtnPos;
    /* 0x03600 */ cXyz field_0x3600;
    /* 0x0360C */ cXyz field_0x360c;
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
    /* 0x037E0 */ cXyz field_0x37e0;
    /* 0x037EC */ cXyz mHookshotTopPos;
    /* 0x037F8 */ cXyz field_0x37f8;
    /* 0x03804 */ cXyz field_0x3804;
    /* 0x03810 */ cXyz field_0x3810;
    /* 0x0381C */ cXyz field_0x381c;
    /* 0x03828 */ cXyz field_0x3828;
    /* 0x03834 */ cXyz field_0x3834;
    /* 0x03840 */ cXyz* mIronBallChainPos;
    /* 0x03844 */ csXyz* mIronBallChainAngle;
    /* 0x03848 */ void* field_0x3848;
    /* 0x0384C */ f32* field_0x384c;
    /* 0x03850 */ daAlink_procFunc mpProcFunc;
};  // Size: 0x38BC

struct daAlinkHIO_anm_c {
    /* 0x00 */ s16 mEndF;
    /* 0x04 */ f32 mRate;
    /* 0x08 */ f32 mStart;
    /* 0x0C */ f32 mInterpolation;  // morf
    /* 0x10 */ f32 field_0x10;  // CF?
};                              // size = 0x14

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
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2C;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
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
    /* 0x3C */ daAlinkHIO_anm_c mDiveUnkAnm;
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
    /* 0x14 */ daAlinkHIO_anm_c mReleaseAnm;
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
    /* 0x8C */ f32 mUnkReleaseASpeed;
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
    /* 0x00 */ daAlinkHIO_anm_c mChargeAnm;      // ?
    /* 0x14 */ daAlinkHIO_anm_c mChargeMoveAnm;  // ?
    /* 0x28 */ daAlinkHIO_anm_c mCutAnm;
    /* 0x3C */ daAlinkHIO_anm_c mLandAnm;
    /* 0x50 */ f32 mCutSpeedH;
    /* 0x54 */ f32 mCutSpeedV;
    /* 0x58 */ f32 mJumpAttackStartF;
    /* 0x5C */ f32 mJumpAttackEndF;
    /* 0x60 */ f32 mCutInitF;
    /* 0x64 */ f32 mLandAttackInitF;
    /* 0x68 */ f32 mLandAttackEndF;
    /* 0x6C */ f32 mLandAttackRadius;
    /* 0x70 */ f32 mSpinSlashUnkCF;
};  // Size: 0x74

class daAlinkHIO_cutLargeJump_c0 {
public:
    static daAlinkHIO_cutLargeJump_c1 const m;
};

class daAlinkHIO_cutNmV_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_cutNmV_c0 {
public:
    static daAlinkHIO_cutNmV_c1 const m;
};

class daAlinkHIO_cutNmL_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_cutNmL_c0 {
public:
    static daAlinkHIO_cutNmL_c1 const m;
};

class daAlinkHIO_cutNmR_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_cutNmR_c0 {
public:
    static daAlinkHIO_cutNmR_c1 const m;
};

class daAlinkHIO_cutNmSL_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_cutNmSL_c0 {
public:
    static daAlinkHIO_cutNmSL_c1 const m;
};

class daAlinkHIO_cutNmSR_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_cutNmSR_c0 {
public:
    static daAlinkHIO_cutNmSR_c1 const m;
};

class daAlinkHIO_cutFnL_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_cutFnL_c0 {
public:
    static daAlinkHIO_cutFnL_c1 const m;
};

class daAlinkHIO_cutFnV_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_cutFnV_c0 {
public:
    static daAlinkHIO_cutFnV_c1 const m;
};

class daAlinkHIO_cutFnS_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_cutFnS_c0 {
public:
    static daAlinkHIO_cutFnS_c1 const m;
};

class daAlinkHIO_cutFnSl_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_cutFnSl_c0 {
public:
    static daAlinkHIO_cutFnSl_c1 const m;
};

class daAlinkHIO_cutFnSm_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ s16 field_0x14;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_cutFnSm_c0 {
public:
    static daAlinkHIO_cutFnSm_c1 const m;
};

class daAlinkHIO_cutFnR_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
};  // Size: 0x2C

class daAlinkHIO_cutFnR_c0 {
public:
    static daAlinkHIO_cutFnR_c1 const m;
};

class daAlinkHIO_cutFnJU_c1 {
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
};  // Size: 0x54

class daAlinkHIO_cutFnJU_c0 {
public:
    static daAlinkHIO_cutFnJU_c1 const m;
};

class daAlinkHIO_cutTurn_c1 {
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
};  // Size: 0x98

class daAlinkHIO_cutTurn_c0 {
public:
    static daAlinkHIO_cutTurn_c1 const m;
};

class daAlinkHIO_hoCutLA_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_hoCutLA_c0 {
public:
    static daAlinkHIO_hoCutLA_c1 const m;
};

class daAlinkHIO_hoCutLB_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_hoCutLB_c0 {
public:
    static daAlinkHIO_hoCutLB_c1 const m;
};

class daAlinkHIO_hoCutRA_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_hoCutRA_c0 {
public:
    static daAlinkHIO_hoCutRA_c1 const m;
};

class daAlinkHIO_hoCutRB_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
};  // Size: 0x20

class daAlinkHIO_hoCutRB_c0 {
public:
    static daAlinkHIO_hoCutRB_c1 const m;
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

class daAlinkHIO_cutDaL_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};  // Size: 0x1C

class daAlinkHIO_cutDaL_c0 {
public:
    static daAlinkHIO_cutDaL_c1 const m;
};

class daAlinkHIO_cutDaR_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};  // Size: 0x1C

class daAlinkHIO_cutDaR_c0 {
public:
    static daAlinkHIO_cutDaR_c1 const m;
};

class daAlinkHIO_cutDaCharge_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
};  // Size: 0x1C

class daAlinkHIO_cutDaCharge_c0 {
public:
    static daAlinkHIO_cutDaCharge_c1 const m;
};

class daAlinkHIO_cutDown_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ daAlinkHIO_anm_c field_0x50;
    /* 0x64 */ s16 field_0x64;
    /* 0x66 */ s16 field_0x66;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 field_0x70;
};  // Size: 0x74

class daAlinkHIO_cutDown_c0 {
public:
    static daAlinkHIO_cutDown_c1 const m;
};

class daAlinkHIO_cutHead_c1 {
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
    /* 0x54 */ f32 field_0x54;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 field_0x5C;
};  // Size: 0x60

class daAlinkHIO_cutHead_c0 {
public:
    static daAlinkHIO_cutHead_c1 const m;
};

class daAlinkHIO_gAtPush_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
};  // Size: 0x24

class daAlinkHIO_gAtPush_c0 {
public:
    static daAlinkHIO_gAtPush_c1 const m;
};

class daAlinkHIO_gAtKick_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1C;
    /* 0x20 */ f32 field_0x20;
};  // Size: 0x24

class daAlinkHIO_gAtKick_c0 {
public:
    static daAlinkHIO_gAtKick_c1 const m;
};

class daAlinkHIO_guard_c1 {
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
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6C;
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7C;
};  // Size: 0x80

class daAlinkHIO_guard_c0 {
public:
    static daAlinkHIO_guard_c1 const m;
};

class daAlinkHIO_crouch_c1 {
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
    /* 0x4C */ f32 mUnkInterpolation;
    /* 0x50 */ f32 mMinWalkFrame;
    /* 0x54 */ f32 mMinTiredWalkFrame;
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
    /* 0x48 */ f32 field_0x48;
    /* 0x4C */ f32 field_0x4C;
    /* 0x50 */ f32 field_0x50;
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

class daAlinkHIO_wallCatch_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
    /* 0x3C */ daAlinkHIO_anm_c field_0x3C;
    /* 0x50 */ f32 field_0x50;
};  // Size: 0x54

class daAlinkHIO_wallFall_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
};  // Size: 0x28

class daAlinkHIO_wallFall_c0 {
public:
    static daAlinkHIO_wallFall_c1 const m;
};

class daAlinkHIO_wallCatch_c0 {
public:
    static daAlinkHIO_wallCatch_c1 const m;
};

class daAlinkHIO_wallHang_c1 {
public:
    /* 0x00 */ s16 field_0x0;
    /* 0x02 */ s16 field_0x2;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xC;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
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
    // most of these havent been verified yet
    /* 0x00 */ daAlinkHIO_anm_c mForwardSlideAnm;
    /* 0x14 */ daAlinkHIO_anm_c mBackwardSlideAnm;
    /* 0x28 */ daAlinkHIO_anm_c mForwardLandAnm;  // this and 0x3C might have names reversed?
    /* 0x3C */ daAlinkHIO_anm_c mBackwardLandAnm;
    /* 0x50 */ f32 mMaxSpeed;
    /* 0x54 */ f32 mAcceleration;
    /* 0x58 */ f32 mSlideAngle;
    /* 0x5C */ f32 mClimbAngle;
    /* 0x60 */ f32 mClimbAnmMinSpeed;
    /* 0x64 */ f32 mMaxClimbSpeed;
    /* 0x68 */ f32 mLavaFloorSlideAngle;      // ?
    /* 0x6C */ f32 mLavaFloorWeakSlideAngle;  // ?
    /* 0x70 */ f32 mLavaFloorWeakSlideSpeed;
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
    /* 0x5C */ s16 field_0x5c;   // related to dash
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
    /* 0x5C */ f32 field_0x5C;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
};  // Size: 0x6C

class daAlinkHIO_horse_c0 {
public:
    static daAlinkHIO_horse_c1 const m;
};

class daAlinkHIO_canoe_c1 {
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
    /* 0x3C */ f32 field_0x3C;
    /* 0x40 */ f32 field_0x40;
    /* 0x44 */ f32 field_0x44;
};  // Size: 0x48

class daAlinkHIO_canoe_c0 {
public:
    static daAlinkHIO_canoe_c1 const m;
};

class daAlinkHIO_damage_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ u8 field_0x28;
    /* 0x2A */ s16 field_0x2A;
    /* 0x2C */ s16 field_0x2C;
    /* 0x2E */ s16 field_0x2E;
    /* 0x30 */ s16 field_0x30;
    /* 0x32 */ s16 field_0x32;
    /* 0x34 */ s16 field_0x34;
    /* 0x36 */ s16 field_0x36;
    /* 0x38 */ s16 field_0x38;
    /* 0x3A */ s16 field_0x3A;
    /* 0x3C */ s16 field_0x3C;
    /* 0x3E */ s16 field_0x3E;
    /* 0x40 */ s16 field_0x40;
    /* 0x42 */ s16 field_0x42;
    /* 0x44 */ s16 field_0x44;
    /* 0x46 */ s16 field_0x46;
    /* 0x48 */ s16 field_0x48;
    /* 0x4A */ s16 field_0x4A;
    /* 0x4C */ s16 field_0x4C;
    /* 0x50 */ f32 field_0x50;
    /* 0x54 */ f32 field_0x54;
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

class daAlinkHIO_damLarge_c1 {
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
};  // Size: 0xBC

class daAlinkHIO_damLarge_c0 {
public:
    static daAlinkHIO_damLarge_c1 const m;
};

class daAlinkHIO_damHuge_c1 {
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
};  // Size: 0xBC

class daAlinkHIO_damHuge_c0 {
public:
    static daAlinkHIO_damHuge_c1 const m;
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
    /* 0x14 */ f32 mSwampInputRate;  // ?
};                                   // Size: 0x18

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

class daAlinkHIO_wlAtWaTl_c1 {
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
};  // Size: 0x3C

class daAlinkHIO_wlAtWaTl_c0 {
public:
    static daAlinkHIO_wlAtWaTl_c1 const m;
};

class daAlinkHIO_wlAtWaSc_c1 {
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
};  // Size: 0x3C

class daAlinkHIO_wlAtWaSc_c0 {
public:
    static daAlinkHIO_wlAtWaSc_c1 const m;
};

class daAlinkHIO_wlAtWaLr_c1 {
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
};  // Size: 0x3C

class daAlinkHIO_wlAtWaLr_c0 {
public:
    static daAlinkHIO_wlAtWaLr_c1 const m;
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

class daAlinkHIO_wlDamLarge_c1 {
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
};  // Size: 0x6C

class daAlinkHIO_wlDamLarge_c0 {
public:
    static daAlinkHIO_wlDamLarge_c1 const m;
};

class daAlinkHIO_wlDamHuge_c1 {
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
};  // Size: 0x6C

class daAlinkHIO_wlDamHuge_c0 {
public:
    static daAlinkHIO_wlDamHuge_c1 const m;
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
    /* 0x48 */ u16 mNormalOilLoss;
    /* 0x4A */ u16 mShakeOilLoss;
    /* 0x4C */ f32 mFlameTrackRate;
};  // Size: 0x50

class daAlinkHIO_kandelaar_c0 {
public:
    static daAlinkHIO_kandelaar_c1 const m;
};

class daAlinkHIO_bottle_c1 {
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
};  // Size: 0xB4

class daAlinkHIO_bottle_c0 {
public:
    static daAlinkHIO_bottle_c1 const m;
};

class daAlinkHIO_boom_c1 {
public:
    /* 0x00 */ daAlinkHIO_anm_c mThrowAnm;
    /* 0x14 */ daAlinkHIO_anm_c mCatchAnm;
    /* 0x28 */ s16 field_0x28;  // return time?
    /* 0x2A */ s16 mBgThroughTime;
    /* 0x2C */ f32 mIdleAnmSpeed;
    /* 0x30 */ f32 mStartInterpolation;
    /* 0x34 */ f32 mFlySpeed;
    /* 0x38 */ f32 mFlySpeed2;  // return speed?
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
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ s16 field_0x2a;
    /* 0x2C */ s16 field_0x2c;
    /* 0x30 */ f32 field_0x30;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ f32 field_0x38;
    /* 0x3C */ f32 field_0x3c;
    /* 0x40 */ f32 field_0x40;
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
};  // Size: 0x70

class daAlinkHIO_bow_c0 {
public:
    static daAlinkHIO_bow_c1 const m;
};

class daAlinkHIO_ironBall_c1 {
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
    /* 0x70 */ f32 field_0x70;
    /* 0x74 */ f32 field_0x74;
    /* 0x78 */ f32 field_0x78;
    /* 0x7C */ f32 field_0x7C;
    /* 0x80 */ f32 field_0x80;
    /* 0x84 */ f32 field_0x84;
    /* 0x88 */ f32 field_0x88;
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
    /* 0x20 */ f32 mAtRadius;
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
    /* 0x00 */ daAlinkHIO_anm_c field_0x0;
    /* 0x14 */ daAlinkHIO_anm_c field_0x14;
    /* 0x28 */ daAlinkHIO_anm_c field_0x28;
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

class daAlinkHIO_hookshot_c0 {
public:
    static daAlinkHIO_hookshot_c1 const m;
};

class mDoExt_morf_c;

typedef int (daMidna_c::*daMidna_func)();
class daMidna_c : public fopAc_ac_c {
public:
    enum daMidna_ERFLG0 {
        ERFLG0_NO_SERVICE_WAIT = 0x80,
        ERFLG0_FORCE_PANIC = 8,
    };

    enum daMidna_FLG0 {
        FLG0_UNK_8000000 = 0x8000000,
        FLG0_NPC_NEAR = 0x100000,
        FLG0_NPC_FAR = 0x40000,
        FLG0_NO_DRAW = 0x2000,
        FLG0_UNK_200 = 0x200,
    };

    enum daMidna_FLG1 {
        FLG1_FORCE_NORMAL_COL = 8,
        FLG1_FORCE_TIRED_COL = 4,
    };

    enum daMidna_ANM {};

    void onForcePanic();
    u32 checkForceNormalColor() const;
    u32 checkForceTiredColor() const;
    bool checkMidnaTired();
    void onNoServiceWait();
    /* 804BC3E0 */ void modelCallBack(int);
    /* 804BC5C4 */ void changeUpperBck();
    /* 804BC614 */ void changeFaceBck();
    /* 804BC670 */ void baseModelCallBack(int);
    /* 804BC740 */ void initInvModel(u16, J3DModel**, mDoExt_invisibleModel*, u32);
    /* 804BC7D4 */ void initDemoModel(J3DModel**, char const*, u32);
    /* 804BC868 */ void createHeap();
    /* 804BD274 */ void create();
    /* 804BD93C */ void allAnimePlay();
    /* 804BDE04 */ void setMatrix();
    /* 804BE470 */ void setBodyPartMatrix();
    /* 804BED1C */ void setRoomInfo();
    /* 804BEDB8 */ void setBodyPartPos();
    /* 804BEFA0 */ void checkAppear();
    /* 804BF070 */ void checkMidnaPosState();
    /* 804BFF80 */ void setUpperAnime(u16, u16);
    /* 804C0020 */ void setUpperAnimeAndSe(daMidna_c::daMidna_ANM);
    /* 804C0094 */ void setFaceAnime(u16, u16);
    /* 804C0134 */ void endHighModel();
    /* 804C0238 */ void setDemoAnm();
    /* 804C0BAC */ void setFaceBtp(u16, int);
    /* 804C0C6C */ void setFaceBtk(u16, int);
    /* 804C0D2C */ void setLeftHandShape(u16);
    /* 804C0E18 */ void setRightHandShape(u16);
    /* 804C0F04 */ void checkHairOnlyAnime(int) const;
    /* 804C0F24 */ void setBckAnime(J3DAnmTransform*, int, f32);
    /* 804C103C */ void setAnm();
    /* 804C287C */ void getNeckAimAngle(cXyz const*, s16*, s16*, s16*, s16*);
    /* 804C2A68 */ void clearEyeMove();
    /* 804C2AB8 */ void setEyeMove(cXyz const*, s16, s16);
    /* 804C2EBC */ void setNeckAngle();
    /* 804C3168 */ void initHairAngle();
    /* 804C3298 */ void setHairAngle();
    /* 804C3F04 */ void setDemoData();
    /* 804C4394 */ void setSimpleBrk(J3DModelData*, u16);
    /* 804C4444 */ void setSimpleBtk(J3DModelData*, u16);
    /* 804C44CC */ void initMidnaModel();
    /* 804C49B8 */ void setMidnaNoDrawFlg();
    /* 804C4AE8 */ void checkMetamorphoseEnableBase();
    /* 804C4B68 */ void checkNoDrawState();
    /* 804C4BC0 */ void setSound();
    /* 804C4FDC */ void execute();
    /* 804C5A08 */ void draw();
    /* 804C61A4 */ ~daMidna_c();

    void onEndResetStateFlg0(daMidna_ERFLG0 pFlg) { mEndResetStateFlg0 |= pFlg; }
    u32 checkStateFlg0(daMidna_FLG0 flag) const { return mStateFlg0 & flag; }
    u32 checkStateFlg1(daMidna_FLG1 flag) const { return mStateFlg1 & flag; }
    void setFaceNum(int num) { mFaceNum = num; }
    void setMotionNum(int num) { mMotionNum = num; }
    bool checkDemoTypeNone() const { return mDemoType == 0; }
    void changeOriginalDemo() { mDemoType = 3; }
    void changeDemoMode(u32 mode) { mDemoMode = mode; }
    BOOL checkNpcNear() { return checkStateFlg0(FLG0_NPC_NEAR); }
    BOOL checkNpcFar() { return checkStateFlg0(FLG0_NPC_FAR); }
    BOOL checkNoDraw() const { return checkStateFlg0(FLG0_NO_DRAW); }
    int checkMetamorphoseEnable() { return (this->*mpFunc)(); }
    
    bool checkPortalObjRide() const {
        return checkStateFlg0(FLG0_UNK_8000000) && checkStateFlg0(FLG0_UNK_200);
    }

    inline bool checkMidnaRealBody();

    static u8 const m_texDataTable[84];
    static u8 const m_anmDataTable[636];

private:
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ J3DModel* field_0x570;
    /* 0x0574 */ J3DModel* field_0x574;
    /* 0x0578 */ mDoExt_McaMorfSO* field_0x578;
    /* 0x057C */ mDoExt_McaMorfCallBack1_c* field_0x57c;
    /* 0x0580 */ cXyz* field_0x580;
    /* 0x0584 */ mDoExt_bckAnm field_0x584;
    /* 0x05A0 */ mDoExt_bckAnm field_0x5a0;
    /* 0x05BC */ J3DAnmTexPattern* field_0x5bc;
    /* 0x05C0 */ J3DAnmTextureSRTKey* field_0x5c0;
    /* 0x05C4 */ mDoExt_invisibleModel field_0x5c4;
    /* 0x05CC */ mDoExt_invisibleModel mInvMaskBmd;
    /* 0x05D4 */ mDoExt_invisibleModel mInvHandsBmd;
    /* 0x05DC */ mDoExt_invisibleModel mInvHairhandBmd;
    /* 0x05E4 */ daPy_anmHeap_c field_0x5e4[3];
    /* 0x0620 */ daPy_anmHeap_c field_0x620;
    /* 0x0634 */ daPy_anmHeap_c field_0x634;
    /* 0x0648 */ J3DAnmTextureSRTKey* field_0x648;
    /* 0x064C */ J3DAnmTextureSRTKey* field_0x64c;
    /* 0x0650 */ J3DAnmTextureSRTKey* field_0x650;
    /* 0x0654 */ J3DAnmTextureSRTKey* field_0x654;
    /* 0x0658 */ J3DAnmTevRegKey* field_0x658;
    /* 0x065C */ J3DAnmTevRegKey* field_0x65c;
    /* 0x0660 */ J3DAnmTevRegKey* field_0x660;
    /* 0x0664 */ J3DAnmTevRegKey* field_0x664;
    /* 0x0668 */ J3DAnmTevRegKey* field_0x668;
    /* 0x066C */ J3DAnmTevRegKey* field_0x66c;
    /* 0x0670 */ J3DModel* field_0x670;
    /* 0x0674 */ J3DModel* mpMaskBmd;
    /* 0x0678 */ J3DModel* field_0x678;
    /* 0x067C */ J3DModel* mpHandsBmd;
    /* 0x0680 */ J3DModel* field_0x680;
    /* 0x0684 */ J3DModel* mpHairhandBmd;
    /* 0x0688 */ J3DModel* mpDemoBDTmpBmd;
    /* 0x068C */ J3DModel* mpDemoBDMaskBmd;
    /* 0x0690 */ J3DModel* mpDemoBDHandsBmd;
    /* 0x0694 */ J3DModel* mpDemoBDHairhandBmd;
    /* 0x0698 */ J3DModel* mpGokouBmd;
    /* 0x069C */ J3DShape* field_0x69c;
    /* 0x06A0 */ J3DShape* field_0x6a0;
    /* 0x06A4 */ J3DShape* field_0x6a4;
    /* 0x06A8 */ J3DShape* field_0x6a8;
    /* 0x06AC */ J3DModel* mpDemoFCBlendBmd;
    /* 0x06B0 */ J3DModel* mpDemoFCTongueBmd;
    /* 0x06B4 */ J3DAnmTextureSRTKey* field_0x6b4;
    /* 0x06B8 */ mDoExt_bckAnm* mpDemoFCTmpBck;
    /* 0x06BC */ J3DDeformData* mpDemoFCTmpBls;
    /* 0x06C0 */ J3DAnmCluster* field_0x6c0;
    /* 0x06C4 */ mDoExt_blkAnm* field_0x6c4;
    /* 0x06C8 */ J3DModel* mpDemoHLTmpBmd;
    /* 0x06CC */ mDoExt_bckAnm* mpDemoHLTmpBck;
    /* 0x06D0 */ J3DModel* mpDemoHRTmpBmd;
    /* 0x06D4 */ mDoExt_bckAnm* mpDemoHRTmpBck;
    /* 0x06D8 */ J3DModel* mpDemoHDTmpBmd;
    /* 0x06DC */ mDoExt_bckAnm* mpDemoHDTmpBck;
    /* 0x06E0 */ J3DGXColorS10 field_0x6e0;
    /* 0x06E8 */ J3DGXColor field_0x6e8;
    /* 0x06EC */ u8 field_0x6ec;
    /* 0x06ED */ u8 field_0x6ed;
    /* 0x06EE */ u8 field_0x6ee;
    /* 0x06EF */ u8 field_0x6ef;
    /* 0x06F0 */ void* field_0x6f0;
    /* 0x06F4 */ void* field_0x6f4;
    /* 0x06F8 */ void* field_0x6f8;
    /* 0x06FC */ Z2Creature field_0x6fc;
    /* 0x078C */ dMsgFlow_c mMsgFlow;
    /* 0x07D8 */ dBgS_LinkLinChk mLinChk;
    /* 0x0848 */ u8 mMotionNum;
    /* 0x0849 */ u8 mFaceNum;
    /* 0x084A */ u8 field_0x84a[4];
    /* 0x084E */ u8 field_0x84e;
    /* 0x084F */ u8 mDemoType;
    /* 0x0850 */ u8 field_0x850[0xA];
    /* 0x085A */ s16 field_0x85a;
    /* 0x085C */ u8 field_0x85c[0x22];
    /* 0x087E */ s16 field_0x87e;
    /* 0x0880 */ u8 field_0x880[0xC];
    /* 0x088C */ int mStaffID;
    /* 0x0890 */ u32 mStateFlg0;
    /* 0x0894 */ u32 mStateFlg1;
    /* 0x0898 */ u32 mEndResetStateFlg0;
    /* 0x089C */ u8 field_0x89c[0x24];
    /* 0x08C0 */ u32 mDemoMode;
    /* 0x08C4 */ u8 field_0x8c4[4];
    /* 0x08C8 */ f32 field_0x8c8;
    /* 0x08CC */ u8 field_0x8cc[0x14];
    /* 0x08E0 */ cXyz field_0x8e0[5];
    /* 0x091C */ cXyz field_0x91c[5];
    /* 0x0958 */ u8 field_0x958[0xC];
    /* 0x0964 */ cXyz field_0x964[5];
    /* 0x09A0 */ u8 field_0x9a0[0x14];
    /* 0x09C4 */ cXyz field_0x9c4;
    /* 0x09D0 */ u8 field_0x9d0[4];
    /* 0x09D4 */ daMidna_func mpFunc;
};

static fopAc_ac_c* daAlink_searchPortal(fopAc_ac_c* param_0, void* param_1);
static void* daAlink_searchCanoe(fopAc_ac_c* param_0, void* param_1);
static void* daAlink_searchBoar(fopAc_ac_c* param_0, void* param_1);
static fopAc_ac_c* daAlink_searchLightBall(fopAc_ac_c* p_actor, void* param_1);

#endif /* D_A_D_A_ALINK_H */
