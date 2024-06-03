#ifndef D_A_NPC_CHAT_H
#define D_A_NPC_CHAT_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpcChat_c : public fopAc_ac_c {
public:
    /* 8098084C */ daNpcChat_c();
    /* 80980A60 */ ~daNpcChat_c();
    /* 80980C1C */ void NpcCreate(int);
    /* 80980E20 */ void getObjNum();
    /* 80980F88 */ void ObjCreate(int);
    /* 80980FC8 */ void ChairCreate(f32);
    /* 80981108 */ void isM_();
    /* 80981140 */ void loadResrc(int, int);
    /* 80981280 */ void getNpcMdlDataP(int);
    /* 809812FC */ void getObjMdlDataP(int);
    /* 80981374 */ void getTexAnmP(int);
    /* 809813E8 */ void removeResrc(int, int);
    /* 809814DC */ void setAttention(int);
    /* 80981E90 */ void Create();
    /* 809822A0 */ void CreateHeap();
    /* 809823B4 */ void Delete();
    /* 809823E8 */ void Execute();
    /* 809824CC */ void Draw();
    /* 8098250C */ void draw(int, int, f32, _GXColorS10*, int);
    /* 80982780 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80982A98 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80982AB8 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80982B60 */ void searchGroup();
    /* 80982C10 */ void appearTimeCheck();
    /* 80982D20 */ void appearCheck();
    /* 80982EB4 */ void setParam();
    /* 80982F4C */ void main();
    /* 80982FA4 */ void setAttnPos();
    /* 809830EC */ void setExpressionBtp(int);
    /* 80983168 */ void setMotionAnm(int, f32);
    /* 80983584 */ void setMotion(int, f32, int);
    /* 809835C8 */ bool drawDbgInfo();
    /* 809835D0 */ void drawOtherMdls();
    /* 809837A4 */ void getTalkMotionNo();
    /* 809837C0 */ void getLookPlayerCheck();
    /* 809837EC */ void reset();
    /* 809839E0 */ void playMotion();
    /* 80984DD0 */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80984F34 */ void setAction(bool (daNpcChat_c::*)(void*));
    /* 80984FDC */ void step(s16, int);
    /* 809850D0 */ void setTalkMember(daNpcChat_c*);
    /* 80985104 */ void wait(void*);
    /* 8098552C */ void fear(void*);
    /* 809856C8 */ void talk(void*);
    /* 80985A84 */ void demo(void*);
    /* 8098692C */ void adjustShapeAngle();

    static u8 mEvtSeqList[12];

private:
    /* 0x568 */ u8 field_0x568[0xe54 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcChat_c) == 0xe54);

class daNpcChat_Param_c {
public:
    /* 80986930 */ ~daNpcChat_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_CHAT_H */
