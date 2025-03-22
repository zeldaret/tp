#ifndef D_A_B_MGN_H
#define D_A_B_MGN_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_d.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor_mng.h"

/**
 * @ingroup actors-enemies
 * @class daB_MGN_c
 * @brief Beast Ganon?
 *
 * @details Hyrule Castle dungeon boss.
 *
 */
class daB_MGN_c : public fopEn_enemy_c {
public:
    /* 8060577C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8060584C */ int JointCallBack(J3DJoint*, int);
    /* 80605898 */ void draw();
    /* 80605D78 */ void setDashSmokeEffect();
    /* 8060601C */ void setBackJumpEffect();
    /* 806062C0 */ void setSlideSmokeEffect();
    /* 80606424 */ void setBodySlideEffect();
    /* 806065D4 */ void setOpeningEffect();
    /* 80606754 */ void setStepEffect();
    /* 8060688C */ void setFallAttackEffect();
    /* 80606A10 */ void setHeadLightEffect();
    /* 80606AEC */ void setHeadHitEffect();
    /* 80606C6C */ int setHideSmokeEffect(cXyz*, u8);
    /* 80606D60 */ void calcHideSmokeEffect();
    /* 806071C4 */ void drawHideSmokeEffect();
    /* 8060729C */ void setBloodEffect();
    /* 80607498 */ void calcBloodMove();
    /* 8060778C */ void checkDownBeforeBG();
    /* 80607924 */ void setBck(int, u8, f32, f32);
    /* 806079CC */ BOOL checkBck(int);
    /* 80607A2C */ void setActionMode(int, int);
    /* 80607A80 */ void setExitMode(int);
    /* 80607B50 */ void onBodyShield();
    /* 80607B80 */ void offBodyShield();
    /* 80607BB0 */ void onBodySlideAt();    
    /* 80607BFC */ void offBodySlideAt();
    /* 80607C20 */ int checkHitSlideAt();
    /* 80607CB0 */ void onBodyFallAt();
    /* 80607CE4 */ void offBodyFallAt();
    /* 80607D08 */ void onBodyCo();
    /* 80607D44 */ void offBodyCo();
    /* 80607D7C */ void getNearHitPos(cXyz*);
    /* 8060819C */ void damage_check();
    /* 80608738 */ void calcJointAngle(s16);
    /* 806087A8 */ void executeCircle();
    /* 80608EF8 */ void executeDash();
    /* 80609D70 */ void executeThrown();
    /* 8060A670 */ void setDownEnd();
    /* 8060A72C */ void executeDown();
    /* 8060ACB8 */ void executeDownDamage();
    /* 8060B028 */ void executeDownBiteDamage();
    /* 8060B430 */ void executeWarp();
    /* 8060B544 */ void executeFall();
    /* 8060BE6C */ void demo_skip(int);
    /* 8060C034 */ BOOL DemoSkipCallBack(void*, int);
    /* 8060C068 */ void executeOpening();
    /* 8060D078 */ void executeDeath();
    /* 8060D880 */ void executeJump();
    /* 8060DAC0 */ void checkStartJump();
    /* 8060DDA0 */ void action();
    /* 8060E158 */ void mtx_set();
    /* 8060E1D0 */ void cc_set();
    /* 8060E820 */ void execute();
    /* 8060EA38 */ void _delete();
    /* 8060EAE0 */ int CreateHeap();
    /* 8060F0D0 */ int create();

