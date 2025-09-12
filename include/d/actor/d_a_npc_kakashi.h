#ifndef D_A_NPC_KAKASHI_H
#define D_A_NPC_KAKASHI_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kakashi_c
 * @brief Scarecrow
 *
 * @details
 *
 */
class daNpc_Kakashi_c : public daNpcT_c {
public:
    typedef int (daNpc_Kakashi_c::*ActionFunc)(void*);
    
    /* 8054B4E8 */ int create();
    /* 8054B7D8 */ int CreateHeap();
    /* 8054B908 */ int Delete();
    /* 8054B93C */ int Execute();
    /* 8054B994 */ int Draw();
    /* 8054BB34 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8054BB54 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8054BBAC */ int getType();
    /* 8054BC10 */ int isDelete();
    /* 8054BC98 */ void reset();
    /* 8054BF88 */ void srchActors();
    /* 8054C92C */ int selectAction();
    /* 8054CA1C */ BOOL chkAction(ActionFunc);
    /* 8054CA48 */ int setAction(ActionFunc);
    /* 8054CAF0 */ fopAc_ac_c* hitChk();
    /* 8054CEA0 */ void setStaggerParam(fopAc_ac_c*);
    /* 8054D26C */ void setPrtcls(int);
    /* 8054D374 */ int judgeSwdTutorial();
    /* 8054D490 */ int cutSwdTutorial(int);
    /* 8054D57C */ int cutGetWoodSwd(int);
    /* 8054D604 */ int cutMarosWhisper(int);
    /* 8054D668 */ int wait(void*);
    /* 8054D694 */ int swdTutorial(void*);
    /* 8054D8BC */ int talk(void*);

    /* 8054E804 */ daNpc_Kakashi_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
                                   daNpcT_motionAnmData_c const* i_motionAnmData,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
                                   int i_faceMotionStepNum,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
                                   daNpcT_evtData_c const* i_evtData, char** i_arcNames)
                    : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                               i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                               i_arcNames)
                    {
                        OS_REPORT("|%06d:%x|daNpc_Kakashi_c -> コンストラクト\n", g_Counter.mCounter0, this);
                    }

    /* 8054B36C */ virtual ~daNpc_Kakashi_c();
    /* 8054B9D8 */ virtual int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8054BEA8 */ virtual void setParam();
    /* 8054BF8C */ virtual BOOL checkChangeEvt();
    /* 8054C034 */ virtual BOOL evtTalk();
    /* 8054C0D4 */ virtual BOOL evtEndProc();
    /* 8054C0E8 */ virtual BOOL evtCutProc();
    /* 8054C1B0 */ virtual void action();
    /* 8054C268 */ virtual void beforeMove();
    /* 8054C2E0 */ virtual void setAttnPos();
    /* 8054C584 */ virtual void setCollision();
    /* 8054C924 */ virtual int drawDbgInfo();

    int getFlowNodeNo() {
        u16 prm = home.angle.x;
        return prm == 0xFFFF ? -1 : prm;
    }

    u8 getTalkPattern() {
        u8 var_r31 = (fopAcM_GetParam(this) & 0xF0000000) >> 0x1C;
        if (var_r31 == 15) {
            var_r31 = 0;
        }
        return var_r31;
    }

    u8 getBitSW() { return (fopAcM_GetParam(this) & 0xFF00) >> 8; }
    u8 getBitSW2() { return (fopAcM_GetParam(this) & 0xFF0000) >> 16; }

    static char* mCutNameList[4];
    static int (daNpc_Kakashi_c::*mCutList[])(int);

private:
    /* 0x0E40 */ u8 field_0xE40[0xE44 - 0xE40];
    /* 0x0E44 */ Z2SoundObjSimple mSound;
    /* 0x0E64 */ dCcD_Cyl mCcCyl;
    /* 0x0FA0 */ dCcD_Sph mCcSph[3];
    /* 0x1348 */ u8 mType;
    /* 0x134C */ ActionFunc mSelectAction;
    /* 0x1358 */ ActionFunc mAction;
    /* 0x1364 */ csXyz field_0x1364[3];
    /* 0x1378 */ f32 field_0x1378[3];
    /* 0x1384 */ s16 field_0x1384[3];
    /* 0x138A */ u8 field_0x138A[0x138C - 0x138A];
    /* 0x138C */ s16 field_0x138c;
    /* 0x138E */ u8 field_0x138e;
    /* 0x138F */ u8 field_0x138f;
    /* 0x1390 */ u8 field_0x1390;
    /* 0x1391 */ u8 field_0x1391;
    /* 0x1392 */ u8 field_0x1392;
    /* 0x1393 */ u8 field_0x1393;
    /* 0x1394 */ u8 field_0x1394;
};

STATIC_ASSERT(sizeof(daNpc_Kakashi_c) == 0x1398);

struct daNpc_Kakashi_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
};

class daNpc_Kakashi_Param_c {
public:
    /* 8054EA58 */ virtual ~daNpc_Kakashi_Param_c() {}

    static const daNpc_Kakashi_HIOParam m;
};


#endif /* D_A_NPC_KAKASHI_H */
