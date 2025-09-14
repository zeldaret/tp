#ifndef D_A_NPC_ARU_H
#define D_A_NPC_ARU_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Aru_c
 * @brief Fado
 *
 * @details
 *
*/

struct daNpc_Aru_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 warning_range;       // 警戒範囲 - Warning Range
    /* 0x90 */ f32 run_speed;           // 走る速度 - Run Speed        
    /* 0x94 */ f32 walk_speed;          // 歩く速度 - Walk Speed        
    /* 0x98 */ s16 no_turn_time;        // 旋回禁止時間 - No Turn Time    
    /* 0x9A */ s16 avoid_time;          // 避け時間 - Avoid Time        
    /* 0x9C */ f32 forward_visibility;  // 前方視界 - Forward Visibility        
};

class daNpc_Aru_HIO_c : public mDoHIO_entry_c {
public:
    /* 0x8 */ daNpc_Aru_HIOParam param;
};

class daNpc_Aru_Param_c {
public:
    /* 80957604 */ virtual ~daNpc_Aru_Param_c() {}

    static daNpc_Aru_HIOParam const m;
};

class daNpc_Aru_c : public daNpcT_c {
public:
    enum Joint {
        /* 0x00  */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE1,
        /* 0x02 */ JNT_BACKBONE2,
        /* 0x03 */ JNT_NECK,
        /* 0x04 */ JNT_HEAD,
        /* 0x05 */ JNT_CHIN,
        /* 0x06 */ JNT_MAYU_L,
        /* 0x07 */ JNT_MAYU_R,
        /* 0x08 */ JNT_MOUTH,
        /* 0x09 */ JNT_SHOULDERL,
        /* 0x0A */ JNT_ARML1,
        /* 0x0B */ JNT_ARML2,
        /* 0x0C */ JNT_HANDL,
        /* 0x0D */ JNT_FINGERL1,
        /* 0x0E */ JNT_FINGERL2,
        /* 0x0F */ JNT_THAMBL,
        /* 0x10 */ JNT_SHOULDERR,
        /* 0x11 */ JNT_ARMR1,
        /* 0x12 */ JNT_ARMR2,
        /* 0x13 */ JNT_HANDR,
        /* 0x14 */ JNT_FINGERR1,
        /* 0x15 */ JNT_FINGERR2,
        /* 0x16 */ JNT_THAMBR,
        /* 0x17 */ JNT_WAIST,
        /* 0x18 */ JNT_LEGL1,
        /* 0x19 */ JNT_LEGL2,
        /* 0x1A */ JNT_FOOTL,
        /* 0x1B */ JNT_SKIRTL,
        /* 0x1C */ JNT_LEGR1,
        /* 0x1D */ JNT_LEGR2,
        /* 0x1E */ JNT_FOOTR,
        /* 0x1F */ JNT_SKIRTR,
        /* 0x20 */ JNT_SKIRT1,
        /* 0x21 */ JNT_SKIRT2,
    };

    enum Material {
        /* 0x0 */ SC_EYE,
        /* 0x1 */ ARU_BODY_M,
        /* 0x2 */ ARU_EYEBALL_M,
        /* 0x3 */ ARU_FACE_M,
    };

    typedef int (daNpc_Aru_c::*actionFunc)(void*);
    typedef int (daNpc_Aru_c::*cutFunc)(int);

