#ifndef D_A_NPC_BOUS_H
#define D_A_NPC_BOUS_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcBouS_c
 * @brief Mayor Bo (inside house)
 *
 * @details
 *
 */
class daNpcBouS_c : public fopAc_ac_c {
public:
    /* 8097354C */ daNpcBouS_c();
    /* 80973760 */ ~daNpcBouS_c();
    /* 80973948 */ void Create();
    /* 80973B9C */ void CreateHeap();
    /* 80973FC8 */ void Delete();
    /* 80973FFC */ void Execute();
    /* 80974020 */ void Draw();
    /* 80974090 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 809742BC */ void createHeapCallBack(fopAc_ac_c*);
    /* 809742DC */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80974328 */ void setExpressionAnm(int, bool);
    /* 80974514 */ void setExpressionBtp(int);
    /* 809745F4 */ bool setMotionAnm(int, f32);
    /* 80974730 */ void reset();
    /* 809748F0 */ void setAction(bool (daNpcBouS_c::*)(void*));
    /* 80974A04 */ void checkInstructionTag(fopAc_ac_c*);
    /* 80974A28 */ void wait(void*);
    /* 809750BC */ void setMotion(int, f32, int);
    /* 80975104 */ void setExpression(int, f32);
    /* 80975130 */ void talk(void*);
    /* 80975748 */ void demo(void*);
    /* 80975930 */ void instruction(void*);
    /* 80975ED8 */ void checkIntroDemoStart();
    /* 80975FDC */ void EvCut_BousIntroSumo1(int);
    /* 80976284 */ void EvCut_BousIntroSumo2(int);
    /* 80976654 */ void EvCut_BousIntroSumo3(int);
    /* 80976C00 */ void setParam();
    /* 80976C9C */ void main();
    /* 80976EEC */ void playMotion();
    /* 80977368 */ void ctrlBtk();
    /* 80977444 */ void setAttnPos();
    /* 809778D8 */ void lookat();
    /* 80977AB8 */ bool drawDbgInfo();
    /* 80977AC0 */ void drawOtherMdls();
    /* 809783A0 */ void adjustShapeAngle();

    void setHome() { 
        current.pos = home.pos;
        old.pos = current.pos;
        shape_angle.y = home.angle.y;
    }

    void offDispFlag() { mDispFlag = 0; }
    void onDispFlag() { mDispFlag = 1; }

    void setMessageNo(s16 i_msgNo) {
        mMsgNo = i_msgNo;
    }

    void setForcibleTalk() {
        mForcibleTalk = 1;
    }

    static u8 mEvtSeqList[48];

private:
    /* 0x568 */ u8 field_0x568[0xdf0 - 0x568];
    /* 0xDF0 */ int mMsgNo;
    /* 0xDF4 */ u8 field_0xdf4[0xdfe - 0xdf4];
    /* 0xDFE */ u8 mForcibleTalk;
    /* 0xDFF */ u8 mDispFlag;
};

STATIC_ASSERT(sizeof(daNpcBouS_c) == 0xe00);

class daNpcBouS_Param_c {
public:
    /* 809783A4 */ ~daNpcBouS_Param_c();

    static u8 const m[140];
};


#endif /* D_A_NPC_BOUS_H */
