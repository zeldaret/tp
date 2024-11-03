#ifndef D_A_MIDNA_H
#define D_A_MIDNA_H

#include "JSystem/J3DGraphBase/J3DMatBlock.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/d_com_inf_game.h"
#include "d/actor/d_a_player.h"
#include "d/d_msg_flow.h"
#include "dolphin/types.h"

class daMidna_c;
typedef int (daMidna_c::*daMidna_func)();

/**
 * @ingroup actors-unsorted
 * @class daMidna_c
 * @brief Midna
 *
 * @details
 *
 */
class daMidna_c : public fopAc_ac_c {
public:
    enum daMidna_ERFLG0 {
        ERFLG0_NO_SERVICE_WAIT = 0x80,
        ERFLG0_FORCE_MORF_CANCEL = 0x10,
        ERFLG0_FORCE_PANIC = 8,
        ERFLG0_UNK_2 = 2,
    };

    enum daMidna_FLG0 {
        FLG0_UNK_80000000 = 0x80000000,
        FLG0_PORTAL_OBJ_CALL = 0x8000000,
        FLG0_NPC_NEAR = 0x100000,
        FLG0_NPC_FAR = 0x40000,
        FLG0_UNK_20000 = 0x20000,
        FLG0_NO_INPUT = 0x4000,
        FLG0_NO_DRAW = 0x2000,
        FLG0_UNK_400 = 0x400,
        FLG0_UNK_800 = 0x800,
        FLG0_UNK_200 = 0x200,
    };

    enum daMidna_FLG1 {
        FLG1_SHADOW_NO_DRAW = 0x1000,
        FLG1_UNK_100 = 0x100,
        FLG1_NO_MASK_DRAW = 0x80,
        FLG1_FORCE_NORMAL_COL = 8,
        FLG1_FORCE_TIRED_COL = 4,
        FLG1_SHADOW_MODEL_DRAW_DEMO_FORCE = 2,
    };

    enum daMidna_ANM {};

    void onForcePanic();
    u32 checkForceNormalColor() const;
    u32 checkForceTiredColor() const;
    static bool checkMidnaTired();
    void onNoServiceWait();

    /* 804BC3E0 */ void modelCallBack(int);
    /* 804BC5C4 */ void changeUpperBck();
    /* 804BC614 */ void changeFaceBck();
    /* 804BC670 */ void baseModelCallBack(int);
    /* 804BC740 */ void initInvModel(u16, J3DModel**, mDoExt_invisibleModel*, u32);
    /* 804BC7D4 */ void initDemoModel(J3DModel**, char const*, u32);
    /* 804BC868 */ void createHeap();
    /* 804BD274 */ void create();
    /* 804BD93C */ void allAnimePlay();
    /* 804BDE04 */ void setMatrix();
    /* 804BE470 */ void setBodyPartMatrix();
    /* 804BED1C */ void setRoomInfo();
    /* 804BEDB8 */ void setBodyPartPos();
    /* 804BEFA0 */ void checkAppear();
    /* 804BF070 */ void checkMidnaPosState();
    /* 804BFF80 */ void setUpperAnime(u16, u16);
    /* 804C0020 */ void setUpperAnimeAndSe(daMidna_c::daMidna_ANM);
    /* 804C0094 */ void setFaceAnime(u16, u16);
    /* 804C0134 */ void endHighModel();
    /* 804C0238 */ void setDemoAnm();
    /* 804C0BAC */ void setFaceBtp(u16, int);
    /* 804C0C6C */ void setFaceBtk(u16, int);
    /* 804C0D2C */ void setLeftHandShape(u16);
    /* 804C0E18 */ void setRightHandShape(u16);
    /* 804C0F04 */ void checkHairOnlyAnime(int) const;
    /* 804C0F24 */ void setBckAnime(J3DAnmTransform*, int, f32);
    /* 804C103C */ void setAnm();
    /* 804C287C */ void getNeckAimAngle(cXyz const*, s16*, s16*, s16*, s16*);
    /* 804C2A68 */ void clearEyeMove();
    /* 804C2AB8 */ void setEyeMove(cXyz const*, s16, s16);
    /* 804C2EBC */ void setNeckAngle();
    /* 804C3168 */ void initHairAngle();
    /* 804C3298 */ void setHairAngle();
    /* 804C3F04 */ void setDemoData();
    /* 804C4394 */ void setSimpleBrk(J3DModelData*, u16);
    /* 804C4444 */ void setSimpleBtk(J3DModelData*, u16);
    /* 804C44CC */ void initMidnaModel();
    /* 804C49B8 */ void setMidnaNoDrawFlg();
    /* 804C4AE8 */ void checkMetamorphoseEnableBase();
    /* 804C4B68 */ void checkNoDrawState();
    /* 804C4BC0 */ void setSound();
    /* 804C4FDC */ void execute();
    /* 804C5A08 */ void draw();
    /* 804C61A4 */ ~daMidna_c();

