#ifndef D_A_OBJ_SEKIZOA_H
#define D_A_OBJ_SEKIZOA_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_tag_evtarea.h"

/**
 * @ingroup actors-objects
 * @class daObj_Sekizoa_c
 * @brief Stone Guardian Statue(s)
 *
 * @details
 *
 */
class daObj_Sekizoa_c : public daNpcT_c {
public:
    typedef int (daObj_Sekizoa_c::*cutFunc)(int);
    typedef int (daObj_Sekizoa_c::*actionFunc)(void*);

    enum Type {
        TYPE_0,
        TYPE_1,
        TYPE_2,
        TYPE_3,
        TYPE_4,
        TYPE_5,
        TYPE_6,
    };

    enum Animation {
        ANM_SEKI_HIT_L = 7,
        ANM_SEKI_HIT_R = 8,
        ANM_SEKI_L_DEMO = 9,
        ANM_SEKI_L_LASTDEMO = 10,
        ANM_SEKI_NO_JUMP_L = 11,
        ANM_SEKI_NO_JUMP_R = 12,
        ANM_SEKI_R_DEMO = 13,
        ANM_SEKI_R_LASTDEMO = 14,
        ANM_SEKI_STEP = 15,
        ANM_SEKI_STEP_L = 16,
        ANM_SEKI_STEP_R = 17,
        ANM_SEKI_STILL_L = 18,
        ANM_SEKI_STILL_R = 19,
        ANM_SEKI_WAIT_A = 20,
        ANM_SEKI_WAIT_GAME_L = 21,
        ANM_SEKI_WAIT_GAME_R = 22,
        ANM_SEKI_WAIT_L = 23,
        ANM_SEKI_WAIT_R = 24,
        ANM_SEKIL_JUMP = 25,
        ANM_SEKIR_JUMP = 26,
        ANM_YARIA_DEMO = 27,
        ANM_YARIA_GAME = 28,
        ANM_YARIA_STILL_L = 29,
        ANM_YARIB_DEMO = 30,
        ANM_YARIB_GAME = 31,
        ANM_YARIB_STILL_R = 32,
    };

    /* 80CCE34C */ ~daObj_Sekizoa_c();
    /* 80CCE570 */ int create();
    /* 80CCE8B0 */ int CreateHeap();
    /* 80CCEC54 */ int Delete();
    /* 80CCEC88 */ int Execute();
    /* 80CCECA8 */ int Draw();
    /* 80CCED74 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80CCED94 */ static void* srchSekizoa(void*, void*);
    /* 80CCEE30 */ fopAc_ac_c* getSekizoaP(int);
    /* 80CCEFA4 */ fopAc_ac_c* getKMsgTagP();
    /* 80CCF03C */ int isDelete();
    /* 80CCF138 */ void reset();
    /* 80CCF708 */ void srchActors();
    /* 80CD04FC */ int setYariAnm(int, int, f32);
    /* 80CD0A84 */ int selectAction();
    /* 80CD0B08 */ int chkAction(actionFunc i_action);
    /* 80CD0B34 */ int setAction(actionFunc i_action);
    /* 80CD0BDC */ int checkMoveDirection();
    /* 80CD0DE8 */ int getWaitMotionNo();
    /* 80CD0E30 */ int getGameMotionNo();
    /* 80CD0E78 */ int getNoJumpMotionNo();
    /* 80CD0EAC */ int getHitMotionNo();
    /* 80CD0EE0 */ int getStepMotionNo();
    /* 80CD0F14 */ void jump();
    /* 80CD14D8 */ void landing();
    /* 80CD1688 */ int cutStart(int);
    /* 80CD2708 */ int cutTurn(int);
    /* 80CD2908 */ int cutJump(int);
    /* 80CD2B64 */ int cutGoal(int);
    /* 80CD376C */ int cutExit(int);
    /* 80CD38F0 */ int cutFree(int);
    /* 80CD3BD8 */ int cutExtinction(int);
    /* 80CD3F08 */ int wait(void*);
    /* 80CD425C */ int puzzle(void*);
    /* 80CD45B0 */ int talk(void*);
    /* 80CD5A40 */ daObj_Sekizoa_c(daNpcT_faceMotionAnmData_c const* param_1,
                                   daNpcT_motionAnmData_c const* param_2,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_3,
                                   int param_4,
                                   daNpcT_MotionSeqMngr_c::sequenceStepData_c const* param_5,
                                   int param_6, daNpcT_evtData_c const* param_7, char** param_8)
        : daNpcT_c(param_1, param_2, param_3, param_4, param_5, param_6, param_7, param_8) {}
    /* 80CD5B84 */ BOOL chkGoal() {
        daTag_EvtArea_c* evt_area_A = (daTag_EvtArea_c*)mActorMngrs[5].getActorP();
        if (evt_area_A->chkPointInArea(current.pos)) {
            return true;
        }

        daTag_EvtArea_c* evt_area_B = (daTag_EvtArea_c*)mActorMngrs[6].getActorP();
        if (evt_area_B->chkPointInArea(current.pos)) {
            mReverseStatues = (mType == TYPE_0);
            return true;
        }
        return false;
    }

