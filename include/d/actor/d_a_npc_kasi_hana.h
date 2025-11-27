#ifndef D_A_NPC_KASI_HANA_H
#define D_A_NPC_KASI_HANA_H

#include "d/actor/d_a_npc4.h"
#include "d/actor/d_a_tag_escape.h"

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

class daNpcKasiHana_Param_c {
public:
    /* 80A2067C */ virtual ~daNpcKasiHana_Param_c() {}

    static daNpcKasiHana_HIOParam const m;
};

#if DEBUG
class daNpcKasiHana_HIO_c : public mDoHIO_entry_c {
public:
    daNpcKasiHana_HIO_c();
    void genMessage(JORMContext*);

    daNpcKasiHana_HIOParam m;
};

#define NPC_KASI_HANA_HIO_CLASS daNpcKasiHana_HIO_c
#else
#define NPC_KASI_HANA_HIO_CLASS daNpcKasiHana_Param_c
#endif

class daNpcKasi_Mng_c {
public:
    daNpcKasi_Mng_c() {
        mIsPathInit = false;
        mCenterPos.set(0.0f, 0.0f, 0.0f);
        mSygnal = 0;
    }
    ~daNpcKasi_Mng_c() {}
    /* 80A1AFAC */ void calcEscapeForm();
    /* 80A1B0D8 */ BOOL calcCenterPos();
    /* 80A1B1C8 */ f32 getDistFromCenter();
    /* 80A1B35C */ void getOffsetFromLeader(cXyz const&, cXyz&);
    /* 80A1B410 */ void initPath(u8, u16);
    /* 80A1B48C */ int getPlNearPoint();
    /* 80A1B5F0 */ int getSygnalInfo();
    /* 80A1B628 */ void sendInfo();
    /* 80A1B6F8 */ void offTalk();
    /* 80A1B774 */ BOOL chkTalk();
    /* 80A1B810 */ BOOL chkFear();
    /* 80A1B884 */ BOOL chkEscape();
    /* 80A1B920 */ BOOL createHearts();
    /* 80A1BAAC */ void allDemoMove();
    /* 80A1BB24 */ void allDemoNotMove();
    /* 80A1BB9C */ BOOL isMiniGamePlaying();
    /* 80A1BBE0 */ void schMemberActor();
    /* 80A1BC88 */ void schDanchoActor();
    /* 80A1BCF0 */ void deleteAllMember();
    /* 80A1BD6C */ void chgWeightHeavy();
    /* 80A1BDD8 */ void chgWeightLight();
    /* 80A2065C */ cXyz getCenterPos() { return mCenterPos; }

    void setKyuPos(const cXyz& i_pos) { mKyuPos = i_pos; }
    void setMichPos(const cXyz& i_pos) { mMichPos = i_pos; }
    BOOL chkSygnal(int param_1) { return mSygnal & param_1; }
    void SygnalClear() { mSygnal = 0; }
    void onSygnal(int param_1) { mSygnal |= param_1; }
    void setHanaActor(fopAc_ac_c* a_this) { if (a_this != NULL) mHanaActorMngr.entry(a_this); }
    BOOL isPathInit() { return mIsPathInit; }
    fopAc_ac_c* getHanaActor() { return mHanaActorMngr.getActorP(); }
    fopAc_ac_c* getKyuActor() { return mKyuActorMngr.getActorP(); }
    fopAc_ac_c* getMichActor() { return mMichActorMngr.getActorP(); }

    void setKyuActor(fopAc_ac_c* kyu_p) {
        if (kyu_p != NULL) {
            mKyuActorMngr.entry(kyu_p);
        }
    }

    void setMichActor(fopAc_ac_c* mich_p) {
        if (mich_p != NULL) {
            mMichActorMngr.entry(mich_p);
        }
    }

    void setDanchoActor(fopAc_ac_c* dancho_p) {
        if (dancho_p != NULL) {
            mDanchoActorMngr.entry(dancho_p);
        }
    }

    /* 0x00 */ daNpcF_ActorMngr_c mHanaActorMngr;
    /* 0x08 */ daNpcF_ActorMngr_c mKyuActorMngr;
    /* 0x10 */ daNpcF_ActorMngr_c mMichActorMngr;
    /* 0x18 */ daNpcF_ActorMngr_c mDanchoActorMngr;
    /* 0x20 */ int mSygnal;
    /* 0x24 */ cXyz mKyuPos;
    /* 0x30 */ cXyz mMichPos;
    /* 0x3C */ cXyz mCenterPos;
    /* 0x48 */ int mPlPoint;
    /* 0x4C */ bool mIsPathInit;
    /* 0x50 */ daNpcF_Path_c mPath;
};

