#ifndef D_A_NPC_GRD_H
#define D_A_NPC_GRD_H

#include "d/actor/d_a_npc4.h"

struct daNpc_Grd_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
};

class daNpc_Grd_Param_c {
public:
    /* 80AF267C */ virtual ~daNpc_Grd_Param_c() {}

    static daNpc_Grd_HIOParam const m;
};

#if DEBUG
class daNpc_Grd_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Grd_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x8 */ daNpc_Grd_HIOParam m;
};
#define NPC_GRD_HIO_CLASS daNpc_Grd_HIO_c
#else
#define NPC_GRD_HIO_CLASS daNpc_Grd_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_Grd_c
 * @brief Gor Coron
 *
 * @details
 *
 */
class daNpc_Grd_c : public daNpcF_c {
public:
    typedef int (daNpc_Grd_c::*actionFunc)(void*);
    typedef int (daNpc_Grd_c::*cutFunc)(int);

    /* 809CFD2C */ daNpc_Grd_c();
    /* 809CFF40 */ ~daNpc_Grd_c();
    /* 809D0140 */ int create();
    /* 809D0414 */ int CreateHeap();
    /* 809D0858 */ int Delete();
    /* 809D088C */ int Execute();
    /* 809D08AC */ int Draw();
    /* 809D093C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809D0B70 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809D0B90 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809D0BDC */ void setParam();
    /* 809D0D1C */ BOOL main();
    /* 809D0E9C */ BOOL ctrlBtk();
    /* 809D0F7C */ void setAttnPos();
    /* 809D14BC */ bool setExpressionAnm(int, bool);
    /* 809D1670 */ bool setExpressionBtp(int);
    /* 809D1794 */ void setExpression(int, f32);
    /* 809D17C0 */ void setMotionAnm(int, f32);
    /* 809D1940 */ void setMotion(int, f32, int);
    /* 809D1984 */ BOOL drawDbgInfo();
    /* 809D198C */ void drawOtherMdls();
    /* 809D1990 */ u8 getTypeFromParam();
    /* 809D19B0 */ int isDelete();
    /* 809D1A1C */ void reset();
    /* 809D1B9C */ void playExpression();
    /* 809D1D00 */ void playMotion();
    /* 809D1F50 */ int chkAction(actionFunc);
    /* 809D1F7C */ int setAction(actionFunc);
    /* 809D2024 */ int selectAction();
    /* 809D20A4 */ void doNormalAction(int);
    /* 809D21B8 */ BOOL doEvent();
    /* 809D2470 */ void setLookMode(int);
    /* 809D2494 */ void lookat();
    /* 809D2730 */ void setExpressionTalkAfter();
    /* 809D2768 */ int wait(void*);
    /* 809D2970 */ int talk(void*);
    /* 809D2B20 */ int test(void*);
    /* 809D2C9C */ BOOL ECut_nodToGrz(int);
    /* 809D3994 */ void adjustShapeAngle() {}

    static char* mEvtCutNameList[2];
    static cutFunc mEvtCutList[2];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngr[3];
    /* 0xC90 */ NPC_GRD_HIO_CLASS* mpHIO;
    /* 0xC94 */ dCcD_Cyl mCyl;
    /* 0xDD0 */ actionFunc mNextAction;
    /* 0xDDC */ actionFunc mAction;
    /* 0xDE8 */ request_of_phase_process_class mPhase[3];
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ int mFlowID;
    /* 0xE14 */ s16 mLookMode;
    /* 0xE16 */ u16 mMode;
    /* 0xE18 */ u8 mType;
};

STATIC_ASSERT(sizeof(daNpc_Grd_c) == 0xe1c);

#endif /* D_A_NPC_GRD_H */