    /* 80CD5B7C */ s32 getBackboneJointNo() { return 1; }
    /* 80CD5B74 */ s32 getHeadJointNo() { return 3; }
    /* 80CCF358 */ void afterJntAnm(int);
    /* 80CCF3E4 */ void setParam();
    /* 80CCF6BC */ BOOL checkChangeEvt();
    /* 80CCF9A8 */ BOOL evtTalk();
    /* 80CCFAA8 */ BOOL evtCutProc();
    /* 80CCF704 */ void setAfterTalkMotion();
    /* 80CCFBA0 */ void action();
    /* 80CCFD08 */ void beforeMove();
    /* 80CCFD80 */ void setAttnPos();
    /* 80CD009C */ void setCollision();
    /* 80CD03C0 */ int drawDbgInfo();
    /* 80CD03C8 */ void drawOtherMdl();
    /* 80CD05D0 */ void drawGhost();
    /* 80CD06BC */ bool afterSetMotionAnm(int, int, f32, int);

    void setWolfHowling() {
        if (mType != 0) {
            fopAc_ac_c* actor_p = mActorMngrs[3].getActorP();
            JUT_ASSERT(0x1A3, 0 != actor_p);

            ((daObj_Sekizoa_c*)actor_p)->setWolfHowling();
        } else {
            mSetWolfHowling = 1;
        }
    }

    void setFadeLightOff() {
        if (mType == 2 || mType == 3) {
            if (mType == 2) {
                mMotionSeqMngr.setNo(2, 0.0f, 1, 0);
                mSound.startCreatureSound(Z2SE_SEKI_END_DEMO_2, 0, -1);
            }
            if (mType == 3) {
                mMotionSeqMngr.setNo(13, 0.0f, 1, 0);
                mSound.startCreatureSound(Z2SE_SEKI_END_DEMO_2, 0, -1);
            }
            mFadeLightOn = true;
            field_0x1178 = true;
        }
    }

    u8 getType() {
        int prm = fopAcM_GetParam(this) >> 0x1C;

        u8 type;
        switch (subtype) {
        case 0:
            switch (prm) {
            case 1:
                type = 2;
                break;
            case 2:
                type = 4;
                break;
            case 3:
                type = 6;
                break;
            default:
                type = 0;
                break;
            }
            break;
        case 1:
            switch (prm) {
            case 1:
                type = 3;
                break;
            case 2:
                type = 5;
                break;
            default:
                type = 1;
                break;
            }
            break;
        default:
            type = 0;
            break;
        }

        return type;
    }

    u8 getBitSW() { return fopAcM_GetParam(this) & 0xff; }

    u8 getBitSW2() { return (fopAcM_GetParam(this) & 0xff00) >> 8; }

    BOOL chkPressPlayer() {
        return chkPointInArea(dComIfGp_getPlayer(0)->current.pos, current.pos, 100.0f, 300.0f,
                              -300.0f, 0);
    }

