#ifndef D_A_D_A_NPC_H
#define D_A_D_A_NPC_H

#include "d/com/d_com_inf_game.h"
#include "dolphin/types.h"
#include "global.h"

class daNpcT_MotionSeqMngr_c {
public:
    class sequenceStepData_c {
    public:
        s16 field_0x0;
        s8 field_0x2;
        s8 field_0x3;
    };  // Size: 0x4?

    /* 80145898 */ void initialize();
    /* 801458C0 */ int play(u16, int*, f32*);
    /* 80145A24 */ s32 checkEndSequence();

    bool checkEntryNewMotion() { return mStepNo == 0 && field_0x14 == -1; }

private:
    /* 0x00 */ sequenceStepData_c* mpSeqData;
    /* 0x04 */ int field_0x4;
    /* 0x08 */ int mNo;
    /* 0x0C */ int mOffset;
    /* 0x10 */ int mStepNo;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ bool mEndSequence;

public:
    /* 8014D0C0 */ virtual ~daNpcT_MotionSeqMngr_c();
};

class daNpcT_ActorMngr_c {
private:
    /* 0x0 */ u32 mActorID;

public:
    /* 801456D4 */ void initialize();
    /* 801456E0 */ void entry(fopAc_ac_c*);
    /* 801456FC */ void remove();
    /* 80145708 */ fopAc_ac_c* getActorP();

    /* 8014D108 */ virtual ~daNpcT_ActorMngr_c();
};

class daNpcT_JntAnm_c {
private:
    /* 0x000 */ daNpcT_ActorMngr_c mActrMngr;
    /* 0x008 */ cXyz field_0x8;
    /* 0x014 */ cXyz field_0x14;
    /* 0x020 */ cXyz* field_0x20;
    /* 0x024 */ cXyz field_0x24;
    /* 0x030 */ cXyz field_0x30[3];
    /* 0x054 */ cXyz field_0x54[3];
    /* 0x078 */ cXyz field_0x78[3];
    /* 0x09C */ cXyz field_0x9c[3];
    /* 0x0C0 */ cXyz mRad[3];
    /* 0x0E4 */ cXyz field_0xe4[3];
    /* 0x108 */ cXyz field_0x108;
    /* 0x114 */ cXyz field_0x114;
    /* 0x120 */ cXyz field_0x120;
    /* 0x12C */ csXyz mEyeAngle;
    /* 0x132 */ csXyz field_0x132;
    /* 0x138 */ int mMode;
    /* 0x13C */ u8 field_0x13c[4];
    /* 0x140 */ int field_0x140;
    /* 0x144 */ u8 field_0x144[4];
    /* 0x148 */ f32 field_0x148;
    /* 0x14C */ f32 field_0x14c;
    /* 0x150 */ csXyz field_0x150;
    /* 0x156 */ u8 field_0x156;
    /* 0x157 */ u8 mDirectFlag;
    /* 0x158 */ u8 field_0x158;

public:
    /* 80146C98 */ void initialize();
    /* 80146CD8 */ void setParam(fopAc_ac_c*, J3DModel*, cXyz*, int, int, int, f32, f32, f32, f32,
                                 f32, f32, f32, f32, f32, f32, cXyz*);
    /* 80147858 */ void calc(f32);
    /* 80147C38 */ void calcJntRad(f32, f32, f32);

    /* 8014D150 */ virtual ~daNpcT_JntAnm_c();

    void clrDirectFlag() { mDirectFlag = 0; }
};

class daNpcT_DmgStagger_c {
public:
    /* 80147DCC */ void setParam(fopAc_ac_c*, fopAc_ac_c*, s16);
    /* 80147E3C */ void calc(int);

private:
    /* 0x00 */ csXyz field_0x0[2];
    /* 0x0C */ f32 field_0xc[2];
    /* 0x14 */ s16 mStagger;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ u8 mRebirth;
};

struct daNpcT_evtData_c {};

struct daNpcT_faceMotionAnmData_c {};

struct daNpcT_pntData_c {};

struct daNpcT_motionAnmData_c {
    u8 data[8];
};

class mDoExt_McaMorfSO;

