#ifndef D_A_B_TN_H
#define D_A_B_TN_H

#include "f_op/f_op_actor_mng.h"
#include "d/cc/d_cc_d.h"

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
    /* 8061EC58 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8061ED10 */ void JointCallBack(J3DJoint*, int);
    /* 8061ED5C */ void calcNeckAngle();
    /* 8061EE14 */ void calcWaistAngle();
    /* 8061EEC8 */ void draw();
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
    /* 8062CD78 */ void create();
    /* 8062D2F0 */ daB_TN_c();

private:
    /* 0x5ac */ u8 field_0x5ac[0x5630 - 0x5ac];
};

STATIC_ASSERT(sizeof(daB_TN_c) == 0x5630);

class daB_TN_HIO_c {
public:
    /* 8061EBEC */ daB_TN_HIO_c();
    /* 8062D98C */ ~daB_TN_HIO_c();
};


#endif /* D_A_B_TN_H */