    static char* mCutNameList[9];
    static cutFunc mCutList[9];

    /* 0x0E40 */ mDoExt_McaMorfSO* mpMcaMorf;
    /* 0x0E44 */ mDoExt_invisibleModel mInvModel;
    /* 0x0E4C */ u8 field_0x0E4C[4];  // Padding
    /* 0x0E50 */ dCcD_Cyl mCyl;
    /* 0x0F8C */ dCcD_Cyl mCyl2;
    /* 0x10C8 */ u8 mType;
    
    /**
    * mActorMngrs members:
    * - 0 -> daTag_KMsg_c
    * - 1&2 -> daObj_Sekizoa_c, Stone statues A and B actors
    * - 3 -> daObjSekizoa_c
    * - 4 -> daObj_SMTile_c, Tiles animation at start of puzzle
    * - 5&6 -> daTag_EvtArea_c, Goal Tiles where to place the statues
    * - 7 -> daObj_SekiDoor_c, Stone Door at end of puzzle
    */
    /* 0x10CC */ daNpcT_ActorMngr_c mActorMngrs[8];
    /* 0x110C */ actionFunc mInitFunc;
    /* 0x1118 */ actionFunc mExecuteFunc;
    /* 0x1124 */ daNpcT_Path_c mPath;
    /* 0x114C */ cXyz mCXyzJump;
    /* 0x1158 */ int mLatencyTime;
    /* 0x115C */ float mJumpHeight;
    /* 0x1160 */ float mJumpSpeed;
    /* 0x1164 */ float mColsetBlend;
    /* 0x1168 */ float mGoalStatueTurnSpeed;
    /* 0x116C */ float mGoalStatueAngle;
    /* 0x1170 */ s16 mPlayerDirection;
    /* 0x1172 */ u8 mReset;
    /* 0x1173 */ u8 mSetWolfHowling;
    /* 0x1174 */ u8 mJump;
    /* 0x1175 */ u8 mTurnPlayer;
    /* 0x1176 */ bool mFadeLightOn;
    /* 0x1177 */ bool field_0x1177;
    /* 0x1178 */ bool field_0x1178;
    /* 0x1179 */ u8 field_0x1179;
    /* 0x117A */ u8 mReverseStatues;  // Flag if statue B is on goal tile A at end of puzzle
    /* 0x117B */ u8 field_0x117B;     // Padding
    /* 0x117C */ u8 field_0x117C;
};

struct daObj_Sekizoa_Param_c {
    /* 80CD5C30 */ virtual ~daObj_Sekizoa_Param_c() {}

    struct Data {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 field_0x04;
        /* 0x08 */ f32 field_0x08;
        /* 0x0C */ f32 field_0x0C;
        /* 0x10 */ f32 field_0x10;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ f32 field_0x1C;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2C;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3C;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4A;
        /* 0x4C */ s16 field_0x4C;
        /* 0x4E */ s16 field_0x4E;
        /* 0x50 */ f32 field_0x50;
        /* 0x54 */ f32 field_0x54;
        /* 0x58 */ f32 field_0x58;
        /* 0x5C */ f32 field_0x5C;
        /* 0x60 */ int field_0x60;
        /* 0x64 */ f32 field_0x64;
        /* 0x68 */ f32 field_0x68;
        /* 0x6C */ f32 field_0x6C;
        /* 0x70 */ f32 field_0x70;
        /* 0x74 */ f32 field_0x74;
        /* 0x78 */ f32 field_0x78;
        /* 0x7C */ f32 field_0x7C;
        /* 0x80 */ f32 field_0x80;
        /* 0x84 */ f32 field_0x84;
        /* 0x88 */ f32 field_0x88;
        /* 0x8C */ f32 field_0x8C;
        /* 0x90 */ f32 field_0x90;
        /* 0x94 */ f32 field_0x94;
        /* 0x98 */ s16 field_0x98;
    };

    static Data const m;
};

#endif /* D_A_OBJ_SEKIZOA_H */
