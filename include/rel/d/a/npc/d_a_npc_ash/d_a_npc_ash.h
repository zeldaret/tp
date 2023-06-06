#ifndef D_A_NPC_ASH_H
#define D_A_NPC_ASH_H

#include "dolphin/types.h"
#include "d/a/d_a_npc.h"

class daNpcAsh_c;

typedef bool (daNpcAsh_c::*daNpcAsh_actionFn)(void*);
typedef BOOL (daNpcAsh_c::*daNpcAsh_eventFn)(int);

class daNpcAsh_c : public daNpcF_c {
private:
    /* 0xB48 */ Z2Creature mZ2;
    /* 0xBD8 */ J3DModel* mModelBow;
    /* 0xBDC */ J3DModel* mModelQuiver;
    /* 0xBE0 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE4 */ daNpcF_Lookat_c mLookat;
    /* 0xC80 */ daNpcF_ActorMngr_c mActorMngr[6];
    /* 0xCB0 */ fopAc_ac_c* mTalkPartner;
    /* 0xCB4 */ u32 field_0xcb4; // unused
    /* 0xCB8 */ dCcD_Cyl mCcCyl[2];
    /* 0xF30 */ daNpcAsh_actionFn mpActionFn;
    /* 0xF3C */ request_of_phase_process_class mPhase[2];
    /* 0xF4C */ u32 mItemPartnerId;
    /* 0xF50 */ u32 field_0xf50; // unused
    /* 0xF54 */ u32 field_0xf54;
    /* 0xF58 */ s16 mMessageNo;
    /* 0xF5A */ s16 mLookMode;
    /* 0xF5C */ u16 field_0xf5c;
    /* 0xF5E */ u8 mMapToolId;
    /* 0xF5F */ u8 field_0xf5f;
    /* 0xF60 */ u8 field_0xf60;

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
    /* 80959B28 */ /* inline */ bool setAction(daNpcAsh_actionFn);
    /* 80959BD0 */ /* inline */ bool isSneaking();
    /* 80959C40 */ bool wait_type0(void*);
    /* 8095A67C */ void setMotion(int, f32, int);
    /* 8095A6C0 */ void setExpression(int, f32);
    /* 8095A6EC */ bool wait_type1(void*);
    /* 8095A8EC */ bool talk(void*);
    /* 8095AD28 */ bool demo(void*);
    /* 8095B164 */ bool leave(void*);
    /* 8095B48C */ BOOL EvCut_Introduction(int cutIndex);
    /* 8095B58C */ BOOL EvCut_Meeting(int cutIndex);
    /* 8095B83C */ BOOL EvCut_WiretapSponsor(int cutIndex);
    /* 8095BA80 */ BOOL EvCut_WiretapEntrant(int cutIndex);
    /* 8095BCF0 */ void setParam();
    /* 8095BF6C */ BOOL main();
    /* 8095C200 */ /* inline */ void playMotion();
    /* 8095C520 */ BOOL ctrlBtk();
    /* 8095C5C4 */ void setAttnPos();
    /* 8095C9BC */ void lookat();
    /* 8095CC8C */ BOOL drawDbgInfo();

    s16 getMessageNo() { return shape_angle.x; }
    bool isMap() { return !(daNpcF_chkEvtBit(0x10c) || !daNpcF_chkEvtBit(0x108)); }
    inline void setExpressionTalkAfter() { setExpression(7, -1.0f); }
    inline void setLookMode(int i_lookMode, fopAc_ac_c* i_talkPartner);
    inline void searchActors();
    inline BOOL chkFindPlayer();
    inline bool step(s16, bool);
    inline void playExpression();

    #ifdef NONMATCHING
    static daNpcAsh_eventFn mEvtSeqList[6];
    #else
    static u8 mEvtSeqList[72];
    #endif
};

STATIC_ASSERT(sizeof(daNpcAsh_c) == 0xF64);

class daNpcAsh_Param_c {
public:
    /* 8095D5D4 */ virtual ~daNpcAsh_Param_c();

    struct param {
        /* 0x00 */ f32 m00;
        /* 0x04 */ f32 mGravity;
        /* 0x08 */ f32 m08;
        /* 0x0C */ f32 mShadow;
        /* 0x10 */ f32 mSttsWeight;
        /* 0x14 */ f32 m14;
        /* 0x18 */ f32 m18;
        /* 0x1C */ f32 m1C;
        /* 0x20 */ f32 m20;
        /* 0x24 */ f32 m24;
        /* 0x28 */ f32 m28;
        /* 0x2C */ f32 m2C;
        /* 0x30 */ f32 m30;
        /* 0x34 */ f32 m34;
        /* 0x38 */ f32 m38;
        /* 0x3C */ f32 m3C;
        /* 0x40 */ f32 mLookatScl;
        /* 0x44 */ f32 m44;
        /* 0x48 */ s16 m48;
        /* 0x4A */ s16 m4A;
        /* 0x4C */ s16 m4C;
        /* 0x4E */ s16 m4E;
        /* 0x50 */ f32 mSightAngle;
        /* 0x54 */ f32 m54[3];
        /* 0x60 */ u16 m60[6];
    };

    static param const m;
};

#endif /* D_A_NPC_ASH_H */
