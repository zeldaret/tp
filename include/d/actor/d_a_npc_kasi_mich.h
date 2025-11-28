#ifndef D_A_NPC_KASI_MICH_H
#define D_A_NPC_KASI_MICH_H

#include "d/actor/d_a_npc4.h"
#include "d/actor/d_a_tag_escape.h"

/**
 * @ingroup actors-npcs
 * @class daNpcKasiMich_c
 * @brief Misha
 *
 * @details
 *
*/

struct daNpcKasiMich_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ s16 escape_time;         // 逃げるまでの時間 - Escape Time
    /* 0x70 */ f32 escape_spd;          // 逃げる速度 - Escape Speed
};

class daNpcKasiMich_HIO_c
#ifdef DEBUG
: public mDoHIO_entry_c
#endif
{
    /* 0x8 */ daNpcKasiMich_HIOParam param;
};

class daNpcKasiMich_c : public daNpcF_c {
public:
    typedef int (daNpcKasiMich_c::*actionFunc)(int);
    typedef BOOL (daNpcKasiMich_c::*EventFn)(int);

    /* 80A261CC */ daNpcKasiMich_c();
    /* 80A26414 */ ~daNpcKasiMich_c();
    /* 80A26624 */ cPhs__Step Create();
    /* 80A268A0 */ int CreateHeap();
    /* 80A26A24 */ int Delete();
    /* 80A26A58 */ int Execute();
    /* 80A26A84 */ int Draw();
    /* 80A26AD0 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A26C5C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A26C7C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A26CC8 */ void setParam();
    /* 80A26D34 */ BOOL main();
    /* 80A26FDC */ void setAttnPos();
    /* 80A27184 */ void setMotionAnm(int, f32);
    /* 80A27254 */ void setMotion(int, f32, int);
    /* 80A2729C */ BOOL drawDbgInfo();
    /* 80A272A4 */ void reset();
    /* 80A274D8 */ void playMotion();
    /* 80A2790C */ void playMotionAnmLoop(daNpcF_c::daNpcF_anmPlayData***);
    /* 80A27A84 */ BOOL setAction(actionFunc);
    /* 80A27B2C */ void setLookMode(int);
    /* 80A27B50 */ void lookat();
    /* 80A27D30 */ BOOL step(s16, int);
    /* 80A27E24 */ BOOL chkFindPlayer();
    /* 80A27F08 */ int wait(int);
    /* 80A282B4 */ int fear(int);
    /* 80A28490 */ daTagEscape_c* srchWolfTag();
    /* 80A284F8 */ static void* _srch_escape_tag(void*, void*);
    /* 80A285C8 */ int getWolfPathNearIdx();
    /* 80A286FC */ int chace_st(int);
    /* 80A287A0 */ int chace(int);
    /* 80A28910 */ cXyz getChacePos();
    /* 80A289CC */ int turn_link(int);
    /* 80A28A8C */ int turn_home(int);
    /* 80A28B70 */ int turn_center(int);
    /* 80A28C40 */ int talk_dummy(int);
    /* 80A28CB8 */ int kya(int);
    /* 80A28D90 */ int kya2(int);
    /* 80A28E28 */ int kya_stop(int);
    /* 80A28EFC */ int iyan(int);
    /* 80A28F74 */ int escape(int);
    /* 80A2908C */ int iyan_look(int);
    /* 80A29164 */ int turn_hana(int);
    /* 80A291E8 */ int wait_dummy(int);
    /* 80A2926C */ int cheer(int);
    /* 80A29458 */ BOOL _turn_to_link(s16);
    /* 80A294A4 */ BOOL _turn_pos(cXyz const&, s16);
    /* 80A29500 */ BOOL actor_front_check(fopAc_ac_c*);
    /* 80A295D8 */ void _getOffset(cXyz const&, cXyz&);
    /* 80A29FDC */ void adjustShapeAngle() {}

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
    /* 0x12C4 */ daNpcKasiMich_HIO_c* mHIO;
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
    /* 0x1440 */ s16 field_0x1440;
    /* 0x1444 */ int mSygnal;
    /* 0x1448 */ cXyz mChacePos;
    /* 0x1454 */ cXyz mCenterPos;
    /* 0x1460 */ int mPlPoint;
    /* 0x1464 */ s8 mType;
    /* 0x1465 */ s8 field_0x1465;
    /* 0x1466 */ bool mTalked;
    /* 0x1467 */ bool mFear;
    /* 0x1468 */ bool mEscape;
    /* 0x1469 */ u8 field_0x1469;
};

STATIC_ASSERT(sizeof(daNpcKasiMich_c) == 0x146c);

class daNpcKasiMich_Param_c {
public:
    /* 80A29FE0 */ virtual ~daNpcKasiMich_Param_c() {}

    static daNpcKasiMich_HIOParam const m;
};

#endif /* D_A_NPC_KASI_MICH_H */
