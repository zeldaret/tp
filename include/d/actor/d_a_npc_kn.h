#ifndef D_A_NPC_KN_H
#define D_A_NPC_KN_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Kn_c
 * @brief Hero's Shade
 *
 * @details
 *
 */
class daNpc_Kn_c : public fopEn_enemy_c {
public: 
    typedef int (daNpc_Kn_c::*cutFunc)(int);
    typedef int (daNpc_Kn_c::*actionFunc)(void*);

    class daNpc_Kn_prtclMngr_c {
    public:
        /* 80A2AF98 */ ~daNpc_Kn_prtclMngr_c() {};
        /* 80A3C1C4 */ daNpc_Kn_prtclMngr_c() {};

        /* 0x00 */ bool mpModel;
        /* 0x04 */ cXyz mPos;
        /* 0x10 */ csXyz mAngle;
        /* 0x18 */ cXyz mScale;
        /* 0x24 */ dPaPo_c field_0x24;
    };

public:
    /* 0x05AC */ const daNpcT_faceMotionAnmData_c* mpFaceMotionAnmData;
    /* 0x05B0 */ const daNpcT_motionAnmData_c* mpMotionAnmData;
    /* 0x05B4 */ const daNpcT_evtData_c* mpEventData;
    /* 0x05B8 */ char** field_0x5B8;
    /* 0x05BC */ mDoExt_McaMorfSO* mpMorf[2];
    /* 0x05C4 */ Z2Creature mCreature;
    /* 0x0654 */ mDoExt_bckAnm mBckAnm;
    /* 0x0670 */ mDoExt_btpAnm mBtpAnm;
    /* 0x0688 */ mDoExt_btkAnm mBtkAnm;
    /* 0x06A0 */ mDoExt_brkAnm mBrkAnm;
    /* 0x06B8 */ mDoExt_bpkAnm mBpkAnm;
    /* 0x06D0 */ dBgS_ObjAcch mAcch;
    /* 0x08A8 */ dCcD_Stts mCcStts;
    /* 0x08E4 */ dBgS_AcchCir mAcchCir;
    /* 0x0924 */ request_of_phase_process_class mPhase[8];
    /* 0x0964 */ cBgS_GndChk mGndChk;
    /* 0x09A0 */ daNpcT_MatAnm_c* mpMatAnm;
    /* 0x09A4 */ u8 field_0x9a4[4];
    /* 0x09A8 */ dMsgFlow_c mFlow;
    /* 0x09F4 */ u8 field_0x9F4[0xa74 - 0x9f4];
    /* 0x0A74 */ dCcD_Stts mCcStts2;
    /* 0x0AB0 */ u32 mFlowNodeNo;
    /* 0x0AB4 */ f32 field_0xab4;
    /* 0x0AB8 */ f32 field_0xab8;
    /* 0x0ABC */ u8 field_0xABC;
    /* 0x0ABD */ u8 field_0xABD;
    /* 0x0ABE */ u8 field_0xABE[0xAC0 - 0xABE];
    /* 0x0AC0 */ dBgS_GndChk mGndChk2;
    /* 0x0B14 */ dBgS_LinChk mLinChk;
    /* 0x0B84 */ daNpcT_MotionSeqMngr_c mMotionSeqMngr1;
    /* 0x0BA8 */ daNpcT_MotionSeqMngr_c mMotionSeqMngr2;
    /* 0x0BCC */ daNpcT_ActorMngr_c mActorMngr1;
    /* 0x0BD4 */ daNpcT_ActorMngr_c mActorMngr2;
    /* 0x0BDC */ daNpcT_JntAnm_c mJntAnm;
    /* 0x0D3C */ daNpcT_DmgStagger_c mDmgStagger;
    /* 0x0D58 */ cXyz field_0xd58;
    /* 0x0D64 */ cXyz field_0xD64;
    /* 0x0D70 */ cXyz field_0xD70;
    /* 0x0D7C */ cXyz field_0xD7C;
    /* 0x0D88 */ cXyz field_0xD88;
    /* 0x0D94 */ cXyz field_0xD94;
    /* 0x0DA0 */ cXyz field_0xDA0;
    /* 0x0DAC */ csXyz field_0xDAC;
    /* 0x0DB2 */ csXyz field_0xDB2;
    /* 0x0DB8 */ csXyz field_0xDB8;
    /* 0x0DBE */ csXyz field_0xDBE;
    /* 0x0DC4 */ s32 field_0xdc4;
    /* 0x0DC8 */ u32 mShadowKey;
    /* 0x0DCC */ u32 field_0xdcc;
    /* 0x0DD0 */ u32 field_0xdd0;
    /* 0x0DD4 */ s32 mStaffId;
    /* 0x0DD8 */ int mCutType;
    /* 0x0DDC */ int field_0xddc;
    /* 0x0DE0 */ int field_0xde0;
    /* 0x0DE4 */ int mTimer;
    /* 0x0DE8 */ int field_0xde8;
    /* 0x0DEC */ int field_0xdec;
    /* 0x0DF0 */ s16 field_0xdf0;
    /* 0x0DF2 */ u8 field_0xdf2[0xc];
    /* 0x0DFE */ s16 field_0xdfe;
    /* 0x0E00 */ u8 field_0xe00[0xC];
    /* 0x0E0C */ f32 field_0xe0c;
    /* 0x0E10 */ f32 mRadius;
    /* 0x0E14 */ f32 mGroundHeight;
    /* 0x0E18 */ u8 field_0xe18[0xe26 - 0xe18];
    /* 0x0E26 */ u16 field_0xe26;
    /* 0x0E28 */ u16 field_0xe28;
    /* 0x0E2A */ u16 field_0xe2a;
    /* 0x0E2C */ u8 field_0xe2c;
    /* 0x0E2D */ u8 field_0xe2d;
    /* 0x0E2E */ u8 field_0xe2e[0xe30 - 0xe2e];
    /* 0x0E30 */ u8 field_0xe30;
    /* 0x0E31 */ u8 field_0xe31;
    /* 0x0E32 */ u8 field_0xe32;
    /* 0x0E33 */ u8 field_0xe33;
    /* 0x0E33 */ u8 field_0xe34[0xe36 - 0xe34];
    /* 0x0E36 */ s16 field_0xe36;
    /* 0x0E38 */ u8 field_0xe38;
    /* 0x0E39 */ u8 field_0xe39;
    /* 0x0E3A */ u8 field_0xe3a;
    /* 0x0E3B */ u8 field_0xe3b;
    /* 0x0E3C */ int field_0xe3c;
    // /* 0x0E40 */ vtable

public:
    void initialize() {
        memset(&field_0xd58, 0, (int)&field_0xe3c - (int)&field_0xd58);

        mMotionSeqMngr1.initialize();
        mMotionSeqMngr2.initialize();
        mActorMngr1.initialize();
        mActorMngr2.initialize();
        mJntAnm.initialize();
        mDmgStagger.initialize();
        field_0xdc4 = -1;
        field_0xe2d = 1;
        field_0x15a4 = 0;
    }