    void onEndResetStateFlg0(daMidna_ERFLG0 pFlg) { mEndResetStateFlg0 |= pFlg; }
    void onStateFlg0(daMidna_FLG0 i_flag) { mStateFlg0 |= i_flag; }
    void offStateFlg0(daMidna_FLG0 i_flag) { mStateFlg0 &= ~i_flag; }
    void onStateFlg1(daMidna_FLG1 i_flag) { mStateFlg1 |= i_flag; }
    void offStateFlg1(daMidna_FLG1 i_flag) { mStateFlg1 &= ~i_flag; }
    BOOL checkStateFlg0(daMidna_FLG0 flag) const { return mStateFlg0 & flag; }
    u32 checkStateFlg1(daMidna_FLG1 flag) const { return mStateFlg1 & flag; }
    void setFaceNum(int num) { mFaceNum = num; }
    void setMotionNum(int num) { mMotionNum = num; }
    bool checkDemoTypeNone() const { return mDemoType == 0; }
    void changeOriginalDemo() { mDemoType = 3; }
    void changeDemoMode(u32 mode) { mDemoMode = mode; }
    BOOL checkPortalObjCall() { return checkStateFlg0(FLG0_PORTAL_OBJ_CALL); }
    BOOL checkNpcNear() { return checkStateFlg0(FLG0_NPC_NEAR); }
    BOOL checkNpcFar() { return checkStateFlg0(FLG0_NPC_FAR); }
    BOOL checkNoDraw() const { return checkStateFlg0(FLG0_NO_DRAW); }
    BOOL checkNoInput() const { return checkStateFlg0(FLG0_NO_INPUT); }
    BOOL checkWolfNoPos() const { return checkStateFlg0(FLG0_UNK_800); }
    int checkMetamorphoseEnable() { return (this->*mpFunc)(); }
    u32 checkShadowModelDrawDemoForce() const { return checkStateFlg1(FLG1_SHADOW_MODEL_DRAW_DEMO_FORCE); }
    
    void setForceNeckAimPos(const cXyz& i_pos) {
        onStateFlg0(FLG0_UNK_20000);
        field_0x9c4 = i_pos;
    }

    void onTagWaitPosWarp(const cXyz* param_0) {
        field_0x9ac = *param_0;
        onStateFlg0(FLG0_UNK_400);
        onEndResetStateFlg0(ERFLG0_UNK_2);
    }

    void onTagWaitPos(const cXyz* param_0) {
        field_0x9ac = *param_0;
        onStateFlg0(FLG0_UNK_400);
    }

    void offTagWaitPos() {
        offStateFlg0((daMidna_FLG0)(FLG0_UNK_80000000 | FLG0_PORTAL_OBJ_CALL | FLG0_UNK_400));
    }

    void onTagNoHairLead() {
        onStateFlg0(FLG0_UNK_80000000);
    }

    void onSideWarp() {
        onStateFlg1(FLG1_UNK_100);
    }

    MtxP getMtxHairTop() {
        return field_0x574->getAnmMtx(10);
    }

    bool checkReturnAnime() const {
        return field_0x5e4[0].getIdx() == 0x1CA;
    }

    bool checkShadowModelDrawSmode() const {
        return field_0x84e == 3 || field_0x84e == 4 || field_0x84e == 2;
    }

    bool checkShadowModelDraw() const {
        return checkShadowModelDrawDemoForce() || checkShadowModelDrawSmode();
    }

    bool checkShadowReturnEnd() const {
        return field_0x5e4[0].getIdx() == 0x21C && field_0x578->isStop();
    }

    bool checkShadowModeTalkWait() const {
        return (field_0x84e == 2 || field_0x84e == 1) ;
    }

    void setShadowReturn() { field_0x84e = 4; }


    bool checkPortalObjRide() const {
        return checkStateFlg0(FLG0_PORTAL_OBJ_CALL) && checkStateFlg0(FLG0_UNK_200);
    }