    bool isDown() { return field_0xb01 != 0; }

private:
    /* 0x05AC */ request_of_phase_process_class field_0x5ac;
    /* 0x05B4 */ request_of_phase_process_class field_0x5b4;
    /* 0x05BC */ mDoExt_McaMorfSO* field_0x5bc;
    /* 0x05C0 */ mDoExt_brkAnm* field_0x5c0;
    /* 0x05C4 */ mDoExt_btkAnm* field_0x5c4;
    /* 0x05C8 */ f32 field_0x5c8;
    /* 0x05CC */ u8 field_0x5cc;
    /* 0x05CD */ u8 field_0x5cd[0x5cf - 0x5cd];
    /* 0x05D0 */ J3DModel* field_0x5d0[20];
    /* 0x05CD */ u8 field_0x620[0x990 - 0x620];
    /* 0x0990 */ int field_0x990[20];
    /* 0x09E0 */ Z2CreatureEnemy field_0x9e0;
    /* 0x0A84 */ u8 field_0xa84[0xA92 - 0xA84];
    /* 0x0A92 */ s16 field_0xa92;
    /* 0x0A94 */ u32 field_0xa94;
    /* 0x0A98 */ u8 field_0xa98[0xae8 - 0xa98];
    /* 0x0AE8 */ int field_0xae8;
    /* 0x0AEC */ u8 field_0xaec[0xaf0 - 0xaec];
    /* 0x0AF0 */ f32 field_0xaf0;
    /* 0x0AF4 */ int field_0xaf4;
    /* 0x0AF8 */ u8 field_0xaf8;
    /* 0x0AF9 */ u8 field_0xaf9;
    /* 0x0AFA */ u8 field_0xafa;
    /* 0x0AFB */ u8 field_0xafb;
    /* 0x0AFC */ u8 field_0xafc[0xafe - 0xafc];
    /* 0x0AFE */ u8 field_0xafe;
    /* 0x0AFF */ u8 field_0xaff;
    /* 0x0B00 */ u8 field_0xb00;
    /* 0x0B01 */ u8 field_0xb01;
    /* 0x0B02 */ u8 field_0xb02[0xB05 - 0xB02];
    /* 0x0B05 */ u8 field_0xb05;
    /* 0x0B06 */ u8 field_0xb06[0xB14 - 0xB06];
    /* 0x0B14 */ s16 field_0xb14;
    /* 0x0B16 */ s16 field_0xb16;
    /* 0x0B18 */ s16 field_0xb18;
    /* 0x0B1A */ u8 field_0xb1a;
    /* 0x0B1C */ dBgS_AcchCir field_0xb1c;
    /* 0x0B5C */ dBgS_ObjAcch field_0xb5c;
    /* 0x0D34 */ dCcD_Stts field_0xd34;
    /* 0x0D70 */ dCcD_Sph field_0xd70[15];
    /* 0x1FB8 */ u32 field_0x1fb8;
    /* 0x1FBC */ dCcD_Sph field_0x1fbc;
    /* 0x20F4 */ dCcD_Sph field_0x20f4[2];
    /* 0x2364 */ u8 field_0x2364[0x25dc - 0x2364];
    /* 0x25DC */ Z2CreatureEnemy* field_0x25dc;
    /* 0x25E0 */ u8 field_0x25e0[0x25f8 - 0x25e0];
    /* 0x25F8 */ u32 field_0x25f8[4];
    /* 0x2608 */ u32 field_0x2608[4];
    /* 0x2618 */ u32 field_0x2618;
    /* 0x261C */ u32 field_0x261c;
    /* 0x2620 */ u32 field_0x2620;
    /* 0x2624 */ mDoExt_McaMorfSO* field_0x2624[4];
    /* 0x2634 */ mDoExt_brkAnm* field_0x2634[4];
    /* 0x2644 */ mDoExt_brkAnm* field_0x2644[4];
    /* 0x2654 */ mDoExt_btkAnm* field_0x2654[4];
    /* 0x2664 */ cXyz* field_0x2664[12];
    /* 0x2670 */ u8 field_0x2694[0x26b4 - 0x2694];
    /* 0x26B4 */ u8 field_0x26b4[4];
    /* 0x2670 */ u8 field_0x26b8[0x26bc - 0x26b8];
    /* 0x26BC */ u8 field_0x26bc[4];
    /* 0x26C0 */ s16 field_0x26c0[4];
    /* 0x26C8 */ u8 field_0x26c8;
    /* 0x26C9 */ u8 field_0x26c9[0x26cc - 0x26c9];

};

STATIC_ASSERT(sizeof(daB_MGN_c) == 0x26cc);

class daB_MGN_HIO_c 
#ifdef DEBUG
: public JORReflexible
#endif
{
    
public:
    /* 8060572C */ daB_MGN_HIO_c();
    /* 8060F8D0 */ ~daB_MGN_HIO_c();

#ifdef DEBUG
virtual void genMessage(JORMContext*);
#endif

    /* 0x08 */ f32 field_0x08; // 1.2f
    /* 0x0C */ f32 field_0x0c; // 50.0f
    /* 0x10 */ f32 field_0x10; // 70.0f
    /* 0x14 */ f32 field_0x14; // 1.0f
    /* 0x18 */ f32 field_0x18; // 100.0f
    /* 0x1C */ f32 field_0x1c; // 100.0f
    /* 0x20 */ f32 field_0x20; // 100.0f
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
};


#endif /* D_A_B_MGN_H */
