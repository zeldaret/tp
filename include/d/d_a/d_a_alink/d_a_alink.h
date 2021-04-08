#ifndef D_A_ALINK_H_
#define D_A_ALINK_H_

#include "JSystem/J3DGraphAnimator/J3DJoint.h"
#include "JSystem/J3DGraphAnimator/J3DModel.h"
#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphAnimator/J3DModelLoader.h"
#include "m_Do/m_Do_ext/m_Do_ext.h"
#include "JSystem/JMath/JMath.h"
#include "SComponent/c_bg_s_poly_info.h"
#include "SComponent/c_phase.h"
#include "SComponent/c_sxyz.h"
#include "SComponent/c_xyz.h"
#include "d/d_attention/d_attention.h"
#include "d/d_kankyo/d_kankyo.h"
#include "d/d_jnt_col/d_jnt_col.h"
#include "d/d_a/d_a_player/d_a_player.h"
#include "d/d_eye_hl/d_eye_hl.h"
#include "d/d_particle/d_particle.h"
#include "d/d_cc/d_cc_d.h"
#include "d/d_bg/d_bg_s/d_bg_s_acch.h"
#include "d/d_bg/d_bg_s/d_bg_s_lin_chk.h"
#include "JSystem/JParticle/JPAParticle.h"
#include "JSystem/J3DGraphBase/J3DMatBlock/J3DMatBlock.h"
#include "d/d_particle/d_particle_copoly.h"
#include "d/d_com/d_com_inf_game/d_com_inf_game.h"
#include "d/d_resource/d_resource.h"
#include "d/d_save/d_save/d_save.h"
#include "d/d_msg/d_msg_flow/d_msg_flow.h"
#include "f/f_op/f_op_actor.h"
#include "Z2AudioLib/Z2LinkMgr/Z2LinkMgr.h"
#include "Z2AudioLib/Z2WolfHowlMgr/Z2WolfHowlMgr.h"
#include "global.h"

typedef u32 daAlink_ANM;
typedef u32 daAlink_UPPER;
typedef u32 daAlink_UNDER;
typedef u32 daAlink_FTANM;

class daAlink_matAnm_c {
public:
    void init(void);
    void calc(J3DMaterial*) const;

private:
    u8 unk0[0xf4];
    float unk244;
    float unk248;
    float unk252;
    float unk256;
    u32 unk260;
};

class daAlink_lockCursor_c : dDlst_base_c {
private:
    /* 0x04 */ bool field_0x4;
    /* 0x05 */ u8 field_0x5[3];
    /* 0x08 */ J2DScreen* field_0x8;
    /* 0x0C */ J2DPane* field_0xc;
    /* 0x10 */ J2DPane* field_0x10;
    /* 0x14 */ J2DPane* field_0x14;
    /* 0x18 */ J2DPane* field_0x18;
    /* 0x1C */ J2DAnmBase* field_0x1c;
    /* 0x20 */ J2DAnmBase* field_0x20;
    /* 0x24 */ J2DAnmBase* field_0x24;
    /* 0x28 */ J2DAnmBase* field_0x28;
    /* 0x2C */ float field_0x2c;
    /* 0x30 */ float field_0x30;
    /* 0x34 */ float field_0x34;
    /* 0x38 */ float field_0x38;
};

class daAlink_sight_c : daPy_sightPacket_c {
private:
    /* 0x4C */ bool mLockFlag;
    /* 0x4D */ u8 field_0x4d[3];
    /* 0x50 */ daAlink_lockCursor_c field_0x50;
};

class daAlink_blur_c : J3DPacket {
private:
    /* 0x010 */ u8 field_0x10[4];
    /* 0x014 */ int field_0x14;
    /* 0x018 */ u8 field_0x18[4];
    /* 0x01C */ int field_0x1c;
    /* 0x020 */ u8 field_0x20[4];
    /* 0x024 */ float field_0x24;
    /* 0x028 */ u8 field_0x28[4];
    /* 0x02C */ cXyz field_0x2c;
    /* 0x038 */ cXyz field_0x38[0x3C];
    /* 0x308 */ cXyz field_0x308[0x3C];
}; // Size = 0x5D8

class dAlink_bottleWaterPcallBack_c : JPAParticleCallBack {
private:
    /* 0x04 */ s16 mHitFlg;
    /* 0x06 */ s16 mAppearFlg;
    /* 0x08 */ float mKeepMinY;
    /* 0x0C */ cXyz mHitPos;
};  // Size = 0x18

class daAlinkHIO_anm_c;
struct cM3dGPla;

class daAlink_footData_c {
private:
    u8 field_0x00[0xa4];
};

class daAlink_c : daPy_py_c {
public:
    class firePointEff_c {
        /* 0x00 */ u8 field_0x0[0xc];
        /* 0x0C */ cXyz field_0xc;
        /* 0x18 */ cXyz field_0x18;
        /* 0x24 */ cXyz field_0x24;
    };

