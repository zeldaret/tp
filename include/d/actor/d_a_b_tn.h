#ifndef D_A_B_TN_H
#define D_A_B_TN_H

#include "d/d_bg_s_acch.h"
#include "f_op/f_op_actor_mng.h"
#include "d/d_cc_d.h"

/**
 * @ingroup actors-enemies
 * @class daB_TN_c
 * @brief Darknut
 *
 * @details Temple of Time dungeon mini-boss.
 *
 */
class daB_TN_c : public fopEn_enemy_c {
public:
    /* 8061EC58 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8061ED10 */ int JointCallBack(J3DJoint*, int);
    /* 8061ED5C */ void calcNeckAngle();
    /* 8061EE14 */ void calcWaistAngle();
    /* 8061EEC8 */ int draw();
    /* 8061F200 */ void setBreakPart(int);
    /* 8061F31C */ void setBreakHeadPart(int);
    /* 8061F3D0 */ void setPartLandEffect(int, int);
    /* 8061F520 */ void calcShieldMove();
    /* 8061F9F4 */ void calcSwordMoveA();
    /* 8061FD7C */ void calcSwordMoveB();
    /* 8061FFE0 */ void calcOtherPartMove(int);
    /* 8062070C */ void calcPartMove();
    /* 806208C8 */ void setBck(int, u8, f32, f32);
    /* 8062096C */ void checkBck(int);
    /* 806209C8 */ void setActionMode(int, int);
    /* 806209E0 */ void setSwordAtBit(int);
    /* 80620AE4 */ void setSwordAtBreak(int);
    /* 80620B4C */ void setBodyShield();
    /* 80620E90 */ void checkNormalAttackAble();
    /* 80620FA0 */ void getCutType();
    /* 80621070 */ void setDamage(dCcD_Sph*, int);
    /* 8062138C */ void setShieldEffect(dCcD_Sph*);
    /* 806213FC */ void damage_check();
    /* 806227D0 */ void checkMoveArea();
    /* 80622B60 */ void checkMoveAngle();
    /* 80622BE0 */ void setAttackBlurEffect(int);
    /* 80622CE4 */ void setArmorBreakEffect(int);
    /* 80622F64 */ void demo_skip(int);
    /* 8062318C */ void DemoSkipCallBack(void*, int);
    /* 806231C0 */ void executeRoomDemo();
    /* 80623920 */ void executeOpening();
    /* 806246E8 */ void executeWaitH();
    /* 806247D8 */ void setAwaitSound();
    /* 80624890 */ void executeChaseH();
    /* 80625394 */ void checkStartAttackH();
    /* 806255F0 */ void executeAttackH();
    /* 80625C74 */ void executeAttackShieldH();
    /* 80625E40 */ void executeGuardH();
    /* 80626034 */ void executeDamageH();
    /* 80626320 */ void executeChangeDemo();
    /* 80627100 */ void executeZakoChangeDemo();
    /* 80627790 */ void setWalkDir();
    /* 8062799C */ void initChaseL(int);
    /* 80627CBC */ void checkAttackAble();
    /* 80627D3C */ void checkNextMove();
    /* 8062868C */ void executeChaseL();
    /* 806292F8 */ void executeAttackL();
    /* 80629D20 */ void executeAttackShieldL();
    /* 80629FB0 */ void executeGuardL();
    /* 8062A3D0 */ void executeDamageL();
    /* 8062A71C */ void executeYoroke();
    /* 8062A950 */ void executeEnding();
    /* 8062B344 */ void executeZakoEnding();
    /* 8062B6A8 */ void action();
    /* 8062BA5C */ void mtx_set();
    /* 8062BDCC */ void cc_set();
    /* 8062C5B4 */ void execute();
    /* 8062C7C8 */ void _delete();
    /* 8062C868 */ void CreateHeap();
    /* 8062CD78 */ int create();
    /* 8062D2F0 */ daB_TN_c();

private:
    /* 0x05AC */ request_of_phase_process_class mPhase1;
    /* 0x05B4 */ request_of_phase_process_class mPhase2;
    /* 0x05BC */ J3DModel* mModels[16];
    /* 0x05FC */ mDoExt_McaMorfSO* mpModelMorf1;
    /* 0x0600 */ mDoExt_McaMorfSO* mpModelMorf2;
    /* 0x0604 */ mDoExt_brkAnm* mBrkAnms[16];
    /* 0x0644 */ mDoExt_brkAnm* mBrkAnm;
    /* 0x0648 */ J3DModel* field_0x648;
    /* 0x064C */ Z2CreatureEnemy mSound;
    /* 0x06F0 */ u8 field_0x6f0[0x6f8 - 0x6f0];
    /* 0x06F8 */ u32 mShadowKey;
    /* 0x06FC */ u8 field_0x6fc[0x728 - 0x6fc];
    /* 0x0728 */ f32 field_0x728;
    /* 0x072C */ u8 field_0x72c[0x75c - 0x72c];
    /* 0x075C */ cXyz field_0x75c[16];
    /* 0x081C */ cXyz field_0x81c[16];
    /* 0x08DC */ u8 field_0x8dc[0x96c - 0x8dc];
    /* 0x096C */ cXyz field_0x96c;
    /* 0x0978 */ cXyz field_0x978;
    /* 0x0984 */ u8 field_0x984[0x9e4 - 0x984];
    /* 0x09E4 */ csXyz field_0x9e4;
    /* 0x09EA */ csXyz field_0x9ea;
    /* 0x09F0 */ u8 field_0x9f0[0x9fc - 0x9f0];
    /* 0x09FC */ u16 field_0x9fc[16];
    /* 0x0A1C */ u8 field_0xa1c[0xa54 - 0xa1c];
    /* 0x0A54 */ s16 field_0xa54;
    /* 0x0A56 */ u8 field_0xa56[0xa5c - 0xa56];
    /* 0x0A5C */ s16 field_0xa5c;
    /* 0x0A5E */ u8 field_0xa5e[0xa78 - 0xa5e];
    /* 0x0A78 */ int field_0xa78;
    /* 0x0A7C */ u8 field_0xa7c[0xa90 - 0xa7c];
    /* 0x0A90 */ u8 field_0xa90;
    /* 0x0A91 */ u8 field_0xa91;
    /* 0x0A92 */ u8 field_0xa92;
    /* 0x0A93 */ u8 field_0xa93;
    /* 0x0A94 */ u8 field_0xa94;
    /* 0x0A95 */ u8 field_0xa95;
    /* 0x0A96 */ s16 field_0xa96;
    /* 0x0A98 */ s16 field_0xa98;
    /* 0x0A9A */ u8 field_0xa9a[0xa9e - 0xa9a];
    /* 0x0A9E */ u8 field_0xa9e;
    /* 0x0A9F */ u8 field_0xa9f[0xaa3 - 0xa9f];
    /* 0x0AA3 */ u8 field_0xaa3;
    /* 0x0AA4 */ u8 field_0xaa4;
    /* 0x0AA5 */ u8 field_0xaa5;
    /* 0x0AA6 */ u8 field_0xaa6;
    /* 0x0AA7 */ u8 field_0xaa7[0xaac - 0xaa7];
    /* 0x0AAC */ u8 field_0xaac;
    /* 0x0AA7 */ u8 field_0xaad[0xab4 - 0xaad];
    /* 0x0AB4 */ char* field_0xab4;
    /* 0x0AB8 */ dBgS_AcchCir mAcchCir;
    /* 0x0AF8 */ dBgS_ObjAcch mAcch;
    /* 0x0CD0 */ u8 field_0xcd0[0x26f0 - 0xcd0];
    /* 0x26F0 */ dBgS_Acch field_0x26f0;
    /* 0x28C8 */ u8 field_0x28C8[0x28f4 - 0x28C8];
    /* 0x28F4 */ dBgS_Acch field_0x28f4;
    /* 0x2ACC */ u8 field_0x2acc[0x2e50 - 0x2acc];
    /* 0x2E50 */ dCcD_Stts mDStts;
    /* 0x2E8C */ dCcD_Stts mDStts2;
    /* 0x2EC8 */ u8 field_0x2ec8[0x562c - 0x2ec8];
    /* 0x562C */ u8 field_0x562c;
    /* 0x562D */ u8 field_0x562d[0x5630 - 0x562d];
};

STATIC_ASSERT(sizeof(daB_TN_c) == 0x5630);

class daB_TN_HIO_c {
public:
    /* 8061EBEC */ daB_TN_HIO_c();
    /* 8062D98C */ virtual ~daB_TN_HIO_c() {};

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;


};


#endif /* D_A_B_TN_H */
