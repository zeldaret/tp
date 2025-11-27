#ifndef D_A_NPC_BLUE_NS_H
#define D_A_NPC_BLUE_NS_H

#include "d/actor/d_a_npc4.h"
#include "d/actor/d_a_tag_yami.h"
#include "d/actor/d_a_obj_carry.h"

/**
 * @ingroup actors-npcs
 * @class daNpcBlueNS_c
 * @brief Shadow Beast (Twili)
 *
 * @details
 *
 */
class daNpcBlueNS_c : public daNpcF_c {
public:
    typedef BOOL (daNpcBlueNS_c::*EventFn)(int);

    /* 8096896C */ daNpcBlueNS_c();
    
    /* 80968D44 */ int Create();
    /* 80968FE4 */ int CreateHeap();
    /* 80969138 */ int isDelete();
    /* 809691A8 */ int Delete();
    /* 809691DC */ int Execute();
    /* 80969200 */ int _Execute();
    /* 80969468 */ void callEvt_changeYami();
    /* 80969504 */ fpc_ProcID create_Yamijin(int);
    /* 809695F0 */ BOOL col_check();
    /* 80969698 */ BOOL holyball_check_main(fopAc_ac_c*);
    /* 80969870 */ int Draw();
    /* 809699D0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80969B68 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80969B88 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80969C48 */ void srchActor();
    /* 80969C90 */ void srchHollyBall();
    /* 80969CF8 */ void srchTagYami();
    /* 80969D60 */ static void* _search_Tag(void*, void*);
    /* 80969DE4 */ static void* _search_HollyBall_Y(void*, void*);
    /* 80969E9C */ static void* _search_HollyBall_G(void*, void*);
    /* 8096A358 */ void reset();
    /* 8096A518 */ void playMotion();
    /* 8096A750 */ int setAction(int (daNpcBlueNS_c::*)(int));
    /* 8096A7F8 */ void setLookMode(int);
    /* 8096A81C */ void lookat();
    /* 8096A9FC */ BOOL step(s16, int);
    /* 8096AAF0 */ BOOL chkFindPlayer();
    /* 8096ABD4 */ int wait(int);
    /* 8096AD70 */ int down(int);
    /* 8096AE5C */ int talk(int);
    /* 8096AFC8 */ int demo(int);
    /* 8096B204 */ void ChgPtclDisp();
    /* 8096B320 */ void downSE();
    /* 8096B3D8 */ void lightsowrdSE();
    /* 8096B490 */ void appearSE();
    /* 8096B548 */ BOOL _Evt_ChgYami_Chibi(int);
    /* 8096B5F0 */ BOOL _Evt_ChgYami_Chibi_CutInit(const int&);
    /* 8096B688 */ BOOL _Evt_ChgYami_Chibi_CutMain(const int&);
    /* 8096B7B8 */ BOOL _Evt_ChgYami_Debu(int);
    /* 8096B860 */ BOOL _Evt_ChgYami_Debu_CutInit(const int&);
    /* 8096B8F8 */ BOOL _Evt_ChgYami_Debu_CutMain(const int&);
    /* 8096BA28 */ BOOL _Evt_ChgYami_Noppo(int);
    /* 8096BAD0 */ BOOL _Evt_ChgYami_Noppo_CutInit(const int&);
    /* 8096BB68 */ BOOL _Evt_ChgYami_Noppo_CutMain(const int&);
    /* 8096BC98 */ BOOL _Evt_ChgYami_STNoppo(int);
    /* 8096BD40 */ BOOL _Evt_ChgYami_STNoppo_CutInit(const int&);
    /* 8096BDD8 */ BOOL _Evt_ChgYami_STNoppo_CutMain(const int&);
    
    /* 80968B80 */ virtual ~daNpcBlueNS_c();
    /* 80969BD4 */ virtual void setParam();
    /* 80969F54 */ virtual BOOL main();
    /* 8096C8B0 */ virtual void adjustShapeAngle() {}
    /* 8096A090 */ virtual void setAttnPos();
    /* 8096A238 */ virtual void setMotionAnm(int, f32);
    /* 8096A308 */ virtual void setMotion(int, f32, int);
    /* 8096A350 */ virtual BOOL drawDbgInfo();

    int getType() { return fopAcM_GetParam(this) & 0xFF; }
    u8 getSwitchBitNo() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    u8 _chk_TagPrm(fopAc_ac_c* i_tag) { return (fopAcM_GetParam(i_tag) & 0xFF) == mType % 3; }

    BOOL holyball_check_yellow() { return holyball_check_main(mpHolyBallY); }
    BOOL holyball_check_green() { return holyball_check_main(mpHolyBallG); }
    BOOL holyball_check() { return holyball_check_yellow() || holyball_check_green(); }

    int getFlowNodeNo() {
        int var_r30;

        u16 temp_r0 = home.angle.x;
        if (temp_r0 == 0xFFFF) {
            var_r30 = -1;
        } else {
            var_r30 = temp_r0;
        }

        return var_r30;
    }

    static EventFn mEvtSeqList[];

    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ u8 field_0xBD8[0xBDC - 0xBD8];
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC80 */ u8 field_0xC80[0xC84 - 0xC80];
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ u16 field_0xdc0;
    /* 0xDC4 */ int (daNpcBlueNS_c::*mAction)(int);
    /* 0xDD0 */ request_of_phase_process_class mPhase[1];
    /* 0xDD8 */ int field_0xdd8;
    /* 0xDDC */ int field_0xddc;
    /* 0xDE0 */ int field_0xde0;
    /* 0xDE4 */ int mFlowNodeNo;
    /* 0xDE8 */ s16 mLookMode;
    /* 0xDEA */ s16 field_0xdea;
    /* 0xDEC */ u8 field_0xdec;
    /* 0xDF0 */ daObjCarry_c* mpHolyBallY;
    /* 0xDF4 */ daObjCarry_c* mpHolyBallG;
    /* 0xDF8 */ daTagYami_c* mpTagYami;
    /* 0xDFC */ fopAc_ac_c* mpNpcYami;
    /* 0xE00 */ fpc_ProcID mYamijinId;
    /* 0xE04 */ int field_0xe04;
    /* 0xE08 */ int field_0xe08;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ s8 field_0xe10;
    /* 0xE11 */ u8 mType;
    /* 0xE12 */ s8 field_0xe12;
};

STATIC_ASSERT(sizeof(daNpcBlueNS_c) == 0xe14);

struct daNpcBlueNS_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 field_0x6c;
};

class daNpcBlueNS_Param_c {
public:
    /* 8096C8B4 */ virtual ~daNpcBlueNS_Param_c() {}

    static const daNpcBlueNS_HIOParam m;
};


#endif /* D_A_NPC_BLUE_NS_H */
