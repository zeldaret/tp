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
class daNpcTheB_c : public fopAc_ac_c {
public:
    /* 80AFC76C */ daNpcTheB_c();
    /* 80AFC980 */ ~daNpcTheB_c();
    /* 80AFCB44 */ void create();
    /* 80AFCD98 */ void CreateHeap();
    /* 80AFD1FC */ void Delete();
    /* 80AFD230 */ void Execute();
    /* 80AFD250 */ void Draw();
    /* 80AFD2A8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AFD49C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AFD4BC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AFD508 */ void getHandPos1(int);
    /* 80AFD5F0 */ void getHandPos2(int);
    /* 80AFD6D8 */ void setHintEvent(s32, u16, int);
    /* 80AFD6F0 */ void main();
    /* 80AFD938 */ void setParam();
    /* 80AFDAA4 */ void ctrlBtk();
    /* 80AFDB70 */ void setAttnPos();
    /* 80AFDEC0 */ void setExpressionAnm(int, bool);
    /* 80AFE0BC */ void setExpressionBtp(int);
    /* 80AFE1BC */ void setMotionAnm(int, f32);
    /* 80AFE398 */ bool drawDbgInfo();
    /* 80AFE3A0 */ void reset();
    /* 80AFE574 */ void playExpression();
    /* 80AFE704 */ void playMotion();
    /* 80AFE920 */ void doNormalAction();
    /* 80AFEA14 */ void doEvent();
    /* 80AFED24 */ void lookat();
    /* 80AFEECC */ void wait(void*);
    /* 80AFF45C */ void setMotion(int, f32, int);
    /* 80AFF4A0 */ void setExpression(int, f32);
    /* 80AFF4CC */ void talk(void*);
    /* 80AFF6AC */ void EvCut_PersonalCombatIntro(int);
    /* 80AFF888 */ void EvCut_PersonalCombatRevenge(int);
    /* 80AFFBB4 */ void EvCut_PersonalCombatAfter();
    /* 80AFFEF4 */ void EvCut_AnnulationFieldRace(int);
    /* 80AFFFE0 */ void EvCut_TheBHint(int);
    /* 80B00204 */ void EvCut_CoachGuardGameOver(int);

    static u8 mEvtSeqList[72];

private:
    /* 0x568 */ u8 field_0x568[0xe14 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcTheB_c) == 0xe14);

struct daNpcTheB_Param_c {
    /* 80B00D00 */ ~daNpcTheB_Param_c();

    static u8 const m[108];
};

#endif /* D_A_NPC_THEB_H */
