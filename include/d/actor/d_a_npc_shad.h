#ifndef D_A_NPC_SHAD_H
#define D_A_NPC_SHAD_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpcShad_c
 * @brief Shad
 *
 * @details
 *
*/

struct daNpcShad_HIOParam {
    /* 0x00 */ daNpcF_HIOParam common;
    /* 0x6C */ f32 traveling_speed;     // 走行速度 (Traveling Speed)
};

class daNpcShad_Param_c: public JORReflexible {
public:
    /* 80AE1F70 */ virtual ~daNpcShad_Param_c() {}

#ifdef DEBUG
    void genMessage(JORMContext*);
#endif

    static const daNpcShad_HIOParam m;
};

class daNpcShad_c : public daNpcF_c {
public:
    typedef bool (daNpcShad_c::*ActionFn)(void*);
    typedef BOOL (daNpcShad_c::*EventFn)(int);

    enum Animation {
        /* 0x00 */ ANM_NONE,
        /* 0x01 */ ANM_F_TALK_A,
        /* 0x02 */ ANM_F_HAPPY,
        /* 0x03 */ ANM_F_ANGER,
        /* 0x04 */ ANM_F_DISCOURAGED,
        /* 0x05 */ ANM_F_CHANT,
        /* 0x06 */ ANM_F_KOMON,
        /* 0x07 */ ANM_F_SURPRISE,
        /* 0x08 */ ANM_FH_SURPRISE,
        /* 0x09 */ ANM_FH_KOMON,
        /* 0x0A */ ANM_FH_HAPPY,
        /* 0x0B */ ANM_FH_ANGER,
        /* 0x0C */ ANM_FH_DISCOURAGED,
        /* 0x0D */ ANM_WAIT_A,
        /* 0x0E */ ANM_TALK_A,
        /* 0x0F */ ANM_STEP,
        /* 0x10 */ ANM_STEPB,
        /* 0x11 */ ANM_BOOK_WAIT,
        /* 0x12 */ ANM_BOOK_TALK_A,
        /* 0x13 */ ANM_HI,
        /* 0x14 */ ANM_RUN_A,
        /* 0x15 */ ANM_WALK_A,
        /* 0x16 */ ANM_SIT_A,
        /* 0x17 */ ANM_LOOKBACK,
        /* 0x18 */ ANM_CHANT,
        /* 0x19 */ ANM_DISCOURAGED,
        /* 0x1A */ ANM_DISCOURAGED_WAIT,
        /* 0x1B */ ANM_SITTALK_A,
        /* 0x1C */ ANM_LOOK,
        /* 0x1D */ ANM_LOOK_WAIT,
        /* 0x1E */ ANM_SAD_WALK,
        /* 0x1F */ ANM_LOOKUP,
        /* 0x20 */ ANM_TAKE_KOMON,
        /* 0x21 */ ANM_READ_KOMON,
        /* 0x22 */ ANM_SURPRISE,
        /* 0x23 */ ANM_SURPRISE_WAIT,
    };

    enum Expression {
        /* 0x0 */ EXPR_TALK_A,
        /* 0x1 */ EXPR_HAPPY,
        /* 0x2 */ EXPR_ANGER,
        /* 0x3 */ EXPR_DISCOURAGED,
        /* 0x4 */ EXPR_KOMON,
        /* 0x5 */ EXPR_SURPRISE,
        /* 0x6 */ EXPR_H_SURPRISE,
        /* 0x7 */ EXPR_H_KOMON,
        /* 0x8 */ EXPR_H_HAPPY,
        /* 0x9 */ EXPR_H_ANGER,
        /* 0xA */ EXPR_H_DISCOURAGED,
        /* 0xB */ EXPR_CHANT,
        /* 0xC */ EXPR_NONE,
    };

