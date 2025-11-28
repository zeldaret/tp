#ifndef D_A_NPC_GRO_H
#define D_A_NPC_GRO_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_grO_c
 * @brief Gor Ebizo
 *
 * @details
 *
*/

struct daNpc_grO_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

class daNpc_grO_Param_c {
public:
    /* 809DEF10 */ virtual ~daNpc_grO_Param_c() {}

    static daNpc_grO_HIOParam const m;
};

#if DEBUG
class daNpc_grO_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_grO_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_grO_HIOParam m;
};
#define NPC_GRO_HIO_CLASS daNpc_grO_HIO_c
#else
#define NPC_GRO_HIO_CLASS daNpc_grO_Param_c
#endif

class daNpc_grO_c : public daNpcF_c {
public:
    typedef int (daNpc_grO_c::*actionFunc)(void*);
    typedef int (daNpc_grO_c::*cutFunc)(int);
    
    /* 809DA56C */ daNpc_grO_c();
    /* 809DA780 */ ~daNpc_grO_c();
    /* 809DA980 */ cPhs__Step create();
    /* 809DAC58 */ int CreateHeap();
    /* 809DB130 */ int Delete();
    /* 809DB164 */ int Execute();
    /* 809DB184 */ int Draw();
    /* 809DB214 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809DB448 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809DB468 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809DB4B4 */ void setParam();
    /* 809DB5F4 */ BOOL main();
    /* 809DB774 */ BOOL ctrlBtk();
    /* 809DB854 */ void setAttnPos();
    /* 809DBD58 */ bool setExpressionAnm(int, bool);
    /* 809DBFF4 */ bool setExpressionBtp(int);
    /* 809DC118 */ void setExpression(int, f32);
    /* 809DC144 */ void setMotionAnm(int, f32);
    /* 809DC2E4 */ void setMotion(int, f32, int);
    /* 809DC328 */ int drawDbgInfo();
    /* 809DC330 */ void drawOtherMdls();
    /* 809DC3DC */ u8 getTypeFromParam();
    /* 809DC43C */ BOOL isDelete();
    /* 809DC4F4 */ void reset();
    /* 809DC67C */ void playExpression();
    /* 809DCA68 */ void playMotion();
    /* 809DCDA4 */ BOOL chkAction(actionFunc);
    /* 809DCDD0 */ BOOL setAction(actionFunc);
    /* 809DCE78 */ BOOL selectAction();
    /* 809DCF44 */ void doNormalAction(int);
    /* 809DD070 */ BOOL doEvent();
    /* 809DD3D8 */ void setLookMode(int);
    /* 809DD3FC */ void lookat();
    /* 809DD684 */ void setExpressionTalkAfter();
    /* 809DD758 */ int wait(void*);
    /* 809DD960 */ int bokinWait(void*);
    /* 809DDB68 */ int waitMaro(void*);
    /* 809DDCF8 */ int talk(void*);
    /* 809DE0D0 */ int ECut_bokinFinish(int);
    /* 809DE30C */ int cutPushOut(int);
    /* 809DE4EC */ int test(void*);
    /* 809DEF0C */ void adjustShapeAngle() {}

    static char* mEvtCutNameList[3];
    static cutFunc mEvtCutList[3];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ J3DModel* mpOtherModel[1];
    /* 0xBDC */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE0 */ daNpcF_Lookat_c mLookat;
    /* 0xC7C */ daNpcF_ActorMngr_c mActorMngrs[3];
    /* 0xC94 */ NPC_GRO_HIO_CLASS* mpHIO;
    /* 0xC98 */ dCcD_Cyl mCyl;
    /* 0xDD4 */ actionFunc mNextAction;
    /* 0xDE0 */ actionFunc mAction;
    /* 0xDEC */ request_of_phase_process_class mPhases[4];
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ int field_0xe10;
    /* 0xE14 */ int field_0xe14;
    /* 0xE18 */ int field_0xe18;
    /* 0xE1C */ int mMsgNo;
    /* 0xE20 */ s16 mLookMode;
    /* 0xE22 */ u16 mMode;
    /* 0xE24 */ u8 mType;
    /* 0xE28 */ fpc_ProcID mItemID;
    /* 0xE2C */ u8 mUnkFlag;
};

STATIC_ASSERT(sizeof(daNpc_grO_c) == 0xe30);

#endif /* D_A_NPC_GRO_H */
