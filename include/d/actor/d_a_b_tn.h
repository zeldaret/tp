#ifndef D_A_B_TN_H
#define D_A_B_TN_H

#include "d/d_bg_s_acch.h"
#include "d/d_cc_uty.h"
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
    /* 8061ED10 */ static int JointCallBack(J3DJoint*, int);
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
    /* 8062096C */ int checkBck(int);
    /* 806209C8 */ void setActionMode(int, int);
    /* 806209E0 */ void setSwordAtBit(int);
    /* 80620AE4 */ void setSwordAtBreak(int);
    /* 80620B4C */ void setBodyShield();
    /* 80620E90 */ bool checkNormalAttackAble();
    /* 80620FA0 */ u32 getCutType();
    /* 80621070 */ void setDamage(dCcD_Sph*, int);
    /* 8062138C */ void setShieldEffect(dCcD_Sph*);
    /* 806213FC */ void damage_check();
    /* 806227D0 */ int checkMoveArea();
    /* 80622B60 */ bool checkMoveAngle();
    /* 80622BE0 */ void setAttackBlurEffect(int);
    /* 80622CE4 */ void setArmorBreakEffect(int);
    /* 80622F64 */ void demo_skip(int);
    /* 8062318C */ static int DemoSkipCallBack(void*, int);
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
    /* 80627CBC */ bool checkAttackAble();
    /* 80627D3C */ bool checkNextMove();
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
    /* 8062C5B4 */ int execute();
    /* 8062C7C8 */ int _delete();
    /* 8062C868 */ int CreateHeap();
    /* 8062CD78 */ int create();
    /* 8062D2F0 */ daB_TN_c() {};

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
    /* 0x06F0 */ int mActionMode1;
    /* 0x06F4 */ int mActionMode2;
    /* 0x06F8 */ u32 mShadowKey;
    /* 0x06FC */ int field_0x6fc;
    /* 0x0700 */ int field_0x700;
    /* 0x0704 */ cXyz mCamEye;
    /* 0x0710 */ cXyz mCamCenter;
    /* 0x071C */ f32 mCamFovY;
    /* 0x0720 */ s16 field_0x720;
    /* 0x0722 */ u8 field_0x722[0x724 - 0x722];
    /* 0x0724 */ f32 field_0x724;
    /* 0x0728 */ f32 field_0x728;
    /* 0x072C */ Mtx field_0x72c;
    /* 0x075C */ cXyz field_0x75c[16];
    /* 0x081C */ cXyz field_0x81c[16];
    /* 0x08DC */ cXyz field_0x8dc[16];
    /* 0x099C */ csXyz field_0x99c[16];
    /* 0x09FC */ u16 field_0x9fc[16];
    /* 0x0A1C */ u16 field_0xa1c[16];
    /* 0x0A3C */ s16 field_0xa3c[16];
    /* 0x0A5C */ s16 field_0xa5c;
    /* 0x0A5E */ u8 field_0xa5e[0xa60 - 0xa5e];
    /* 0x0A60 */ int field_0xa60;
    /* 0x0A64 */ s16 field_0xa64;
    /* 0x0A66 */ u8 field_0xa66[0xa68 - 0xa66];
    /* 0x0A68 */ s16 field_0xa68;
    /* 0x0A6A */ u8 field_0xa6a[0xa6c - 0xa6a];
    /* 0x0A6C */ int field_0xa6c;
    /* 0x0A70 */ int field_0xa70;
    /* 0x0A74 */ int field_0xa74;
    /* 0x0A78 */ int field_0xa78;
    /* 0x0A7C */ int field_0xa7c;
    /* 0x0A80 */ int field_0xa80;
    /* 0x0A84 */ int field_0xa84;
    /* 0x0A88 */ int field_0xa88;
    /* 0x0A8C */ int mWalkDir;
    /* 0x0A90 */ u8 field_0xa90;
    /* 0x0A91 */ u8 field_0xa91;
    /* 0x0A92 */ u8 field_0xa92;
    /* 0x0A93 */ u8 field_0xa93;
    /* 0x0A94 */ u8 field_0xa94;
    /* 0x0A95 */ u8 field_0xa95;
    /* 0x0A96 */ s16 field_0xa96;
    /* 0x0A98 */ s16 field_0xa98;
    /* 0x0A9A */ u8 field_0xa9a;
    /* 0x0A9B */ u8 field_0xa9b;
    /* 0x0A9C */ u8 field_0xa9c;
    /* 0x0A9D */ u8 field_0xa9d;
    /* 0x0A9E */ u8 field_0xa9e;
    /* 0x0A9F */ u8 field_0xa9f;
    /* 0x0AA0 */ u8 field_0xaa0;
    /* 0x0AA1 */ u8 field_0xaa1;
    /* 0x0AA2 */ u8 field_0xaa2;
    /* 0x0AA3 */ u8 field_0xaa3;
    /* 0x0AA4 */ u8 field_0xaa4;
    /* 0x0AA5 */ u8 field_0xaa5;
    /* 0x0AA6 */ u8 field_0xaa6;
    /* 0x0AA7 */ u8 field_0xaa7;
    /* 0x0AA8 */ u8 field_0xaa8;
    /* 0x0AA9 */ u8 field_0xaa9;
    /* 0x0AAA */ u8 field_0xaaa;
    /* 0x0AAB */ u8 field_0xaab;
    /* 0x0AAC */ u8 field_0xaac;
    /* 0x0AAD */ u8 field_0xaad;
    /* 0x0AAE */ u8 field_0xaae;
    /* 0x0AAF */ u8 field_0xaaf;
    /* 0x0AB0 */ f32 mBlend;
    /* 0x0AB4 */ char* field_0xab4;
    /* 0x0AB8 */ dBgS_AcchCir mAcchCir;
    /* 0x0AF8 */ dBgS_ObjAcch mAcch;
    /* 0x0CD0 */ u8 field_0xcd0[0x10d0 - 0xcd0];
    /* 0x10D0 */ dBgS_Acch field_0x10d0[16];
    /* 0x2E50 */ cXyz field_0x2e50;
    /* 0x2E5C */ u8 field_0x2e5c[0x2e6c - 0x2e5c];
    /* 0x2E6C */ dCcD_GStts mGStts;
    /* 0x2E8C */ dCcD_Stts field_0x2e8c;
    /* 0x2EC8 */ dCcD_Sph field_0x2ec8[3];
    /* 0x3270 */ dCcD_Sph field_0x3270[3];
    /* 0x3618 */ dCcD_Sph field_0x3618;
    /* 0x3750 */ dCcD_Sph mSwordSphs[4];
    /* 0x3C30 */ dCcD_Cps mCps;
    /* 0x3D74 */ dCcD_Sph field_0x3d74;
    /* 0x3EAC */ cXyz field_0x3eac;
    /* 0x3EB8 */ dCcU_AtInfo mAtInfo;
    /* 0x3EDC */ dCcD_Stts field_0x3edc[16];
    /* 0x429C */ dCcD_Sph field_0x429c[16];
    /* 0x561C */ u32 field_0x561c[4];
    /* 0x562C */ u8 field_0x562c;
    /* 0x562D */ u8 field_0x562d[0x5630 - 0x562d];
};

STATIC_ASSERT(sizeof(daB_TN_c) == 0x5630);

class daB_TN_HIO_c {
public:
    /* 8061EBEC */ daB_TN_HIO_c();
    /* 8062D98C */ virtual ~daB_TN_HIO_c() {};

    /* 0x04 */ s8 field_0x4;
    /* 0x08 */ f32 mScale;
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