    enum Expression_BTP {
        /* 0x0 */ EXPR_BTP_SHAD,
        /* 0x1 */ EXPR_BTP_F_ANGER,
        /* 0x2 */ EXPR_BTP_F_DISCOURAGED,
        /* 0x3 */ EXPR_BTP_F_HAPPY,
        /* 0x4 */ EXPR_BTP_F_KOMON,
        /* 0x5 */ EXPR_BTP_F_SURPRISE,
        /* 0x6 */ EXPR_BTP_FH_SURPRISE,
        /* 0x7 */ EXPR_BTP_FH_KOMON,
        /* 0x8 */ EXPR_BTP_FH_ANGER,
        /* 0x9 */ EXPR_BTP_FH_DISCOURAGED,
        /* 0xA */ EXPR_BTP_FH_HAPPY
    };

    enum Motion {
        /* 0x00 */ MOT_WAIT_A,
        /* 0x01 */ MOT_BOOK_TALK_A,
        /* 0x02 */ MOT_BOOK_WAIT,
        /* 0x03 */ MOT_HI,
        /* 0x04 */ MOT_SIT_A,
        /* 0x05 */ MOT_LOOKBACK,
        /* 0x06 */ MOT_DISCOURAGED,
        /* 0x07 */ MOT_DISCOURAGED_WAIT,
        /* 0x08 */ MOT_TALK_A,
        /* 0x09 */ MOT_SITTALK_A,
        /* 0x0A */ MOT_LOOK,
        /* 0x0B */ MOT_TAKE_KOMON,
        /* 0x0C */ MOT_READ_KOMON,
        /* 0x0D */ MOT_LOOK_WAIT,
        /* 0x0E */ MOT_SURPRISE,
        /* 0x0F */ MOT_SURPRISE_WAIT,
        /* 0x10 */ MOT_LOOKUP,
        /* 0x11 */ MOT_SAD_WALK,
        /* 0x12 */ MOT_CHANT,
        /* 0x13 */ MOT_RUN_A,
        /* 0x14 */ MOT_WALK_A,
        /* 0x15 */ MOT_STEP,
        /* 0x16 */ MOT_STEPB,
    };

    /* 80AD820C */ daNpcShad_c();
    /* 80AD8420 */ virtual ~daNpcShad_c();
    /* 80AD8620 */ cPhs__Step Create();
    /* 80AD8B60 */ int CreateHeap();
    /* 80AD90E0 */ int Delete();
    /* 80AD9114 */ int Execute();
    /* 80AD9138 */ int Draw();
    /* 80AD9280 */ int ctrlJoint(J3DJoint*, J3DModel*);
    /* 80AD944C */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80AD946C */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80AD94B8 */ bool setExpressionAnm(int, bool);
    /* 80AD974C */ bool setExpressionBtp(int);
    /* 80AD982C */ void setMotionAnm(int, f32);
    /* 80AD99B4 */ void reset();
    /* 80AD9C0C */ inline void setWaitAction();
    /* 80AD9E04 */ inline bool getPathPoint(u8, int, Vec*);
    /* 80AD9E90 */ inline bool isSneaking();
    /* 80AD9F00 */ bool wait_type0(void*);
    /* 80ADA630 */ void setMotion(int, f32, BOOL);
    /* 80ADA674 */ void setExpression(int, f32);
    /* 80ADA6A0 */ bool wait_type1(void*);
    /* 80ADB428 */ bool wait_type2(void*);
    /* 80ADB628 */ bool talk(void*);
    /* 80ADBEA8 */ bool demo(void*);
    /* 80ADC3DC */ bool leave(void*);
    /* 80ADC700 */ BOOL EvCut_Introduction(int);
    /* 80ADC800 */ BOOL EvCut_Meeting(int);
    /* 80ADCAD8 */ BOOL EvCut_ToChantSpell1(int);
    /* 80ADD720 */ BOOL EvCut_ToChantSpell2(int);
    /* 80ADE47C */ BOOL EvCut_ToChantSpell2Skip(int);
    /* 80ADE5F8 */ BOOL EvCut_DiscoveryCannon(int);
    /* 80ADED68 */ BOOL EvCut_DiscoveryCannonSkip(int);
    /* 80ADEEE4 */ BOOL EvCut_Disappear(int);
    /* 80ADF810 */ BOOL EvCut_DisappearSkip(int);
    /* 80ADF8DC */ BOOL EvCut_CallBack(int);
    /* 80ADFB70 */ BOOL EvCut_WiretapSponsor(int);
    /* 80ADFE74 */ BOOL EvCut_WiretapEntrant(int);
    /* 80AE01BC */ void setParam();
    /* 80AE0438 */ BOOL main();
    /* 80AE04D8 */ void playMotion();
    /* 80AE0B58 */ void playExpression();
    /* 80AE0ED0 */ BOOL ctrlBtk();
    /* 80AE0FAC */ void setAttnPos();
    /* 80AE1320 */ void lookat();
    /* 80AE153C */ BOOL drawDbgInfo();

