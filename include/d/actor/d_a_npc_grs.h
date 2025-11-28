#ifndef D_A_NPC_GRS_H
#define D_A_NPC_GRS_H

#include "d/actor/d_a_npc4.h"

struct daNpc_grS_HIOParam {
    /* 0x000 */ daNpcF_HIOParam common;
};

class daNpc_grS_Param_c {
public:
    /* 809E7D60 */ virtual ~daNpc_grS_Param_c() {}

    static const daNpc_grS_HIOParam m;
};

#if DEBUG
class daNpc_grS_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_grS_HIO_c();
    virtual ~daNpc_grS_HIO_c() {}

    void genMessage(JORMContext*);

    daNpc_grS_HIOParam m;
};

#define NPC_GRS_HIO_CLASS daNpc_grS_HIO_c
#else
#define NPC_GRS_HIO_CLASS daNpc_grS_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpc_grS_c
 * @brief Gor Amoto
 *
 * @details
 *
 */
class daNpc_grS_c : public daNpcF_c {
public:
    typedef int (daNpc_grS_c::*actionFunc)(void*);
    typedef int (daNpc_grS_c::*cutFunc)(int);

    /* 809E40CC */ daNpc_grS_c();
    /* 809E42E0 */ virtual ~daNpc_grS_c();
    /* 809E44E0 */ int create();
    /* 809E47B4 */ int CreateHeap();
    /* 809E4C58 */ int Delete();
    /* 809E4C8C */ int Execute();
    /* 809E4CAC */ int Draw();
    /* 809E4D3C */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809E4F70 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809E4F90 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809E4FDC */ virtual void setParam();
    /* 809E510C */ virtual int main();
    /* 809E528C */ virtual int ctrlBtk();
    /* 809E536C */ virtual void setAttnPos();
    /* 809E5874 */ virtual bool setExpressionAnm(int, bool);
    /* 809E5A08 */ virtual bool setExpressionBtp(int);
    /* 809E5B1C */ virtual void setExpression(int, f32);
    /* 809E5B48 */ virtual void setMotionAnm(int, f32);
    /* 809E5CB8 */ virtual void setMotion(int, f32, int);
    /* 809E5CFC */ virtual int drawDbgInfo();
    /* 809E5D04 */ virtual void drawOtherMdls();
    /* 809E5DB4 */ u8 getTypeFromParam();
    /* 809E5DD4 */ int isDelete();
    /* 809E5E58 */ void reset();
    /* 809E6000 */ void playExpression();
    /* 809E6164 */ void playMotion();
    /* 809E62F0 */ int chkAction(actionFunc);
    /* 809E631C */ int setAction(actionFunc);
    /* 809E63C4 */ int selectAction();
    /* 809E6444 */ void doNormalAction(int);
    /* 809E6570 */ int doEvent();
    /* 809E6854 */ void setLookMode(int);
    /* 809E6878 */ void lookat();
    /* 809E6B00 */ void setExpressionTalkAfter();
    /* 809E6B74 */ int cutPushOut(int);
    /* 809E6D54 */ int wait(void*);
    /* 809E6F5C */ int talk(void*);
    /* 809E721C */ int test(void*);
    /* 809E7300 */ void setPrtcl();
    /* 809E7D5C */ void adjustShapeAngle() {}

    static char* mEvtCutNameList[2];
    static cutFunc mEvtCutList[2];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ J3DModel* mpModel;
    /* 0xBE0 */ daNpcF_Lookat_c mLookat;
    /* 0xC7C */ daNpcF_ActorMngr_c mActorMngrs[2];
    /* 0xC8C */ NPC_GRS_HIO_CLASS* mpHIO;
    /* 0xC90 */ dCcD_Cyl mCyl;
    /* 0xDCC */ actionFunc mpNextActionFn;
    /* 0xDD8 */ actionFunc mpActionFn;
    /* 0xDE4 */ request_of_phase_process_class mPhases[2];
    /* 0xDF4 */ u8 field_0xdf4[0xdfc - 0xdf4];
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ s16 mLookMode;
    /* 0xE12 */ u16 mActionState;
    /* 0xE14 */ u8 mType;
    /* 0xE18 */ fpc_ProcID mPresentItemId;
    /* 0xE1C */ int mParticleIds[6];
    /* 0xE34 */ bool mIsSpeaking;
};

STATIC_ASSERT(sizeof(daNpc_grS_c) == 0xe38);


#endif /* D_A_NPC_GRS_H */
