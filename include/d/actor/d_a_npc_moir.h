#ifndef D_A_NPC_MOIR_H
#define D_A_NPC_MOIR_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcMoiR_c
 * @brief Rusl (Resistance)
 *
 * @details
 *
 */

struct daNpcMoiR_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 demo_start_dist;                 // デモ開始距離 - Demo Start Distance
    /* 0x70 */ s16 horizontal_eye_movement_range;   // 目玉横可動範囲 - Horizontal Eye Movement Range  
    /* 0x72 */ u8 demo_start_area;                  // デモ開始エリア - Demo Start Area
};

class daNpcMoiR_Param_c {
public:
    /* 80A83240 */ virtual ~daNpcMoiR_Param_c();

    static daNpcMoiR_HIOParam const m;
};

class daNpcMoiR_c : public daNpcF_c {
public:
    typedef bool (daNpcMoiR_c::*ActionFn)(void*);
    typedef BOOL (daNpcMoiR_c::*EventFn)(int);

    /* 80A7C16C */ daNpcMoiR_c();
    /* 80A7C380 */ ~daNpcMoiR_c();
    /* 80A7C580 */ cPhs__Step Create();
    /* 80A7C978 */ int CreateHeap();
    /* 80A7CE48 */ int Delete();
    /* 80A7CE7C */ int Execute();
    /* 80A7CEA0 */ int Draw();
    /* 80A7CEFC */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A7D0CC */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A7D0EC */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A7D138 */ bool setExpressionAnm(int, bool);
    /* 80A7D394 */ bool setExpressionBtp(int);
    /* 80A7D474 */ void setMotionAnm(int, f32);
    /* 80A7D5C4 */ void reset();
    /* 80A7D73C */ inline void setWaitAction();
    /* 80A7D934 */ bool wait_type0(void*);
    /* 80A7DD94 */ void setMotion(int, f32, int);
    /* 80A7DDD8 */ void setExpression(int, f32);
    /* 80A7DE04 */ bool wait_type1(void*);
    /* 80A7E668 */ bool wait_type2(void*);
    /* 80A7E8C0 */ bool talk(void*);
    /* 80A7EFBC */ void multiTalk(void*);
    /* 80A7F40C */ bool fight(void*);
    /* 80A7F9AC */ bool demo(void*);
    /* 80A7FEE8 */ bool leave(void*);
    /* 80A802C4 */ BOOL EvCut_Introduction(int);
    /* 80A803A0 */ BOOL EvCut_Appear(int);
    /* 80A8081C */ BOOL EvCut_Appear2(int);
    /* 80A810FC */ void setParam();
    /* 80A81274 */ BOOL main();
    /* 80A815D4 */ void checkHeadGear();
    /* 80A818B4 */ void playMotion();
    /* 80A8210C */ BOOL ctrlBtk();
    /* 80A821E0 */ void setAttnPos();
    /* 80A825A0 */ void lookat();
    /* 80A82878 */ void drawOtherMdls();
    /* 80A82900 */ BOOL drawDbgInfo();

    MtxP getHandRMtx() { return mpMorf->getModel()->getAnmMtx(17); }

    u16 getMessageNo() { return fopAcM_GetParam(this) >> 8; }

    void setAction(ActionFn action) {
        field_0xe08 = 3;

        if (mAction) {
            (this->*mAction)(NULL);
        }

        field_0xe08 = 0;
        mAction = action;

        if (mAction) {
            (this->*mAction)(NULL);
        }
    }
    
    inline void playExpression();
    inline BOOL step(s16, int);
    inline void setExpressionTalkAfter() {
        switch (mExpression) {
            case 3:
                setExpression(0xE, -1.0f);
                break;

            case 10:
                setExpression(0x11, -1.0f);
                break;

            default:
                setExpression(0x12, -1.0f);
                break;
        }
    }
    inline BOOL chkFindPlayer();
    inline bool chkAction(ActionFn action) {
        return action == mAction;
    }
    inline void setLookMode(int i_lookMode);
    inline void searchActors();

    static EventFn mEvtSeqList[4];

private:
    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ J3DModel* field_0xbd8;
    /* 0xBDC */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE0 */ daNpcF_Lookat_c mLookat;
    /* 0xC7C */ daNpcF_ActorMngr_c mActorMngr[4];
    /* 0xC9C */ u8 field_0xc9c[0xca0 - 0xc9c];
    /* 0xCA0 */ dCcD_Cyl field_0xca0;
    /* 0xDDC */ ActionFn mAction;
    /* 0xDE8 */ request_of_phase_process_class mPhase[2];
    /* 0xDF8 */ fpc_ProcID field_0xdf8;
    /* 0xDFC */ fpc_ProcID field_0xdfc;
    /* 0xE00 */ int field_0xe00;
    /* 0xE04 */ s16 mMsgNo;
    /* 0xE06 */ s16 mLookMode;
    /* 0xE08 */ u16 field_0xe08;
    /* 0xE0A */ u8 field_0xe0a;
    /* 0xE0B */ u8 mMode;
};

STATIC_ASSERT(sizeof(daNpcMoiR_c) == 0xe0c);

#endif /* D_A_NPC_MOIR_H */
