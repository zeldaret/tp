#ifndef D_A_NPC_PRAYER_H
#define D_A_NPC_PRAYER_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpcPray_c : public fopAc_ac_c {
public:
    /* 80AB2DEC */ daNpcPray_c();
    /* 80AB3000 */ ~daNpcPray_c();
    /* 80AB3204 */ void Create();
    /* 80AB348C */ void CreateHeap();
    /* 80AB3610 */ void Delete();
    /* 80AB3644 */ void Execute();
    /* 80AB3668 */ void Draw();
    /* 80AB36A8 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AB3834 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80AB3854 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80AB38A0 */ void setParam();
    /* 80AB390C */ void main();
    /* 80AB3964 */ void setAttnPos();
    /* 80AB3B0C */ void setMotionAnm(int, f32);
    /* 80AB3BDC */ void setMotion(int, f32, int);
    /* 80AB3C24 */ bool drawDbgInfo();
    /* 80AB3C2C */ void reset();
    /* 80AB3DBC */ void playMotion();
    /* 80AB3F54 */ void setAction(bool (daNpcPray_c::*)(void*));
    /* 80AB3FFC */ void setLookMode(int);
    /* 80AB4020 */ void lookat();
    /* 80AB4200 */ void step(s16, int);
    /* 80AB42F4 */ void chkFindPlayer();
    /* 80AB43D8 */ void wait(void*);
    /* 80AB4674 */ void fear(void*);
    /* 80AB4740 */ void talk(void*);
    /* 80AB498C */ void demo(void*);
    /* 80AB4B20 */ void createHeart();
    /* 80AB4BFC */ void _Evt_GetHeart(int);
    /* 80AB4CA4 */ void _Evt_GetHeart_CutInit(int const&);
    /* 80AB4D34 */ void _Evt_GetHeart_CutMain(int const&);
    /* 80AB5798 */ void adjustShapeAngle();

    static u8 mEvtSeqList[24];

private:
    /* 0x568 */ u8 field_0x568[0xe10 - 0x568];
};
STATIC_ASSERT(sizeof(daNpcPray_c) == 0xe10);

class daNpcPray_Param_c {
public:
    /* 80AB579C */ ~daNpcPray_Param_c();

    static u8 const m[108];
};


#endif /* D_A_NPC_PRAYER_H */