class daNpcT_c : public fopAc_ac_c {
public:
    /* 0x568 */ daNpcT_faceMotionAnmData_c* field_0x568;
    /* 0x56C */ daNpcT_motionAnmData_c* field_0x56c;
    /* 0x570 */ daNpcT_evtData_c* field_0x570;
    /* 0x574 */ char** field_0x574;
    /* 0x578 */ mDoExt_McaMorfSO* mMcaMorfAnm[2];
    /* 0x580 */ Z2Creature field_0x580;
    /* 0x610 */ mDoExt_bckAnm mBckAnm;
    /* 0x62C */ mDoExt_btpAnm mBtpAnm;
    /* 0x644 */ mDoExt_btkAnm mBtkAnm;
    /* 0x65C */ mDoExt_brkAnm mBrkAnm;
    /* 0x674 */ mDoExt_bpkAnm mBpkAnm;
    /* 0x68C */ dBgS_ObjAcch field_0x68c;
    /* 0x864 */ dCcD_Stts field_0x864;
    /* 0x8A0 */ dBgS_AcchCir field_0x8a0;
    /* 0x8E0 */ request_of_phase_process_class field_0x8e0[10];
    /* 0x930 */ cBgS_GndChk field_0x930;
    /* 0x96C */ u8 field_0xa6c[8];
    /* 0x974 */ dMsgFlow_c mFlow;
    /* 0x9C0 */ dPaPoT_c field_0x9c0;
    /* 0xA40 */ dCcD_Stts field_0xa40;
    /* 0xA7C */ u8 field_0xa7c[4];
    /* 0xA80 */ f32 field_0xa80;
    /* 0xA84 */ f32 field_0xa84;
    /* 0xA89 */ u8 field_0xa88;
    /* 0xA89 */ u8 field_0xa89;
    /* 0xA8C */ dBgS_GndChk field_0xa8c;
    /* 0xAE0 */ dBgS_LinChk field_0xae0;
    /* 0xB50 */ daNpcT_MotionSeqMngr_c field_0xb50;
    /* 0xB74 */ daNpcT_MotionSeqMngr_c field_0xb74;
    /* 0xB98 */ daNpcT_ActorMngr_c field_0xb98;
    /* 0xBA0 */ daNpcT_ActorMngr_c field_0xba0;
    /* 0xBA8 */ daNpcT_JntAnm_c field_0xba8;
    /* 0xD08 */ daNpcT_DmgStagger_c field_0xd08;
    /* 0xD24 */ cXyz field_0xd24;
    /* 0xD30 */ cXyz field_0xd30;
    /* 0xD3C */ cXyz field_0xd3c;
    /* 0xD48 */ cXyz field_0xd48;
    /* 0xD54 */ cXyz field_0xd54;
    /* 0xD60 */ cXyz field_0xd60;
    /* 0xD6C */ cXyz field_0xd6c;
    /* 0xD78 */ csXyz field_0xd78;
    /* 0xD7E */ csXyz field_0xd7e;
    /* 0xD84 */ csXyz field_0xd84;
    /* 0xD8A */ csXyz field_0xd8a;
    /* 0xD90 */ u32 field_0xd90;
    /* 0xD94 */ u32 field_0xd94;
    /* 0xD98 */ u32 field_0xd98;
    /* 0xD9C */ u32 field_0xd9c;
    /* 0xDA0 */ u8 field_0xda0[8];
    /* 0xDA8 */ u32 field_0xda8;
    /* 0xDAC */ int field_0xdac;
    /* 0xDB0 */ int mCutType;
    /* 0xDB4 */ int field_0xdb4;
    /* 0xDB8 */ int field_0xdb8;
    /* 0xDBC */ int mTimer;
    /* 0xDC0 */ int field_0xdc0;
    /* 0xDC4 */ u8 field_0xdc4[4];
    /* 0xDC8 */ s16 field_0xdc8;
    /* 0xDCA */ s16 field_0xdca;
    /* 0xDCC */ u8 field_0xdcc[8];
    /* 0xDD4 */ s16 field_0xdd4;
    /* 0xDD8 */ s16 field_0xdd8;
    /* 0xDDA */ s16 field_0xdda;
    /* 0xDDC */ f32 field_0xddc;
    /* 0xDE0 */ f32 field_0xde0;
    /* 0xDE4 */ f32 field_0xde4;
    /* 0xDE8 */ u8 field_0xde8[0xC];
    /* 0xDF4 */ f32 field_0xdf4;
    /* 0xDF8 */ u8 field_0xdf8[4];
    /* 0xDFC */ f32 field_0xdfc;
    /* 0xE00 */ cXyz field_0xe00;
    /* 0xE0C */ cXyz field_0xe0c;
    /* 0xE18 */ s16 field_0xe18;
    /* 0xE1A */ s16 field_0xe1a;
    /* 0xE1C */ s16 field_0xe1c;
    /* 0xE1E */ u16 field_0xe1e;
    /* 0xE20 */ u16 field_0xe20;
    /* 0xE22 */ u16 field_0xe22;
    /* 0xE24 */ u8 field_0xe24;
    /* 0xE25 */ u8 field_0xe25;
    /* 0xE26 */ u8 field_0xe26;
    /* 0xE27 */ u8 field_0xe27;
    /* 0xE28 */ u8 field_0xe28;
    /* 0xE29 */ u8 field_0xe29;
    /* 0xE2A */ u8 field_0xe2a;
    /* 0xE2B */ u8 field_0xe2b;
    /* 0xE2C */ u8 field_0xe2c;
    /* 0xE2D */ u8 field_0xe2d;
    /* 0xE2E */ u8 field_0xe2e[2];
    /* 0xE30 */ u16 field_0xe30;
    /* 0xE32 */ u8 field_0xe32;
    /* 0xE33 */ u8 field_0xe33;
    /* 0xE34 */ u8 field_0xe34;
    /* 0xE35 */ u8 field_0xe35;
    /* 0xE36 */ u8 field_0xe36;
    /* 0xE37 */ u8 field_0xe37;
    /* 0xE38 */ u8 field_0xe38;
    /* 0xE3C vtable */

public:
    /* 80147FA4 */ void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80147FD4 */ static int srchActor(void*, void*);
    /* 80148058 */ J3DAnmTransform* getTrnsfrmAnmP(char const*, int);
    /* 80148094 */ J3DAnmTransformKey* getTrnsfrmKeyAnmP(char const*, int);
    /* 801480D0 */ J3DAnmTexPattern* getTexPtrnAnmP(char const*, int);
    /* 8014810C */ J3DAnmTextureSRTKey* getTexSRTKeyAnmP(char const*, int);
    /* 80148148 */ J3DAnmTevRegKey* getTevRegKeyAnmP(char const*, int);
    /* 80148184 */ J3DAnmColor* getColorAnmP(char const*, int);
    /* 801481C0 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80148204 */ int setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 801482F8 */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 80148338 */ void setBtkAnm(J3DAnmTextureSRTKey*, J3DModelData*, f32, int);
    /* 80148378 */ void setBrkAnm(J3DAnmTevRegKey*, J3DModelData*, f32, int);
    /* 801483B8 */ void setBpkAnm(J3DAnmColor*, J3DModelData*, f32, int);
    /* 801483F8 */ int loadRes(s8 const*, char const**);
    /* 801484AC */ void deleteRes(s8 const*, char const**);
    /* 8014852C */ int execute();
    /* 8014886C */ int draw(int, int, f32, _GXColorS10*, f32, int, int, int);
    /* 80148C70 */ void setEnvTevColor();
    /* 80148CCC */ void setRoomNo();
    /* 80148D10 */ void checkEndAnm(f32);
    /* 80148DD0 */ void checkEndAnm(J3DFrameCtrl*, f32);
    /* 80148E4C */ void playAllAnm();
    /* 80149190 */ void setMtx();
    /* 8014924C */ void ctrlFaceMotion();
    /* 80149300 */ void ctrlMotion();
    /* 801493B8 */ void ctrlMsgAnm(int*, int*, fopAc_ac_c*, int);
    /* 8014A224 */ void evtChange();
    /* 8014A388 */ void setFaceMotionAnm(int, bool);
    /* 8014A908 */ void setPos(cXyz);
    /* 8014AA18 */ void setAngle(s16);
    /* 8014A99C */ void setAngle(csXyz);
    /* 8014AA40 */ fopAc_ac_c* hitChk(dCcD_GObjInf*, u32);
    /* 8014AAD0 */ void setDamage(int, int, int);
    /* 8014ABD0 */ void chkActorInSight(fopAc_ac_c*, f32, s16);
    /* 8014ACF0 */ void chkPointInArea(cXyz, cXyz, f32, f32, f32, s16);
    /* 8014ADA0 */ void chkPointInArea(cXyz, cXyz, cXyz, s16);
    /* 8014AE1C */ void chkFindActor(fopAc_ac_c*, int, s16);
    /* 8014B024 */ void chkWolfAction();
    /* 8014B0C8 */ void chkFindWolf(s16, int, int, f32, f32, f32, f32, int);
    /* 8014B338 */ void srchPlayerActor();
    /* 8014B3EC */ void getAttnPos(fopAc_ac_c*);
    /* 8014B4A4 */ void turn(s16, int, int);
    /* 8014B648 */ void step(s16, int, int, int, int);
    /* 8014B808 */ void calcSpeedAndAngle(cXyz, int, s16, s16);
    /* 8014BB00 */ void getActorDistance(fopAc_ac_c*, int, int);
    /* 8014BBF0 */ void initTalk(int, fopAc_ac_c**);
    /* 8014BC78 */ void talkProc(int*, int, fopAc_ac_c**, int);
    /* 8014BE2C */ void getNearestActorP(s16);
    /* 8014BEE4 */ void getEvtAreaTagP(int, int);
    /* 8014BFB0 */ void getShopItemTagP();
    /* 8014C030 */ void setHitodamaPrtcl();

