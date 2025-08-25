#ifndef D_A_MYNA_H
#define D_A_MYNA_H

#include "Z2AudioLib/Z2Creature.h"
#include "d/d_cc_d.h"
#include "d/d_msg_flow.h"
#include "f_op/f_op_actor_mng.h"
#include "m_Do/m_Do_ext.h"
#include "m_Do/m_Do_hostIO.h"

// This struct may end up belonging elsewhere
struct ShopItem {
    /* 0x0 */ u32 mTargetActorID;
    /* 0x4 */ u32 mSubActorID;
    /* 0x8 */ u16 mFlowNodeNum;
    /* 0xA */ u16 mValueNum;
    /* 0xC */ u8 mItemType;
    /* 0xD */ u8 mItemStatus;
};

STATIC_ASSERT(sizeof(ShopItem) == 0x10);

/**
 * @ingroup actors-npcs
 * @class daMyna_c
 * @brief Trill
 *
 * @details
 *
 */
class daMyna_c : public fopAc_ac_c {
public:
    /* 80945E80 */ int baseMotion00(int);
    /* 80945EC0 */ int baseMotion01(int);
    /* 80945F00 */ int baseMotion02(int);
    /* 80945F40 */ int baseMotion03(int);
    /* 80945FA0 */ int baseMotion04(int);
    /* 80946000 */ int baseMotion05(int);
    /* 80946060 */ int baseMotion06(int);
    /* 809460A0 */ int create();
    /* 809463B8 */ int destroy();
    /* 8094640C */ int draw();
    /* 809464CC */ int execute();
    /* 809466D8 */ int createHeap();
    /* 8094686C */ int jntNodeCB(J3DJoint*, J3DModel*);
    /* 809468EC */ void attack_wait_init();
    /* 8094692C */ void attack_wait_move();
    /* 80946AEC */ void attack_before_talk_init();
    /* 80946B40 */ void attack_before_talk_move();
    /* 80946BB4 */ void attack_fly_init();
    /* 80946BF4 */ void attack_fly_move();
    /* 80946D20 */ void attack_init();
    /* 80946D64 */ void attack_move();
    /* 80946DD4 */ void attack_after_talk_init();
    /* 80946E08 */ void attack_after_talk_move();
    /* 80946E84 */ void greet_wait_init();
    /* 80946EB0 */ void greet_wait_move();
    /* 80947030 */ void greet_talk_init();
    /* 8094711C */ void greet_talk_move();
    /* 809471BC */ void shopping_wait_init();
    /* 809471E8 */ void shopping_wait_move();
    /* 809475B4 */ void shopping_talk_init();
    /* 80947630 */ void shopping_talk_move();
    /* 809476A0 */ void thanks_talk_init();
    /* 8094772C */ void thanks_talk_move();
    /* 80947794 */ void byebye_talk_init();
    /* 809478D0 */ void byebye_talk_move();
    /* 80947A00 */ void turn_on_start_init();
    /* 80947AA4 */ void turn_on_start_move();
    /* 80947CD0 */ void turn_on_init();
    /* 80947CFC */ void turn_on_move();
    /* 80947D48 */ void turn_on_end1_init();
    /* 80947D74 */ void turn_on_end1_move();
    /* 80947E18 */ void turn_on_end2_init();
    /* 80947E50 */ void turn_on_end2_move();
    /* 80948070 */ void turn_on_end3_init();
    /* 80948074 */ void turn_on_end3_move();
    /* 809480E4 */ void wolf_talk_init();
    /* 80948118 */ void wolf_talk_move();
    /* 80948174 */ void attack_wait2_init();
    /* 809481B4 */ void attack_wait2_move();
    /* 80948388 */ void attack_before_talk2_init();
    /* 809483DC */ void attack_before_talk2_move();
    /* 80948444 */ void attack_fly2_init();
    /* 80948484 */ void attack_fly2_move();
    /* 80948600 */ void attack2_init();
    /* 80948644 */ void attack2_move();
    /* 809486F8 */ void attack2_talk_init();
    /* 80948734 */ void attack2_talk_move();
    /* 809487EC */ void soldoutItem(fpc_ProcID);
    /* 80948828 */ bool fly_attack_move();
    /* 80948ADC */ bool fly_return_move();
    /* 80948DFC */ void fly_body_wave();
    /* 80948E84 */ void talkAnime(msg_class*);
    /* 80948FAC */ int chkEvent();
    /* 809490B8 */ int orderEvent();
    /* 80949128 */ void deleteItem(int);
    /* 80949144 */ void deleteItem(fpc_ProcID);
    /* 80949190 */ void initiate();
    /* 80949408 */ void setItemInfo();
    /* 80949544 */ void setRoomNo();
    /* 80949588 */ void setCollision();
    /* 809495E0 */ void set_mtx();
    /* 80949744 */ void animePlay();
    /* 8094983C */ int setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 809498B8 */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 809498F8 */ J3DAnmTransformKey* getTrnsfrmKeyAnm(char*);
    /* 80949948 */ J3DAnmTexPattern* getTexPtrnAnm(char*);
    /* 80949A70 */ int checkEndAnm(J3DFrameCtrl*);
    /* 80949998 */ int checkEndAnm(f32);
    /* 80949AD4 */ int getItemNumMax();
    /* 80949AE0 */ int getItemType(void*);
    /* 80949C0C */ u16 getFlowNodeNum();
    /* 80949C44 */ void checkDead();
    /* 80949D54 */ int chkPlayerInEvtArea(fopAc_ac_c*, cXyz);
    /* 80949EE8 */ void animeControl();
    /* 8094A054 */ void setAnimeType(u8, f32);
    /* 8094A098 */ void playDefaultWaitAnime();
    /* 8094A608 */ void setDefaultWaitAnime(u8);
    /* 8094AA20 */ virtual ~daMyna_c() {}