class daNpcKasiHana_c : public daNpcF_c {
public:
    typedef int (daNpcKasiHana_c::*actionFunc)(int);
    typedef BOOL (daNpcKasiHana_c::*cutFunc)(int);
    typedef BOOL (daNpcKasiHana_c::*EventFn)(int);

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
    /* 80A1DA28 */ BOOL step(s16, int);
    /* 80A1DB1C */ BOOL chkFindPlayer();
    /* 80A1DC00 */ int wait(int);
    /* 80A1E184 */ int chace_st(int);
    /* 80A1E228 */ int chace(int);
    /* 80A1E3AC */ cXyz getChacePos();
    /* 80A1E4AC */ int turn(int);
    /* 80A1E578 */ int fear(int);
    /* 80A1E78C */ daTagEscape_c* srchWolfTag();
    /* 80A1E7F4 */ static void* _srch_escape_tag(void*, void*);
    /* 80A1E8C4 */ int getWolfPathNearIdx();
    /* 80A1E9F8 */ int talk(int);
    /* 80A1EB5C */ int demo(int);
    /* 80A1EE38 */ int escape(int);
    /* 80A1EF90 */ int cheer(int);
    /* 80A1F198 */ BOOL _turn_to_link(s16);
    /* 80A1F1E4 */ BOOL _turn_pos(cXyz const&, s16);
    /* 80A1F240 */ BOOL actor_front_check(fopAc_ac_c*);
    /* 80A1F318 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A1F384 */ BOOL _Evt_Kasi_Appear(int);
    /* 80A1F42C */ BOOL _Evt_Kasi_Appear_CutInit(int const&);
    /* 80A1F50C */ BOOL _Evt_Kasi_Appear_CutMain(int const&);
    /* 80A1F638 */ BOOL _Evt_Kasi_Talk(int);
    /* 80A1F740 */ BOOL _Evt_Kasi_Talk_CutInit(int const&);
    /* 80A1F860 */ BOOL _Evt_Kasi_Talk_CutMain(int const&, int);
    /* 80A1F9F4 */ BOOL _Evt_Kasi(int);
    /* 80A1FA9C */ BOOL _Evt_Kasi_CutInit(int const&);
    /* 80A1FBC4 */ BOOL _Evt_Kasi_CutMain(int const&);
    /* 80A1FD64 */ BOOL _Evt_Kasi_Cheer(int);
    /* 80A1FE6C */ BOOL _Evt_Kasi_Cheer_CutInit(int const&);
    /* 80A1FF78 */ BOOL _Evt_Kasi_Cheer_CutMain(int const&, int);
    /* 80A2016C */ BOOL _Evt_Kasi_Cheer2(int);
    /* 80A20244 */ BOOL _Evt_Kasi_Cheer2_CutInit(int const&);
    /* 80A20350 */ BOOL _Evt_Kasi_Cheer2_CutMain(int const&, int);
    /* 80A20678 */ void adjustShapeAngle() {}

    s16 getMessageNo() { return s16(home.angle.x); }
    s8 getType() {
        s8 rv = fopAcM_GetParam(this) & 0xFF;
        
        if (rv == 0xFF) {
            rv = 0;
        }

        return rv;
    }
    void off_talked() { mTalked = false; }
    BOOL is_talked() { return mTalked; }
    BOOL is_escape() { return mEscape; }
    void chgWeightHeavy() { mCcStts.SetWeight(0xFE); }
    void chgWeightLight() { mCcStts.SetWeight(0xD8); }
    int getRailNo() { return s8((fopAcM_GetParam(this) >> 8) & 0xFF); }
    bool chkAction(actionFunc action) { return action == mAction; }
    int getSwitchBitNo() { return (fopAcM_GetParam(this) >> 16) & 0xFF; }
    BOOL pl_front_check() { return actor_front_check(daPy_getPlayerActorClass()); }
    void setEscapePathDir() { if (pl_front_check()) mPath.reverse(); }

    static EventFn mEvtSeqList[6];
    static daTagEscape_c* mTargetTag;
    static f32 mTargetTagDist;
    static s16 mWolfAngle;

private:
    /* 0x0B48 */ Z2CreatureCitizen mSound;
    /* 0x0BEC */ u8 field_0xbec[0xbf0 - 0xbec];
    /* 0x0BF0 */ daNpcF_Lookat_c mLookat;
    /* 0x0C8C */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0x0C94 */ daNpcF_Path_c mPath;
    /* 0x12C4 */ NPC_KASI_HANA_HIO_CLASS* mHIO;
    /* 0x12C8 */ dCcD_Cyl mCyl;
    /* 0x1404 */ s8 mType;
    /* 0x1405 */ u8 field_0x1405;
    /* 0x1406 */ s16 mMode;
    /* 0x1408 */ actionFunc mAction;
    /* 0x1414 */ request_of_phase_process_class mPhases[3];
    /* 0x142C */ fpc_ProcID field_0x142c;
    /* 0x1430 */ int field_0x1430;
    /* 0x1434 */ int field_0x1434;
    /* 0x1438 */ int mMessageNo;
    /* 0x143C */ s16 mLookMode;
    /* 0x143E */ s16 field_0x143e;
    /* 0x1440 */ u8 field_0x1440;
    /* 0x1441 */ s8 field_0x1441;
    /* 0x1442 */ bool mTalked;
    /* 0x1443 */ bool mEscape;
    /* 0x1444 */ u8 field_0x1444;
    /* 0x1445 */ bool field_0x1445;
    /* 0x1448 */ daNpcKasi_Mng_c mKasiMng;
};

STATIC_ASSERT(sizeof(daNpcKasiHana_c) == 0x1ac8);

#endif /* D_A_NPC_KASI_HANA_H */