    /* 8014CD20 */ virtual ~daNpcT_c();
    /* 801490D4 */ virtual void ctrlBtk();
    /* 8014CC14 */ virtual void ctrlSubFaceMotion(int);
    /* 8014CC40 */ virtual bool checkChangeJoint(int);
    /* 8014CC38 */ virtual bool checkRemoveJoint(int);
    /* 8014CC5C */ virtual s32 getBackboneJointNo();
    /* 8014CC54 */ virtual s32 getNeckJointNo();
    /* 8014CC4C */ virtual s32 getHeadJointNo();
    /* 8014CC90 */ virtual s32 getFootLJointNo();
    /* 8014CC88 */ virtual s32 getFootRJointNo();
    /* 8014D0A8 */ virtual bool getEyeballLMaterialNo();
    /* 8014D0B0 */ virtual bool getEyeballRMaterialNo();
    /* 8014D0B8 */ virtual bool getEyeballMaterialNo();
    /* 8014951C */ virtual void ctrlJoint(J3DJoint*, J3DModel*);
    /* 8014CC48 */ virtual void afterJntAnm(int);
    /* 8014CC24 */ virtual void setParam();
    /* 8014CC80 */ virtual bool checkChangeEvt();
    /* 8014CC78 */ virtual bool evtTalk();
    /* 8014CC70 */ virtual bool evtEndProc();
    /* 8014CC68 */ virtual bool evtCutProc();
    /* 8014CC64 */ virtual void setAfterTalkMotion();
    /* 8014997C */ virtual int evtProc();
    /* 8014CC20 */ virtual void action();
    /* 8014CC1C */ virtual void beforeMove();
    /* 8014CC18 */ virtual void afterMoved();
    /* 8014CC10 */ virtual void setAttnPos();
    /* 80149BB4 */ virtual void setFootPos();
    /* 8014CC0C */ virtual void setCollision();
    /* 80149D7C */ virtual void setFootPrtcl(cXyz*, f32, f32);
    /* 8014A05C */ virtual bool checkCullDraw();
    /* 8014A064 */ virtual void twilight();
    /* 8014CC98 */ virtual bool chkXYItems();
    /* 8014A0B0 */ virtual void evtOrder();
    /* 8014CBF4 */ virtual void decTmr();
    /* 8014A324 */ virtual void clrParam();
    /* 8014CC30 */ virtual int drawDbgInfo();
    /* 8014CC28 */ virtual void drawOtherMdl();
    /* 8014CC2C */ virtual void drawGhost();
    /* 8014CCA0 */ virtual bool afterSetFaceMotionAnm(int, int, f32, int);
    /* 8014CCE0 */ virtual bool afterSetMotionAnm(int, int, f32, int);
    /* 8014CCB0 */ virtual void getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 8014CCF0 */ virtual void getMotionAnm(daNpcT_motionAnmData_c);
    /* 8014CCEC */ virtual void changeAnm(int*, int*);
    /* 8014CCAC */ virtual void changeBck(int*, int*);
    /* 8014CCA8 */ virtual void changeBtp(int*, int*);
    /* 8014CCE8 */ virtual void changeBtk(int*, int*);
    /* 8014A628 */ virtual void setMotionAnm(int, f32, int);

