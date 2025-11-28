#ifndef D_A_NPC_SOLDIERB_H
#define D_A_NPC_SOLDIERB_H

#include "d/actor/d_a_npc4.h"

struct daNpc_SoldierB_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
};

class daNpc_SoldierB_Param_c {
public:
    /* 80AF267C */ virtual ~daNpc_SoldierB_Param_c() {}

    static daNpc_SoldierB_HIOParam const m;
};

#if DEBUG
class daNpc_SoldierB_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_SoldierB_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    daNpc_SoldierB_HIOParam m;
};
#define NPC_SOLDIERB_HIO_CLASS daNpc_SoldierB_HIO_c
#else
#define NPC_SOLDIERB_HIO_CLASS daNpc_SoldierB_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_SoldierB_c
 * @brief Soldier B (Castle Town?)
 *
 * @details
 *
 */
class daNpc_SoldierB_c : public daNpcF_c {
public:
    typedef int (daNpc_SoldierB_c::*actionFunc)(void*);
    typedef int (daNpc_SoldierB_c::*cutFunc)(int);

    /* 80AF2CAC */ daNpc_SoldierB_c();
    /* 80AF2EC0 */ ~daNpc_SoldierB_c();
    /* 80AF30C0 */ cPhs__Step create();
    /* 80AF33A0 */ int CreateHeap();
    /* 80AF356C */ int Delete();
    /* 80AF35A0 */ int Execute();
    /* 80AF35C0 */ int Draw();
    /* 80AF3634 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AF3830 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AF3850 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AF389C */ void setParam();
    /* 80AF39B8 */ BOOL main();
    /* 80AF3B30 */ BOOL ctrlBtk();
    /* 80AF3B38 */ void setAttnPos();
    /* 80AF4030 */ void setMotionAnm(int, f32);
    /* 80AF4130 */ void setMotion(int, f32, int);
    /* 80AF4174 */ int drawDbgInfo();
    /* 80AF417C */ void drawOtherMdls();
    /* 80AF4228 */ u8 getTypeFromParam();
    /* 80AF4248 */ BOOL isDelete();
    /* 80AF426C */ void reset();
    /* 80AF43E4 */ void playMotion();
    /* 80AF4508 */ BOOL chkAction(int (daNpc_SoldierB_c::*)(void*));
    /* 80AF4534 */ BOOL setAction(int (daNpc_SoldierB_c::*)(void*));
    /* 80AF45DC */ BOOL selectAction();
    /* 80AF465C */ void doNormalAction(int);
    /* 80AF4770 */ BOOL doEvent();
    /* 80AF49E4 */ void setLookMode(int);
    /* 80AF4A08 */ void lookat();
    /* 80AF4CFC */ int wait(void*);
    /* 80AF4DBC */ int talk(void*);
    /* 80AF4F54 */ int ECut_listenLake(int);
    /* 80AF50AC */ int test(void*);

    static char* mEvtCutNameList[2];
    static cutFunc mEvtCutList[2];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ J3DModel* mSpearModel;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[3];
    /* 0xC90 */ NPC_SOLDIERB_HIO_CLASS* mHIO;
    /* 0xC94 */ dCcD_Cyl mCyl;
    /* 0xDD0 */ actionFunc mNextAction;
    /* 0xDDC */ actionFunc mAction;
    /* 0xDE8 */ request_of_phase_process_class mPhases[3];
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ int mMsgNo;
    /* 0xE14 */ s16 mLookMode;
    /* 0xE16 */ u16 mMode;
    /* 0xE18 */ u8 mType;
    /* 0xE1C */ int mAnm;
};

STATIC_ASSERT(sizeof(daNpc_SoldierB_c) == 0xe20);

#endif /* D_A_NPC_SOLDIERB_H */
