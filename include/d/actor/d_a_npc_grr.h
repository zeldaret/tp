#ifndef D_A_NPC_GRR_H
#define D_A_NPC_GRR_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grR_c
 * @brief Gor Liggs
 *
 * @details
 *
*/

struct daNpc_grR_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

class daNpc_grR_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
    /* 0x8 */ daNpc_grR_HIOParam param;
};

class daNpc_grR_Param_c {
public:
    /* 809E386C */ virtual ~daNpc_grR_Param_c() {}

    static daNpc_grR_HIOParam const m;
};

class daNpc_grR_c : public daNpcF_c {
public:
    typedef int (daNpc_grR_c::*cutFunc)(int);
    typedef int (daNpc_grR_c::*actionFunc)(void*);
    /* 809DF8CC */ daNpc_grR_c();
    /* 809DFAE0 */ ~daNpc_grR_c();
    /* 809DFCE0 */ cPhs__Step create();
    /* 809DFFB8 */ int CreateHeap();
    /* 809E03FC */ int Delete();
    /* 809E0430 */ int Execute();
    /* 809E0450 */ int Draw();
    /* 809E04E0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809E0714 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809E0734 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809E0780 */ void setParam();
    /* 809E08FC */ BOOL main();
    /* 809E0A7C */ BOOL ctrlBtk();
    /* 809E0B5C */ void setAttnPos();
    /* 809E105C */ bool setExpressionAnm(int, bool);
    /* 809E1260 */ bool setExpressionBtp(int);
    /* 809E138C */ void setExpression(int, f32);
    /* 809E13B8 */ void setMotionAnm(int, f32);
    /* 809E1548 */ void setMotion(int, f32, int);
    /* 809E158C */ BOOL drawDbgInfo();
    /* 809E1594 */ void drawOtherMdls();
    /* 809E1598 */ u8 getTypeFromParam();
    /* 809E15E4 */ BOOL isDelete();
    /* 809E16CC */ void reset();
    /* 809E18A4 */ void playExpression();
    /* 809E1B28 */ void playMotion();
    /* 809E1F10 */ BOOL chkAction(actionFunc);
    /* 809E1F3C */ BOOL setAction(actionFunc);
    /* 809E1FE4 */ BOOL selectAction();
    /* 809E2088 */ void doNormalAction(int);
    /* 809E219C */ BOOL doEvent();
    /* 809E2480 */ void setLookMode(int);
    /* 809E24A4 */ void lookat();
    /* 809E272C */ void setExpressionTalkAfter();
    /* 809E27CC */ int wait(void*);
    /* 809E29B8 */ int waitMaro(void*);
    /* 809E2B48 */ int talk(void*);
    /* 809E2E84 */ int test(void*);
    /* 809E3868 */ void adjustShapeAngle() {}

    static char* mEvtCutNameList;
    static cutFunc mEvtCutList[1];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0xC88 */ daNpc_grR_HIO_c* mHIO;
    /* 0xC8C */ dCcD_Cyl mCyl;
    /* 0xDC8 */ actionFunc mNextAction;
    /* 0xDD4 */ actionFunc mAction;
    /* 0xDE0 */ request_of_phase_process_class mPhases[3];
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int mFlowID;
    /* 0xE0C */ s16 mLookMode;
    /* 0xE0E */ u16 mMode;
    /* 0xE10 */ u8 mType;
    /* 0xE14 */ fpc_ProcID mItemID;
    /* 0xE18 */ bool field_0xe18;
    /* 0xE1C */ int mAnm;
};

STATIC_ASSERT(sizeof(daNpc_grR_c) == 0xe20);

#endif /* D_A_NPC_GRR_H */
