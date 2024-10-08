#ifndef D_A_NPC_TKS_H
#define D_A_NPC_TKS_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTks_c
 * @brief Ooccoo
 *
 * @details
 *
 */
class daNpcTks_c : public fopAc_ac_c {
public:
    /* 80B1462C */ daNpcTks_c();
    /* 80B14844 */ ~daNpcTks_c();
    /* 80B14AF8 */ void Create();
    /* 80B14ED0 */ void CreateHeap();
    /* 80B153D8 */ void Delete();
    /* 80B1540C */ void Execute();
    /* 80B15430 */ void Draw();
    /* 80B1548C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B15650 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B15670 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B156BC */ void setMtx();
    /* 80B157C0 */ void setExpressionAnm(int, bool);
    /* 80B1590C */ void setExpressionBtp(int);
    /* 80B159E0 */ void setMotion(int, f32, int);
    /* 80B15A24 */ void reset();
    /* 80B160A8 */ void setAction(void (daNpcTks_c::*)());
    /* 80B16148 */ void wait();
    /* 80B16344 */ void setMotionAnm(int, f32);
    /* 80B16634 */ void waitNude();
    /* 80B1682C */ void waitLv6();
    /* 80B16B74 */ void talk();
    /* 80B16FDC */ void setExpression(int, f32);
    /* 80B17008 */ void hide();
    /* 80B17420 */ void shake();
    /* 80B175F4 */ void showUp();
    /* 80B17734 */ void showUpWait();
    /* 80B17B70 */ void lookAroundA();
    /* 80B17D44 */ void lookAroundB();
    /* 80B17F18 */ void in();
    /* 80B18070 */ void damage();
    /* 80B181EC */ void broken();
    /* 80B183E8 */ void demo_appear();
    /* 80B18D44 */ void demo_scannon();
    /* 80B1926C */ void demo_Lv6Gate();
    /* 80B1946C */ void demo_farewell();
    /* 80B19DAC */ void demo_warpBack();
    /* 80B1A30C */ void demo_walkBack();
    /* 80B1A888 */ void demo_Lv7Start();
    /* 80B1B6A0 */ void demo_Lv3PickUp();
    /* 80B1BD64 */ void demo_Lv6PickUp();
    /* 80B1C480 */ void setParam();
    /* 80B1C4F8 */ void main();
    /* 80B1CB54 */ void ctrlBtk();
    /* 80B1CC28 */ void setAttnPos();
    /* 80B1CFD0 */ void lookat();
    /* 80B1D1FC */ bool drawDbgInfo();
    /* 80B1D204 */ void drawOtherMdls();
private:
    /* 0x568 */ u8 field_0x568[0x138c - 0x568];
};

STATIC_ASSERT(sizeof(daNpcTks_c) == 0x138c);

class daNpcTks_Param_c {
public:
    /* 80B1DCEC */ ~daNpcTks_Param_c();

    static u8 const m[152];
};

#endif /* D_A_NPC_TKS_H */