    // member functions
    bool getE3Zhint(void);
    const char* getAlinkArcName(void);
    bool checkStageName(const char*);
    void tgHitCallback(fopAc_ac_c*, dCcD_GObjInf*, dCcD_GObjInf*);
    void coHitCallback(fopAc_ac_c*, dCcD_GObjInf*);
    void setMatrixWorldAxisRot(float (*)[4], short, short, short, int, const cXyz*);
    bool jointControll(int);
    void setUpperFront(void);
    void changeBlendRate(int);
    void resetRootMtx(void);
    bool modelCallBack(int);
    bool headModelCallBack(int);
    bool wolfModelCallBack(int);
    void setHatAngle(void);
    void calcHairAngle(short*);
    void setHairAngle(cXyz*, float, float);
    void setLookPosFromOut(cXyz*);
    int checkAttentionPosAngle(cXyz*);
    bool checkActorPosAngle(fopAc_ac_c*, cXyz**);
    cXyz* getNeckAimPos(cXyz*, int*, int);
    int getNeckAimAngle(cXyz*, short*, short*, short*, short*);
    double setEyeMove(cXyz*, short, short);
    void setNeckAngle(void);
    bool getStickAngleFromPlayerShape(short*) const;
    void commonLineCheck(cXyz*, cXyz*);
    int getMoveBGActorName(cBgS_PolyInfo&, int);
    bool checkGoronRide(void);
    void setMoveSlantAngle(void);
    bool setArmMatrix(void);
    bool setFootMatrix(void);
    void setMatrixOffset(float*, float);
    bool setLegAngle(float, daAlink_footData_c*, short*, short*, int);
    void footBgCheck(void);
    void handBgCheck(void);
    void setItemHeap(void);
    void setIdxMask(u16*, u16*);
    void getAnimeResource(daPy_anmHeap_c*, u16, u32);
    u32 initModel(J3DModelData*, u32, u32);
    void initModel(u16, u32);
    void initModelEnv(u16, u32);
    bool initDemoModel(J3DModel**, char const*, u32);
    bool initDemoBck(mDoExt_bckAnm**, char const*);
    bool createHeap(void);
    void setSelectEquipItem(int);
    bool checkBoarStart(void);
    bool checkCanoeStart(void);
    void playerInit(void);
    bool checkHorseStart(u32, int);
    bool setStartProcInit(void);
    u32 create(void);
    int setRoomInfo(void);
    void setShapeAngleOnGround(void);
    void setStepsOffset(void);
    void iceSlipBgCheck(void);
    void setIceSlipSpeed(void);
    double setPolygonSpeed(void);
    bool checkWindSpeedOnAngle(void) const;
    bool checkWindSpeedOnAngleAnime(int) const;
    bool checkDashAnime(void) const;
    double checkWindWallRate(cXyz const&);
    void setWindSpeed(void);
    void setBodyPartPos(void);
    u32 setRollJump(float, float, short);
    void setAttentionPos(void);
    void setMatrix(void);
    double simpleAnmPlay(J3DAnmBase*);
    void setSwordPos(void);
    void setItemMatrix(int);
    void setWolfItemMatrix(void);
    void setHandIndex(daAlink_ANM);
    void setSwordAtCollision(int);
    bool checkNoCollisionCorret(void);
    void decSwordBlur(void);
    void resetWolfAtCollision(void);
    void setWolfAtCollision(void);
    void resetAtCollision(int);
    void setAtCollision(void);
    void setWolfCollisionPos(void);
    void initLockAt(void);
    void cancelLockAt(void);
    void setCollisionPos(void);
    void setCollision(void);
    double getBaseAnimeFrame(void) const;
    void setAnimeFrame(float);
    void setFrameCtrl(daPy_frameCtrl_c*, u8, short, short, float, float);
    u8 getMainBckData(daAlink_ANM);
    bool checkUnderMove0BckNoArc(daAlink_ANM) const;
    bool checkUnderMove1BckNoArc(daAlink_ANM) const;
    u32 getUnderUpperAnime(daAlink_ANM, J3DAnmTransform**, J3DAnmTransform**, int, u32);
    void setDoubleAnimeBlendRatio(float);
    void commonDoubleAnime(J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*, J3DAnmTransform*,
                           float, float, float, int);
    bool setDoubleAnime(float, float, float, daAlink_ANM, daAlink_ANM, int, float);
    void commonSingleAnime(J3DAnmTransform*, J3DAnmTransform*, float, float, short);
    void setSingleAnimeBase(daAlink_ANM);
    void setSingleAnimeBaseMorf(daAlink_ANM, float);
    void setSingleAnimeBaseSpeed(daAlink_ANM, float, float);
    bool setSingleAnime(daAlink_ANM, float, float, short, float);
    void setSingleAnimeParam(daAlink_ANM, daAlinkHIO_anm_c const*);
    daAlink_c* animePlay(J3DAnmTransform*, daPy_frameCtrl_c*);
    void allAnimePlay(void);
    void setUpperAnimeMorf(float);
    void setUpperAnimeBase(u16);
    void setUpperAnimeBaseMorf(u16, float);
    void setUpperAnimeBaseSpeed(u16, float, float);
    void setUpperAnime(u16, daAlink_UPPER, float, float, short, float);
    void setUpperAnimeParam(u16, daAlink_UPPER, daAlinkHIO_anm_c const*);
    bool resetUpperAnime(daAlink_UPPER, float);
    void setUnderAnimeMorf(float);
    bool setUnderAnime(u16, daAlink_UNDER, float, float, short, float);
    void setUnderAnimeParam(u16, daAlink_UNDER, daAlinkHIO_anm_c const*);
    bool resetUnderAnime(daAlink_UNDER, float);
    void setOldRootQuaternion(short, short, short);
    bool checkAtnLeftAnime(void);
    bool checkAtnRightAnime(void);
    double getMoveGroundAngleSpeedRate(void);
    void setBlendMoveAnime(float);
    void setBlendAtnMoveAnime(float);
    void setBlendAtnBackMoveAnime(float);
    void setFaceBck(u16, int, u16);
    void setFaceBtp(u16, int, u16);
    void setFaceBtk(u16, int, u16);
    daAlink_FTANM setFaceBasicTexture(daAlink_FTANM);
    void setFaceBasicAnime(daAlink_ANM);
    void setFacePriTexture(daAlink_FTANM);
    void setFacePriAnime(daAlink_ANM);
    void resetFacePriBck(void);
    void resetFacePriBtp(void);
    void resetFacePriBtk(void);
    void resetFacePriTexture(void);
    void resetFacePriAnime(void);
    void playFaceTextureAnime(void);
    int getGroundAngle(cBgS_PolyInfo*, short);
    int getRoofAngle(cBgS_PolyInfo*, short);
    u32 getWallEdgePos(cXyz const&, cM3dGPla*, cM3dGPla*, cXyz*, int);
    void setFrontWallType(void);
    bool checkWaterPolygonUnder(void);
    void setWaterY(void);
    void setHangWaterY(void);
    void setSandDownBgCheckWallH(void);
    void setBgCheckParam(void);
    bool checkNotJumpSinkLimit(void);
    bool checkNotItemSinkLimit(void);
    void setSandShapeOffset(void);
    bool checkLv2MiddleBossBgRide(short);
    bool getSlidePolygon(cM3dGPla*);
    bool checkSlope(void) const;
    void setPlayerPosAndAngle(cXyz const*, short, int);
    void setPlayerPosAndAngle(cXyz const*, csXyz const*);
    void setPlayerPosAndAngle(float (*)[4]);
    u32 itemTriggerCheck(u8);
    u32 itemButtonCheck(u8);
    void itemButton(void);
    void itemTrigger(void);
    void spActionButton(void);
    void spActionTrigger(void);
    u32 midnaTalkTrigger(void) const;
    void swordSwingTrigger(void);
    void setItemActionButtonStatus(u8);
    void itemActionTrigger(void);
    /*---*/
    void setRStatus(u8);
    void setRStatusEmphasys(u8);
    void setDoStatus(u8);
    void setDoStatusEmphasys(u8);
    void setDoStatusContinuation(u8);
    void setBStatus(u8);
    int checkRAction(void);
    BOOL checkMagicArmorHeavy(void) const;
    BOOL checkBootsOrArmorHeavy(void) const;
    void setSpecialGravity(float, float, int);
    int checkMagicArmorWearAbility(void) const;
    void onFrollCrashFlg(u8, int);
    void setMidnaTalkStatus(u8);
    void setShieldChange(void);

    // inlines
    bool checkUpperAnime(u16 pIdx) const {
        return mAnmHeap2[2].getIdx() == pIdx;
    }