    bool checkHide() { return !field_0xe25 && (!dComIfGs_wolfeye_effect_check() && field_0xa89); }

    static u8 const mCcDObjData[48];
    static u8 mCcDCyl[68];
    static u8 mCcDSph[64];
    static fopAc_ac_c* mFindActorPtrs[50];
    static s16 mSrchName;
    static s32 mFindCount;
};

STATIC_ASSERT(sizeof(daNpcT_c) == 0xE40);

class daNpcF_ActorMngr_c {
private:
    /* 0x0 */ u32 mActorID;

public:
    /* 801506B0 */ void initialize();
    /* 801506D8 */ void entry(unsigned int);
    /* 801506BC */ void entry(fopAc_ac_c*);
    /* 801506E0 */ void remove();
    /* 801506EC */ void getActorP();

    /* 80155E40 */ virtual ~daNpcF_ActorMngr_c();
};

class daNpcF_c : public fopAc_ac_c {
private:
    /* 0x568 */ mDoExt_McaMorfSO* mMcaMorf;
    /* 0x56C */ mDoExt_bckAnm mBckAnm;
    /* 0x588 */ mDoExt_btpAnm mBtpAnm;
    /* 0x5A0 */ mDoExt_btkAnm mBtkAnm;
    /* 0x5B8 */ mDoExt_brkAnm mBrkAnm;
    /* 0x5D0 */ dBgS_ObjAcch field_0x5d0;
    /* 0x7A8 */ dCcD_Stts field_0x7a8;
    /* 0x7E4 */ dBgS_AcchCir field_0x7e4;
    /* 0x824 */ daNpcF_ActorMngr_c field_0x824;
    /* 0x82C */ daNpcF_ActorMngr_c field_0x82c[5];
    /* 0x854 */ cXyz field_0x854[3];
    /* 0x878 */ cXyz field_0x878;
    /* 0x884 */ cXyz field_0x884;
    /* 0x890 */ cXyz field_0x890;
    /* 0x89C */ cXyz field_0x89c;
    /* 0x8A8 */ cXyz field_0x8a8;
    /* 0x8B4 */ cXyz field_0x8b4;
    /* 0x8C0 */ cXyz field_0x8c0;
    /* 0x8CC */ cXyz field_0x8cc;
    /* 0x8D8 */ cXyz field_0x8d8;
    /* 0x8E4 */ cXyz field_0x8e4;
    /* 0x8F0 */ csXyz field_0x8f0;
    /* 0x8F6 */ csXyz field_0x8f6;
    /* 0x8FC */ csXyz field_0x8fc;
    /* 0x902 */ csXyz field_0x902;
    /* 0x908 */ csXyz field_0x908[3];
    /* 0x91A */ csXyz field_0x91a[3];
    /* 0x92C */ int field_0x92c;
    /* 0x930 */ u32 field_0x930;
    /* 0x934 */ u32 field_0x934;
    /* 0x938 */ u32 field_0x938;
    /* 0x93C */ u32 field_0x93c[5];
    /* 0x950 */ int field_0x950;
    /* 0x954 */ int field_0x954;
    /* 0x958 */ int field_0x958;
    /* 0x95C */ int field_0x95c;
    /* 0x960 */ int field_0x960;
    /* 0x964 */ int field_0x964;
    /* 0x968 */ int field_0x968;
    /* 0x96C */ int field_0x96c;
    /* 0x970 */ f32 field_0x970;
    /* 0x974 */ f32 field_0x974;
    /* 0x978 */ f32 field_0x978;
    /* 0x97C */ f32 field_0x97c;
    /* 0x980 */ f32 field_0x980;
    /* 0x984 */ f32 field_0x984[3];
    /* 0x990 */ u16 field_0x990;
    /* 0x990 */ u16 field_0x992;
    /* 0x990 */ u16 field_0x994;
    /* 0x990 */ u16 field_0x996;
    /* 0x998 */ u16 field_0x998;
    /* 0x99C */ u32 field_0x99c;
    /* 0x9A0 */ u32 field_0x9a0;
    /* 0x9A4 */ int field_0x9a4;
    /* 0x9A8 */ int field_0x9a8;
    /* 0x9AC */ int field_0x9ac;
    /* 0x9B0 */ u32 field_0x9b0;
    /* 0x9B4 */ int mFlowNodeNo;
    /* 0x9B8 */ cXyz field_0x9b8;
    /* 0x9C4 */ cXyz field_0x9c4;
    /* 0x9D0 */ u16 field_0x9d0;
    /* 0x9D2 */ u16 field_0x9d2;
    /* 0x9D4 */ u16 field_0x9d4;
    /* 0x9D6 */ u16 field_0x9d6;
    /* 0x9D8 */ u16 field_0x9d8;
    /* 0x9DA */ u16 field_0x9da;
    /* 0x9DC */ u16 field_0x9dc;
    /* 0x9DE */ u16 field_0x9de;
    /* 0x9E0 */ u16 field_0x9e0;
    /* 0x9E2 */ u16 field_0x9e2;
    /* 0x9E4 */ u16 field_0x9e4;
    /* 0x9E6 */ u16 field_0x9e6;
    /* 0x9E8 */ u8 field_0x9e8;
    /* 0x9E9 */ u8 field_0x9e9;
    /* 0x9EA */ u8 field_0x9ea;
    /* 0x9EB */ u8 field_0x9eb;
    /* 0x9EC */ u8 field_0x9ec;
    /* 0x9ED */ u8 field_0x9ed;
    /* 0x9EE */ u8 field_0x9ee;
    /* 0x9EF */ u8 field_0x9ef;
    /* 0x9F0 */ u8 field_0x9f0;
    /* 0x9F1 */ u8 field_0x9f1;
    /* 0x9F2 */ bool mHide;
    /* 0x9f3 */ u8 field_0x9f3;
    /* 0x9F4 */ u8 field_0x9f4;
    /* 0x9F5 */ u8 field_0x9f5;
    /* 0x9F6 */ u8 field_0x9f6;
    /* 0x9F8 */ dMsgFlow_c field_0x9f8;
    /* 0xA44 */ cBgS_GndChk field_0xa44;
    /* 0xA80 */ dBgS_GndChk field_0xa80;
    /* 0xAD4 */ dBgS_LinChk field_0xad4;

public:
    struct daNpcF_anmPlayData {};

