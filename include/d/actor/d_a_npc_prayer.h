#ifndef D_A_NPC_PRAYER_H
#define D_A_NPC_PRAYER_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpcPray_c
 * @brief Charlo
 *
 * @details
 *
 */
class daNpcPray_c : public daNpcF_c {
public:
    typedef BOOL (daNpcPray_c::*EvtSeq)(int);

    /* 80AB2DEC */ daNpcPray_c();
    /* 80AB3204 */ int Create();
    /* 80AB348C */ int CreateHeap();
    /* 80AB3610 */ int Delete();
    /* 80AB3644 */ int Execute();
    /* 80AB3668 */ int Draw();
    /* 80AB36A8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AB3834 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AB3854 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AB3C2C */ void reset();
    /* 80AB3DBC */ void playMotion();
    /* 80AB3F54 */ int setAction(bool (daNpcPray_c::*)(void*));
    /* 80AB3FFC */ void setLookMode(int);
    /* 80AB4020 */ void lookat();
    /* 80AB4200 */ bool step(s16, int);
    /* 80AB42F4 */ bool chkFindPlayer();
    /* 80AB43D8 */ bool wait(void*);
    /* 80AB4674 */ bool fear(void*);
    /* 80AB4740 */ bool talk(void*);
    /* 80AB498C */ bool demo(void*);
    /* 80AB4B20 */ fpc_ProcID createHeart();
    /* 80AB4BFC */ BOOL _Evt_GetHeart(int);
    /* 80AB4CA4 */ BOOL _Evt_GetHeart_CutInit(int const&);
    /* 80AB4D34 */ BOOL _Evt_GetHeart_CutMain(int const&);
    
    /* 80AB3000 */ virtual ~daNpcPray_c();
    /* 80AB38A0 */ virtual void setParam();
    /* 80AB390C */ virtual BOOL main();
    /* 80AB5798 */ virtual void adjustShapeAngle() {}
    /* 80AB3964 */ virtual void setAttnPos();
    /* 80AB3B0C */ virtual void setMotionAnm(int, f32);
    /* 80AB3BDC */ virtual void setMotion(int, f32, int);
    /* 80AB3C24 */ virtual BOOL drawDbgInfo();

    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF; } 

    static EvtSeq mEvtSeqList[];

private:
    /* 0xB48 */ Z2CreatureCitizen mSound;
    /* 0xBEC */ u8 field_0xBEC[0xBF0 - 0xBEC];
    /* 0xBF0 */ daNpcF_Lookat_c mLookat;
    /* 0xC8C */ daNpcF_ActorMngr_c mActorMngr[2];
    /* 0xC9C */ u8 field_0xC9C[0xCA0 - 0xC9C];
    /* 0xCA0 */ dCcD_Cyl mCcCyl;
    /* 0xDDC */ bool (daNpcPray_c::*mAction)(void*);
    /* 0xDE8 */ request_of_phase_process_class mPhase[2];
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int mMessageNo;
    /* 0xE08 */ s16 mLookMode;
    /* 0xE0A */ s16 field_0xe0a;
    /* 0xE0C */ u16 mActionMode;
    /* 0xE0E */ u8 field_0xe0e;
};

STATIC_ASSERT(sizeof(daNpcPray_c) == 0xe10);

struct daNpcPray_HIOParam {
    daNpcF_HIOParam common;
};

class daNpcPray_Param_c {
public:
    /* 80AB579C */ virtual ~daNpcPray_Param_c() {}

    static const daNpcPray_HIOParam m;
};


#endif /* D_A_NPC_PRAYER_H */
