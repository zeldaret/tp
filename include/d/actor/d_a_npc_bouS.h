#ifndef D_A_NPC_BOUS_H
#define D_A_NPC_BOUS_H

#include "d/actor/d_a_npc4.h"

/**
 * @ingroup actors-npcs
 * @class daNpcBouS_c
 * @brief Mayor Bo (inside house)
 *
 * @details
 *
*/

struct daNpcBouS_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 excitement_level;
    /* 0x70 */ f32 talk_dist;
    /* 0x74 */ f32 gaze_x;
    /* 0x78 */ f32 gaze_y;
    /* 0x7C */ f32 gaze_z;
    /* 0x80 */ f32 eye_dist;
    /* 0x84 */ s16 eye_angle_x;
    /* 0x86 */ s16 eye_angle_y;
    /* 0x88 */ s16 field_0x88;
};

class daNpcBouS_Param_c {
public:
    /* 809783A4 */ virtual ~daNpcBouS_Param_c() {}

    static daNpcBouS_HIOParam const m;
};

#if DEBUG
class daNpcBouS_HIO_c : public mDoHIO_entry_c {
public:
    daNpcBouS_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);
    
    /* 0x8 */ daNpcBouS_HIOParam m;
};
#define NPC_BOUS_HIO_CLASS daNpcBouS_HIO_c
#else
#define NPC_BOUS_HIO_CLASS daNpcBouS_Param_c
#endif

class daNpcBouS_c : public daNpcF_c {
public:
    typedef bool (daNpcBouS_c::*actionFunc)(void*);
    typedef int (daNpcBouS_c::*eventFunc)(int);

    /* 8097354C */ daNpcBouS_c();
    /* 80973760 */ ~daNpcBouS_c();
    /* 80973948 */ cPhs__Step Create();
    /* 80973B9C */ int CreateHeap();
    /* 80973FC8 */ int Delete();
    /* 80973FFC */ int Execute();
    /* 80974020 */ int Draw();
    /* 80974090 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 809742BC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809742DC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80974328 */ bool setExpressionAnm(int, bool);
    /* 80974514 */ bool setExpressionBtp(int);
    /* 809745F4 */ void setMotionAnm(int, f32);
    /* 80974730 */ void reset();
    /* 809748F0 */ inline BOOL setAction(actionFunc);
    /* 80974A04 */ bool checkInstructionTag(fopAc_ac_c*);
    /* 80974A28 */ bool wait(void*);
    /* 809750BC */ void setMotion(int, f32, int);
    /* 80975104 */ void setExpression(int, f32);
    /* 80975130 */ bool talk(void*);
    /* 80975748 */ bool demo(void*);
                   inline fopAc_ac_c* searchInstructionTag();
    /* 80975930 */ bool instruction(void*);
    /* 80975ED8 */ bool checkIntroDemoStart();
    /* 80975FDC */ int EvCut_BousIntroSumo1(int);
    /* 80976284 */ int EvCut_BousIntroSumo2(int);
    /* 80976654 */ int EvCut_BousIntroSumo3(int);
    /* 80976C00 */ inline void setParam();
    /* 80976C9C */ inline BOOL main();
                   inline void playExpression();
    /* 80976EEC */ inline void playMotion();
    /* 80977368 */ inline BOOL ctrlBtk();
    /* 80977444 */ inline void setAttnPos();
    /* 809778D8 */ inline void lookat();
                   inline BOOL step(s16, int);
    /* 80977AB8 */ inline int drawDbgInfo();
    /* 80977AC0 */ inline void drawOtherMdls();
    /* 809783A0 */ void adjustShapeAngle() {}

    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF; }
    s8 getArenaNo() { return fopAcM_GetParam(this) & 0xFF; }

    BOOL chkFindPlayer() {
        BOOL inArea = FALSE;
        if (mActorMngrs[0].getActorP() == NULL) {
            inArea = chkPlayerInSpeakArea(this);
        } else {
            inArea = chkPlayerInTalkArea(this);
        }

        if (inArea) {
            mActorMngrs[0].entry(daPy_getPlayerActorClass());
        } else {
            mActorMngrs[0].remove();
        }

        return inArea;
    }

    void setLookMode(int i_lookMode) { if (i_lookMode >= 0 && i_lookMode < 4 && i_lookMode != mLookMode) mLookMode = i_lookMode; }

    inline void setExpressionTalkAfter();

    s8 getType() { return argument & 0x7F; }

    void setInstructionPos() {
        fopAc_ac_c* actor = searchInstructionTag();
        if (actor != NULL) {
            current.pos = fopAcM_GetPosition(actor);
            old.pos = current.pos;
            setAngle(fopAcM_GetShapeAngle_p(actor)->y);
            cXyz pos(0.0f, 0.0f, 220.0f);
            mDoMtx_stack_c::transS(current.pos);
            mDoMtx_stack_c::YrotM(shape_angle.y);
            mDoMtx_stack_c::multVec(&pos, &pos);
            daPy_getPlayerActorClass()->setPlayerPosAndAngle(&pos, (s16)(shape_angle.y + 0x8000), 0);
        }
    }

    void setHome() { 
        old.pos = current.pos = home.pos;
        shape_angle.y = home.angle.y;
    }
    void offDispFlag() { mDispFlag = 0; }
    void onDispFlag() { mDispFlag = 1; }
    void setMessageNo(s16 i_msgNo) {
        mMsgNo = i_msgNo;
    }
    void setForcibleTalk() {
        mForcibleTalk = 1;
    }

    static eventFunc mEvtSeqList[4];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat;
    /* 0xC78 */ daNpcF_ActorMngr_c mActorMngrs[1];
    /* 0xC80 */ NPC_BOUS_HIO_CLASS* mHIO;
    /* 0xC84 */ dCcD_Cyl mCyl;
    /* 0xDC0 */ actionFunc mAction;
    /* 0xDCC */ u8 field_0xdcc[0xdd4 - 0xdcc];
    /* 0xDD4 */ request_of_phase_process_class mPhases[2];
    /* 0xDE4 */ fpc_ProcID mItemPartnerId;
    /* 0xDE8 */ int mTimer;
    /* 0xDEC */ int mInstructionMode;
    /* 0xDF0 */ int mMsgNo;
    /* 0xDF4 */ u8 field_0xdf4[0xdf8 - 0xdf4];
    /* 0xDF8 */ s16 mLookMode;
    /* 0xDFA */ s16 mMotionPhaseCopy;
    /* 0xDFC */ u16 mMode;
    /* 0xDFE */ u8 mForcibleTalk;
    /* 0xDFF */ u8 mDispFlag;
};

STATIC_ASSERT(sizeof(daNpcBouS_c) == 0xe00);

#endif /* D_A_NPC_BOUS_H */
