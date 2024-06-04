#ifndef D_A_NPC_RAFREL_H
#define D_A_NPC_RAFREL_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpcRafrel_c : public fopAc_ac_c {
public:
    /* 80AB962C */ daNpcRafrel_c();
    /* 80AB9840 */ ~daNpcRafrel_c();
    /* 80AB9A40 */ void Create();
    /* 80AB9E3C */ void CreateHeap();
    /* 80ABA380 */ void Delete();
    /* 80ABA3B4 */ void Execute();
    /* 80ABA3D8 */ void Draw();
    /* 80ABA4A8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80ABA678 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80ABA698 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80ABA6E4 */ void setExpressionAnm(int, bool);
    /* 80ABA8EC */ void setExpressionBtp(int);
    /* 80ABA9CC */ void setMotionAnm(int, f32);
    /* 80ABAB88 */ void reset();
    /* 80ABADC4 */ void setWaitAction();
    /* 80ABAFBC */ void isSneaking();
    /* 80ABB014 */ void wait_type01(void*);
    /* 80ABBB10 */ void setMotion(int, f32, int);
    /* 80ABBBB0 */ void setExpression(int, f32);
    /* 80ABBBDC */ void wait_type2(void*);
    /* 80ABBE84 */ void talk(void*);
    /* 80ABC50C */ void demo(void*);
    /* 80ABCA40 */ void leave(void*);
    /* 80ABCD74 */ void EvCut_Introduction(int);
    /* 80ABCE74 */ void EvCut_Meeting(int);
    /* 80ABD124 */ void EvCut_Appear(int);
    /* 80ABD8A0 */ void EvCut_WiretapSponsor(int);
    /* 80ABDB7C */ void EvCut_WiretapEntrant(int);
    /* 80ABDE9C */ void setParam();
    /* 80ABE1D0 */ void main();
    /* 80ABE470 */ void playMotion();
    /* 80ABE9FC */ void ctrlBtk();
    /* 80ABEAD8 */ void setAttnPos();
    /* 80ABEE98 */ void lookat();
    /* 80ABF074 */ bool drawDbgInfo();

    static u8 mEvtSeqList[84];

private:
    /* 0x568 */ u8 field_0x568[0xe18 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcRafrel_c) == 0xe18);

class daNpcRafrel_Param_c {
public:
    /* 80ABF974 */ ~daNpcRafrel_Param_c();

    static u8 const m[116];
};


#endif /* D_A_NPC_RAFREL_H */
