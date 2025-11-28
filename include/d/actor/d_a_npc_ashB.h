#ifndef D_A_NPC_ASHB_H
#define D_A_NPC_ASHB_H

#include "d/actor/d_a_npc4.h"

struct daNpcAshB_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 field_0x6c;
};

class daNpcAshB_Param_c {
public:
    /* 80962078 */ virtual ~daNpcAshB_Param_c() {}

    static const daNpcAshB_HIOParam m;
};

#if DEBUG
class daNpcAshB_HIO_c : public mDoHIO_entry_c {
public:
    daNpcAshB_HIO_c();

    void genMessage(JORMContext*);

    daNpcAshB_HIOParam m;
};

#define NPC_ASHB_HIO_CLASS daNpcAshB_HIO_c
#else
#define NPC_ASHB_HIO_CLASS daNpcAshB_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpcAshB_c
 * @brief Ashei (Yeti Garb)
 *
 * @details
 *
 */
class daNpcAshB_c : public daNpcF_c {
public:
    typedef bool (daNpcAshB_c::*ActionFn)(void*);
    typedef BOOL (daNpcAshB_c::*EventFn)(int);

    enum Animation {
        /* 0x00 */ ANM_NONE,
        /* 0x01 */ ANM_F_TALK_A,
        /* 0x02 */ ANM_F_TALK_B,
        /* 0x03 */ ANM_F_SILENT,
        /* 0x04 */ ANM_F_COOL,
        /* 0x05 */ ANM_F_ASK,
        /* 0x06 */ ANM_F_EXPLAIN_A,
        /* 0x07 */ ANM_F_EXPLAIN_B,
        /* 0x08 */ ANM_WAIT_A,
        /* 0x09 */ ANM_WAIT_B,
        /* 0x0A */ ANM_WAIT_C,
        /* 0x0B */ ANM_STEP,
        /* 0x0C */ ANM_COOL,
        /* 0x0D */ ANM_ASK,
        /* 0x0E */ ANM_EXPLAIN_A,
        /* 0x0F */ ANM_EXPLAIN_B,
        /* 0x10 */ ANM_BOWWAIT,
        /* 0x11 */ ANM_BOWRUN,
    };

    enum Expression {
        /* 0x0 */ EXPR_TALK_A,
        /* 0x1 */ EXPR_TALK_B,
        /* 0x2 */ EXPR_SILENT,
        /* 0x3 */ EXPR_COOL,
        /* 0x4 */ EXPR_ASK,
        /* 0x5 */ EXPR_EXPLAIN_A,
        /* 0x6 */ EXPR_EXPLAIN_B,
        /* 0x7 */ EXPR_NONE,
    };

    enum Motion {
        /* 0x0 */ MOT_WAIT_A,
        /* 0x1 */ MOT_WAIT_B,
        /* 0x2 */ MOT_WAIT_C,
        /* 0x3 */ MOT_COOL,
        /* 0x4 */ MOT_ASK,
        /* 0x5 */ MOT_EXPLAIN_A,
        /* 0x6 */ MOT_EXPLAIN_B,
        /* 0x7 */ MOT_BOWWAIT,
        /* 0x8 */ MOT_BOWRUN,
        /* 0x9 */ MOT_STEP,
    };

    enum LookMode {
        /* 0 */ LOOK_NONE,
        /* 1 */ LOOK_RESET,
        /* 2 */ LOOK_PLAYER,
        /* 3 */ LOOK_PLAYER_TALK,
        /* 4 */ LOOK_ACTOR,
        /* 5 */ LOOK_ATTN,
    };

public:
    /* 8095DE4C */ daNpcAshB_c();
    /* 8095E060 */ ~daNpcAshB_c();
    /* 8095E224 */ cPhs__Step Create();
    /* 8095E4A0 */ BOOL CreateHeap();
    /* 8095E914 */ int Delete();
    /* 8095E948 */ int Execute();
    /* 8095E96C */ int Draw();
    /* 8095E9C8 */ bool ctrlJoint(J3DJoint*, J3DModel*);
    /* 8095EB94 */ static BOOL createHeapCallBack(fopAc_ac_c*);
    /* 8095EBB4 */ static BOOL ctrlJointCallBack(J3DJoint*, int);
    /* 8095EC00 */ inline bool setExpressionAnm(int, bool);
    /* 8095EE00 */ inline bool setExpressionBtp(int);
    /* 8095EEE0 */ void setMotionAnm(int, f32);
    /* 8095F0A4 */ void reset();
    /* 8095F21C */ inline bool setAction(ActionFn i_actionFn);
    /* 8095F2C4 */ bool wait(void*);
    /* 8095FC70 */ void setMotion(int, f32, int);
    /* 8095FD34 */ void setExpression(int, f32);
    /* 8095FD9C */ bool talk(void*);
    /* 809602E0 */ bool demo(void*);
    /* 809604C8 */ BOOL EvCut_Appear(int);
    /* 80960A60 */ inline void setParam();
    /* 80960AE8 */ inline BOOL main();
    /* 80960D64 */ inline void playMotion();
    /* 80961188 */ inline BOOL ctrlBtk();
    /* 80961264 */ inline void setAttnPos();
    /* 80961574 */ inline void lookat();
    /* 80961770 */ inline void drawOtherMdls();
    /* 809617F8 */ inline BOOL drawDbgInfo();

    s16 getMessageNo() { return (fopAcM_GetParam(this) >> 8) & 0xFFFF; }
    inline void setExpressionTalkAfter() { setExpression(6, -1.0f); }
    inline void setLookMode(int i_lookMode);
    inline BOOL chkFindPlayer();
    inline bool step(s16, int, f32);
    inline void playExpression();

    static EventFn mEvtSeqList[2];

private:
    /* 0xB48 */ Z2Creature mCreatureSound;
    /* 0xBD8 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBDC */ J3DModel* mpModel;
    /* 0xBE0 */ daNpcF_Lookat_c mLookat;
    /* 0xC7C */ daNpcF_ActorMngr_c mActorMngr[1];
    /* 0xC84 */ NPC_ASHB_HIO_CLASS* mpHIO;
    /* 0xC88 */ dCcD_Cyl mCyl;
    /* 0xDC4 */ ActionFn mpActionFn;
    /* 0xDD0 */ request_of_phase_process_class mPhase[1];
    /* 0xDD8 */ u32 mItemPartnerId;
    /* 0xDDC */ u32 field_0xddc;
    /* 0xDE0 */ u32 field_0xde0;
    /* 0xDE4 */ s16 mFlowID;
    /* 0xDE6 */ s16 mLookMode;
    /* 0xDE8 */ u16 mMode;
    /* 0xDEA */ s16 field_0xdea;
    /* 0xDEC */ u8 field_0xdec;
    /* 0xDED */ u8 field_0xded;
    /* 0xDEE */ u8 field_0xdee;
};

STATIC_ASSERT(sizeof(daNpcAshB_c) == 0xdf0);

#endif /* D_A_NPC_ASHB_H */
