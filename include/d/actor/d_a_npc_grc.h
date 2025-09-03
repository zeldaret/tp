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


class daNpc_grC_c : public daNpcF_c {
public:
    typedef BOOL (daNpc_grC_c::*ActionFn)(void*);
    typedef BOOL (daNpc_grC_c::*EventFn)(int);

    /* 809CB4CC */ daNpc_grC_c();
    /* 809CB6E0 */ ~daNpc_grC_c();
    /* 809CB8E0 */ cPhs__Step create();
    /* 809CBBD4 */ int CreateHeap();
    /* 809CBDC4 */ int Delete();
    /* 809CBDF8 */ int Execute();
    /* 809CBE18 */ int Draw();
    /* 809CBE8C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809CC0C0 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809CC0E0 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809CC12C */ void setParam();
    /* 809CC26C */ BOOL main();
    /* 809CC3EC */ BOOL ctrlBtk();
    /* 809CC3F4 */ void setAttnPos();
    /* 809CC930 */ bool setExpressionAnm(int, bool);
    /* 809CCB78 */ bool setExpressionBtp(int);
    /* 809CCCA4 */ void setExpression(int, f32);
    /* 809CCCD0 */ void setMotionAnm(int, f32);
    /* 809CCE70 */ void setMotion(int, f32, int);
    /* 809CCEB4 */ int drawDbgInfo();
    /* 809CCEBC */ void drawOtherMdls();
    /* 809CCEC0 */ u8 getTypeFromParam();
    /* 809CCF38 */ BOOL isDelete();
    /* 809CCFBC */ void reset();
    /* 809CD1B4 */ void playExpression();
    /* 809CD4AC */ void playMotion();
    /* 809CD794 */ BOOL chkAction(ActionFn);
    /* 809CD7C0 */ BOOL setAction(ActionFn);
    /* 809CD868 */ BOOL selectAction();
    /* 809CD960 */ void doNormalAction(int);
    /* 809CDA74 */ BOOL doEvent();
    /* 809CDD50 */ void setLookMode(int);
    /* 809CDD74 */ void lookat();
    /* 809CDFFC */ BOOL chkFindPlayer();
    /* 809CE12C */ void setExpressionTalkAfter();
    /* 809CE1F8 */ BOOL wait(void*);
    /* 809CE3A8 */ BOOL waitTW(void*);
    /* 809CE490 */ BOOL waitSpa(void*);
    /* 809CE688 */ BOOL waitBuyer(void*);
    /* 809CE7C4 */ BOOL talk(void*);
    /* 809CEA6C */ BOOL test(void*);
    /* 809CEB50 */ void setPrtcl();
    /* 809CF4AC */ void adjustShapeAngle() {}

    static char* mEvtCutNameList;
    static EventFn mEvtCutList[1];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ int field_0xbd8;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ dPaPo_c mPaPo;
    /* 0xCB0 */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0xCC0 */ u8 field_0xcc0[0xcc4 - 0xcc0];
    /* 0xCC4 */ dCcD_Cyl mCyl;
    /* 0xE00 */ ActionFn mNextAction;
    /* 0xE0C */ ActionFn mAction;
    /* 0xE18 */ request_of_phase_process_class mPhases[3];
    /* 0xE30 */ int field_0xe30;
    /* 0xE34 */ int field_0xe34;
    /* 0xE38 */ int field_0xe38;
    /* 0xE3C */ int field_0xe3c;
    /* 0xE40 */ int mFlowID;
    /* 0xE44 */ s16 mLookMode;
    /* 0xE46 */ u16 mMode;
    /* 0xE48 */ u8 mType;
    /* 0xE4C */ fpc_ProcID mItemID;
    /* 0xE50 */ bool mIsSpringWaterShopClosed;
    /* 0xE51 */ bool field_0xe51;
};

STATIC_ASSERT(sizeof(daNpc_grC_c) == 0xe54);

struct daNpc_grC_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

class daNpc_grC_HIO_c : public mDoHIO_entry_c {
    /* 0x8 */ daNpc_grC_HIOParam field_0x8;
};

class daNpc_grC_Param_c {
public:
    /* 809CF4B0 */ virtual ~daNpc_grC_Param_c() {}

    static daNpc_grC_HIOParam const m;
};


#endif /* D_A_NPC_GRC_H */