    bool checkIronBallWaitAnime() const {
        return checkUpperAnime(0x19C);
    }

private:
    /* 0x0062C */ request_of_phase_process_class* field_0x062C;
    /* 0x00630 */ void* field_0x0630;
    /* 0x00634 */ void* field_0x0634;
    /* 0x00638 */ JKRExpHeap** field_0x0638;
    /* 0x0063C */ request_of_phase_process_class* field_0x063C;
    /* 0x00640 */ void* field_0x0640;
    /* 0x00644 */ void* field_0x0644;
    /* 0x00648 */ JKRExpHeap** field_0x0648;
    /* 0x0064C */ J3DModelData* field_0x064C;
    /* 0x00650 */ J3DModel* field_0x0650;
    /* 0x00654 */ J3DModel* field_0x0654;
    /* 0x00658 */ J3DModel* field_0x0658;
    /* 0x0065C */ J3DModel* field_0x065c;
    /* 0x00660 */ J3DModel* field_0x0660;
    /* 0x00664 */ J3DModel* field_0x0664;
    /* 0x00668 */ J3DModel* field_0x0668;
    /* 0x0066C */ J3DModel* field_0x066c;
    /* 0x00670 */ J3DModel* field_0x0670;
    /* 0x00674 */ J3DModel* field_0x0674;
    /* 0x00678 */ J3DModel* field_0x0678;
    /* 0x0067C */ J3DAnmBase* field_0x067c;
    /* 0x00680 */ J3DAnmBase* field_0x0680;
    /* 0x00684 */ J3DModel* field_0x0684;
    /* 0x00688 */ J3DModel* field_0x0688;
    /* 0x0068C */ J3DAnmBase* field_0x068c;
    /* 0x00690 */ mDoExt_baseAnm** field_0x0690;
    /* 0x00694 */ void* field_0x0694; //J3DDeformData
    /* 0x00698 */ void* field_0x0698;
    /* 0x0069C */ void* field_0x069c;
    /* 0x006A0 */ J3DModel* field_0x06a0;
    /* 0x006A4 */ mDoExt_bckAnm* field_0x06a4;
    /* 0x006A8 */ J3DModel* field_0x06a8;
    /* 0x006AC */ mDoExt_bckAnm* field_0x06ac;
    /* 0x006B0 */ mDoExt_bckAnm* field_0x06b0;
    /* 0x006B4 */ J3DAnmTransform* field_0x06b4;
    /* 0x006B8 */ J3DModel* field_0x06b8;
    /* 0x006BC */ J3DModel* field_0x06bc;
    /* 0x006C0 */ J3DModelData* field_0x06c0;
    /* 0x006C4 */ J3DAnmBase* field_0x06c4;
    /* 0x006C8 */ J3DAnmBase* field_0x06c8;
    /* 0x006CC */ J3DAnmBase* field_0x06cc;
    /* 0x006D0 */ void* field_0x06d0;
    /* 0x006D4 */ void* field_0x06d4;
    /* 0x006D8 */ void* field_0x06d8;
    /* 0x006DC */ void* field_0x06dc;
    /* 0x006E0 */ void* field_0x06e0;
    /* 0x006E4 */ void* field_0x06e4;
    /* 0x006E8 */ void* field_0x06e8;
    /* 0x006EC */ void* field_0x06ec;
    /* 0x006F0 */ void* field_0x06f0;
    /* 0x006F4 */ J3DAnmBase* field_0x06f4;
    /* 0x006F8 */ J3DAnmBase* field_0x06f8;
    /* 0x006FC */ J3DModel* field_0x06fc;
    /* 0x00700 */ J3DModel* field_0x0700;
    /* 0x00704 */ J3DAnmBase* field_0x0704;
    /* 0x00708 */ J3DModel* field_0x0708;
    /* 0x0070C */ J3DModel* field_0x070c;
    /* 0x00710 */ J3DModel* field_0x0710;
    /* 0x00714 */ J3DModel* field_0x0714;
    /* 0x00718 */ J3DAnmBase* field_0x0718;
    /* 0x0071C */ J3DAnmBase* field_0x071c;
    /* 0x00720 */ J3DAnmBase* field_0x0720;
    /* 0x00724 */ J3DAnmBase* field_0x0724;
    /* 0x00728 */ J3DAnmBase* field_0x0728;
    /* 0x0072C */ J3DAnmBase* field_0x072c;
    /* 0x00730 */ mDoExt_bckAnm field_0x730;
    /* 0x0074C */ mDoExt_bckAnm field_0x74C;
    /* 0x00768 */ u8 field_0x0768[0x5C];
    /* 0x007C4 */ daPy_actorKeep_c field_0x07C4[10];
    /* 0x00814 */ dCcD_Stts field_0x814;
    /* 0x00850 */ dCcD_Cyl field_0x850[3];
    /* 0x00C04 */ dCcD_Cyl field_0xC04[3];
    /* 0x00FB8 */ dCcD_Sph field_0xFB8;
    /* 0x010F0 */ dCcD_Cyl field_0x10F0;
    /* 0x0122C */ dCcD_Cps field_0x122C[3];
    /* 0x015F8 */ dCcD_Cps field_0x15F8;
    /* 0x0173C */ dCcD_Stts field_0x173c;
    /* 0x01778 */ dCcD_Sph field_0x1778;
    /* 0x018B0 */ dBgS_AcchCir field_0x18B0[3];
    /* 0x01970 */ dBgS_LinkAcch mLinkAcch;
    /* 0x01B48 */ dBgS_LinkLinChk mLinkLinChk;
    /* 0x01BB8 */ dBgS_RopeLinChk mRopeLinChk;
    /* 0x01C28 */ dBgS_BoomerangLinChk mBoomerangLinChk;
    /* 0x01C98 */ dBgS_ArrowLinChk mArrowLinChk;
    /* 0x01D08 */ dBgS_LinkGndChk mLinkGndChk;
    /* 0x01D5C */ dBgS_LinkRoofChk mLinkRoofChk;
    /* 0x01DAC */ dBgS_LinkLinChk mLinkLinChk2;
    /* 0x01E1C */ cBgS_PolyInfo mPolyInfo1;
    /* 0x01E2C */ cBgS_PolyInfo mPolyInfo2;
    /* 0x01E3C */ cBgS_PolyInfo mPolyInfo3;
    /* 0x01E4C */ cBgS_PolyInfo mPolyInfo4;
    /* 0x01E5C */ dBgS_ObjLinChk mObjLinChk;
    /* 0x01ECC */ dBgS_ObjGndChk mObjGndChk;
    /* 0x01F20 */ u8 field_0x1f20[8];
    /* 0x01F28 */ mDoExt_AnmRatioPack field_0x1f28[3];
    /* 0x01F40 */ mDoExt_AnmRatioPack field_0x1f40[3];
    /* 0x01F58 */ daPy_anmHeap_c mAnmHeap1[3];
    /* 0x01F94 */ daPy_anmHeap_c mAnmHeap2[3];
    /* 0x01FD0 */ daPy_frameCtrl_c mFrameCtrl1[3];
    /* 0x02018 */ daPy_frameCtrl_c mFrameCtrl2[3];
    /* 0x02060 */ void* field_0x2060; // mDoExt_MtxCalcOldFrame*
    /* 0x02064 */ daAlink_sight_c mSight;
    /* 0x020F0 */ daPy_anmHeap_c mAnmHeap3;
    /* 0x02104 */ daPy_anmHeap_c mAnmHeap4;
    /* 0x02118 */ daPy_anmHeap_c mAnmHeap5;
    /* 0x0212C */ daPy_anmHeap_c mAnmHeap6;
    /* 0x02140 */ daPy_anmHeap_c mAnmHeap7;
    /* 0x02154 */ mDoExt_bckAnm field_0x2154;
    /* 0x02170 */ u8 field_0x2170[0x18];
    /* 0x02188 */ dEyeHL_c mEyeHL1;
    /* 0x0219C */ dEyeHL_c mEyeHL2;
    /* 0x021B0 */ daPy_anmHeap_c mAnmHeap8[2];
    /* 0x021D8 */ daPy_anmHeap_c mAnmHeap9;
    /* 0x021EC */ u8 field_0x21ec[4];
    /* 0x021F0 */ daAlink_blur_c mBlur;
    /* 0x027C8 */ dAlink_bottleWaterPcallBack_c field_0x27c8;
    /* 0x027E0 */ dAttention_c* mAttention;
    /* 0x027E4 */ dAttList_c* mAttList;
    /* 0x027E8 */ dAttList_c* mAttList2;
    /* 0x027EC */ fopAc_ac_c* mTargetedActor;
    /* 0x027F0 */ fopAc_ac_c* field_0x27f0;
    /* 0x027F4 */ fopAc_ac_c* field_0x27f4;
    /* 0x027F8 */ fopAc_ac_c* field_0x27f8;
    /* 0x027FC */ fopAc_ac_c* field_0x27fc;
    /* 0x02800 */ fopAc_ac_c* field_0x2800;
    /* 0x02804 */ fopAc_ac_c* field_0x2804;
    /* 0x02808 */ fopAc_ac_c* field_0x2808;
    /* 0x0280C */ daPy_actorKeep_c field_0x280c;
    /* 0x02814 */ daPy_actorKeep_c mRideActor;
    /* 0x0281C */ daPy_actorKeep_c field_0x281c;
    /* 0x02824 */ daPy_actorKeep_c field_0x2824;
    /* 0x0282C */ daPy_actorKeep_c field_0x282c;
    /* 0x02834 */ daPy_actorKeep_c field_0x2834;
    /* 0x0283C */ daPy_actorKeep_c field_0x283c;
    /* 0x02844 */ daPy_actorKeep_c field_0x2844;
    /* 0x0284C */ daPy_actorKeep_c field_0x284c;
    /* 0x02854 */ daPy_actorKeep_c field_0x2854;
    /* 0x0285C */ daPy_actorKeep_c field_0x285c;
    /* 0x02864 */ dMsgFlow_c mMsgFlow;
    /* 0x028B0 */ u8 field_0x28b0[0x40];
    /* 0x028F0 */ int field_0x28f0;
    /* 0x028F4 */ int field_0x28f4;
    /* 0x028F8 */ int field_0x28f8;
    /* 0x028FC */ int field_0x28fc;
    /* 0x02900 */ void* field_0x2900;
    /* 0x02904 */ daAlink_footData_c mFootData1[2];
    /* 0x02A4C */ daAlink_footData_c mFootData2[2];
    /* 0x02B94 */ float* field_0x2b94;
    /* 0x02B98 */ float* field_0x2b98;
    /* 0x02B98 */ float* field_0x2b9c;
    /* 0x02BA0 */ float* field_0x2ba0;
    /* 0x02BA4 */ float* field_0x2ba4;
    /* 0x02BA8 */ float* field_0x2ba8;
    /* 0x02BAC */ cXyz field_0x2bac;
    /* 0x02BB8 */ Mtx mInvMtx;
    /* 0x02BE8 */ Mtx field_0x2be8;
    /* 0x02C18 */ Mtx field_0x2c18;
    /* 0x02C48 */ Mtx field_0x2c48;
    /* 0x02C78 */ Mtx field_0x2c78;
    /* 0x02CA8 */ Z2CreatureLink mZ2Link;
    /* 0x02D75 */ u8 field_0x2d75[3]; // padding?
    /* 0x02D78 */ void* field_0x2d78;
    /* 0x02D7C */ daPy_frameCtrl_c* field_0x2d7c;
    /* 0x02D80 */ int field_0x2d80;
    /* 0x02D84 */ Z2WolfHowlMgr mZ2WolfHowlMgr;
    /* 0x02E44 */ dJntCol_c field_0x2e44;
    /* 0x02E54 */ dPaPo_c field_0x2e54;
    /* 0x02E8C */ u8 field_0x2e8c[0x90];
    /* 0x02F1C */ dPaPo_c* field_0x2f1c;
    /* 0x02F20 */ dPa_hermiteEcallBack_c field_0x2f20;
    /* 0x02F38 */ dPa_hermiteEcallBack_c field_0x2f38;
    /* 0x02F50 */ Vec* field_0x2f50;
    /* 0x02F54 */ Vec* field_0x2f54;
    /* 0x02F58 */ u16* field_0x2f58;
    /* 0x02F5C */ LIGHT_INFLUENCE field_0x2f5c;
    /* 0x02F7C */ u8 field_0x2f7c[16];
    /* 0x02F8C */ u8 field_0x2f8c;
    /* 0x02F8D */ u8 mItemTrigger;
    /* 0x02F8E */ u8 mItemButton;
    /* 0x02F8F */ u8 field_0x2f8f;
    /* 0x02F90 */ u8 field_0x2f90;
    /* 0x02F91 */ u8 field_0x2f91;
    /* 0x02F92 */ u8 field_0x2f92;
    /* 0x02F93 */ u8 field_0x2f93;
    /* 0x02F94 */ u8 field_0x2f94;
    /* 0x02F95 */ u8 field_0x2f95;
    /* 0x02F96 */ u8 field_0x2f96;
    /* 0x02F97 */ u8 field_0x2f97;
    /* 0x02F98 */ u8 field_0x2f98;
    /* 0x02F99 */ u8 field_0x2f99;
    /* 0x02F9A */ s8 field_0x2f9a;
    /* 0x02F9B */ u8 field_0x2f9b;
    /* 0x02F9C */ u8 mSelectItemId;
    /* 0x02F9D */ u8 field_0x2f9d;
    /* 0x02F9E */ u8 field_0x2f9e;
    /* 0x02F9F */ u8 field_0x2f9f;
    /* 0x02FA0 */ u8 field_0x2fa0;
    /* 0x02FA1 */ u8 field_0x2fa1;
    /* 0x02FA2 */ u8 field_0x2fa2;
    /* 0x02FA3 */ u8 field_0x2fa3;
    /* 0x02FA4 */ u8 field_0x2fa4;
    /* 0x02FA5 */ u8 field_0x2fa5;
    /* 0x02FA6 */ u8 field_0x2fa6;
    /* 0x02FA7 */ u8 field_0x2fa7;
    /* 0x02FA8 */ u8 field_0x2fa8;
    /* 0x02FA9 */ u8 field_0x2fa9;
    /* 0x02FAA */ u8 field_0x2faa;
    /* 0x02FAB */ u8 field_0x2fab;
    /* 0x02FAC */ u8 field_0x2fac;
    /* 0x02FAD */ u8 field_0x2fad;
    /* 0x02FAE */ u8 field_0x2fae;
    /* 0x02FAF */ u8 field_0x2faf;
    /* 0x02FB0 */ u8 field_0x2fb0;
    /* 0x02FB1 */ u8 field_0x2fb1;
    /* 0x02FB2 */ u8 field_0x2fb2;
    /* 0x02FB3 */ u8 field_0x2fb3;
    /* 0x02FB4 */ u8 field_0x2fb4;
    /* 0x02FB5 */ u8 field_0x2fb5;
    /* 0x02FB6 */ u8 field_0x2fb6;
    /* 0x02FB7 */ u8 field_0x2fb7;
    /* 0x02FB8 */ u8 field_0x2fb8;
    /* 0x02FB9 */ u8 field_0x2fb9;
    /* 0x02FBA */ u8 field_0x2fba;
    /* 0x02FBB */ u8 field_0x2fbb;
    /* 0x02FBC */ u8 field_0x2fbc;
    /* 0x02FBD */ u8 field_0x2fbd;
    /* 0x02FBE */ u8 field_0x2fbe;
    /* 0x02FBF */ u8 field_0x2fbf;
    /* 0x02FC0 */ u8 field_0x2fc0;
    /* 0x02FC1 */ u8 field_0x2fc1;
    /* 0x02FC2 */ u8 field_0x2fc2;
    /* 0x02FC3 */ u8 field_0x2fc3;
    /* 0x02FC4 */ u8 field_0x2fc4;
    /* 0x02FC5 */ u8 field_0x2fc5;
    /* 0x02FC6 */ u8 field_0x2fc6;
    /* 0x02FC7 */ u8 field_0x2fc7;
    /* 0x02FC8 */ u8 field_0x2fc8;
    /* 0x02FC9 */ u8 field_0x2fc9;
    /* 0x02FCA */ u8 field_0x2fca;
    /* 0x02FCB */ u8 field_0x2fcb;
    /* 0x02FCC */ u8 field_0x2fcc;
    /* 0x02FCD */ u8 field_0x2fcd;
    /* 0x02FCE */ u8 field_0x2fce;
    /* 0x02FCF */ u8 field_0x2fcf;
    /* 0x02FD0 */ u8 field_0x2fd0;
    /* 0x02FD1 */ u8 mShieldChange;
    /* 0x02FD2 */ u8 field_0x2fd2;
    /* 0x02FD3 */ u8 field_0x2fd3;
    /* 0x02FD4 */ u8 field_0x2fd4;
    /* 0x02FD5 */ u8 field_0x2fd5;
    /* 0x02FD6 */ u8 field_0x2fd6;
    /* 0x02FD7 */ u8 field_0x2fd7;
    /* 0x02FD8 */ u8 field_0x2fd8;
    /* 0x02FD9 */ u8 field_0x2fd9[3];
    /* 0x02FDC */ u16 field_0x2fdc;
    /* 0x02FDE */ u16 field_0x2fde;
    /* 0x02FE0 */ u16 field_0x2fe0;
    /* 0x02FE2 */ u16 field_0x2fe2;
    /* 0x02FE4 */ s16 field_0x2fe4;
    /* 0x02FE6 */ s16 field_0x2fe6;
    /* 0x02FE8 */ u16 field_0x2fe8;
    /* 0x02FEA */ u16 field_0x2fea;
    /* 0x02FEC */ s16 field_0x2fec;
    /* 0x02FEE */ s16 field_0x2fee;
    /* 0x02FF0 */ s16 field_0x2ff0;
    /* 0x02FF2 */ s16 field_0x2ff2;
    /* 0x02FF4 */ s16 field_0x2ff4;
    /* 0x02FF6 */ s16 field_0x2ff6;
    /* 0x02FF8 */ s16 field_0x2ff8;
    /* 0x02FFA */ s16 field_0x2ffa;
    /* 0x02FFC */ s16 field_0x2ffc;
    /* 0x02FFE */ s16 field_0x2ffe;
    /* 0x03000 */ s16 field_0x3000;
    /* 0x03002 */ s16 field_0x3002;
    /* 0x03004 */ s16 field_0x3004;
    /* 0x03006 */ s16 field_0x3006;
    /* 0x03008 */ s16 field_0x3008;
    /* 0x0300A */ s16 field_0x300a;
    /* 0x0300C */ s16 field_0x300c;
    /* 0x0300E */ s16 field_0x300e;
    /* 0x03010 */ s16 field_0x3010;
    /* 0x03012 */ s16 field_0x3012;
    /* 0x03014 */ s16 field_0x3014;
    /* 0x03016 */ u8 field_0x3016[2];
    /* 0x03018 */ s16 field_0x3018;
    /* 0x0301A */ s16 field_0x301a;
    /* 0x0301C */ s16 field_0x301c;
    /* 0x0301E */ s16 field_0x301e;
    /* 0x03020 */ s16 field_0x3020;
    /* 0x03022 */ s16 field_0x3022;
    /* 0x03024 */ s16 field_0x3024;
    /* 0x03026 */ s16 field_0x3026;
    /* 0x03028 */ s16 field_0x3028;
    /* 0x0302A */ u8 field_0x302a[2];
    /* 0x0302C */ s16 field_0x302c;
    /* 0x0302E */ s16 field_0x302e;
    /* 0x03030 */ s16 field_0x3030;
    /* 0x03032 */ s16 field_0x3032;
    /* 0x03034 */ s16 field_0x3034;
    /* 0x03036 */ s16 field_0x3036;
    /* 0x03038 */ u8 field_0x3038[2];
    /* 0x0303A */ s16 field_0x303a;
    /* 0x0303C */ u8 field_0x303c[4];
    /* 0x03040 */ s16 field_0x3040;
    /* 0x03042 */ s16 field_0x3042;
    /* 0x03044 */ s16 field_0x3044;
    /* 0x03046 */ s16 field_0x3046;
    /* 0x03048 */ s16 field_0x3048;
    /* 0x0304A */ s16 field_0x304a;
    /* 0x0304C */ u8 field_0x304c[2];
    /* 0x0304E */ s16 field_0x304e;
    /* 0x03050 */ u8 field_0x3050[4];
    /* 0x03054 */ s16 field_0x3054;
    /* 0x03056 */ s16 field_0x3056;
    /* 0x03058 */ u8 field_0x3058[2];
    /* 0x0305A */ s16 field_0x305a;
    /* 0x0305C */ s16 field_0x305c;
    /* 0x0305E */ u8 field_0x305e[2];
    /* 0x03060 */ s16 field_0x3060;
    /* 0x03062 */ s16 field_0x3062;
    /* 0x03064 */ s16 field_0x3064;
    /* 0x03066 */ s16 field_0x3066;
    /* 0x03068 */ u8 field_0x3068[4];
    /* 0x0306C */ s16 field_0x306c;
    /* 0x0306E */ s16 field_0x306e;
    /* 0x03070 */ s16 field_0x3070;
    /* 0x03072 */ s16 field_0x3072;
    /* 0x03074 */ s16 field_0x3074;
    /* 0x03076 */ s16 field_0x3076;
    /* 0x03078 */ s16 field_0x3078;
    /* 0x0307A */ s16 field_0x307a;
    /* 0x0307C */ s16 field_0x307c;
    /* 0x0307E */ s16 field_0x307e;
    /* 0x03080 */ s16 field_0x3080;
    /* 0x03082 */ s16 field_0x3082;
    /* 0x03084 */ u16 field_0x3084;
    /* 0x03086 */ u16 field_0x3086;
    /* 0x03088 */ s16 field_0x3088;
    /* 0x0308A */ s16 field_0x308a;
    /* 0x0308C */ s16 field_0x308c;
    /* 0x0308E */ s16 field_0x308e;
    /* 0x03090 */ s16 field_0x3090;
    /* 0x03092 */ s16 field_0x3092;
    /* 0x03094 */ s16 field_0x3094;
    /* 0x03096 */ u8 field_0x3096[4];
    /* 0x0309A */ s16 field_0x309a;
    /* 0x0309C */ u8 field_0x309c[4];
    /* 0x030A0 */ s16 field_0x30a0;
    /* 0x030A2 */ s16 field_0x30a2;
    /* 0x030A4 */ s16 field_0x30a4;
    /* 0x030A6 */ s16 field_0x30a6;
    /* 0x030A8 */ u16 field_0x30a8;
    /* 0x030AA */ u16 field_0x30aa;
    /* 0x030AC */ s16 field_0x30ac;
    /* 0x030AE */ u16 field_0x30ae;
    /* 0x030B0 */ s16 field_0x30b0;
    /* 0x030B2 */ s16 field_0x30b2;
    /* 0x030B4 */ u16 field_0x30b4;
    /* 0x030B6 */ u16 field_0x30b6;
    /* 0x030B8 */ u16 field_0x30b8;
    /* 0x030BA */ u16 field_0x30ba;
    /* 0x030BC */ u16 field_0x30bc;
    /* 0x030BE */ u16 field_0x30be;
    /* 0x030C0 */ u16 field_0x30c0;
    /* 0x030C2 */ u16 field_0x30c2;
    /* 0x030C4 */ u16 field_0x30c4;
    /* 0x030C6 */ u16 field_0x30c6;
    /* 0x030C8 */ s16 field_0x30c8;
    /* 0x030CA */ s16 field_0x30ca;
    /* 0x030CC */ s16 field_0x30cc;
    /* 0x030CE */ u16 field_0x30ce;
    /* 0x030D0 */ s16 field_0x30d0;
    /* 0x030D2 */ s16 field_0x30d2;
    /* 0x030D4 */ u16 field_0x30d4;
    /* 0x030D6 */ s16 field_0x30d6;
    /* 0x030D8 */ u8 field_0x30d8[0x14];
    /* 0x030EC */ s16 field_0x30ec;
    /* 0x030EE */ s16 field_0x30ee;
    /* 0x030F0 */ u16 field_0x30f0;
    /* 0x030F2 */ u8 field_0x30f2[2];
    /* 0x030F4 */ s16 field_0x30f4;
    /* 0x030F6 */ s16 field_0x30f6;
    /* 0x030F8 */ s16 field_0x30f8;
    /* 0x030FA */ s16 field_0x30fa;
    /* 0x030FC */ u16 field_0x30fc;
    /* 0x030FE */ u16 field_0x30fe;
    /* 0x03100 */ u16 field_0x3100;
    /* 0x03102 */ s16 field_0x3102;
    /* 0x03104 */ s16 field_0x3104;
    /* 0x03106 */ u16 field_0x3106;
    /* 0x03108 */ s16 field_0x3108;
    /* 0x0310A */ s16 field_0x310a;
    /* 0x0310C */ s16 field_0x310c;
    /* 0x03110 */ s16 field_0x3110;
    /* 0x03112 */ u16 field_0x3112;
    /* 0x03114 */ s16 field_0x3114;
    /* 0x03116 */ s16 field_0x3116;
    /* 0x03118 */ s16 field_0x3118;
    /* 0x0311A */ s16 field_0x311a;
    /* 0x0311C */ s16 field_0x311c;
    /* 0x0311E */ s16 field_0x311e;
    /* 0x03120 */ u16 mMidnaMsgNum;
    /* 0x03122 */ s16 field_0x3122;
    /* 0x03124 */ s16 field_0x3124;
    /* 0x03126 */ s16 field_0x3126;
    /* 0x03128 */ s16 field_0x3128;
    /* 0x0312A */ csXyz field_0x312a[2];
    /* 0x03136 */ csXyz field_0x3136[2];
    /* 0x03142 */ csXyz field_0x3142[4];
    /* 0x0315A */ csXyz field_0x315a;
    /* 0x03160 */ csXyz field_0x3160;
    /* 0x03166 */ csXyz field_0x3166;
    /* 0x0316C */ csXyz field_0x316c;
    /* 0x03172 */ u8 field_0x3172[2];
    /* 0x03174 */ int field_0x3174;
    /* 0x03178 */ int field_0x3178;
    /* 0x0317C */ dAttention_c* field_0x317c;
    /* 0x03180 */ int field_0x3180;
    /* 0x03184 */ int field_0x3184;
    /* 0x03184 */ int field_0x3188;
    /* 0x0318C */ int field_0x318c;
    /* 0x03190 */ int field_0x3190;
    /* 0x03194 */ int field_0x3194;
    /* 0x03198 */ int field_0x3198;
    /* 0x0319C */ int field_0x319c;
    /* 0x031A0 */ int field_0x31a0;
    /* 0x031A4 */ int field_0x31a4;
    /* 0x031A8 */ u8 field_0x31a8[8];
    /* 0x031B0 */ int field_0x31b0;
    /* 0x031B4 */ u8 field_0x31b4[8];
    /* 0x031BC */ u32 field_0x31bc;
    /* 0x031C0 */ u32 field_0x31c0;
    /* 0x031C4 */ u32 field_0x31c4;
    /* 0x031C8 */ u32 field_0x31c8;
    /* 0x031CC */ u32 field_0x31cc;
    /* 0x031D0 */ u32 field_0x31d0;
    /* 0x031D4 */ u32 field_0x31d4;
    /* 0x031D8 */ u8 field_0x31d8[12];
    /* 0x031E4 */ u32 field_0x31e4;
    /* 0x031E8 */ u8 field_0x31e8[16];
    /* 0x031F8 */ u32 field_0x31f8;
    /* 0x031FC */ u32 field_0x31fc;
    /* 0x03200 */ u32 field_0x3200;
    /* 0x03204 */ u32 field_0x3204;
    /* 0x03208 */ u32 field_0x3208;
    /* 0x0320C */ u8 field_0x320c[16];
    /* 0x0321C */ u32 field_0x321c;
    /* 0x03220 */ u32 field_0x3220;
    /* 0x03224 */ u32 field_0x3224;
    /* 0x03228 */ u8 field_0x3228[24];
    /* 0x03240 */ u32 field_0x3240;
    /* 0x03244 */ u8 field_0x3244[20];
    /* 0x03258 */ u32 field_0x3258;
    /* 0x0325C */ u32 field_0x325c;
    /* 0x03260 */ u8 field_0x3260[40];
    /* 0x03288 */ u32 field_0x3288;
    /* 0x0328C */ u32 field_0x328c;
    /* 0x03290 */ u32 field_0x3290;
    /* 0x03294 */ u32 field_0x3294;
    /* 0x03298 */ u8 field_0x3298[8];
    /* 0x032A0 */ J3DGXColorS10 field_0x32a0[2];
    /* 0x032B0 */ J3DGXColorS10 field_0x32b0[2];
    /* 0x032C0 */ s16 field_0x32c0;
    /* 0x032C2 */ u8 field_0x32c2[2];
    /* 0x032C4 */ u16 field_0x32c4;
    /* 0x032C6 */ u16 field_0x32c6;
    /* 0x032C8 */ u32 field_0x32c8;
    /* 0x032CC */ u32 field_0x32cc;
    /* 0x032D0 */ u32 field_0x32d0;
    /* 0x032D4 */ u32 field_0x32d4;
    /* 0x032D8 */ firePointEff_c field_0x32d8[4];
    /* 0x03398 */ float mNormalSpeed;
    /* 0x0339C */ float mSpeedModifier;
    /* 0x033A0 */ float field_0x33a0;
    /* 0x033A4 */ float field_0x33a4;
    /* 0x033A8 */ float field_0x33a8;
    /* 0x033AC */ float field_0x33ac;
    /* 0x033B0 */ float field_0x33b0;
    /* 0x033B4 */ float field_0x33b4;
    /* 0x033B8 */ float field_0x33b8;
    /* 0x033BC */ float field_0x33bc;
    /* 0x033C0 */ float field_0x33c0;
    /* 0x033C4 */ float field_0x33c4;
    /* 0x033C8 */ float field_0x33c8;
    /* 0x033CC */ float field_0x33cc;
    /* 0x033D0 */ float field_0x33d0;
    /* 0x033D4 */ float field_0x33d4;
    /* 0x033D8 */ float field_0x33d8;
    /* 0x033DC */ float field_0x33dc;
    /* 0x033E0 */ float field_0x33e0;
    /* 0x033E4 */ float field_0x33e4;
    /* 0x033E8 */ float field_0x33e8;
    /* 0x033EC */ float field_0x33ec;
    /* 0x033F0 */ float field_0x33f0;
    /* 0x033F4 */ float field_0x33f4;
    /* 0x033F8 */ float field_0x33f8;
    /* 0x033FC */ float field_0x33fc;
    /* 0x03400 */ float field_0x3400;
    /* 0x03404 */ float field_0x3404;
    /* 0x03408 */ float field_0x3408;
    /* 0x0340C */ float field_0x340c;
    /* 0x03410 */ float field_0x3410;
    /* 0x03414 */ float field_0x3414;
    /* 0x03418 */ float field_0x3418;
    /* 0x0341C */ float field_0x341c;
    /* 0x03420 */ float field_0x3420;
    /* 0x03424 */ float field_0x3424;
    /* 0x03428 */ float field_0x3428;
    /* 0x0342C */ float field_0x342c;
    /* 0x03430 */ float field_0x3430;
    /* 0x03434 */ float mHeavySpeedMultiplier;
    /* 0x03438 */ float field_0x3438;
    /* 0x0343C */ float field_0x343c;
    /* 0x03440 */ float field_0x3440;
    /* 0x03444 */ float field_0x3444;
    /* 0x03448 */ float field_0x3448;
    /* 0x0344C */ float field_0x344c;
    /* 0x03450 */ u8 field_0x3450[4];
    /* 0x03454 */ float field_0x3454;
    /* 0x03458 */ float field_0x3458;
    /* 0x0345C */ float field_0x345c;
    /* 0x03460 */ float field_0x3460;
    /* 0x03464 */ float field_0x3464;
    /* 0x03468 */ float field_0x3468;
    /* 0x0346C */ float field_0x346c;
    /* 0x03470 */ float field_0x3470;
    /* 0x03474 */ float field_0x3474;
    /* 0x03478 */ float field_0x3478;
    /* 0x0347C */ float field_0x347c;
    /* 0x03480 */ float field_0x3480;
    /* 0x03484 */ float field_0x3484;
    /* 0x03488 */ float field_0x3488;
    /* 0x0348C */ float field_0x348c;
    /* 0x03490 */ float field_0x3490;
    /* 0x03494 */ float field_0x3494;
    /* 0x03498 */ cXyz field_0x3498;
    /* 0x034A4 */ cXyz field_0x34a4;
    /* 0x034B0 */ cXyz field_0x34b0;
    /* 0x034BC */ cXyz field_0x34bc;
    /* 0x034C8 */ cXyz field_0x34c8;
    /* 0x034D4 */ cXyz field_0x34d4;
    /* 0x034E0 */ cXyz field_0x34e0;
    /* 0x034EC */ cXyz field_0x34ec;
    /* 0x034F8 */ cXyz field_0x34f8;
    /* 0x03504 */ cXyz field_0x3504;
    /* 0x03510 */ cXyz field_0x3510;
    /* 0x0351C */ cXyz field_0x351c;
    /* 0x03528 */ cXyz field_0x3528;
    /* 0x03534 */ cXyz field_0x3534;
    /* 0x03540 */ cXyz field_0x3540;
    /* 0x0354C */ cXyz field_0x354c[4];
    /* 0x0357C */ cXyz mLookPosFromOut;
    /* 0x03588 */ cXyz field_0x3588;
    /* 0x03594 */ cXyz field_0x3594;
    /* 0x035A0 */ cXyz field_0x35a0;
    /* 0x035AC */ cXyz field_0x35ac;
    /* 0x035B8 */ cXyz field_0x35b8;
    /* 0x035C4 */ cXyz field_0x35c4;
    /* 0x035D0 */ cXyz field_0x35d0;
    /* 0x035DC */ cXyz field_0x35dc;
    /* 0x035E8 */ cXyz field_0x35e8;
    /* 0x035F4 */ cXyz mMidnaAtnPos;
    /* 0x03600 */ cXyz field_0x3600;
    /* 0x0360C */ cXyz field_0x360c;
    /* 0x03618 */ cXyz field_0x3618;
    /* 0x03624 */ cXyz field_0x3624;
    /* 0x03630 */ cXyz field_0x3630;
    /* 0x0363C */ cXyz field_0x363c[4];
    /* 0x0366C */ cXyz field_0x366c[4];
    /* 0x0369C */ cXyz field_0x369c;
    /* 0x036A8 */ cXyz field_0x36a8;
    /* 0x036B4 */ cXyz field_0x36b4;
    /* 0x036C0 */ cXyz field_0x36c0[4];
    /* 0x036F0 */ cXyz field_0x36f0[4];
    /* 0x03720 */ cXyz field_0x3720;
    /* 0x0372C */ cXyz field_0x372c;
    /* 0x03738 */ cXyz field_0x3738;
    /* 0x03744 */ cXyz field_0x3744;
    /* 0x03750 */ cXyz field_0x3750;
    /* 0x0375C */ cXyz field_0x375c;
    /* 0x03768 */ cXyz field_0x3768;
    /* 0x03774 */ cXyz mForcePutPos;
    /* 0x03780 */ cXyz field_0x3780;
    /* 0x0378C */ cXyz field_0x378c;
    /* 0x03798 */ cXyz field_0x3798;
    /* 0x037A4 */ cXyz field_0x37a4;
    /* 0x037B0 */ cXyz field_0x37b0[2];
    /* 0x037C8 */ cXyz field_0x37c8;
    /* 0x037D4 */ cXyz field_0x37d4;
    /* 0x037E0 */ cXyz field_0x37e0;
    /* 0x037EC */ cXyz field_0x37ec;
    /* 0x037F8 */ cXyz field_0x37f8;
    /* 0x03804 */ cXyz field_0x3804;
    /* 0x03810 */ cXyz field_0x3810;
    /* 0x0381C */ cXyz field_0x381c;
    /* 0x03828 */ cXyz field_0x3828;
    /* 0x03834 */ cXyz field_0x3834;
    /* 0x03840 */ cXyz* mIronBallChainPos;
    /* 0x03844 */ csXyz* mIronBallChainAngle;
    /* 0x03848 */ void* field_0x3848;
    /* 0x0384C */ float* field_0x384c;
};

