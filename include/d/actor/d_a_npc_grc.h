#ifndef D_A_NPC_GRC_H
#define D_A_NPC_GRC_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grC_c
 * @brief Goron (Child)
 *
 * @details
 *
 */
class daNpc_grC_c : public fopAc_ac_c {
public:
    /* 809CB4CC */ daNpc_grC_c();
    /* 809CB6E0 */ ~daNpc_grC_c();
    /* 809CB8E0 */ void create();
    /* 809CBBD4 */ void CreateHeap();
    /* 809CBDC4 */ void Delete();
    /* 809CBDF8 */ void Execute();
    /* 809CBE18 */ void Draw();
    /* 809CBE8C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809CC0C0 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809CC0E0 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809CC12C */ void setParam();
    /* 809CC26C */ void main();
    /* 809CC3EC */ bool ctrlBtk();
    /* 809CC3F4 */ void setAttnPos();
    /* 809CC930 */ void setExpressionAnm(int, bool);
    /* 809CCB78 */ void setExpressionBtp(int);
    /* 809CCCA4 */ void setExpression(int, f32);
    /* 809CCCD0 */ void setMotionAnm(int, f32);
    /* 809CCE70 */ void setMotion(int, f32, int);
    /* 809CCEB4 */ bool drawDbgInfo();
    /* 809CCEBC */ void drawOtherMdls();
    /* 809CCEC0 */ void getTypeFromParam();
    /* 809CCF38 */ void isDelete();
    /* 809CCFBC */ void reset();
    /* 809CD1B4 */ void playExpression();
    /* 809CD4AC */ void playMotion();
    /* 809CD794 */ void chkAction(int (daNpc_grC_c::*)(void*));
    /* 809CD7C0 */ void setAction(int (daNpc_grC_c::*)(void*));
    /* 809CD868 */ void selectAction();
    /* 809CD960 */ void doNormalAction(int);
    /* 809CDA74 */ void doEvent();
    /* 809CDD50 */ void setLookMode(int);
    /* 809CDD74 */ void lookat();
    /* 809CDFFC */ void chkFindPlayer();
    /* 809CE12C */ void setExpressionTalkAfter();
    /* 809CE1F8 */ void wait(void*);
    /* 809CE3A8 */ void waitTW(void*);
    /* 809CE490 */ void waitSpa(void*);
    /* 809CE688 */ void waitBuyer(void*);
    /* 809CE7C4 */ void talk(void*);
    /* 809CEA6C */ void test(void*);
    /* 809CEB50 */ void setPrtcl();
    /* 809CF4AC */ void adjustShapeAngle();

    static void* mEvtCutNameList;
    static u8 mEvtCutList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe54 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_grC_c) == 0xe54);

class daNpc_grC_Param_c {
public:
    /* 809CF4B0 */ ~daNpc_grC_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_GRC_H */
