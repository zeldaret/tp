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

struct daNpcBouS_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 excitement_level;
    /* 0x70 */ f32 talk_dist;
    /* 0x74 */ f32 gaze_x;
    /* 0x78 */ f32 gaze_y;
    /* 0x7C */ f32 gaze_z;
    /* 0x80 */ f32 eye_dist;
    /* 0x84 */ s16 eye_angle_x;
    /* 0x86 */ s16 eye_angle_y;
    /* 0x88 */ s16 field_0x88;
};

class daNpcBouS_Param_c {
public:
    /* 809783A4 */ ~daNpcBouS_Param_c();

    static daNpcBouS_HIOParam const m;
};

#if DEBUG
class daNpcBouS_HIO_c : public mDoHIO_entry_c {
public:
    daNpcBouS_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);
    
    /* 0x8 */ daNpcBouS_HIOParam m;
};
#define NPC_BOUS_HIO_CLASS daNpcBouS_HIO_c
#else
#define NPC_BOUS_HIO_CLASS daNpcBouS_Param_c
#endif

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

#endif /* D_A_NPC_BOUS_H */
