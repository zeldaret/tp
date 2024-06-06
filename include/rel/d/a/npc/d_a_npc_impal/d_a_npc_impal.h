#ifndef D_A_NPC_IMPAL_H
#define D_A_NPC_IMPAL_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcImpal_c
 * @brief Impaz
 *
 * @details
 *
 */
class daNpcImpal_c : public fopAc_ac_c {
public:
    /* 80A079EC */ daNpcImpal_c();
    /* 80A07C00 */ ~daNpcImpal_c();
    /* 80A07DC4 */ void Create();
    /* 80A080F8 */ void CreateHeap();
    /* 80A08524 */ void Delete();
    /* 80A08558 */ void Execute();
    /* 80A0857C */ void Draw();
    /* 80A085EC */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A087BC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A087DC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A08828 */ void setExpressionAnm(int, bool);
    /* 80A08A68 */ void setExpressionBtp(int);
    /* 80A08B48 */ void setMotionAnm(int, f32);
    /* 80A08CBC */ void reset();
    /* 80A08EB8 */ void setAction(bool (daNpcImpal_c::*)(void*));
    /* 80A090E8 */ void wait(void*);
    /* 80A099B4 */ void setMotion(int, f32, int);
    /* 80A099F8 */ void setExpression(int, f32);
    /* 80A09A24 */ void talk(void*);
    /* 80A09F4C */ void demo(void*);
    /* 80A0A1E0 */ void EvCut_ImpalAppear1(int);
    /* 80A0A680 */ void EvCut_ImpalAppear2(int);
    /* 80A0A950 */ void EvCut_CopyRod(int);
    /* 80A0ADF8 */ void setParam();
    /* 80A0AEA8 */ void main();
    /* 80A0B380 */ void ctrlBtk();
    /* 80A0B45C */ void setAttnPos();
    /* 80A0B76C */ void lookat();
    /* 80A0B94C */ bool drawDbgInfo();

    static u8 mEvtSeqList[48];

private:
    /* 0x568 */ u8 field_0x568[0xdec - 0x568];
};

STATIC_ASSERT(sizeof(daNpcImpal_c) == 0xdec);

class daNpcImpal_Param_c {
public:
    /* 80A0C204 */ ~daNpcImpal_Param_c();

    static u8 const m[112];
};


#endif /* D_A_NPC_IMPAL_H */
