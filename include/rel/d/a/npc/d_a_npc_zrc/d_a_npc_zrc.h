#ifndef D_A_NPC_ZRC_H
#define D_A_NPC_ZRC_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_zrC_c
 * @brief Ralis
 *
 * @details
 *
 */
class daNpc_zrC_c : public fopAc_ac_c {
public:
    /* 80B8DC0C */ daNpc_zrC_c();
    /* 80B8DE20 */ ~daNpc_zrC_c();
    /* 80B8E03C */ void create();
    /* 80B8E338 */ void CreateHeap();
    /* 80B8E830 */ void Delete();
    /* 80B8E864 */ void Execute();
    /* 80B8E884 */ void Draw();
    /* 80B8E914 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B8EB48 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B8EB68 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B8EBB4 */ void setParam();
    /* 80B8ED94 */ void main();
    /* 80B8EF2C */ void ctrlBtk();
    /* 80B8F00C */ void setAttnPos();
    /* 80B8F56C */ void setExpressionAnm(int, bool);
    /* 80B8F898 */ void setExpressionBtp(int);
    /* 80B8F9CC */ void setExpression(int, f32);
    /* 80B8F9F8 */ void setMotionAnm(int, f32);
    /* 80B8FBE4 */ void setMotion(int, f32, int);
    /* 80B8FC28 */ bool drawDbgInfo();
    /* 80B8FC30 */ void drawOtherMdls();
    /* 80B8FC34 */ void getTypeFromParam();
    /* 80B8FC8C */ void isDelete();
    /* 80B8FD10 */ void reset();
    /* 80B8FF14 */ void playExpression();
    /* 80B904DC */ void playMotion();
    /* 80B90940 */ void playMotionAnm2(daNpcF_c::daNpcF_anmPlayData***);
    /* 80B90A6C */ void chkAction(int (daNpc_zrC_c::*)(void*));
    /* 80B90A98 */ void setAction(int (daNpc_zrC_c::*)(void*));
    /* 80B90B40 */ void selectAction();
    /* 80B90C34 */ void doNormalAction(int);
    /* 80B90D48 */ void doEvent();
    /* 80B9113C */ void setLookMode(int);
    /* 80B91160 */ void lookat();
    /* 80B91418 */ void setExpressionTalkAfter();
    /* 80B914F4 */ void wait(void*);
    /* 80B916FC */ void waitSick(void*);
    /* 80B91808 */ void waitPray(void*);
    /* 80B91F78 */ void waitThrone(void*);
    /* 80B920EC */ void talk(void*);
    /* 80B922D8 */ void test(void*);
    /* 80B923BC */ void ECut_earringGet(int);
    /* 80B9318C */ void adjustShapeAngle();

    static void* mEvtCutNameList[2];
    static u8 mEvtCutList[24];

private:
    /* 0x568 */ u8 field_0x568[0xe3c - 0x568];
};
STATIC_ASSERT(sizeof(daNpc_zrC_c) == 0xe3c);

class daNpc_zrC_Param_c {
public:
    /* 80B93190 */ ~daNpc_zrC_Param_c();

    static u8 const m[116];
};


#endif /* D_A_NPC_ZRC_H */
