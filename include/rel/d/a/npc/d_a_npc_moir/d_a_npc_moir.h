#ifndef D_A_NPC_MOIR_H
#define D_A_NPC_MOIR_H

#include "d/a/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcMoiR_c
 * @brief Rusl (Resistance)
 *
 * @details
 *
 */
class daNpcMoiR_c : public fopAc_ac_c {
public:
    /* 80A7C16C */ daNpcMoiR_c();
    /* 80A7C380 */ ~daNpcMoiR_c();
    /* 80A7C580 */ void Create();
    /* 80A7C978 */ void CreateHeap();
    /* 80A7CE48 */ void Delete();
    /* 80A7CE7C */ void Execute();
    /* 80A7CEA0 */ void Draw();
    /* 80A7CEFC */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A7D0CC */ void createHeapCallBack(fopAc_ac_c*);
    /* 80A7D0EC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80A7D138 */ void setExpressionAnm(int, bool);
    /* 80A7D394 */ void setExpressionBtp(int);
    /* 80A7D474 */ void setMotionAnm(int, f32);
    /* 80A7D5C4 */ void reset();
    /* 80A7D73C */ void setWaitAction();
    /* 80A7D934 */ void wait_type0(void*);
    /* 80A7DD94 */ void setMotion(int, f32, int);
    /* 80A7DDD8 */ void setExpression(int, f32);
    /* 80A7DE04 */ void wait_type1(void*);
    /* 80A7E668 */ void wait_type2(void*);
    /* 80A7E8C0 */ void talk(void*);
    /* 80A7EFBC */ void multiTalk(void*);
    /* 80A7F40C */ void fight(void*);
    /* 80A7F9AC */ void demo(void*);
    /* 80A7FEE8 */ void leave(void*);
    /* 80A802C4 */ void EvCut_Introduction(int);
    /* 80A803A0 */ void EvCut_Appear(int);
    /* 80A8081C */ void EvCut_Appear2(int);
    /* 80A810FC */ void setParam();
    /* 80A81274 */ void main();
    /* 80A815D4 */ void checkHeadGear();
    /* 80A818B4 */ void playMotion();
    /* 80A8210C */ void ctrlBtk();
    /* 80A821E0 */ void setAttnPos();
    /* 80A825A0 */ void lookat();
    /* 80A82878 */ void drawOtherMdls();
    /* 80A82900 */ bool drawDbgInfo();

    static u8 mEvtSeqList[48];

private:
    /* 0x568 */ u8 field_0x568[0xe0c - 0x568];
};
STATIC_ASSERT(sizeof(daNpcMoiR_c) == 0xe0c);

class daNpcMoiR_Param_c {
public:
    /* 80A83240 */ ~daNpcMoiR_Param_c();

    static u8 const m[116];
};


#endif /* D_A_NPC_MOIR_H */
