#ifndef D_A_NPC_BLUE_NS_H
#define D_A_NPC_BLUE_NS_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcBlueNS_c
 * @brief Shadow Beast (Twili)
 *
 * @details
 *
 */
class daNpcBlueNS_c : public fopAc_ac_c {
public:
    /* 8096896C */ daNpcBlueNS_c();
    /* 80968B80 */ ~daNpcBlueNS_c();
    /* 80968D44 */ void Create();
    /* 80968FE4 */ void CreateHeap();
    /* 80969138 */ void isDelete();
    /* 809691A8 */ void Delete();
    /* 809691DC */ void Execute();
    /* 80969200 */ void _Execute();
    /* 80969468 */ void callEvt_changeYami();
    /* 80969504 */ void create_Yamijin(int);
    /* 809695F0 */ void col_check();
    /* 80969698 */ void holyball_check_main(fopAc_ac_c*);
    /* 80969870 */ void Draw();
    /* 809699D0 */ void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80969B68 */ void createHeapCallBack(fopAc_ac_c*);
    /* 80969B88 */ void ctrlJointCallBack(J3DJoint*, int);
    /* 80969BD4 */ void setParam();
    /* 80969C48 */ void srchActor();
    /* 80969C90 */ void srchHollyBall();
    /* 80969CF8 */ void srchTagYami();
    /* 80969D60 */ void _search_Tag(void*, void*);
    /* 80969DE4 */ void _search_HollyBall_Y(void*, void*);
    /* 80969E9C */ void _search_HollyBall_G(void*, void*);
    /* 80969F54 */ void main();
    /* 8096A090 */ void setAttnPos();
    /* 8096A238 */ void setMotionAnm(int, f32);
    /* 8096A308 */ void setMotion(int, f32, int);
    /* 8096A350 */ bool drawDbgInfo();
    /* 8096A358 */ void reset();
    /* 8096A518 */ void playMotion();
    /* 8096A750 */ void setAction(int (daNpcBlueNS_c::*)(int));
    /* 8096A7F8 */ void setLookMode(int);
    /* 8096A81C */ void lookat();
    /* 8096A9FC */ void step(s16, int);
    /* 8096AAF0 */ void chkFindPlayer();
    /* 8096ABD4 */ void wait(int);
    /* 8096AD70 */ void down(int);
    /* 8096AE5C */ void talk(int);
    /* 8096AFC8 */ void demo(int);
    /* 8096B204 */ void ChgPtclDisp();
    /* 8096B320 */ void downSE();
    /* 8096B3D8 */ void lightsowrdSE();
    /* 8096B490 */ void appearSE();
    /* 8096B548 */ void _Evt_ChgYami_Chibi(int);
    /* 8096B5F0 */ void _Evt_ChgYami_Chibi_CutInit(int const&);
    /* 8096B688 */ void _Evt_ChgYami_Chibi_CutMain(int const&);
    /* 8096B7B8 */ void _Evt_ChgYami_Debu(int);
    /* 8096B860 */ void _Evt_ChgYami_Debu_CutInit(int const&);
    /* 8096B8F8 */ void _Evt_ChgYami_Debu_CutMain(int const&);
    /* 8096BA28 */ void _Evt_ChgYami_Noppo(int);
    /* 8096BAD0 */ void _Evt_ChgYami_Noppo_CutInit(int const&);
    /* 8096BB68 */ void _Evt_ChgYami_Noppo_CutMain(int const&);
    /* 8096BC98 */ void _Evt_ChgYami_STNoppo(int);
    /* 8096BD40 */ void _Evt_ChgYami_STNoppo_CutInit(int const&);
    /* 8096BDD8 */ void _Evt_ChgYami_STNoppo_CutMain(int const&);
    /* 8096C8B0 */ void adjustShapeAngle();

    static u8 mEvtSeqList[84];

private:
    /* 0x568 */ u8 field_0x568[0xe14 - 0x568];
};

STATIC_ASSERT(sizeof(daNpcBlueNS_c) == 0xe14);

class daNpcBlueNS_Param_c {
public:
    /* 8096C8B4 */ ~daNpcBlueNS_Param_c();

    static u8 const m[112];
};


#endif /* D_A_NPC_BLUE_NS_H */