    /* 80152014 */ void execute();
    /* 801522AC */ void draw(int, int, f32, _GXColorS10*, int);
    /* 80152614 */ void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80152654 */ void srchAttnActor1(void*, void*);
    /* 801526E8 */ void srchActor(void*, void*);

    /* 801528C8 */ void initialize();
    /* 80152B2C */ void getTrnsfrmKeyAnmP(char*, int);
    /* 80152B68 */ void getTexPtrnAnmP(char*, int);
    /* 80152BA4 */ void getTexSRTKeyAnmP(char*, int);
    /* 80152BE0 */ void getTevRegKeyAnmP(char*, int);
    /* 80152C1C */ void setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 80152C80 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 80152CC4 */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 80152D04 */ void setBtkAnm(J3DAnmTextureSRTKey*, J3DModelData*, f32, int);
    /* 80152D44 */ void setBrkAnm(J3DAnmTevRegKey*, J3DModelData*, f32, int);
    /* 80152D84 */ void setEnvTevColor();
    /* 80152DE0 */ void setRoomNo();
    /* 80152E24 */ void chkEndAnm(f32);
    /* 80152EC4 */ void chkEndAnm(J3DFrameCtrl*, f32);
    /* 80152F40 */ void playAllAnm();
    /* 80153150 */ void playExpressionAnm(daNpcF_c::daNpcF_anmPlayData***);
    /* 80153264 */ void playMotionAnm(daNpcF_c::daNpcF_anmPlayData***);
    /* 8015337C */ void setLookatMtx(int, int*, f32);
    /* 80153578 */ void hitChk2(dCcD_Cyl*, int, int);
    /* 80153658 */ void setDamage(int, int, int);
    /* 80153718 */ void ctrlMsgAnm(int&, int&, fopAc_ac_c*, int);
    /* 8015387C */ void orderEvent(int, char*, u16, u16, u8, u16);
    /* 80153954 */ void changeEvent(char*, char*, u16, u16);
    /* 801539F0 */ void chkActorInSight(fopAc_ac_c*, f32);
    /* 80153A78 */ void chkActorInArea(fopAc_ac_c*, cXyz, cXyz, s16);
    /* 80153BDC */ void chkActorInAttnArea(fopAc_ac_c*, fopAc_ac_c*, int);
    /* 80153D1C */ void initTalk(int, fopAc_ac_c**);
    /* 80153D84 */ void talkProc(int*, int, fopAc_ac_c**);
    /* 80153EF4 */ void turn(s16, f32, int);
    /* 801540A4 */ void step(s16, int, int, int);
    /* 80154250 */ void setAngle(s16);
    /* 80154278 */ void getDistTableIdx(int, int);
    /* 801542A0 */ void getEvtAreaTagP(int, int);
    /* 8015436C */ void getAttnActorP(int, void* (*)(void*, void*), f32, f32, f32, f32, s16, int,
                                      int);
    /* 80154730 */ void chkActorInSight2(fopAc_ac_c*, f32, s16);
    /* 80154834 */ void chkPointInArea(cXyz, cXyz, f32, f32, f32, s16);
    /* 801548F4 */ void chkPointInArea(cXyz, cXyz, cXyz, s16);
    /* 8015496C */ void getAttentionPos(fopAc_ac_c*);
    /* 801549E0 */ void chkFindPlayer2(int, s16);
    /* 80154BD8 */ void setHitodamaPrtcl();

