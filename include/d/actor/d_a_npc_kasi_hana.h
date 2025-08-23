#ifndef D_A_NPC_KASI_HANA_H
#define D_A_NPC_KASI_HANA_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcKasiHana_c
 * @brief Hannah
 *
 * @details
 *
*/

struct daNpcKasiHana_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 track_start_dist;    // 追跡開始距離 - Track Start Distance
    /* 0x70 */ f32 track_stop_dist;     // 追跡停止距離 - Track Stop Distance
    /* 0x74 */ f32 track_spd;           // 追跡速度 - Track Speed
    /* 0x78 */ f32 escape_spd;          // 逃げる速度 - Escape Speed
};

class daNpcKasiHana_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
    /* 0x8 */ daNpcKasiHana_HIOParam param;
};

class daNpcKasiHana_Param_c {
public:
    /* 80A2067C */ virtual ~daNpcKasiHana_Param_c() {}

    static daNpcKasiHana_HIOParam const m;
};

class daNpcKasi_Mng_c {
public:
    /* 80A1AFAC */ void calcEscapeForm();
    /* 80A1B0D8 */ void calcCenterPos();
    /* 80A1B1C8 */ void getDistFromCenter();
    /* 80A1B35C */ void getOffsetFromLeader(cXyz const&, cXyz&);
    /* 80A1B410 */ void initPath(u8, u16);
    /* 80A1B48C */ void getPlNearPoint();
    /* 80A1B5F0 */ void getSygnalInfo();
    /* 80A1B628 */ void sendInfo();
    /* 80A1B6F8 */ void offTalk();
    /* 80A1B774 */ void chkTalk();
    /* 80A1B810 */ void chkFear();
    /* 80A1B884 */ void chkEscape();
    /* 80A1B920 */ void createHearts();
    /* 80A1BAAC */ void allDemoMove();
    /* 80A1BB24 */ void allDemoNotMove();
    /* 80A1BB9C */ void isMiniGamePlaying();
    /* 80A1BBE0 */ void schMemberActor();
    /* 80A1BC88 */ void schDanchoActor();
    /* 80A1BCF0 */ void deleteAllMember();
    /* 80A1BD6C */ void chgWeightHeavy();
    /* 80A1BDD8 */ void chgWeightLight();
    /* 80A2065C */ void getCenterPos();

    /* 0x00 */ daNpcF_ActorMngr_c mHanaActorMngr;
    /* 0x08 */ daNpcF_ActorMngr_c mKyuActorMngr;
    /* 0x10 */ daNpcF_ActorMngr_c mMichActorMngr;
    /* 0x18 */ daNpcF_ActorMngr_c mDanchoActorMngr;
    /* 0x20 */ int mSygnal;
    /* 0x24 */ cXyz mKyuPos;
    /* 0x30 */ cXyz mMichPos;
    /* 0x3C */ cXyz field_0x3c;
    /* 0x48 */ u8 field_0x48[0x4c - 0x48];
    /* 0x4C */ bool mIsPathInit;
    /* 0x4D */ u8 field_0x4d[0x50 - 0x4d];
    /* 0x50 */ daNpcF_Path_c mPath;
};

class daNpcKasiHana_c : public daNpcF_c {
public:
    typedef int (daNpcKasiHana_c::*actionFunc)(int);