    bool checkHide() {
        bool ret = false;

        if (field_0xe2c != 0 || (!dComIfGs_wolfeye_effect_check() && field_0xABD != 0)) {
            ret = true;
        }

        return ret;
    }

    int getHeadJointNo() {
        return 4;
    }

    int getNeckJointNo() {
        return 3;
    }

    int getBackboneJointNo() {
        return 1;
    }

    void setCutType(int i_type) { mCutType = i_type;}

    void setActionMode(s8 i_actionMode) { mActionMode = i_actionMode;}
    s8 getActionMode() { return mActionMode; }
    
    /* 80A2AFD4 */ s32 create();
    /* 80A2B278 */ s32 CreateHeap();
    /* 80A2B620 */ s32 Delete();
    /* 80A2B654 */ s32 Execute();
    /* 80A2B6B0 */ void Draw();
    /* 80A2B764 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 80A2B784 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 80A2B7DC */ u8 getType();
    /* 80A2B844 */ u8 getDivideNo();
    /* 80A2B850 */ u32 getFlowNodeNo();
    /* 80A2B86C */ u8 getPath();
    /* 80A2B878 */ BOOL isDelete();
    /* 80A2B91C */ void resetCol();
    /* 80A2B9E0 */ void reset();
    /* 80A2BC5C */ void resetType();
    /* 80A2BD30 */ void setParam();
    /* 80A2BFB0 */ u32 setParamTeach03();
    /* 80A2C044 */ u32 setParamTeach04();
    /* 80A2C0FC */ u32 setParamTeach05();
    /* 80A2C190 */ u32 setParamTeach06();
    /* 80A2C1B0 */ u32 setParamTeach07();
    /* 80A2C1D0 */ void setAfterTalkMotion();
    /* 80A2C230 */ void srchActors();
    /* 80A2C234 */ bool evtTalk();
    /* 80A2C318 */ bool evtCutProc();
    /* 80A2C3FC */ void action();
    /* 80A2C484 */ void beforeMove();
    /* 80A2C4FC */ void afterMoved();
    /* 80A2C56C */ void setAttnPos();
    /* 80A2C77C */ void setCollision();
    /* 80A2C984 */ void setCollisionSword();
    /* 80A2CB30 */ BOOL checkCollisionSword();
    /* 80A2CBEC */ void setCollisionTeach03();
    /* 80A2CC24 */ void setCollisionTeach04();
    /* 80A2CD00 */ void setCollisionTeach05();
    /* 80A2CD38 */ void setCollisionTeach06();
    /* 80A2CD58 */ void setCollisionTeach07();
    /* 80A2CD78 */ int drawDbgInfo();
    /* 80A2CD80 */ void drawOtherMdl();
    /* 80A2CF9C */ void drawGhost();
    /* 80A2D198 */ int selectAction();
    /* 80A2D3A4 */ void teach03_selectAction();
    /* 80A2D3FC */ void teach04_selectAction();
    /* 80A2D4A0 */ void teach05_selectAction();
    /* 80A2D4F8 */ void teach06_selectAction();
    /* 80A2D600 */ void teach07_selectAction();
    /* 80A2D708 */ BOOL chkAction(actionFunc);
    /* 80A2D734 */ BOOL setAction(actionFunc);
    /* 80A2D7DC */ int wait(void*);
    /* 80A2D9C4 */ int talk(void*);
    /* 80A2DB94 */ int test(void*);
    /* 80A2DCB4 */ void setSceneChange(int);
    /* 80A2DD70 */ int ECut_noneEquipChangeTalk(int);
    /* 80A2DF84 */ int ECut_noneEquipChangeTalkStand(int);
    /* 80A2E26C */ int ECut_largeDamageTalk(int);
    /* 80A2E528 */ int teach02_start(void*);
    /* 80A2E664 */ int teach03_attackWait(void*);
    /* 80A2EC04 */ int teach04_attackWait(void*);
    /* 80A2EF8C */ int teach04_headBreakWait(void*);
    /* 80A2F24C */ int teach04_finishWait(void*);
    /* 80A2F600 */ int teach05_surpriseAttackWait(void*);
    /* 80A2FC80 */ int teach06_superJumpWait(void*);
    /* 80A30398 */ int teach06_divideMove(void*);
    /* 80A305A8 */ int teach06_waitDivide(void*);
    /* 80A30708 */ int teach06_superJumpWaitDivide(void*);
    /* 80A30D44 */ int teach06_superJumpedDivide(void*);
    /* 80A30EDC */ int teach06_warpDelete(void*);
    /* 80A31028 */ int teach07_superTurnAttackWait(void*);
    /* 80A315D0 */ int teach07_divideMove(void*);
    /* 80A317F8 */ int teach07_waitDivide(void*);
    /* 80A31958 */ int teach07_superTurnAttackWaitDivide(void*);
    /* 80A31E24 */ int teach07_superTurnAttackedDivide(void*);
    /* 80A31FBC */ int teach07_warpDelete(void*);
    /* 80A3203C */ int ECut_secondEncount(int);
    /* 80A324C4 */ int ECut_thirdSkillExplain(int);
    /* 80A32D30 */ int ECut_thirdSkillGet(int);
    /* 80A33358 */ int ECut_fourthSkillExplain(int);
    /* 80A33D80 */ int ECut_fourthSkillGet(int);
    /* 80A343A8 */ int ECut_fifthSkillExplain(int);
    /* 80A34DB8 */ int ECut_fifthSkillGet(int);
    /* 80A353E0 */ int ECut_sixthSkillExplain(int);
    /* 80A35D88 */ int ECut_sixthSkillGet(int);
    /* 80A363C0 */ int ECut_seventhSkillExplain(int);
    /* 80A36C20 */ int ECut_seventhSkillGet(int);
    /* 80A372D0 */ void setPrtcl();
    /* 80A37430 */ int setSlipPrtcl();
    /* 80A37558 */ int setLandingPrtcl();
    /* 80A37598 */ void calcMagicBallPos();
    /* 80A37670 */ void setSwordChargePtcl();
    /* 80A37B08 */ void calcSlip();
    /* 80A37D20 */ void calcSwordAttackMove(int);
    /* 80A3805C */ void setSe();
    /* 80A38520 */ static void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80A38550 */ void getTrnsfrmAnmP(char const*, int);
    /* 80A3858C */ void* getTrnsfrmKeyAnmP(char const*, int);
    /* 80A385C8 */ void getTexPtrnAnmP(char const*, int);
    /* 80A38604 */ void getTexSRTKeyAnmP(char const*, int);
    /* 80A38640 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80A38684 */ int setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80A3877C */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 80A387BC */ void setBtkAnm(J3DAnmTextureSRTKey*, J3DModelData*, f32, int);
    /* 80A387FC */ cPhs__Step loadRes(s8 const*, char const**);
    /* 80A388B0 */ void deleteRes(s8 const*, char const**);
    /* 80A38930 */ s32 execute();
    /* 80A38BB8 */ void draw(int, int, f32, _GXColorS10*, f32, int, int, int);
    /* 80A38FAC */ void setEnvTevColor();
    /* 80A39008 */ void setRoomNo();
    /* 80A3904C */ bool checkEndAnm(f32);
    /* 80A390F8 */ BOOL checkEndAnm(J3DFrameCtrl*, f32);
    /* 80A3917C */ void playAllAnm();
    /* 80A39558 */ void setMtx();
    /* 80A395DC */ void ctrlFaceMotion();
    /* 80A39684 */ void ctrlMotion();
    /* 80A39738 */ void ctrlMsgAnm(int*, int*, fopAc_ac_c*, int);
    /* 80A3A404 */ void evtChange();
    /* 80A3A568 */ bool setFaceMotionAnm(int, bool);
    /* 80A3A7C0 */ bool setMotionAnm(int, f32, int);
    /* 80A3AA58 */ void setPos(cXyz);
    /* 80A3AAF0 */ void setAngle(s16);
    /* 80A3AB18 */ void chkActorInSight(fopAc_ac_c*, f32, s16);
    /* 80A3AC24 */ void chkPointInArea(cXyz, cXyz, f32, f32, f32, s16);
    /* 80A3ACD4 */ void chkPointInArea(cXyz, cXyz, cXyz, s16);
    /* 80A3AD50 */ void chkFindPlayer(int, s16);
    /* 80A3AF64 */ BOOL srchPlayerActor();
    /* 80A3B000 */ void getAttnPos(fopAc_ac_c*);
    /* 80A3B074 */ void turn(s16, int, int);
    /* 80A3B220 */ s32 step(s16, int, int, int, int);
    /* 80A3B3E8 */ s32 initTalk(int, fopAc_ac_c**);
    /* 80A3B448 */ BOOL talkProc(int*, int, fopAc_ac_c**, int);
    /* 80A3B5EC */ void setHitodamaPrtcl();
    /* 80A3B82C */ daNpc_Kn_c(daNpcT_faceMotionAnmData_c const*, daNpcT_motionAnmData_c const*,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                              daNpcT_MotionSeqMngr_c::sequenceStepData_c const*, int,
                              daNpcT_evtData_c const*, char**);
    /* 80A3C998 */ u32 setParamTeach01();
    /* 80A3CB14 */ void setCollisionTeach01();
    /* 80A3CBFC */ void teach01_selectAction();
    /* 80A3CCC0 */ int teach01_start(void*);
    /* 80A3CDFC */ int teach01_attackWait(void*);
    /* 80A3CF78 */ int teach01_swordAttackWait(void*);
    /* 80A3D32C */ int teach01_swordFinishWait(void*);
    /* 80A3D6D8 */ int ctrlWarp();
    /* 80A3DCEC */ int ECut_firstEncount(int);
    /* 80A3DEC4 */ int ECut_attackFailed(int);
    /* 80A3E550 */ int ECut_firstSkillGet(int);
    /* 80A3EB84 */ u32 setParamTeach02();
    /* 80A3EE38 */ void setCollisionTeach02();
    /* 80A3EF1C */ void teach02_selectAction();
    /* 80A3EFE0 */ int teach02_shieldBashWait(void*);
    /* 80A3F358 */ int teach02_finishWait(void*);
    /* 80A3F5A4 */ int teach02_shieldReflectWait(void*);
    /* 80A3F99C */ int ECut_secondSkillExplain(int);
    /* 80A3FFB4 */ int ECut_reflectExplain(int);
    /* 80A403B8 */ int ECut_secondSkillGet(int);
    /* 80A3949C */ virtual int ctrlBtk();
    /* 80A3B7B4 */ virtual s32 getFootLJointNo();
    /* 80A3B7AC */ virtual s32 getFootRJointNo();
    /* 80A3BD1C */ virtual int getEyeballLMaterialNo();
    /* 80A3BD24 */ virtual bool getEyeballRMaterialNo();
    /* 80A3BD14 */ virtual s32 getEyeballMaterialNo();
    /* 80A3989C */ virtual void ctrlJoint(J3DJoint*, J3DModel*);
    /* 80A3B720 */ virtual void afterJntAnm(int);
    /* 80A3B7A4 */ virtual bool checkChangeEvt();
    /* 80A39BBC */ virtual int evtProc();
    /* 80A3B79C */ virtual BOOL evtEndProc();
    /* 80A39DBC */ virtual void setFootPos();
    /* 80A39F84 */ virtual void setFootPrtcl(cXyz*, f32);
    /* 80A3A254 */ virtual bool checkCullDraw();
    /* 80A3A25C */ virtual void twilight();
    /* 80A3B7BC */ virtual bool chkXYItems();
    /* 80A3A2A8 */ virtual void evtOrder();
    /* 80A3B708 */ virtual void decTmr();
    /* 80A3A504 */ virtual void clrParam();
    /* 80A3B7C4 */ virtual bool afterSetFaceMotionAnm(int, int, f32, int);
    /* 80A3B7CC */ virtual daNpcT_faceMotionAnmData_c getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 80A3B7FC */ virtual daNpcT_motionAnmData_c getMotionAnm(daNpcT_motionAnmData_c);
    /* 80A2AA0C */ virtual ~daNpc_Kn_c();
    /* 80A2D060 */ virtual bool afterSetMotionAnm(int, int, f32, int);
    