    /* 80155BF4 */ virtual ~daNpcF_c();
    /* 80155BC8 */ virtual void setParam();
    /* 80155BC0 */ virtual bool main();
    /* 80155BD8 */ virtual bool ctrlBtk();
    /* 80155BBC */ virtual void adjustShapeAngle();
    /* 8015276C */ virtual void setMtx();
    /* 801527FC */ virtual void setMtx2();
    /* 80155BB8 */ virtual void setAttnPos();
    /* 80155BB4 */ virtual void setCollisions();
    /* 80155BE0 */ virtual bool setExpressionAnm(int, bool);
    /* 80155EC8 */ virtual bool setExpressionBtp(int);
    /* 80155BF0 */ virtual void setExpression(int, f32);
    /* 80155BE8 */ virtual void setMotionAnm(int, f32);
    /* 80155BEC */ virtual void setMotion(int, f32, int);
    /* 80155BD0 */ virtual bool drawDbgInfo();
    /* 80155BCC */ virtual void drawOtherMdls();

    static u8 const mCcDObjInfo[48];
    static u8 mCcDCyl[68];
    static u8 mCcDSph[64];
    static u8 mFindActorPList[400];
    static u8 mFindCount[4];
    static u8 mSrchActorName[2 + 2 /* padding */];
};

STATIC_ASSERT(sizeof(daNpcF_c) == 0xB48);

void daNpcF_getPlayerInfoFromPlayerList(int param_0, int param_1, cXyz& param_2,
                                            csXyz& param_3);

#endif /* D_A_D_A_NPC_H */