    static EventFn mEvtSeqList[14];

    u8 getPathID() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    s16 getMessageNo() { return shape_angle.x; }

    void setAction(ActionFn action) {
        field_0xe1a = 3;

        if (mActionFn) {
            (this->*mActionFn)(NULL);
        }

        field_0xe1a = 0;
        mActionFn = action;

        if (mActionFn) {
            (this->*mActionFn)(NULL);
        }
    }

    csXyz* unk_inline();
    BOOL chkFindPlayer();
    void setLookMode(int, fopAc_ac_c*, cXyz*);
    BOOL step(s16, int, f32);
    void setExpressionTalkAfter();
    void setLookObliquenessUp();

    void searchActors() {
        if (mMode == 0) {
            if (mActorMngr[1].getActorP() == NULL) {
                mActorMngr[1].entry(fopAcM_SearchByName(PROC_NPC_ASH));
            }

            if (mActorMngr[2].getActorP() == NULL) {
                mActorMngr[2].entry(fopAcM_SearchByName(PROC_NPC_RAFREL));
            }

            if (mActorMngr[3].getActorP() == NULL) {
                mActorMngr[3].entry(fopAcM_SearchByName(PROC_NPC_MOIR));
            }

            if (mActorMngr[4].getActorP() == NULL) {
                mActorMngr[4].entry(getEvtAreaTagP(17, 0));
            }
        } else if (mMode == 1
                     /* dSv_event_flag_c::F_0302 - Kakariko Village - Saw cutscene of Shad casting spells underneat Kakariko Village */
                  && daNpcF_chkEvtBit(0x12E) && mActorMngr[4].getActorP() == NULL) {
            mActorMngr[4].entry(getEvtAreaTagP(18, 0));
        }
    }

private:
    /* 0xB48 */ J3DModel* mBookKnifeModel;
    /* 0xB4C */ J3DModel* mKomonshoModel;
    /* 0xB50 */ Z2Creature mSound;
    /* 0xBE0 */ daNpcF_MatAnm_c* mpMatAnm;
    /* 0xBE4 */ daNpcF_Lookat_c mLookat;
    /* 0xC80 */ daNpcF_ActorMngr_c mActorMngr[5];
    /* 0xCA8 */ daPy_py_c* field_0xca8;
    /* 0xCAC */ u8 field_0xcac[0xcb0 - 0xcac];
    /* 0xCB0 */ dCcD_Cyl field_0xcb0;
    /* 0xDEC */ ActionFn mActionFn;
    /* 0xDF8 */ request_of_phase_process_class mPhases[2];
    /* 0xE08 */ fpc_ProcID mItemPartnerId;
    /* 0xE0C */ int field_0xe0c;
    /* 0xE10 */ int field_0xe10;
    /* 0xE14 */ s16 field_0xe14;
    /* 0xE16 */ s16 field_0xe16;
    /* 0xE18 */ s16 mLookMode;
    /* 0xE1A */ u16 field_0xe1a;
    /* 0xE1C */ s16 field_0xe1c;
    /* 0xE1E */ u8 field_0xe1e;
    /* 0xE1F */ u8 field_0xe1f;
    /* 0xE20 */ u8 mMode;
};

STATIC_ASSERT(sizeof(daNpcShad_c) == 0xe24);

#endif /* D_A_NPC_SHAD_H */
