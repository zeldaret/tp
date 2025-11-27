#ifndef D_A_NPC_ASH_H
#define D_A_NPC_ASH_H

#include "d/actor/d_a_npc4.h"

struct daNpcAsh_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
};

class daNpcAsh_Param_c {
public:
    /* 8095D5D4 */ virtual ~daNpcAsh_Param_c() {}

    static const daNpcAsh_HIOParam m;
};

#if DEBUG
class daNpcAsh_HIO_c : public mDoHIO_entry_c {
public:
    daNpcAsh_HIO_c();

    void genMessage(JORMContext*);

    daNpcAsh_HIOParam m;
};

#define NPC_ASH_HIO_CLASS daNpcAsh_HIO_c
#else
#define NPC_ASH_HIO_CLASS daNpcAsh_Param_c
#endif

/**
 * @ingroup actors-npcs
 * @class daNpcAsh_c
 * @brief Ashei
 *
 * @details
 *
 */
class daNpcAsh_c : public daNpcF_c {
public:
    typedef bool (daNpcAsh_c::*ActionFn)(void*);
    typedef BOOL (daNpcAsh_c::*EventFn)(int);

    enum Type {
        /* 0 */ TYPE_BAR,
        /* 1 */ TYPE_CASTLE,
    };

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

public:
    /* 809582EC */ daNpcAsh_c();
    /* 80958610 */ ~daNpcAsh_c();
    /* 809587A0 */ cPhs__Step Create();
    /* 80958B68 */ BOOL CreateHeap();
    /* 809590C4 */ int Delete();
    /* 809590F8 */ int Execute();
    /* 8095911C */ int Draw();
    /* 80959238 */ bool ctrlJoint(J3DJoint*, J3DModel*);
    /* 80959458 */ static BOOL createHeapCallBack(fopAc_ac_c*);
    /* 80959478 */ static BOOL ctrlJointCallBack(J3DJoint*, int);
    /* 809594C4 */ bool setExpressionAnm(int, bool);
    /* 809596E0 */ bool setExpressionBtp(int);
    /* 809597C0 */ void setMotionAnm(int i_idx, f32 i_morf);
    /* 80959910 */ void reset();
    /* 80959B28 */ inline bool setAction(ActionFn);
    /* 80959BD0 */ inline bool isSneaking();
    /* 80959C40 */ bool wait_type0(void*);
    /* 8095A67C */ void setMotion(int, f32, int);
    /* 8095A6C0 */ void setExpression(int, f32);
    /* 8095A6EC */ bool wait_type1(void*);
    /* 8095A8EC */ bool talk(void*);
    /* 8095AD28 */ bool demo(void*);
    /* 8095B164 */ bool leave(void*);
    /* 8095B48C */ BOOL EvCut_Introduction(int);
    /* 8095B58C */ BOOL EvCut_Meeting(int);
    /* 8095B83C */ BOOL EvCut_WiretapSponsor(int);
    /* 8095BA80 */ BOOL EvCut_WiretapEntrant(int);
    /* 8095BCF0 */ inline void setParam();
    /* 8095BF6C */ inline BOOL main();
    /* 8095C200 */ inline void playMotion();
    /* 8095C520 */ inline BOOL ctrlBtk();
    /* 8095C5C4 */ inline void setAttnPos();
    /* 8095C9BC */ inline void lookat();
    /* 8095CC8C */ inline BOOL drawDbgInfo();

    s16 getMessageNo() { return shape_angle.x; }
    /* dSv_event_flag_c::F_0268 - City in the Sky - City in the Sky clear */
    bool isMap() {
        return !(daNpcF_chkEvtBit(0x10c)
                 /* dSv_event_flag_c::F_0264 - Cutscene - Get master sword */
                 || !daNpcF_chkEvtBit(0x108));
    }
    inline void setExpressionTalkAfter() { setExpression(7, -1.0f); }
    inline void setLookMode(int i_lookMode, fopAc_ac_c* i_talkPartner);
    inline void searchActors();
    inline BOOL chkFindPlayer();
    inline bool step(s16, bool);
    inline void playExpression();

    static EventFn mEvtSeqList[6];

private:
    /* 0xB48 */ Z2Creature mCreatureSound;
    /* 0xBD8 */ J3DModel* mModelBow;
    /* 0xBDC */ J3DModel* mModelQuiver;
    /* 0xBE0 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE4 */ daNpcF_Lookat_c mLookat;
    /* 0xC80 */ daNpcF_ActorMngr_c mActorMngr[6];
    /* 0xCB0 */ fopAc_ac_c* mTalkPartner;
    /* 0xCB4 */ NPC_ASH_HIO_CLASS* mpHIO;
    /* 0xCB8 */ dCcD_Cyl mCcCyl[2];
    /* 0xF30 */ ActionFn mpActionFn;
    /* 0xF3C */ request_of_phase_process_class mPhase[2];
    /* 0xF4C */ u32 mItemPartnerId;
    /* 0xF50 */ u32 field_0xf50;  // unused
    /* 0xF54 */ u32 field_0xf54;
    /* 0xF58 */ s16 mFlowID;
    /* 0xF5A */ s16 mLookMode;
    /* 0xF5C */ u16 mMode;
    /* 0xF5E */ u8 mMapToolId;
    /* 0xF5F */ u8 field_0xf5f;
    /* 0xF60 */ u8 mType;
};

STATIC_ASSERT(sizeof(daNpcAsh_c) == 0xF64);

#endif /* D_A_NPC_ASH_H */
