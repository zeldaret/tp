#ifndef D_A_NPC_DOORBOY_H
#define D_A_NPC_DOORBOY_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcDoorBoy_c
 * @brief Door Boy (This isn't Soal?)
 *
 * @details
 *
*/

struct daNpcDoorBoy_HIOParam {
    /* 0x0 */ daNpcF_HIOParam common;
};

class daNpcDoorBoy_c : public daNpcF_c {
public:
    typedef bool (daNpcDoorBoy_c::*actionFunc)(void*);

    /* 809AAC8C */ daNpcDoorBoy_c();
    /* 809AAEA0 */ ~daNpcDoorBoy_c();
    /* 809AB088 */ cPhs__Step Create();
    /* 809AB320 */ int CreateHeap();
    /* 809AB4A4 */ int Delete();
    /* 809AB4D8 */ int Execute();
    /* 809AB4FC */ int Draw();
    /* 809AB578 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809AB704 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809AB724 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809AB770 */ void setMotion(int, f32, int);
    /* 809AB7B8 */ void reset();
    /* 809AB984 */ BOOL setAction(bool (daNpcDoorBoy_c::*)(void*));
    /* 809ABA2C */ bool wait(void*);
    /* 809AC064 */ void fear(void*);
    /* 809AC114 */ bool talk(void*);
    /* 809AC528 */ void demo(void*);
    /* 809AC6F4 */ void dummyTalk(void*);
    /* 809AC994 */ void setParam();
    /* 809ACA58 */ BOOL main();
    /* 809ACC5C */ void setAttnPos();
    /* 809ACE18 */ void lookat();
    /* 809ACFF8 */ void setMotionAnm(int, f32);
    /* 809AD0C8 */ BOOL drawDbgInfo();
    /* 809AD938 */ void adjustShapeAngle();

    inline u16 getMessageNo() { return fopAcM_GetParam(this) >> 8; }
    inline bool chkFindPlayer();
    inline void setLookMode(int);
    inline BOOL step(s16, int);

    static u8 mEvtSeqList[12];

private:
    /* 0xB48 */ Z2CreatureCitizen mSound;
    /* 0xBEC */ u8 field_0xbec[0xbf0 - 0xbec];
    /* 0xBF0 */ daNpcF_Lookat_c mLookAt;
    /* 0xC8C */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC95 */ u8 field_0xc95[0xc98 - 0xc95];
    /* 0xC98 */ dCcD_Cyl field_0xc98;
    /* 0xDD4 */ actionFunc mAction;
    /* 0xDE0 */ request_of_phase_process_class mPhases[2];
    /* 0xDF0 */ int field_0xdf0;
    /* 0xDF4 */ int field_0xdf4;
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int mMessageNo;
    /* 0xE00 */ s16 mLookMode;
    /* 0xE02 */ s16 field_0xe02;
    /* 0xE04 */ s16 mMode;
};

STATIC_ASSERT(sizeof(daNpcDoorBoy_c) == 0xe08);

class daNpcDoorBoy_Param_c {
public:
    /* 809AD93C */ ~daNpcDoorBoy_Param_c();

    static daNpcDoorBoy_HIOParam const m;
};


#endif /* D_A_NPC_DOORBOY_H */
