#ifndef D_A_NPC_SHAD_H
#define D_A_NPC_SHAD_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcShad_c
 * @brief Shad
 *
 * @details
 *
 */
class daNpcShad_c : public fopAc_ac_c {
public:
    /* 80AD820C */ daNpcShad_c();
    /* 80AD8420 */ ~daNpcShad_c();
    /* 80AD8620 */ void Create();
    /* 80AD8B60 */ void CreateHeap();
    /* 80AD90E0 */ void Delete();
    /* 80AD9114 */ void Execute();
    /* 80AD9138 */ void Draw();
    /* 80AD9280 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AD944C */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AD946C */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AD94B8 */ void setExpressionAnm(int, bool);
    /* 80AD974C */ void setExpressionBtp(int);
    /* 80AD982C */ void setMotionAnm(int, f32);
    /* 80AD99B4 */ void reset();
    /* 80AD9C0C */ void setWaitAction();
    /* 80AD9E04 */ void getPathPoint(u8, int, Vec*);
    /* 80AD9E90 */ void isSneaking();
    /* 80AD9F00 */ void wait_type0(void*);
    /* 80ADA630 */ void setMotion(int, f32, int);
    /* 80ADA674 */ void setExpression(int, f32);
    /* 80ADA6A0 */ void wait_type1(void*);
    /* 80ADB428 */ void wait_type2(void*);
    /* 80ADB628 */ void talk(void*);
    /* 80ADBEA8 */ void demo(void*);
    /* 80ADC3DC */ void leave(void*);
    /* 80ADC700 */ void EvCut_Introduction(int);
    /* 80ADC800 */ void EvCut_Meeting(int);
    /* 80ADCAD8 */ void EvCut_ToChantSpell1(int);
    /* 80ADD720 */ void EvCut_ToChantSpell2(int);
    /* 80ADE47C */ void EvCut_ToChantSpell2Skip(int);
    /* 80ADE5F8 */ void EvCut_DiscoveryCannon(int);
    /* 80ADED68 */ void EvCut_DiscoveryCannonSkip(int);
    /* 80ADEEE4 */ void EvCut_Disappear(int);
    /* 80ADF810 */ void EvCut_DisappearSkip(int);
    /* 80ADF8DC */ void EvCut_CallBack(int);
    /* 80ADFB70 */ void EvCut_WiretapSponsor(int);
    /* 80ADFE74 */ void EvCut_WiretapEntrant(int);
    /* 80AE01BC */ void setParam();
    /* 80AE0438 */ void main();
    /* 80AE04D8 */ void playMotion();
    /* 80AE0B58 */ void playExpression();
    /* 80AE0ED0 */ void ctrlBtk();
    /* 80AE0FAC */ void setAttnPos();
    /* 80AE1320 */ void lookat();
    /* 80AE153C */ bool drawDbgInfo();

    static u8 mEvtSeqList[168];

private:
    /* 0x568 */ u8 field_0x568[0xe24 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcShad_c) == 0xe24);

class daNpcShad_Param_c {
public:
    /* 80AE1F70 */ ~daNpcShad_Param_c();

    static u8 const m[112];
};


#endif /* D_A_NPC_SHAD_H */
