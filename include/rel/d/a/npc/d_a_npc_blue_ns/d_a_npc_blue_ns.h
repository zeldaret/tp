#ifndef D_A_NPC_BLUE_NS_H
#define D_A_NPC_BLUE_NS_H

#include "d/a/d_a_npc.h"

class daTagYami_c;
class daNpc_yamiS_c;

//#define INHERIT_NPC

/**
 * @ingroup actors-npcs
 * @class daNpcBlueNS_c
 * @brief Shadow Beast (Twili)
 *
 * @details
 *
 */
class daNpcBlueNS_c : public 
#ifdef INHERIT_NPC
daNpcF_c 
#else
fopAc_ac_c
#endif
{
public:
    typedef int (daNpcBlueNS_c::*ActionFunc)(int);
    typedef int (daNpcBlueNS_c::*EventSeqFunc)(int);

    enum LookAtMode {
        LOOK_AT_0,
        LOOK_AT_1,
        LOOK_AT_2,
        LOOK_AT_3,
    };

    /* 8096896C */ daNpcBlueNS_c();
    /* 80968B80 */ ~daNpcBlueNS_c();
    /* 80968D44 */ int Create();
    /* 80968FE4 */ int CreateHeap();
    /* 80969138 */ int isDelete();
    /* 809691A8 */ int Delete();
    /* 809691DC */ int Execute();
    /* 80969200 */ void _Execute();
    /* 80969468 */ void callEvt_changeYami();
    /* 80969504 */ int create_Yamijin(int);
    /* 809695F0 */ int col_check();
    /* 80969698 */ int holyball_check_main(fopAc_ac_c*);
    /* 80969870 */ int Draw();
    /* 809699D0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80969B68 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80969B88 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80969BD4 */ void setParam();
    /* 80969C48 */ void srchActor();
    /* 80969C90 */ void srchHollyBall();
    /* 80969CF8 */ void srchTagYami();
    /* 80969D60 */ static void* _search_Tag(void*, void*);
    /* 80969DE4 */ static void* _search_HollyBall_Y(void*, void*);
    /* 80969E9C */ static void* _search_HollyBall_G(void*, void*);
    /* 80969F54 */ BOOL main();
    /* 8096A090 */ void setAttnPos();
    /* 8096A238 */ void setMotionAnm(int, f32);
    /* 8096A308 */ void setMotion(int, f32, int);
    /* 8096A350 */ BOOL drawDbgInfo();
    /* 8096A358 */ void reset();
    /* 8096A518 */ void playMotion();
    /* 8096A750 */ int setAction(ActionFunc);
    /* 8096A7F8 */ void setLookMode(int);
    /* 8096A81C */ void lookat();
    /* 8096A9FC */ int step(s16, int);
    /* 8096AAF0 */ int chkFindPlayer();
    /* 8096ABD4 */ int wait(int);
    /* 8096AD70 */ int down(int);
    /* 8096AE5C */ int talk(int);
    /* 8096AFC8 */ int demo(int);
    /* 8096B204 */ void ChgPtclDisp();
    /* 8096B320 */ void downSE();
    /* 8096B3D8 */ void lightsowrdSE();
    /* 8096B490 */ void appearSE();
    /* 8096B548 */ int _Evt_ChgYami_Chibi(int);
    /* 8096B5F0 */ int _Evt_ChgYami_Chibi_CutInit(int const&);
    /* 8096B688 */ int _Evt_ChgYami_Chibi_CutMain(int const&);
    /* 8096B7B8 */ int _Evt_ChgYami_Debu(int);
    /* 8096B860 */ int _Evt_ChgYami_Debu_CutInit(int const&);
    /* 8096B8F8 */ int _Evt_ChgYami_Debu_CutMain(int const&);
    /* 8096BA28 */ int _Evt_ChgYami_Noppo(int);
    /* 8096BAD0 */ int _Evt_ChgYami_Noppo_CutInit(int const&);
    /* 8096BB68 */ int _Evt_ChgYami_Noppo_CutMain(int const&);
    /* 8096BC98 */ int _Evt_ChgYami_STNoppo(int);
    /* 8096BD40 */ int _Evt_ChgYami_STNoppo_CutInit(int const&);
    /* 8096BDD8 */ int _Evt_ChgYami_STNoppo_CutMain(int const&);
    /* 8096C8B0 */ void adjustShapeAngle();

    u8 getType() { return fopAcM_GetParam(this); }
    u8 getSwitchBitNo() { return fopAcM_GetParam(this) >> 8; }

    int getFlowNodeNo() {
        return ((u16)home.angle.x == 0xffff) ? -1 : (u16)home.angle.x;
    }

    int _chk_TagPrm(fopAc_ac_c *param_1) {
        return (fopAcM_GetParam(param_1) & 0xff) == field_0xe11 % 3;
    }

    int holyball_check_yellow() {
        return holyball_check_main(field_0xdf0);
    }

    int holyball_check_green() {
        return holyball_check_main(field_0xdf4);
    }

    int holyball_check() {
        return holyball_check_yellow() || holyball_check_green();
    }

    #ifdef NONMATCHING
    static EventSeqFunc mEvtSeqList[7];
    #else
    static u8 mEvtSeqList[84];
    #endif

private:
    #ifdef INHERIT_NPC
    #else
    /* 0xB48 */ u8 field_0x568[0xB48 - 0x568];
    #endif
    /* 0xB48 */ Z2Creature mCreature;
    /* 0xBD8 */ u32 field_0xbd8;
    /* 0xBDC */ daNpcF_Lookat_c mLookAt;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[1];
    /* 0xC80 */ u32 field_0xc80;
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ u16 field_0xdc0;
    /* 0xDC4 */ ActionFunc field_0xdc4;
    /* 0xDD0 */ request_of_phase_process_class mPhase[1];
    /* 0xDD8 */ int field_0xdd8;
    /* 0xDDC */ int field_0xddc;
    /* 0xDE0 */ int field_0xde0;
    /* 0xDE4 */ int field_0xde4;
    /* 0xDE8 */ s16 mLookMode;
    /* 0xDEA */ s16 field_0xdea;
    /* 0xDEC */ u8 field_0xdec;
    /* 0xDF0 */ fopAc_ac_c* field_0xdf0;
    /* 0xDF4 */ fopAc_ac_c* field_0xdf4;
    /* 0xDF8 */ daTagYami_c* field_0xdf8;
    /* 0xDFC */ fopAc_ac_c* mYamiActor;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ s8 field_0xe10;
    /* 0xE11 */ u8 field_0xe11;
    /* 0xE12 */ s8 field_0xe12;
    /* 0xE13 */ u8 field_0xe13;
};

STATIC_ASSERT(sizeof(daNpcBlueNS_c) == 0xe14);

class daNpcBlueNS_Param_c {
public:
    /* 8096C8B4 */ ~daNpcBlueNS_Param_c();
    struct Data {
        f32 field_0x00[18];
        s16 field_0x48[4];
        f32 field_0x50[4];
        s16 field_0x60[4];
        f32 field_0x68[2];
    };

    static Data const m;
};


#endif /* D_A_NPC_BLUE_NS_H */
