#ifndef D_A_NPC_CHIN_H
#define D_A_NPC_CHIN_H

#include "d/actor/d_a_npc.h"
#include "d/actor/d_a_obj_glowSphere.h"

struct daNpcChin_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
};

class daNpcChin_Param_c {
public:
    /* 8099188C */ virtual ~daNpcChin_Param_c() {}

    static daNpcChin_HIOParam const m;
};

#if DEBUG
class daNpcChin_HIO_c : public mDoHIO_entry_c {
public:
    daNpcChin_HIO_c();

    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x08 */ daNpcChin_HIOParam m;
};

#define NPC_CHIN_HIO_CLASS daNpcChin_HIO_c
#else
#define NPC_CHIN_HIO_CLASS daNpcChin_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpcChin_c
 * @brief Purlo
 *
 * @details
 *
 */
class daNpcChin_c : public daNpcF_c {
public:
    class _SpotLight_c {
    public:
        /* 0x00 */ J3DModel* mpModel;
        /* 0x04 */ mDoExt_btkAnm mBtkAnm;
        /* 0x1C */ cXyz mPos;
        /* 0x28 */ csXyz mRot;
        /* 0x30 */ cXyz mScale;
        /* 0x3C */ s8 mSwitch;

        /* 8098BF0C */ int loadModel();

        inline void switch_off() {
            setSwitch(false);
            setPlaySpeed(0.0f);
        }

        inline void switch_on() {
            setSwitch(true);
            setPlaySpeed(1.0f);
        }

        inline void setPlaySpeed(f32 i_speed) {
            mBtkAnm.setPlaySpeed(i_speed);
        }

        inline void setSwitch(s8 i_active) {
            mSwitch = i_active;
        }

        /* 8098C000 */ void setMtx();

        inline bool is_switch_on() {
            return mSwitch == TRUE;
        }

        /* 8098C060 */ void draw(dKy_tevstr_c*);

        inline void setPos(cXyz& i_pos) {
            mPos = i_pos;
        }

        inline void playBtk() {
            mBtkAnm.play();
        }

        _SpotLight_c() {
            mpModel = NULL;
            mRot.set(0, 0, 0);
            mScale.set(1.0f, 1.0f, 1.0f);
        }

        ~_SpotLight_c() {}
    };

    typedef bool (daNpcChin_c::*actionFunc)(void*);
    typedef int (daNpcChin_c::*eventFunc)(int);