    /* 8095178C */ ~daNpc_Aru_c();
    /* 809518C4 */ cPhs__Step create();
    /* 80951BB0 */ int CreateHeap();
    /* 80951FDC */ int Delete();
    /* 80952010 */ int Execute();
    /* 80952030 */ int Draw();
    /* 809520C4 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809520E4 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8095213C */ static void* srchCow(void*, void*);
    /* 809521E4 */ static void* srchUDoor(void*, void*);
    /* 80952280 */ BOOL chkThrust(fopAc_ac_c*);
    /* 80952400 */ fopAc_ac_c* getCowP(int);
    /* 8095253C */ fopAc_ac_c* getUDoor_l_P();
    /* 8095260C */ fopAc_ac_c* getUDoor_r_P();
    /* 809526DC */ u8 getType();
    /* 80952740 */ BOOL isDelete();
    /* 809527CC */ void reset();
    /* 80952B00 */ void afterJntAnm(int);
    /* 80952B84 */ void setParam();
    /* 80952CE8 */ BOOL checkChangeEvt();
    /* 80952D9C */ void setAfterTalkMotion();
    /* 80952E64 */ void srchActors();
    /* 809530DC */ BOOL evtTalk();
    /* 8095317C */ BOOL evtCutProc();
    /* 80953244 */ void action();
    /* 809533D8 */ void beforeMove();
    /* 8095349C */ void setAttnPos();
    /* 80953798 */ void setCollision();
    /* 809538F0 */ int drawDbgInfo();
    /* 809538F8 */ BOOL selectAction();
    /* 80953AB8 */ BOOL chkAction(actionFunc);
    /* 80953AE4 */ BOOL setAction(actionFunc);
    /* 80953B8C */ BOOL chkBullRunningStage();
    /* 80953C08 */ BOOL chkSkipFenceStage();
    /* 80953C84 */ s16 srchActorDirection(fopAc_ac_c*);
    /* 80953D58 */ void adjustMoveDir();
    /* 809543F8 */ int duck(int);
    /* 80954744 */ int lookround(s16);
    /* 80954894 */ int cutRideOnHorse(int);
    /* 80954A5C */ int cutGotoBullRunningStage(int);
    /* 80954C0C */ int cutEndBullRunning(int);
    /* 80954F4C */ int cutGotoSkipFenceStage(int);
    /* 80955080 */ int cutSpeakTo(int);
    /* 8095533C */ int cutNoEntrance(int);
    /* 80955608 */ int wait(void*);
    /* 80955B48 */ int bullRunning(void*);
    /* 80955DE8 */ int skipFence(void*);
    /* 80955F98 */ int talk(void*);
    #ifdef DEBUG
    int test(void*);
    #endif
    /* 809574E8 */ daNpc_Aru_c(
            daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
            daNpcT_motionAnmData_c const* i_motionAnmData,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
            int i_faceMotionStepNum,
            daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData,
            int i_motionStepNum,
            daNpcT_evtData_c const* i_evtData,
            char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
        i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
        i_arcNames) {}
    /* 809575B4 */ u16 getEyeballMaterialNo() { return ARU_EYEBALL_M; }
    /* 809575BC */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 809575C4 */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 809575CC */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 809575D4 */ BOOL checkChangeJoint(int i_joint) { return i_joint == JNT_HEAD; }
    /* 809575E4 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == JNT_MOUTH; }
    /* 809575F4 */ s32 getFootLJointNo() { return JNT_FOOTL; }
    /* 809575FC */ s32 getFootRJointNo() { return JNT_FOOTR; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        if (nodeNo == 0xffff) {
            return -1;
        }

        return nodeNo;
    }
    int getPathID() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    void setLastIn() { mLastGoatIn = true; }

    static char* mCutNameList[7];
    static cutFunc mCutList[7];

private:
    /* 0xE40 */ daNpc_Aru_HIO_c* mHIO;
    /* 0xE44 */ dCcD_Cyl mCyl;
    /* 0xF80 */ u8 mType;
    /* 0xF84 */ daNpcT_ActorMngr_c mActorMngrs[4];
    /* 0xFA4 */ actionFunc mNextAction;
    /* 0xFB0 */ actionFunc mAction;
    /* 0xFBC */ fpc_ProcID mTimerID;
    /* 0xFC0 */ int mTimer;
    /* 0xFC4 */ int field_0xfc4;
    /* 0xFC8 */ s16 mActorDirection;
    /* 0xFCA */ s16 field_0xfca;
    /* 0xFCC */ u8 field_0xfcc;
    /* 0xFCD */ bool field_0xfcd;
    /* 0xFCE */ bool mLastGoatIn;
    /* 0xFCF */ bool field_0xfcf;
    /* 0xFD0 */ bool field_0xfd0;
    /* 0xFD1 */ bool field_0xfd1;
    /* 0xFD2 */ bool field_0xfd2;
    /* 0xFD3 */ bool field_0xfd3;
    /* 0xFD4 */ u8 field_0xfd4[0xfd8 - 0xfd4];
};

STATIC_ASSERT(sizeof(daNpc_Aru_c) == 0xfd8);

#endif /* D_A_NPC_ARU_H */