    /* 80A1BE44 */ daNpcKasiHana_c();
    /* 80A1C0A4 */ ~daNpcKasiHana_c();
    /* 80A1C334 */ cPhs__Step Create();
    /* 80A1C5B0 */ int CreateHeap();
    /* 80A1C734 */ int Delete();
    /* 80A1C768 */ int Execute();
    /* 80A1C78C */ int Draw();
    /* 80A1C7D8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A1C964 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A1C984 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A1C9D0 */ void setParam();
    /* 80A1CA60 */ BOOL main();
    /* 80A1CD28 */ void setAttnPos();
    /* 80A1CED0 */ void setMotionAnm(int, f32);
    /* 80A1CFA0 */ void setMotion(int, f32, int);
    /* 80A1CFE8 */ int drawDbgInfo();
    /* 80A1CFF0 */ void reset();
    /* 80A1D238 */ void playMotion();
    /* 80A1D604 */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80A1D77C */ BOOL setAction(actionFunc);
    /* 80A1D824 */ void setLookMode(int);
    /* 80A1D848 */ void lookat();
    /* 80A1DA28 */ void step(s16, int);
    /* 80A1DB1C */ BOOL chkFindPlayer();
    /* 80A1DC00 */ void wait(int);
    /* 80A1E184 */ void chace_st(int);
    /* 80A1E228 */ void chace(int);
    /* 80A1E3AC */ void getChacePos();
    /* 80A1E4AC */ void turn(int);
    /* 80A1E578 */ void fear(int);
    /* 80A1E78C */ void srchWolfTag();
    /* 80A1E7F4 */ void _srch_escape_tag(void*, void*);
    /* 80A1E8C4 */ void getWolfPathNearIdx();
    /* 80A1E9F8 */ void talk(int);
    /* 80A1EB5C */ void demo(int);
    /* 80A1EE38 */ void escape(int);
    /* 80A1EF90 */ void cheer(int);
    /* 80A1F198 */ void _turn_to_link(s16);
    /* 80A1F1E4 */ void _turn_pos(cXyz const&, s16);
    /* 80A1F240 */ void actor_front_check(fopAc_ac_c*);
    /* 80A1F318 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A1F384 */ void _Evt_Kasi_Appear(int);
    /* 80A1F42C */ void _Evt_Kasi_Appear_CutInit(int const&);
    /* 80A1F50C */ void _Evt_Kasi_Appear_CutMain(int const&);
    /* 80A1F638 */ void _Evt_Kasi_Talk(int);
    /* 80A1F740 */ void _Evt_Kasi_Talk_CutInit(int const&);
    /* 80A1F860 */ void _Evt_Kasi_Talk_CutMain(int const&, int);
    /* 80A1F9F4 */ void _Evt_Kasi(int);
    /* 80A1FA9C */ void _Evt_Kasi_CutInit(int const&);
    /* 80A1FBC4 */ void _Evt_Kasi_CutMain(int const&);
    /* 80A1FD64 */ void _Evt_Kasi_Cheer(int);
    /* 80A1FE6C */ void _Evt_Kasi_Cheer_CutInit(int const&);
    /* 80A1FF78 */ void _Evt_Kasi_Cheer_CutMain(int const&, int);
    /* 80A2016C */ void _Evt_Kasi_Cheer2(int);
    /* 80A20244 */ void _Evt_Kasi_Cheer2_CutInit(int const&);
    /* 80A20350 */ void _Evt_Kasi_Cheer2_CutMain(int const&, int);
    /* 80A20678 */ void adjustShapeAngle();

    int getMessageNo() { return home.angle.x; }
    s8 getType() {
        s8 rv = fopAcM_GetParam(this) & 0xFF;
        
        if (rv == 0xFF) {
            rv = 0;
        }

        return rv;
    }

    static u8 mEvtSeqList[72];
    static u8 mTargetTag[4];
    static u8 mTargetTagDist[4];
    static u8 mWolfAngle[2 + 2 /* padding */];

private:
    /* 0x0B48 */ Z2CreatureCitizen mSound;
    /* 0x0BEC */ u8 field_0xbec[0xbf0 - 0xbec];
    /* 0x0BF0 */ daNpcF_Lookat_c mLookat;
    /* 0x0C8C */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0x0C94 */ daNpcF_Path_c mPath;
    /* 0x12C4 */ daNpcKasiHana_HIO_c* mHIO;
    /* 0x12C8 */ dCcD_Cyl mCyl;
    /* 0x1404 */ u8 mType;
    /* 0x1405 */ u8 field_0x1405;
    /* 0x1406 */ s16 mMode;
    /* 0x1408 */ actionFunc mAction;
    /* 0x1414 */ request_of_phase_process_class mPhases[3];
    /* 0x142C */ fpc_ProcID field_0x142c;
    /* 0x1430 */ u8 field_0x1430[0x1438 - 0x1430];
    /* 0x1438 */ int mMessageNo;
    /* 0x143C */ s16 mLookMode;
    /* 0x143E */ u8 field_0x143e[0x1440 - 0x143e];
    /* 0x1440 */ u8 field_0x1440;
    /* 0x1441 */ u8 field_0x1441;
    /* 0x1442 */ u8 field_0x1442;
    /* 0x1443 */ u8 field_0x1443;
    /* 0x1444 */ u8 field_0x1444;
    /* 0x1445 */ u8 field_0x1445;
    // /* 0x1446 */ u8 field_0x1446[0x1448 - 0x1446];
    /* 0x1448 */ daNpcKasi_Mng_c mKasiMng;
};

STATIC_ASSERT(sizeof(daNpcKasiHana_c) == 0x1ac8);

#endif /* D_A_NPC_KASI_HANA_H */
