#ifndef D_A_NPC_THEB_H
#define D_A_NPC_THEB_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTheB_c
 * @brief Telma B
 *
 * @details
 *
*/

struct daNpcTheB_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

struct daNpcTheB_Param_c {
    /* 80B00D00 */ virtual ~daNpcTheB_Param_c() {}

    static daNpcTheB_HIOParam const m;
};

#if DEBUG
class daNpcTheB_HIO_c : public mDoHIO_entry_c {
public:
    daNpcTheB_HIO_c();
    void genMessage(JORMContext*);
    void listenPropertyEvent(const JOREventListener*);
    
    /* 0x8 */ daNpcTheB_HIOParam m;
};
#define NPC_THEB_HIO_CLASS daNpcTheB_HIO_c
#else
#define NPC_THEB_HIO_CLASS daNpcTheB_Param_c
#endif

class daNpcTheB_c : public daNpcF_c {
public:
    typedef int (daNpcTheB_c::*actionFunc)(void*);
    typedef int (daNpcTheB_c::*cutFunc)(int);

    /* 80AFC76C */ daNpcTheB_c();
    /* 80AFC980 */ ~daNpcTheB_c();
    /* 80AFCB44 */ cPhs__Step create();
    /* 80AFCD98 */ int CreateHeap();
    /* 80AFD1FC */ int Delete();
    /* 80AFD230 */ int Execute();
    /* 80AFD250 */ int Draw();
    /* 80AFD2A8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AFD49C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AFD4BC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AFD508 */ cXyz getHandPos1(int);
    /* 80AFD5F0 */ cXyz getHandPos2(int);
    /* 80AFD6D8 */ void setHintEvent(s32, u16, int);
    /* 80AFD6F0 */ BOOL main();
    /* 80AFD938 */ void setParam();
    /* 80AFDAA4 */ BOOL ctrlBtk();
    /* 80AFDB70 */ void setAttnPos();
    /* 80AFDEC0 */ bool setExpressionAnm(int, bool);
    /* 80AFE0BC */ bool setExpressionBtp(int);
    /* 80AFE1BC */ void setMotionAnm(int, f32);
    /* 80AFE398 */ BOOL drawDbgInfo();
    /* 80AFE3A0 */ void reset();
    /* 80AFE574 */ void playExpression();
    /* 80AFE704 */ void playMotion();
    /* 80AFE920 */ void doNormalAction();
    /* 80AFEA14 */ BOOL doEvent();
    /* 80AFED24 */ void lookat();
    /* 80AFEECC */ void wait(void*);
    /* 80AFF45C */ void setMotion(int, f32, int);
    /* 80AFF4A0 */ void setExpression(int, f32);
    /* 80AFF4CC */ void talk(void*);
    /* 80AFF6AC */ int EvCut_PersonalCombatIntro(int);
    /* 80AFF888 */ int EvCut_PersonalCombatRevenge(int);
    /* 80AFFBB4 */ int EvCut_PersonalCombatAfter();
    /* 80AFFEF4 */ int EvCut_AnnulationFieldRace(int);
    /* 80AFFFE0 */ int EvCut_TheBHint(int);
    /* 80B00204 */ int EvCut_CoachGuardGameOver(int);

    s16 getMessageNo() { return fopAcM_GetParam(this) & 0xFFFF; }
    void setTRMtx(MtxP mtx) { mpMorf->getModel()->setBaseTRMtx(mtx); }
    void setGameOver() { mGameOver = 1; }
    f32 getCoachSpeed() { return fopAcM_GetSpeedF((fopAc_ac_c*)fpcM_SearchByID(parentActorID)); }

    static cutFunc mEvtSeqList[6];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[1];
    /* 0xC80 */ NPC_THEB_HIO_CLASS* mpHIO;
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ actionFunc mNextAction;
    /* 0xDCC */ actionFunc mAction;
    /* 0xDD8 */ request_of_phase_process_class mPhase;
    /* 0xDE0 */ int field_0xde0;
    /* 0xDE4 */ int field_0xde4;
    /* 0xDE8 */ int field_0xde8;
    /* 0xDEC */ int field_0xdec;
    /* 0xDF0 */ int field_0xdf0;
    /* 0xDF4 */ int mMsgNo;
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ s16 field_0xe00;
    /* 0xE02 */ u16 field_0xe02;
    /* 0xE04 */ u16 field_0xe04;
    /* 0xE06 */ s16 field_0xe06;
    /* 0xE08 */ s16 field_0xe08;
    /* 0xE0A */ s16 field_0xe0a;
    /* 0xE0C */ u8 field_0xe0c;
    /* 0xE0D */ u8 mGameOver;
    /* 0xE0E */ u8 field_0xe0e;
    /* 0xE0F */ u8 field_0xe0f[0xe14 - 0xe0f];
};

STATIC_ASSERT(sizeof(daNpcTheB_c) == 0xe14);

#endif /* D_A_NPC_THEB_H */