    daMyna_c() {}

    void onEventFlag(u8 flag) { field_0x92F |= (1 << flag); }
    void offEventFlag(u8 flag) { field_0x92F &= ~(1 << flag); }
    bool isEventFlag(u8 flag) { return field_0x92F & (1 << flag); }

    fopAc_ac_c* getSpeakActorPtr() { return field_0x828; }

    typedef void (daMyna_c::*ProcFunc)();
    typedef int (daMyna_c::*BaseMotionFunc)(int);

    static dCcD_SrcSph const mCcDSph;
    static daMyna_c::BaseMotionFunc mBaseMotionTBL[7];

    /* 0x56C */ request_of_phase_process_class mPhase;
    /* 0x574 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x578 */ mDoExt_btpAnm mBtpAnm;
    /* 0x590 */ Z2Creature mCreature;
    /* 0x620 */ dMsgFlow_c mMsgFlow;
    /* 0x66C */ cBgS_GndChk mGndChk;
    /* 0x6A8 */ dCcD_Stts mStatus;
    /* 0x6E4 */ dCcD_Sph mSph;
    /* 0x81C */ s32 field_0x81C;
    /* 0x820 */ s32 field_0x820;
    /* 0x824 */ u32 field_0x824;
    /* 0x828 */ fopAc_ac_c* field_0x828;
    /* 0x82C */ cXyz field_0x82C;
    /* 0x838 */ cXyz field_0x838;
    /* 0x844 */ cXyz field_0x844;
    /* 0x850 */ cXyz field_0x850;
    /* 0x85C */ cXyz field_0x85C;
    /* 0x868 */ ShopItem mShopItems[10];
    /* 0x908 */ s32 field_0x908;
    /* 0x90C */ f32 field_0x90C;
    /* 0x910 */ f32 field_0x910;
    /* 0x914 */ u16 field_0x914;
    /* 0x916 */ s16 field_0x916;
    /* 0x918 */ s16 field_0x918;
    /* 0x91A */ s16 field_0x91A;
    /* 0x91C */ u16 field_0x91C;
    /* 0x91E */ u16 field_0x91E;
    /* 0x920 */ s16 field_0x920;
    /* 0x922 */ s16 field_0x922;
    /* 0x924 */ s16 field_0x924;
    /* 0x926 */ s16 field_0x926;
    /* 0x928 */ s16 field_0x928;
    /* 0x92A */ s16 field_0x92A;
    /* 0x92C */ u8 field_0x92C;
    /* 0x92D */ u8 field_0x92D;
    /* 0x92E */ u8 field_0x92E;
    /* 0x92F */ u8 field_0x92F;
    /* 0x930 */ u8 mNumShopItems;
    /* 0x931 */ u8 field_0x931;
    /* 0x932 */ u8 field_0x932;
    /* 0x933 */ u8 field_0x933;
    /* 0x934 */ u8 field_0x934;
    /* 0x935 */ u8 field_0x935;
    /* 0x936 */ u8 field_0x936;
    /* 0x937 */ u8 field_0x937;
    /* 0x938 */ u8 field_0x938;
    /* 0x939 */ u8 field_0x939;
};

STATIC_ASSERT(sizeof(daMyna_c) == 0x93C);


#endif /* D_A_MYNA_H */