class daMidna_c {
public:
    enum daMidna_ERFLG0 { NoServiceWait = 128, ForcePanic = 8, };
    enum daMidna_FLG1 { ForceNormalColor = 8, ForceTiredColor = 4};

    void onForcePanic(void);
    u32 checkForceNormalColor(void) const;
    u32 checkForceTiredColor(void) const;
    bool checkMidnaTired(void);
    void onNoServiceWait(void);

    void onEndResetStateFlg0(daMidna_ERFLG0 pFlg) {
        mEndResetStateFlg0 |= pFlg;
    }
    u32 checkStateFlg1(daMidna_FLG1 pFlg) const {
        return mStateFlg1 & pFlg;
    }

private:
    u8 unk[0x893];
    u32 mStateFlg1;
    u32 mEndResetStateFlg0;
};

extern "C" {
void tgHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInfP12dCcD_GObjInf(fopAc_ac_c*,
                                                                           dCcD_GObjInf*,
                                                                           dCcD_GObjInf*);
void coHitCallback__9daAlink_cFP10fopAc_ac_cP12dCcD_GObjInf(fopAc_ac_c*, dCcD_GObjInf*);
void calc__14J3DMaterialAnmCFP11J3DMaterial(void);
void transM__14mDoMtx_stack_cFfff(float, float, float);
void concatMagneBootInvMtx__9daAlink_cFv(void);
void mDoMtx_ZXYrotM__FPA4_fsss(void);
void mDoMtx_YrotM__FPA4_fs(void);
void concatMagneBootMtx__9daAlink_cFv(void);
void transS__14mDoMtx_stack_cFRC4cXyz(void);
void quatM__14mDoMtx_stack_cFPC10Quaternion(void);
void checkUnderMove0BckNoArc__9daAlink_cCFQ29daAlink_c11daAlink_ANM(void);
void mDoMtx_QuatConcat__FPC10QuaternionPC10QuaternionP10Quaternion(void);
void JMAEulerToQuat__FsssP10Quaternion(void);
void checkBowAnime__9daAlink_cCFv(void);
void setMatrixWorldAxisRot__9daAlink_cFPA4_fsssiPC4cXyz(float (*)[4], short, short, short, int,
                                                        const cXyz*);
void checkHorseLieAnime__9daAlink_cCFv(void);
void __ct__5csXyzFsss(void);
void checkNoUpperAnime__9daAlink_cCFv(void);
void checkUpperReadyThrowAnime__9daAlink_cCFv(void);
void setDoubleAnimeBlendRatio__9daAlink_cFf(void);
void changeBlendRate__9daAlink_cFi(int);
void setArmMatrix__9daAlink_cFv(void);
void setFootMatrix__9daAlink_cFv(void);
void setUpperFront__9daAlink_cFv(void);
bool jointControll__9daAlink_cFi(int);
void resetRootMtx__9daAlink_cFv(void);
bool modelCallBack__9daAlink_cFi(int);
void checkZoraWearAbility__9daAlink_cCFv(void);
void scaleM__14mDoMtx_stack_cFfff(void);
void mDoMtx_XYZrotM__FPA4_fsss(void);
void mDoMtx_ZrotM__FPA4_fs(void);
bool headModelCallBack__9daAlink_cFi(int);
void changeWolfBlendRate__9daAlink_cFi(void);
void setWolfFootMatrix__9daAlink_cFv(void);
bool wolfModelCallBack__9daAlink_cFi(int);
void cLib_addCalcAngleS2__FPssss(void);
void getMoveBGActorName__9daAlink_cFR13cBgS_PolyInfoi(void);
void multVecMagneBootInvMtx__9daAlink_cFP4cXyz(void);
void __ml__4cXyzCFf(void);
void atan2sY_XZ__4cXyzCFv(void);
void cM_atan2s__Fff(void);
void cLib_distanceAngleS__Fss(void);
void atan2sX_Z__4cXyzCFv(void);
void __mi__4cXyzCFRC3Vec(void);
void dKyw_get_AllWind_vec__FP4cXyzP4cXyzPf(void);
void cLib_addCalcAngleS__FPsssss(void);
void cM_rndF__Ff(void);
void calcHairAngle__9daAlink_cFPs(short*);
void setHairAngle__9daAlink_cFP4cXyzff(cXyz*, float, float);
void cLib_targetAngleY__FPC3VecPC3Vec(void);
void checkEnemyGroup__9daAlink_cFP10fopAc_ac_c(void);
int checkAttentionPosAngle__9daAlink_cFP4cXyz(cXyz*);
void getDemoLookActor__9daAlink_cFv(void);
void checkDemoMoveMode__9daAlink_cCFUl(void);
BOOL isTransformLV__21dSv_player_status_b_cCFi(int);
void dKy_darkworld_check__Fv(void);
void checkAttentionState__9daAlink_cFv(void);
void checkUnderMove0BckNoArcWolf__9daAlink_cCFQ29daAlink_c12daAlink_WANM(void);
void checkWindSpeedOnAngleAnime__9daAlink_cCFi(void);
void getCopyRodControllActor__9daAlink_cFv(void);
void convPId__10dAttLook_cFUi(void);
void checkEventRun__9daAlink_cCFv(void);
bool checkActorPosAngle__9daAlink_cFP10fopAc_ac_cPP4cXyz(fopAc_ac_c*, cXyz**);
void GetForceLockOnActor__9dCamera_cFv(void);
void dCam_getBody__Fv(void);
void LockonTarget__12dAttention_cFl(void);
void cM_rnd__Fv(void);
void fopAcIt_Judge__FPFPvPv_PvPv(void);
void getActor__10dAttList_cFv(void);
void GetLockonList__12dAttention_cFl(void);
void fopAcM_getTalkEventPartner__FPC10fopAc_ac_c(void);
}

