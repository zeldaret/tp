#ifndef D_A_NPC_GRZ_H
#define D_A_NPC_GRZ_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Grz_c
 * @brief Darbus
 *
 * @details
 *
 */
class daNpc_Grz_c : public fopAc_ac_c {
public:
    class daNpc_GrZ_prtclMngr_c {
    public:
        /* 809E8658 */ ~daNpc_GrZ_prtclMngr_c();
        /* 809E8694 */ daNpc_GrZ_prtclMngr_c();
    };

    /* 809E840C */ daNpc_Grz_c();
    /* 809E88C0 */ ~daNpc_Grz_c();
    /* 809E8BA0 */ void create();
    /* 809E8E68 */ void CreateHeap();
    /* 809E92AC */ void Delete();
    /* 809E92E0 */ void Execute();
    /* 809E9324 */ void Draw();
    /* 809E9568 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809E979C */ void createHeapCallBack(fopAc_ac_c*);
    /* 809E97BC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809E9808 */ void setParam();
    /* 809E9954 */ void main();
    /* 809E9AD4 */ void ctrlBtk();
    /* 809E9BB4 */ void setAttnPos();
    /* 809EA1DC */ void setCollisionPunch();
    /* 809EA734 */ void setExpressionAnm(int, bool);
    /* 809EAA08 */ void setExpressionBtp(int);
    /* 809EAB34 */ void setExpression(int, f32);
    /* 809EAB60 */ void setMotionAnm(int, f32);
    /* 809EAD4C */ void setMotion(int, f32, int);
    /* 809EAD90 */ bool drawDbgInfo();
    /* 809EAD98 */ void drawOtherMdls();
    /* 809EAD9C */ void getTypeFromParam();
    /* 809EADE8 */ void isDelete();
    /* 809EAE88 */ void reset();
    /* 809EB154 */ void resetCol();
    /* 809EB234 */ void playExpression();
    /* 809EB5C0 */ void playMotion();
    /* 809EBA3C */ void chkAction(int (daNpc_Grz_c::*)(void*));
    /* 809EBA68 */ void setAction(int (daNpc_Grz_c::*)(void*));
    /* 809EBB10 */ void selectAction();
    /* 809EBC04 */ void doNormalAction(int);
    /* 809EBD18 */ void doEvent();
    /* 809EC0CC */ void setSkipZev(int, int);
    /* 809EC164 */ void setLookMode(int);
    /* 809EC188 */ void lookat();
    /* 809EC424 */ void setExpressionTalkAfter();
    /* 809EC4C4 */ void wait(void*);
    /* 809EC854 */ void waitSmash(void*);
    /* 809ECBF0 */ void lieDown(void*);
    /* 809ECCA0 */ void waitWeak(void*);
    /* 809ECD50 */ void talk(void*);
    /* 809ECF88 */ void test(void*);
    /* 809ED06C */ void setPrtcl();
    /* 809ED18C */ void doWaitCut(int);
    /* 809ED228 */ void doRebirthCut(int);
    /* 809ED3D4 */ void doTalkStandCut(int);
    /* 809ED5EC */ void doGoOutCut(int);
    /* 809EDBA4 */ void doStoneSmashCut(int);
    /* 809EE5F0 */ void doStoneSmashSkipCut(int);
    /* 809EF184 */ void adjustShapeAngle();

    static void* mEvtCutNameList[7];
    static u8 mEvtCutList[84];

private:
    /* 0x568 */ u8 field_0x568[0x1b08 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_Grz_c) == 0x1b08);

class daNpc_Grz_Param_c {
public:
    /* 809EF188 */ ~daNpc_Grz_Param_c();

    static u8 const m[128];
};


#endif /* D_A_NPC_GRZ_H */
