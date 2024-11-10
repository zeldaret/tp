#ifndef D_A_NPC_GRA_H
#define D_A_NPC_GRA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grA_c
 * @brief Goron (Adult)
 *
 * @details
 *
 */
class daNpc_grA_c : public fopAc_ac_c {
public:
    class daNpc_GrA_prtclMngr_c {
    public:
        /* 809BEB24 */ ~daNpc_GrA_prtclMngr_c();
        /* 809BEB60 */ daNpc_GrA_prtclMngr_c();
    };

    /* 809BE94C */ daNpc_grA_c();
    /* 809BEB64 */ ~daNpc_grA_c();
    /* 809BEDA4 */ void create();
    /* 809BF0A8 */ void CreateHeap();
    /* 809BF418 */ void Delete();
    /* 809BF44C */ void Execute();
    /* 809BF490 */ void Draw();
    /* 809BF504 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809BF738 */ void createHeapCallBack(fopAc_ac_c*);
    /* 809BF758 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 809BF7A4 */ void setTagJump();
    /* 809BF8A0 */ void setTagJump2();
    /* 809BF99C */ void setHomeJump();
    /* 809BFAF4 */ void checkTagGraSub(fopAc_ac_c*);
    /* 809BFBC0 */ void checkTagGraSub2(fopAc_ac_c*);
    /* 809BFDCC */ void checkTagGraSubCrashed(fopAc_ac_c*);
    /* 809BFDFC */ void setParam();
    /* 809C0038 */ void main();
    /* 809C0298 */ bool ctrlBtk();
    /* 809C02A0 */ void setAttnPos();
    /* 809C0948 */ void setExpressionAnm(int, bool);
    /* 809C0CE4 */ void setExpressionBtp(int);
    /* 809C0E18 */ void setExpression(int, f32);
    /* 809C0E44 */ bool setMotionAnm(int, f32);
    /* 809C1018 */ void setMotion(int, f32, int);
    /* 809C105C */ bool drawDbgInfo();
    /* 809C1064 */ void drawOtherMdls();
    /* 809C1154 */ void getMode();
    /* 809C1160 */ void getMode1();
    /* 809C116C */ void getTypeFromParam();
    /* 809C1238 */ void getSwBit();
    /* 809C1244 */ void isDelete();
    /* 809C13D8 */ void reset();
    /* 809C1990 */ void playExpression();
    /* 809C2080 */ void playMotion();
    /* 809C28BC */ void chkAction(int (daNpc_grA_c::*)(void*));
    /* 809C28E8 */ void setAction(int (daNpc_grA_c::*)(void*));
    /* 809C2990 */ void selectAction();
    /* 809C2C3C */ void doEvent();
    /* 809C3070 */ void setLookMode(int);
    /* 809C3094 */ void lookat();
    /* 809C3424 */ void chkFindPlayer();
    /* 809C35D0 */ void setExpressionTalkAfter();
    /* 809C36AC */ void setPrtcl();
    /* 809C389C */ void setRollPrtcl(cXyz const&, f32);
    /* 809C3A54 */ void setOtherObjMtx();
    /* 809C3B28 */ void ECut_talkSpa(int);
    /* 809C3D78 */ void ECut_grDSRoll(int);
    /* 809C45B0 */ void ECut_grDSGate(int);
    /* 809C47EC */ void ECut_teachElevator(int);
    /* 809C4BE4 */ void ECut_kickOut(int);
    /* 809C4EB4 */ void ECut_noneLook(int);
    /* 809C5088 */ void ECut_rescueRock(int);
    /* 809C5430 */ void ECut_carrySpaWater(int);
    /* 809C5D44 */ void ECut_carrySpaWaterFailure(int);
    /* 809C5F90 */ void ECut_rollRockCrash(int);
    /* 809C6608 */ void ECut_talkSpaWater(int);
    /* 809C681C */ void wait(void*);
    /* 809C69B8 */ void waitTW(void*);
    /* 809C6AAC */ void waitCheer(void*);
    /* 809C6D48 */ void waitGate(void*);
    /* 809C73FC */ void waitKickOut(void*);
    /* 809C770C */ void moveRock(void*);
    /* 809C77E0 */ void spaWarm(void*);
    /* 809C7ACC */ void waitSpaWater(void*);
    /* 809C7F24 */ void waitSpaBuyer(void*);
    /* 809C8138 */ void waitSpaBuyerTW(void*);
    /* 809C82A8 */ void beforeCrashWait(void*);
    /* 809C8514 */ void crashRoll(void*);
    /* 809C8694 */ void crashRollWait(void*);
    /* 809C884C */ void crashedWait(void*);
    /* 809C8A2C */ void waitBuyer(void*);
    /* 809C8BD4 */ void talk(void*);
    /* 809C9044 */ void test(void*);
    /* 809C9D28 */ void adjustShapeAngle();

    static void* mEvtCutNameList[12];
    static u8 mEvtCutList[144];

private:
    /* 0x568 */ u8 field_0x568[0x1698 - 0x568];
};

STATIC_ASSERT(sizeof(daNpc_grA_c) == 0x1698);

class daNpc_grA_Param_c {
public:
    /* 809C9D2C */ ~daNpc_grA_Param_c();

    static u8 const m[132];
};

#endif /* D_A_NPC_GRA_H */