// daalink_matanm init
extern float lbl_80452CC0;
extern u8 lbl_80450FC8;
extern u8 lbl_80450FC9;

// daalink_matanm calc
extern double lbl_80452CB0;
extern float lbl_80452CB8;

// daalink setmatrixworldaxisrot
struct mCurrentMtx {  // J3DGraphBase::J3DSys::mCurrentMtx
    float unk0[4];
    float unk10[4];
    float unk20[4];
};
// extern now lbl_803DD470;
extern mCurrentMtx lbl_80434BE4;

// daalink headmodelcallback
extern float lbl_80452EDC;

// daalink sethatangle
extern float lbl_80452CE0;
extern double lbl_80452CE8;
extern float lbl_80452D50;
extern float lbl_80452DF8;
extern float lbl_80452C9C;
extern double lbl_80452CF0;
extern double lbl_80452CF8;
extern float lbl_80452D14;
extern float lbl_80452D3C;
extern float lbl_80452D88;
extern float lbl_80452ED4;
extern float lbl_80452F0C;
extern float lbl_80453058;
extern float lbl_80453100;
extern float lbl_804531F0;
extern float lbl_804531F4;

// daalink sethairangle
extern float lbl_80452C98;
extern float lbl_80452D18;
extern float lbl_80452D5C;
extern float lbl_80452DEC;
extern float lbl_80452DB8;
extern float lbl_80452E4C;
extern float lbl_80452E54;
extern float lbl_80452E5C;
extern float lbl_80452E60;
extern float lbl_80452F08;
extern float lbl_80452FDC;
extern float lbl_80453158;
extern float lbl_804531F8;
extern float lbl_804531FC;
extern float lbl_80453200;
extern float lbl_80453204;
extern float lbl_80453208;
extern float lbl_8045320C;
extern float lbl_80453210;

// daalink checkattentionposangle
extern u8 lbl_8038E5A4[0x6C];  // daAlinkHIO_horse_c0::m

// daalink getneckaimpos
extern u32 lbl_80451018;  // daPy_py_c::m_midnaActor
extern float lbl_80452D68;
extern float lbl_80452DB0;
extern float lbl_80452DE0;
extern float lbl_80452E44;

#endif