    static u8 const mCcDObjData[48];
    static dCcD_SrcCyl mCcDCyl;
    static dCcD_SrcSph mCcDSph;
    static char* mCutNameList[21];
    static cutFunc mCutList[21];
    static fopAc_ac_c* mFindActorPtrs[50];
    static u8 mFindCount[4];

private:
    /* 0x0E44 */ J3DModel* mpModel;
    /* 0x0E48 */ mDoExt_invisibleModel mInvisModel;
    /* 0x0E50 */ dKy_tevstr_c mTevStr;
    /* 0x11D8 */ u8 field_0x11D8[0x11DC - 0x11D8];
    /* 0x11DC */ dCcD_Cyl field_0x11DC;
    /* 0x1318 */ dCcD_Sph field_0x1318[2];
    /* 0x1588 */ mDoExt_bckAnm field_0x1588;
    /* 0x15A4 */ u32 field_0x15a4;
    /* 0x15A8 */ u32 field_0x15A8;
    /* 0x15AC */ u8 mType;
    /* 0x15AD */ u8 mDivideNo;
    /* 0x15AE */ s8 mActionMode;
    /* 0x15AF */ u8 field_0x15af;
    /* 0x15B0 */ cXyz field_0x15b0;
    /* 0x15BC */ u8 field_0x15bc;
    /* 0x15BD */ u8 field_0x15bd;
    /* 0x15BE */ u16 field_0x15be;
    /* 0x15C0 */ cXyz field_0x15c0;
    /* 0x15CC */ u8 field_0x15cc;
    /* 0x15CD */ u8 field_0x15cd;
    /* 0x15CE */ u8 field_0x15ce;
    /* 0x15CF */ u8 field_0x15cf;
    /* 0x15D0 */ u16 field_0x15d0;
    /* 0x15D4 */ s32 field_0x15d4[3];
    /* 0x15E0 */ daNpc_Kn_prtclMngr_c mParticleMngr[3];
    /* 0x16F4 */ cXyz field_0x16f4;
    /* 0x1700 */ u8 field_0x1700[0x170c - 0x1700];
    /* 0x170C */ u8 field_0x170c;
    /* 0x170D */ u8 field_0x170d;
    /* 0x170E */ u8 field_0x170e;
    /* 0x170F */ u8 field_0x170f;
    /* 0x1710 */ u8 field_0x1710[4];
    /* 0x1714 */ actionFunc mpTeachAction;
    /* 0x1720 */ actionFunc mpActionFunc;
    /* 0x172C */ daNpcT_Path_c mPath;
    /* 0x1754 */ u8 field_0x1754;
};

