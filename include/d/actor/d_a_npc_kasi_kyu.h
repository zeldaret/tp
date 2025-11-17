#ifndef D_A_NPC_KASI_KYU_H
#define D_A_NPC_KASI_KYU_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_tag_escape.h"

/**
 * @ingroup actors-npcs
 * @class daNpcKasiKyu_c
 * @brief Kili
 *
 * @details
 *
*/

struct daNpcKasiKyu_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ s16 escape_time;         // 逃げるまでの時間 - Escape Time
    /* 0x70 */ f32 escape_spd;          // 逃げる速度 - Escape Speed
};

class daNpcKasiKyu_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
    /* 0x8 */ daNpcKasiKyu_HIOParam param;
};

class daNpcKasiKyu_c : public daNpcF_c {
public:
    typedef int (daNpcKasiKyu_c::*actionFunc)(int);
    typedef BOOL (daNpcKasiKyu_c::*EventFn)(int);

    /* 80A219CC */ daNpcKasiKyu_c();
    /* 80A21C14 */ ~daNpcKasiKyu_c();
    /* 80A21E24 */ cPhs__Step Create();
    /* 80A220A0 */ int CreateHeap();
    /* 80A22224 */ int Delete();
    /* 80A22258 */ int Execute();
    /* 80A22284 */ int Draw();
    /* 80A222D0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A2245C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A2247C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A224C8 */ void setParam();
    /* 80A22534 */ BOOL main();
    /* 80A227DC */ void setAttnPos();
    /* 80A22984 */ void setMotionAnm(int, f32);
    /* 80A22A54 */ void setMotion(int, f32, int);
    /* 80A22A9C */ BOOL drawDbgInfo();
    /* 80A22AA4 */ void reset();
    /* 80A22CD8 */ void playMotion();
    /* 80A2310C */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80A23284 */ BOOL setAction(int (daNpcKasiKyu_c::*)(int));
    /* 80A2332C */ void setLookMode(int);
    /* 80A23350 */ void lookat();
    /* 80A23530 */ BOOL step(s16, int);
    /* 80A23624 */ BOOL chkFindPlayer();
    /* 80A23708 */ int wait(int);
    /* 80A23AB4 */ int fear(int);
    /* 80A23C90 */ daTagEscape_c* srchWolfTag();
    /* 80A23CF8 */ static void* _srch_escape_tag(void*, void*);
    /* 80A23DC8 */ int getWolfPathNearIdx();
    /* 80A23EFC */ int chace_st(int);
    /* 80A23FA0 */ int chace(int);
    /* 80A24110 */ cXyz getChacePos();
    /* 80A241CC */ int turn_link(int);
    /* 80A2428C */ int turn_home(int);
    /* 80A24370 */ int turn_center(int);
    /* 80A24440 */ int talk_dummy(int);
    /* 80A244B8 */ int kya(int);
    /* 80A24590 */ int kya2(int);
    /* 80A24628 */ int kya_stop(int);
    /* 80A246FC */ int iyan(int);
    /* 80A24774 */ int iyan_look(int);
    /* 80A2484C */ int turn_hana(int);
    /* 80A2493C */ int escape(int);
    /* 80A24A54 */ int wait_dummy(int);
    /* 80A24AD8 */ int cheer(int);
    /* 80A24CC4 */ BOOL _turn_to_link(s16);
    /* 80A24D10 */ BOOL _turn_pos(cXyz const&, s16);
    /* 80A24D6C */ BOOL actor_front_check(fopAc_ac_c*);
    /* 80A24E44 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A25848 */ void adjustShapeAngle() {}

    s8 getType() {
        s8 rv = fopAcM_GetParam(this) & 0xFF;
        
        if (rv == 0xFF) {
            rv = 0;
        }

        return rv;
    }
    int getMessageNo() { return home.angle.x; }
    u8 getRailNo() { return fopAcM_GetParam(this) >> 8; }
    void setSygnal(int i_sygnal) { mSygnal = i_sygnal; }
    void setChacePos(const cXyz& i_chacePos) { mChacePos = i_chacePos; }
    void setCenterPos(const cXyz& i_centerPos) { mCenterPos = i_centerPos; }
    void setPlPoint(const int& i_plPoint) { mPlPoint = i_plPoint; }
    void off_talked() { mTalked = false; }
    BOOL is_talked() { return mTalked; }
    BOOL is_fear() { return mFear; }
    BOOL is_escape() { return mEscape; }
    void chgWeightHeavy() { mCcStts.SetWeight(0xFE); }
    void chgWeightLight() { mCcStts.SetWeight(0xD8); }
    BOOL pl_front_check() { return actor_front_check(daPy_getPlayerActorClass()); }

    static EventFn mEvtSeqList[1];
    static daTagEscape_c* mTargetTag;
    static f32 mTargetTagDist;
    static s16 mWolfAngle;

private:
    /* 0x0B48 */ Z2CreatureCitizen mSound;
    /* 0x0BEC */ u8 field_0xbec[0xbf0 - 0xbec];
    /* 0x0BF0 */ daNpcF_Lookat_c mLookat;
    /* 0x0C8C */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0x0C94 */ daNpcF_Path_c mPath;
    /* 0x12C4 */ daNpcKasiKyu_HIO_c* mHIO;
    /* 0x12C8 */ dCcD_Cyl mCyl;
    /* 0x1404 */ s16 mMode;
    /* 0x1408 */ actionFunc mAction;
    /* 0x1414 */ request_of_phase_process_class mPhases[3];
    /* 0x142C */ fpc_ProcID field_0x142c;
    /* 0x1430 */ int field_0x1430;
    /* 0x1434 */ int field_0x1434;
    /* 0x1438 */ int mMessageNo;
    /* 0x143C */ s16 mLookMode;
    /* 0x143E */ s16 field_0x143e;
    /* 0x1440 */ int mSygnal;
    /* 0x1444 */ cXyz mChacePos;
    /* 0x1450 */ cXyz mCenterPos;
    /* 0x145C */ int mPlPoint;
    /* 0x1460 */ int field_0x1460;
    /* 0x1464 */ s8 mType;
    /* 0x1465 */ s8 field_0x1465;
    /* 0x1466 */ bool mTalked;
    /* 0x1467 */ bool mFear;
    /* 0x1468 */ bool mEscape;
    /* 0x1469 */ u8 field_0x1469;
};

STATIC_ASSERT(sizeof(daNpcKasiKyu_c) == 0x146c);

class daNpcKasiKyu_Param_c {
public:
    /* 80A2584C */ virtual ~daNpcKasiKyu_Param_c() {}

    static daNpcKasiKyu_HIOParam const m;
};

#endif /* D_A_NPC_KASI_KYU_H */
