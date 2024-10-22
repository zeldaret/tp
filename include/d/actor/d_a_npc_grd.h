#ifndef D_A_NPC_GRD_H
#define D_A_NPC_GRD_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Grd_c
 * @brief Gor Coron
 *
 * @details
 *
 */
class daNpc_Grd_c : public fopAc_ac_c {
public:
    /* 809CFD2C */ daNpc_Grd_c();
    /* 809CFF40 */ ~daNpc_Grd_c();
    /* 809D0140 */ void create();
    /* 809D0414 */ void CreateHeap();
    /* 809D0858 */ void Delete();
    /* 809D088C */ void Execute();
    /* 809D08AC */ void Draw();
    /* 809D093C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809D0B70 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809D0B90 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809D0BDC */ void setParam();
    /* 809D0D1C */ void main();
    /* 809D0E9C */ void ctrlBtk();
    /* 809D0F7C */ void setAttnPos();
    /* 809D14BC */ void setExpressionAnm(int, bool);
    /* 809D1670 */ void setExpressionBtp(int);
    /* 809D1794 */ void setExpression(int, f32);
    /* 809D17C0 */ void setMotionAnm(int, f32);
    /* 809D1940 */ void setMotion(int, f32, int);
    /* 809D1984 */ bool drawDbgInfo();
    /* 809D198C */ void drawOtherMdls();
    /* 809D1990 */ void getTypeFromParam();
    /* 809D19B0 */ void isDelete();
    /* 809D1A1C */ void reset();
    /* 809D1B9C */ void playExpression();
    /* 809D1D00 */ void playMotion();
    /* 809D1F50 */ void chkAction(int (daNpc_Grd_c::*)(void*));
    /* 809D1F7C */ void setAction(int (daNpc_Grd_c::*)(void*));
    /* 809D2024 */ void selectAction();
    /* 809D20A4 */ void doNormalAction(int);
    /* 809D21B8 */ void doEvent();
    /* 809D2470 */ void setLookMode(int);
    /* 809D2494 */ void lookat();
    /* 809D2730 */ void setExpressionTalkAfter();
    /* 809D2768 */ void wait(void*);
    /* 809D2970 */ void talk(void*);
    /* 809D2B20 */ void test(void*);
    /* 809D2C9C */ void ECut_nodToGrz(int);
    /* 809D3994 */ void adjustShapeAngle();

    static void* mEvtCutNameList[2];
    static u8 mEvtCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xe1c - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Grd_c) == 0xe1c);

class daNpc_Grd_Param_c {
public:
    /* 809D3998 */ ~daNpc_Grd_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_GRD_H */
