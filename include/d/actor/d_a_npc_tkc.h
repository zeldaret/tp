#ifndef D_A_NPC_TKC_H
#define D_A_NPC_TKC_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcTkc_c
 * @brief Ooccoo Jr.
 *
 * @details
 *
 */
class daNpcTkc_c : public fopAc_ac_c {
public:
    /* 80B0C7CC */ daNpcTkc_c();
    /* 80B0C964 */ ~daNpcTkc_c();
    /* 80B0CA9C */ void Create();
    /* 80B0CD7C */ void CreateHeap();
    /* 80B0D180 */ void Delete();
    /* 80B0D1B4 */ void Execute();
    /* 80B0D1EC */ void Draw();
    /* 80B0D25C */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80B0D2CC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80B0D2EC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80B0D338 */ void setActionWait();
    /* 80B0D37C */ void setActionFollow();
    /* 80B0D3C0 */ void setMtx();
    /* 80B0D458 */ void setExpressionAnm(int, bool);
    /* 80B0D5A4 */ void setExpressionBtp(int);
    /* 80B0D678 */ void reset();
    /* 80B0DA94 */ void setMotionAnm(int, f32);
    /* 80B0DBC8 */ void setAction(void (daNpcTkc_c::*)());
    /* 80B0DC68 */ void wait();
    /* 80B0DEF8 */ void calcFly();
    /* 80B0E124 */ void searchPlayer();
    /* 80B0E304 */ void follow();
    /* 80B0E784 */ void appear();
    /* 80B0E8EC */ void normalTalk();
    /* 80B0EB10 */ void setMotion(int, f32, int);
    /* 80B0EB54 */ void setExpression(int, f32);
    /* 80B0EB80 */ void warpTalk();
    /* 80B0EEE8 */ void demo();
    /* 80B0F00C */ void EvCut_TksSecretChild(int);
    /* 80B0F1F8 */ void EvCut_TksWarpExit(int);
    /* 80B0F5D4 */ void EvCut_TksWarpBack(int);
    /* 80B0FA5C */ void setParam();
    /* 80B0FAD0 */ void main();
    /* 80B0FD18 */ void ctrlBtk();
    /* 80B0FDE4 */ void setAttnPos();
    /* 80B0FFD4 */ bool drawDbgInfo();

    void setStart() { field_0xd7a = 1; }

    static u8 mEvtSeqList[48];

private:
    /* 0x568 */ u8 field_0x568[0xd7a - 0x568];
    /* 0xD7A */ u8 field_0xd7a;
    /* 0xD7B */ u8 field_0xd7b[0xd7c - 0xd7b];
};

STATIC_ASSERT(sizeof(daNpcTkc_c) == 0xd7c);

class daNpcTkc_Param_c {
public:
    /* 80B10848 */ ~daNpcTkc_Param_c();

    static u8 const m[164];
};


#endif /* D_A_NPC_TKC_H */