    BOOL checkShadowNoDraw() const {
        return checkStateFlg1(FLG1_SHADOW_NO_DRAW);
    }

    BOOL checkNoMaskDraw() const {
        return checkStateFlg1(FLG1_NO_MASK_DRAW);
    }

    BOOL checkDemoPortalWarpWait() const { return mDemoMode == 11; }

    inline static BOOL checkMidnaRealBody();

    inline static BOOL i_checkMidnaRealBody() {
        return dKy_darkworld_check() == 1 || dComIfGs_isTransformLV(3);
    }

    static bool i_checkMidnaTired() {
        return dComIfGs_isTransformLV(3) && !dComIfGs_isEventBit(0x1E08);
    }

    void resetRatBody() {}

    bool checkFlyWaitAnime() {
        return field_0x5e4[0].getIdx() == 0x1CB || field_0x5e4[0].getIdx() == 0x1C7
            || field_0x5e4[0].getIdx() == 0x1C8 || field_0x5e4[0].getIdx() == 0x1C9;
    }

    void onForceMorfCancel() { onEndResetStateFlg0(ERFLG0_FORCE_MORF_CANCEL); }

    static u8 const m_texDataTable[84];
    static u8 const m_anmDataTable[636];

private:
    /* 0x0568 */ request_of_phase_process_class mPhase;
    /* 0x0570 */ J3DModel* field_0x570;
    /* 0x0574 */ J3DModel* field_0x574;
    /* 0x0578 */ mDoExt_McaMorfSO* field_0x578;
    /* 0x057C */ mDoExt_McaMorfCallBack1_c* field_0x57c; // this is really daMidna_McaMorfCB1_c. fix later
    /* 0x0580 */ cXyz* field_0x580;
    /* 0x0584 */ mDoExt_bckAnm field_0x584;
    /* 0x05A0 */ mDoExt_bckAnm field_0x5a0;
    /* 0x05BC */ J3DAnmTexPattern* field_0x5bc;
    /* 0x05C0 */ J3DAnmTextureSRTKey* field_0x5c0;
    /* 0x05C4 */ mDoExt_invisibleModel field_0x5c4;
    /* 0x05CC */ mDoExt_invisibleModel mInvMaskBmd;
    /* 0x05D4 */ mDoExt_invisibleModel mInvHandsBmd;
    /* 0x05DC */ mDoExt_invisibleModel mInvHairhandBmd;
    /* 0x05E4 */ daPy_anmHeap_c field_0x5e4[3];
    /* 0x0620 */ daPy_anmHeap_c field_0x620;
    /* 0x0634 */ daPy_anmHeap_c field_0x634;
    /* 0x0648 */ J3DAnmTextureSRTKey* field_0x648;
    /* 0x064C */ J3DAnmTextureSRTKey* field_0x64c;
    /* 0x0650 */ J3DAnmTextureSRTKey* field_0x650;
    /* 0x0654 */ J3DAnmTextureSRTKey* field_0x654;
    /* 0x0658 */ J3DAnmTevRegKey* field_0x658;
    /* 0x065C */ J3DAnmTevRegKey* field_0x65c;
    /* 0x0660 */ J3DAnmTevRegKey* field_0x660;
    /* 0x0664 */ J3DAnmTevRegKey* field_0x664;
    /* 0x0668 */ J3DAnmTevRegKey* field_0x668;
    /* 0x066C */ J3DAnmTevRegKey* field_0x66c;
    /* 0x0670 */ J3DModel* field_0x670;
    /* 0x0674 */ J3DModel* mpMaskBmd;
    /* 0x0678 */ J3DModel* field_0x678;
    /* 0x067C */ J3DModel* mpHandsBmd;
    /* 0x0680 */ J3DModel* field_0x680;
    /* 0x0684 */ J3DModel* mpHairhandBmd;
    /* 0x0688 */ J3DModel* mpDemoBDTmpBmd;
    /* 0x068C */ J3DModel* mpDemoBDMaskBmd;
    /* 0x0690 */ J3DModel* mpDemoBDHandsBmd;
    /* 0x0694 */ J3DModel* mpDemoBDHairhandBmd;
    /* 0x0698 */ J3DModel* mpGokouBmd;
    /* 0x069C */ J3DShape* field_0x69c;
    /* 0x06A0 */ J3DShape* field_0x6a0;
    /* 0x06A4 */ J3DShape* field_0x6a4;
    /* 0x06A8 */ J3DShape* field_0x6a8;
    /* 0x06AC */ J3DModel* mpDemoFCBlendBmd;
    /* 0x06B0 */ J3DModel* mpDemoFCTongueBmd;
    /* 0x06B4 */ J3DAnmTextureSRTKey* field_0x6b4;
    /* 0x06B8 */ mDoExt_bckAnm* mpDemoFCTmpBck;
    /* 0x06BC */ J3DDeformData* mpDemoFCTmpBls;
    /* 0x06C0 */ J3DAnmCluster* field_0x6c0;
    /* 0x06C4 */ mDoExt_blkAnm* field_0x6c4;
    /* 0x06C8 */ J3DModel* mpDemoHLTmpBmd;
    /* 0x06CC */ mDoExt_bckAnm* mpDemoHLTmpBck;
    /* 0x06D0 */ J3DModel* mpDemoHRTmpBmd;
    /* 0x06D4 */ mDoExt_bckAnm* mpDemoHRTmpBck;
    /* 0x06D8 */ J3DModel* mpDemoHDTmpBmd;
    /* 0x06DC */ mDoExt_bckAnm* mpDemoHDTmpBck;
    /* 0x06E0 */ J3DGXColorS10 field_0x6e0;
    /* 0x06E8 */ J3DGXColor field_0x6e8;
    /* 0x06EC */ u8 field_0x6ec; // this is probably J3DGXColor. fix later
    /* 0x06ED */ u8 field_0x6ed;
    /* 0x06EE */ u8 field_0x6ee;
    /* 0x06EF */ u8 field_0x6ef;
    /* 0x06F0 */ void* field_0x6f0;
    /* 0x06F4 */ void* field_0x6f4;
    /* 0x06F8 */ void* field_0x6f8;
    /* 0x06FC */ Z2Creature field_0x6fc;
    /* 0x078C */ dMsgFlow_c mMsgFlow;
    /* 0x07D8 */ dBgS_LinkLinChk mLinChk;
    /* 0x0848 */ u8 mMotionNum;
    /* 0x0849 */ u8 mFaceNum;
    /* 0x084A */ u8 field_0x84a[4];
    /* 0x084E */ u8 field_0x84e;
    /* 0x084F */ u8 mDemoType;
    /* 0x0850 */ u8 field_0x850[0xA];
    /* 0x085A */ s16 field_0x85a;
    /* 0x085C */ u8 field_0x85c[0x22];
    /* 0x087E */ s16 field_0x87e;
    /* 0x0880 */ u8 field_0x880[0xC]; // csXyz in here, fix later
    /* 0x088C */ int mStaffID;
    /* 0x0890 */ u32 mStateFlg0;
    /* 0x0894 */ u32 mStateFlg1;
    /* 0x0898 */ u32 mEndResetStateFlg0;
    /* 0x089C */ u8 field_0x89c[0x24];
    /* 0x08C0 */ u32 mDemoMode;
    /* 0x08C4 */ u8 field_0x8c4[4];
    /* 0x08C8 */ f32 field_0x8c8;
    /* 0x08CC */ u8 field_0x8cc[0x14];
    /* 0x08E0 */ cXyz field_0x8e0[5];
    /* 0x091C */ cXyz field_0x91c[5];
    /* 0x0958 */ u8 field_0x958[0xC]; // cXyz here, fix later
    /* 0x0964 */ cXyz field_0x964[5];
    /* 0x09A0 */ u8 field_0x9a0[0xC];
    /* 0x09AC */ cXyz field_0x9ac;
    /* 0x09B8 */ u8 field_0x9b8[0x9C4 - 0x9B8];
    /* 0x09C4 */ cXyz field_0x9c4;
    /* 0x09D0 */ u8 field_0x9d0[4];
    /* 0x09D4 */ daMidna_func mpFunc;
};

STATIC_ASSERT(sizeof(daMidna_c) == 0x9e0);

class daMidna_matAnm_c : public fopAc_ac_c {
public:
    /* 804BC218 */ void init();
    /* 804BC248 */ void calc(J3DMaterial*) const;
    /* 804C63E0 */ ~daMidna_matAnm_c();
};

class daMidna_hio_c0 {
public:
    static u8 const m[32];
};

class daMidna_McaMorfCB1_c {
public:
    /* 804BC36C */ void execute(u16, J3DTransformInfo*);
    /* 804C6398 */ ~daMidna_McaMorfCB1_c();
};

#endif /* D_A_MIDNA_H */