STATIC_ASSERT(sizeof(daNpc_Kn_c) == 0x1758);

class daNpc_Kn_Param_c {
public:
    /* 80A3C124 */ virtual ~daNpc_Kn_Param_c();

    struct param {
        /* 0x00 */ f32 field_0x00;
        /* 0x04 */ f32 mGravity;
        /* 0x08 */ f32 mScale;
        /* 0x0C */ f32 field_0x0c;
        /* 0x10 */ f32 mWeight;
        /* 0x14 */ f32 field_0x14;
        /* 0x18 */ f32 mHeight;
        /* 0x1C */ f32 mRadius;
        /* 0x20 */ f32 field_0x20;
        /* 0x24 */ f32 field_0x24;
        /* 0x28 */ f32 field_0x28;
        /* 0x2C */ f32 field_0x2c;
        /* 0x30 */ f32 field_0x30;
        /* 0x34 */ f32 field_0x34;
        /* 0x38 */ f32 field_0x38;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ f32 field_0x40;
        /* 0x44 */ f32 field_0x44;
        /* 0x48 */ s16 field_0x48;
        /* 0x4A */ s16 field_0x4a;
        /* 0x4C */ s16 field_0x4c;
        /* 0x4E */ s16 field_0x4e;
        /* 0x50 */ s32 field_0x50;
        /* 0x54 */ s32 field_0x54;
        /* 0x58 */ s32 field_0x58;
        /* 0x5C */ s32 field_0x5C;
        /* 0x60 */ s16 field_0x60;
        /* 0x62 */ s16 field_0x62;
        /* 0x64 */ s16 field_0x64;
        /* 0x66 */ s16 field_0x66;
        /* 0x68 */ s16 field_0x68;
        /* 0x6A */ u8 field_0x6a;
        /* 0x6B */ s8 field_0x6b;
        /* 0x6C */ f32 field_0x6C;
        /* 0x70 */ s32 field_0x70;
        /* 0x74 */ s32 field_0x74;
        /* 0x78 */ s32 field_0x78;
        /* 0x7C */ s32 field_0x7C;
        /* 0x80 */ s32 field_0x80;
        /* 0x84 */ s32 field_0x84;
        /* 0x88 */ s32 field_0x88;
        /* 0x8C */ s16 mAlpha;
        /* 0x8E */ s16 field_0x8e;
        /* 0x90 */ s16 field_0x90;
        /* 0x92 */ s16 field_0x92;
        /* 0x94 */ f32 field_0x94;
        /* 0x98 */ f32 field_0x98;
        /* 0x9C */ f32 field_0x9c;
        /* 0xA0 */ f32 mSpeedF;
        /* 0xA4 */ f32 mSpeedY;
        /* 0xA8 */ f32 field_0xa8;
        /* 0xAC */ s16 mMinRndVal;
        /* 0xAE */ s16 mRndValRange;
        /* 0xB0 */ s16 field_0xb0;
        /* 0xB2 */ s16 field_0xb2;
        /* 0xB4 */ f32 field_0xb4;
    };

    static param const m;
};

#endif /* D_A_NPC_KN_H */