    /* 8098C104 */ daNpcChin_c();
    /* 8098C2D8 */ virtual ~daNpcChin_c();
    /* 8098C510 */ int Create();
    /* 8098C858 */ int CreateHeap();
    /* 8098CCE4 */ int Delete();
    /* 8098CD18 */ int Execute();
    /* 8098CD74 */ int Draw();
    /* 8098CDE8 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 8098CFB8 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 8098CFD8 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 8098D024 */ virtual void setParam();
    /* 8098D0F8 */ virtual int main();
    /* 8098D198 */ virtual int ctrlBtk();
    /* 8098D26C */ virtual void setAttnPos();
    /* 8098D58C */ virtual bool setExpressionAnm(int, bool);
    /* 8098D848 */ virtual bool setExpressionBtp(int);
    /* 8098D938 */ virtual void setMotionAnm(int, f32);
    /* 8098DB44 */ virtual void setExpression(int, f32);
    /* 8098DB70 */ virtual void setMotion(int, f32, int);
    /* 8098DBB4 */ virtual int drawDbgInfo();
    /* 8098DBBC */ void reset();
    /* 8098DCD0 */ void playExpression();
    /* 8098E04C */ void playMotion();
    /* 8098E5C4 */ int setAction(actionFunc i_func);
    /* 8098E66C */ void setLookMode(int);
    /* 8098E690 */ void lookat();
    /* 8098E870 */ bool step(s16, int, int);
    /* 8098EA00 */ BOOL chkFindPlayer();
    /* 8098EACC */ void setExpressionTalkAfter();
    /* 8098EBE8 */ bool wait(void*);
    /* 8098EFE4 */ bool talk(void*);
    /* 8098F208 */ void _talk_motion();
    /* 8098F2BC */ bool demo(void*);
    /* 8098F414 */ bool watch_game(void*);
    /* 8098F758 */ void Event_DT();
    void Event_DT_Base() {
        dComIfGp_event_reset();
        mOrderEvtNo = 0;
        mEventIdx = -1;
    }
    /* 8098FB3C */ BOOL isGameEnd(int&);
    /* 8098FD38 */ BOOL _chkGameClear();
    /* 8098FD5C */ void SphereReset();
    /* 8098FD80 */ int _Evt_GameStart(int);
    /* 8098FE28 */ int _Evt_GameStart_CutInit(int const&);
    /* 8098FF30 */ int _Evt_GameStart_CutMain(int const&);
    /* 8098FFD0 */ int _Evt_GameFailed(int);
    /* 80990078 */ int _Evt_GameFailed_CutInit(int const&);
    /* 80990174 */ int _Evt_GameFailed_CutMain(int const&);
    /* 80990218 */ int _Evt_GameSucceed(int);
    /* 809902C0 */ int _Evt_GameSucceed_CutInit(int const&);
    /* 8099041C */ int _Evt_GameSucceed_CutMain(int const&);
    /* 809905C4 */ int _Evt_SelectGiveUp(int);
    /* 8099066C */ int _Evt_SelectGiveUp_CutInit(int const&);
    /* 8099071C */ int _Evt_SelectGiveUp_CutMain(int const&);
    /* 809907AC */ int _Evt_GameGiveUp(int);
    /* 80990854 */ int _Evt_GameGiveUp_CutInit(int const&);
    /* 80990950 */ int _Evt_GameGiveUp_CutMain(int const&);
    /* 809909F4 */ int _Evt_Appear(int);
    /* 80990A9C */ int _Evt_Appear_CutInit(int const&);
    /* 80990BD8 */ int _Evt_Appear_CutMain(int const&);
    /* 80990C9C */ int _Evt_SpotLight_Off(int);
    /* 80990D44 */ int _Evt_SpotLight_Off_CutInit(int const&);
    /* 80990DDC */ int _Evt_SpotLight_Off_CutMain(int const&);
    /* 80991858 */ void setMtx() {
        daNpcF_c::setMtx();
        mSpotLight.setMtx();
    }

    inline BOOL isMiniGamePlaying() { return mIsMiniGamePlaying; }

    inline s8 getSWBit() { return (fopAcM_GetParam(this) >> 8) & 0xff; }

    inline s16 getMessageNo() { return (s16)shape_angle.x; }

    inline void Action() {
        if (mAction != NULL) {
            (this->*mAction)(0);
        }
    }

    inline void ForcibleTalk_On() { field_0xe06 = 1; }
    inline void ForcibleTalk_Off() { field_0xe06 = 0; }
    inline u8 getForcibleTalk2() { return field_0xe06; }

    static eventFunc mEvtSeqList[8];

    /* 0xB48 */ Z2Creature mSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ daNpcF_Lookat_c mLookat1;
    /* 0xC78 */ NPC_CHIN_HIO_CLASS* mpHIO;
    /* 0xC7C */ dCcD_Cyl mObjInf;
    /* 0xDB8 */ actionFunc mAction;
    /* 0xDC4 */ request_of_phase_process_class mPhases[6];
    /* 0xDF4 */ fpc_ProcID field_0xdf4;
    /* 0xDF8 */ int field_0xdf8;
    /* 0xDFC */ int field_0xdfc;
    /* 0xE00 */ s16 field_0xe00;
    /* 0xE02 */ s16 mLookMode;
    /* 0xE04 */ s16 mActionMode;
    /* 0xE06 */ u8 field_0xe06;
    /* 0xE07 */ s8 field_0xe07;
    /* 0xE08 */ s8 mIsMiniGamePlaying;
    /* 0xE0C */ _GlSph_Mng_c* mpSphMng;
    /* 0xE10 */ u32 mGameTime;
    /* 0xE14 */ int field_0xe14;
    /* 0xE18 */ int field_0xe18;
    /* 0xE1C */ f32 field_0xe1c;
    /* 0xE20 */ f32 field_0xe20;
    /* 0xE24 */ s8 field_0xe24;
    /* 0xE25 */ s8 field_0xe25;
    /* 0xE26 */ u8 field_0xe26[0xe30 - 0xe26];
    /* 0xE30 */ _SpotLight_c mSpotLight;
    /* 0xE70 */ daNpcF_ActorMngr_c mActorMngrs[1];
};

STATIC_ASSERT(sizeof(daNpcChin_c) == 0xe78);

#endif /* D_A_NPC_CHIN_H */
