#ifndef D_A_NPC_SOLDIERA_H
#define D_A_NPC_SOLDIERA_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_SoldierA_c
 * @brief Soldier A (Castle Town?)
 *
 * @details
 *
 */

struct daNpc_SoldierA_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
};

class daNpc_SoldierA_Param_c {
public:
    /* 80AF267C */ virtual ~daNpc_SoldierA_Param_c() {}

    static daNpc_SoldierA_HIOParam const m;
};

#if DEBUG
class daNpc_SoldierA_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_SoldierA_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_SoldierA_HIOParam m;
};
#define NPC_SOLDIERA_HIO_CLASS daNpc_SoldierA_HIO_c
#else
#define NPC_SOLDIERA_HIO_CLASS daNpc_SoldierA_Param_c
#endif

class daNpc_SoldierA_c : public daNpcF_c {
public:
    typedef int (daNpc_SoldierA_c::*actionFunc)(void*);
    typedef int (daNpc_SoldierA_c::*cutFunc)(int);

    /* 80AEF58C */ daNpc_SoldierA_c();
    /* 80AEF7A0 */ ~daNpc_SoldierA_c();
    /* 80AEF9A0 */ cPhs__Step create();
    /* 80AEFC80 */ int CreateHeap();
    /* 80AEFE4C */ int Delete();
    /* 80AEFE80 */ int Execute();
    /* 80AEFEA0 */ int Draw();
    /* 80AEFF14 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AF0110 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AF0130 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AF017C */ void setParam();
    /* 80AF02B0 */ BOOL main();
    /* 80AF0428 */ BOOL ctrlBtk();
    /* 80AF0430 */ void setAttnPos();
    /* 80AF0928 */ void setMotionAnm(int, f32);
    /* 80AF0A38 */ void setMotion(int, f32, int);
    /* 80AF0A7C */ int drawDbgInfo();
    /* 80AF0A84 */ void drawOtherMdls();
    /* 80AF0B30 */ u8 getTypeFromParam();
    /* 80AF0B7C */ BOOL isDelete();
    /* 80AF0BB0 */ void reset();
    /* 80AF0D34 */ void playMotion();
    /* 80AF0F50 */ BOOL chkAction(actionFunc);
    /* 80AF0F7C */ BOOL setAction(actionFunc);
    /* 80AF1024 */ BOOL selectAction();
    /* 80AF10A4 */ void doNormalAction(int);
    /* 80AF11B8 */ BOOL doEvent();
    /* 80AF1488 */ void setLookMode(int);
    /* 80AF14AC */ void lookat();
    /* 80AF1734 */ int wait(void*);
    /* 80AF18B0 */ int talk(void*);
    /* 80AF1A48 */ int ECut_talkLake(int);
    /* 80AF1B8C */ int ECut_listenLake(int);
    /* 80AF1CA4 */ int test(void*);

    u8 getType() { return mType; }

    static char* mEvtCutNameList[3];
    static cutFunc mEvtCutList[3];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ J3DModel* mSpearModel;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[3];
    /* 0xC90 */ NPC_SOLDIERA_HIO_CLASS* mHIO;
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

STATIC_ASSERT(sizeof(daNpc_SoldierA_c) == 0xe20);

#endif /* D_A_NPC_SOLDIERA_H */
