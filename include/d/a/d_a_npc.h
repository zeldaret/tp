#ifndef D_A_D_A_NPC_H
#define D_A_D_A_NPC_H

#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "Z2AudioLib/Z2Creature.h"
#include "d/com/d_com_inf_game.h"
#include "d/a/d_a_player.h"
#include "d/d_path.h"
#include "d/msg/d_msg_flow.h"
#include "d/particle/d_particle_copoly.h"
#include "dolphin/types.h"
#include "global.h"

struct bckGetParam {
    /* 0x00 */ int bckIdx;
    /* 0x04 */ int bckAttr;
    /* 0x08 */ int arcIdx;
};

struct btpGetParam {
    /* 0x00 */ int btpIdx;
    /* 0x04 */ int btpAttr;
    /* 0x08 */ int arcIdx;
};

struct btkGetParam {
    /* 0x00 */ int btkIdx;
    /* 0x04 */ int btkAttr;
    /* 0x08 */ int arcIdx;
};

struct dPnt {};

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

class daNpcT_MatAnm_c : public J3DMaterialAnm {
private:
    /* 0x0F4 */ mutable f32 field_0xF4;
    /* 0x0F8 */ mutable f32 field_0xF8;
    /* 0x0FC */ f32 mTranslationX;
    /* 0x100 */ f32 mTranslationY;
    /* 0x104 */u8 field_0x104;
    /* 0x105 */u8 field_0x105;

public:
    /* 80145764 */ void initialize();
    /* 80145788 */ virtual void calc(J3DMaterial*) const;
    /* 8014D24C */ ~daNpcT_MatAnm_c();
};

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
    /* 0x0C */ f32 field_0xc;
    /* 0x0C */ f32 field_0x10;
    /* 0x14 */ s16 mStagger;
    /* 0x16 */ s16 field_0x16;
    /* 0x18 */ u8 mRebirth;
};

struct daNpcT_evtData_c {};

struct daNpcT_faceMotionAnmData_c {
    u32 field_0x0[6];
    u32 field_0x18;
};

struct daNpcT_pntData_c {};

struct daNpcT_motionAnmData_c {
    u32 field_0x0[6];
    u32 field_0x18;
};

class daNpcT_Hermite_c {
public:
    /* 8014CBAC */ ~daNpcT_Hermite_c();

    /* 0x00 */ f32 field_0x00;
    /* 0x04 */ cXyz mPosition;
    /* 0x10 */ f32 field_0x10;
};

class daNpcT_Path_c {
private:
    /* 0x00 */ dPath* mpRoomPath;
    /* 0x04 */ cXyz mPosition;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ u16 mIdx;
    /* 0x1E */ u16 field_0x1E;
    /* 0x20 */ u8 mDirection;
    /* 0x21 */ u8 mIsClosed;

public:
    /* 80145B7C */ void hermite(cXyz&, cXyz&, cXyz&, cXyz&, daNpcT_Hermite_c&, cXyz&);
    /* 80145C40 */ void initialize();
    /* 80145C74 */ int setPathInfo(u8, s8, u8);
    /* 80145D2C */ int setNextPathInfo(s8, u8);
    /* 80145DA0 */ void reverse();
    /* 80145DD0 */ int setNextIdx(int);
    /* 80145E38 */ int getDstPos(cXyz, cXyz*, int);
    /* 80145FB4 */ int getDstPosH(cXyz, cXyz*, int, int);
    /* 80146188 */ int chkPassed1(cXyz, int);
    /* 801464D8 */ int chkPassed2(cXyz, cXyz*, int, int);

    inline Vec getPntPos(int i_idx) {
        return mpRoomPath->m_points[i_idx].m_position;
    }

    int chkClose() { 
        int roomPath = dPath_ChkClose(mpRoomPath); 
        return roomPath;
    }

    u16 getNumPnts() { 
        dPath* path = mpRoomPath;
        return path->m_num; 
    }

    u16& getIdx() { return mIdx; }
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
    /* 0xD9C */ profile_method_class* mSubMtd;
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
    /* 0xDCC */ u8 field_0xdcc[10];
    /* 0xDD4 */ s16 field_0xdd4;
    /* 0xDD8 */ s16 mStepNo;
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
    /* 80148D10 */ int checkEndAnm(f32);
    /* 80148DD0 */ void checkEndAnm(J3DFrameCtrl*, f32);
    /* 80148E4C */ void playAllAnm();
    /* 80149190 */ void setMtx();
    /* 8014924C */ void ctrlFaceMotion();
    /* 80149300 */ void ctrlMotion();
    /* 801493B8 */ int ctrlMsgAnm(int*, int*, fopAc_ac_c*, int);
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
    /* 8014BBF0 */ int initTalk(int, fopAc_ac_c**);
    /* 8014BC78 */ void talkProc(int*, int, fopAc_ac_c**, int);
    /* 8014BE2C */ fopAc_ac_c* getNearestActorP(s16);
    /* 8014BEE4 */ void getEvtAreaTagP(int, int);
    /* 8014BFB0 */ fopAc_ac_c* getShopItemTagP();
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
    /* 8014CCB0 */ virtual daNpcT_faceMotionAnmData_c getFaceMotionAnm(daNpcT_faceMotionAnmData_c);
    /* 8014CCF0 */ virtual daNpcT_motionAnmData_c getMotionAnm(daNpcT_motionAnmData_c);
    /* 8014CCEC */ virtual void changeAnm(int*, int*);
    /* 8014CCAC */ virtual void changeBck(int*, int*);
    /* 8014CCA8 */ virtual void changeBtp(int*, int*);
    /* 8014CCE8 */ virtual void changeBtk(int*, int*);
    /* 8014A628 */ virtual void setMotionAnm(int, f32, int);

    bool checkHide() { 
        return field_0xe25 || (!dComIfGs_wolfeye_effect_check() && field_0xa89); 
    }

    s16 checkStep() {
        return mStepNo == 1;
    }

    static u8 const mCcDObjData[48];
    static u8 mCcDCyl[68];
    static u8 mCcDSph[64];
    static fopAc_ac_c* mFindActorPtrs[50];
    static s16 mSrchName;
    static s32 mFindCount;
};

STATIC_ASSERT(sizeof(daNpcT_c) == 0xE40);

BOOL daNpcT_chkEvtBit(u32 i_idx);
BOOL daNpcT_chkPointInArea(cXyz param_0, cXyz param_1, cXyz param_2, s16 param_3, int param_4);

class daNpcF_ActorMngr_c {
private:
    /* 0x0 */ u32 mActorID;

public:
    daNpcF_ActorMngr_c() { initialize(); }

    /* 801506B0 */ void initialize();
    /* 801506D8 */ void entry(unsigned int);
    /* 801506BC */ void entry(fopAc_ac_c*);
    /* 801506E0 */ void remove();
    /* 801506EC */ fopAc_ac_c* getActorP();

    /* 80155E40 */ virtual ~daNpcF_ActorMngr_c();
};

class daNpcF_c : public fopAc_ac_c {
protected:
    /* 0x568 */ mDoExt_McaMorfSO* mMcaMorf;
    /* 0x56C */ mDoExt_bckAnm mBckAnm;
    /* 0x588 */ mDoExt_btpAnm mBtpAnm;
    /* 0x5A0 */ mDoExt_btkAnm mBtkAnm;
    /* 0x5B8 */ mDoExt_brkAnm mBrkAnm;
    /* 0x5D0 */ dBgS_ObjAcch mAcch;
    /* 0x7A8 */ dCcD_Stts mStts;
    /* 0x7E4 */ dBgS_AcchCir mAcchCir;
    /* 0x824 */ daNpcF_ActorMngr_c field_0x824;
    /* 0x82C */ daNpcF_ActorMngr_c field_0x82c[5];
    /* 0x854 */ cXyz mLookatPos[3];
    /* 0x878 */ cXyz mLookPos;
    /* 0x884 */ cXyz field_0x884;
    /* 0x890 */ cXyz field_0x890;
    /* 0x89C */ cXyz field_0x89c;
    /* 0x8A8 */ cXyz field_0x8a8;
    /* 0x8B4 */ cXyz field_0x8b4;
    /* 0x8C0 */ cXyz field_0x8c0;
    /* 0x8CC */ cXyz field_0x8cc;
    /* 0x8D8 */ cXyz field_0x8d8;
    /* 0x8E4 */ cXyz mHeadPos;
    /* 0x8F0 */ csXyz field_0x8f0;
    /* 0x8F6 */ csXyz field_0x8f6;
    /* 0x8FC */ csXyz field_0x8fc;
    /* 0x902 */ csXyz field_0x902;
    /* 0x908 */ csXyz field_0x908[3];
    /* 0x91A */ csXyz field_0x91a[3];
    /* 0x92C */ int mCutIndex;
    /* 0x930 */ u32 field_0x930;
    /* 0x934 */ int field_0x934; // index in 0x93c to not decrement timer (if 0x938 is nonzero)
    /* 0x938 */ int field_0x938; // controls whether to use field 0x934
    /* 0x93C */ int field_0x93c[5]; // timers for removing actors from 0x82c
    /* 0x950 */ int field_0x950;
    /* 0x954 */ int field_0x954; // a timer
    /* 0x958 */ int field_0x958;
    /* 0x95C */ int field_0x95c;
    /* 0x960 */ int field_0x960;
    /* 0x964 */ int field_0x964;
    /* 0x968 */ int field_0x968;
    /* 0x96C */ int field_0x96c;
    /* 0x970 */ f32 field_0x970;
    /* 0x974 */ f32 mExpressionMorfOverride;
    /* 0x978 */ f32 mExpressionMorf;
    /* 0x97C */ f32 mMotionMorfOverride;
    /* 0x980 */ f32 field_0x980;
    /* 0x984 */ f32 field_0x984[3];
    /* 0x990 */ u16 field_0x990;
    /* 0x992 */ u16 field_0x992;
    /* 0x994 */ u16 field_0x994;
    /* 0x996 */ s16 field_0x996;
    /* 0x998 */ u16 field_0x998;
    /* 0x99C */ u32 mAnmFlags;
    /* 0x9A0 */ u32 field_0x9a0;
    /* 0x9A4 */ profile_method_class* field_0x9a4;
    /* 0x9A8 */ int field_0x9a8;
    /* 0x9AC */ int field_0x9ac;
    /* 0x9B0 */ u32 field_0x9b0;
    /* 0x9B4 */ int mFlowNodeNo;
    /* 0x9B8 */ cXyz field_0x9b8;
    /* 0x9C4 */ cXyz field_0x9c4;
    /* 0x9D0 */ u16 field_0x9d0;
    /* 0x9D2 */ u16 field_0x9d2;
    /* 0x9D4 */ s16 field_0x9d4;
    /* 0x9D6 */ s16 mExpressionPhase;
    /* 0x9D8 */ s16 mExpressionPrevPhase;
    /* 0x9DA */ s16 mMotionPhase;
    /* 0x9DC */ s16 mMotionPrevPhase;
    /* 0x9DE */ s16 mExpression;
    /* 0x9E0 */ s16 mMotion;
    /* 0x9E2 */ u16 mMotionLoops;
    /* 0x9E4 */ u16 mExpressionLoops;
    /* 0x9E6 */ u16 mOrderEvtNo;
    /* 0x9E8 */ s8 field_0x9e8;
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
    /* 0x9F4 */ bool field_0x9f4; // controls whether setHitodamaPrtcl is called
    /* 0x9F5 */ u8 field_0x9f5;
    /* 0x9F6 */ u8 field_0x9f6;
    /* 0x9F8 */ dMsgFlow_c mFlow;
    /* 0xA44 */ cBgS_GndChk field_0xa44;
    /* 0xA80 */ dBgS_GndChk field_0xa80;
    /* 0xAD4 */ dBgS_LinChk field_0xad4;

public:
    struct daNpcF_anmPlayData {
        u16 idx;
        f32 morf;
        s32 numLoops;
    };

    enum AnmFlags {
        ANM_PAUSE_MORF       = 0x0001,
        ANM_PAUSE_BTK        = 0x0002,
        ANM_PAUSE_BRK        = 0x0004,
        ANM_PLAY_MORF        = 0x0008,
        ANM_PLAY_BTK         = 0x0010,
        ANM_PLAY_BRK         = 0x0020,
        ANM_PAUSE_BCK        = 0x0040,
        ANM_PAUSE_BTP        = 0x0080,
        ANM_PLAY_BCK         = 0x0100,
        ANM_PLAY_BTP         = 0x0200,
        ANM_FLAG_400         = 0x0400,
        ANM_FLAG_800         = 0x0800,
        ANM_PAUSE_EXPRESSION = 0x1000,
        ANM_MOTION_FLAGS = ANM_PAUSE_MORF | ANM_PAUSE_BTK | ANM_PAUSE_BRK | ANM_PLAY_MORF | ANM_PLAY_BTK | ANM_PLAY_BRK,
        ANM_EXPRESSION_FLAGS = ANM_PAUSE_BCK | ANM_PAUSE_BTP | ANM_PLAY_BCK | ANM_PLAY_BTP | ANM_FLAG_400 | ANM_FLAG_800 | ANM_PAUSE_EXPRESSION,
        ANM_PAUSE_ALL = ANM_PAUSE_MORF | ANM_PAUSE_BTK | ANM_PAUSE_BRK | ANM_PAUSE_BCK | ANM_PAUSE_BTP | ANM_PAUSE_EXPRESSION,
    };

    /* 80152014 */ BOOL execute();
    /* 801522AC */ BOOL draw(int, int, f32, _GXColorS10*, int);
    /* 80152614 */ void tgHitCallBack(fopAc_ac_c*, dCcD_GObjInf*, fopAc_ac_c*, dCcD_GObjInf*);
    /* 80152654 */ void srchAttnActor1(void*, void*);
    /* 801526E8 */ void* srchActor(void*, void*);

    /* 801528C8 */ void initialize();
    /* 80152B2C */ J3DAnmTransformKey* getTrnsfrmKeyAnmP(char*, int);
    /* 80152B68 */ J3DAnmTexPattern* getTexPtrnAnmP(char*, int);
    /* 80152BA4 */ J3DAnmTextureSRTKey* getTexSRTKeyAnmP(char*, int);
    /* 80152BE0 */ J3DAnmTevRegKey* getTevRegKeyAnmP(char*, int);
    /* 80152C1C */ BOOL setMcaMorfAnm(J3DAnmTransformKey* i_anm, f32 i_rate, f32 i_morf, int i_attr, int i_start, int i_end);
    /* 80152C80 */ BOOL setBckAnm(J3DAnmTransform* i_bck, f32 i_rate, int i_attr, int i_start, int i_end, bool i_modify);
    /* 80152CC4 */ BOOL setBtpAnm(J3DAnmTexPattern* i_btp, J3DModelData* i_modelData, f32 i_rate, int i_attr);
    /* 80152D04 */ BOOL setBtkAnm(J3DAnmTextureSRTKey* i_btk, J3DModelData* i_modelData, f32 i_rate, int i_attr);
    /* 80152D44 */ BOOL setBrkAnm(J3DAnmTevRegKey* i_brk, J3DModelData* i_modelData, f32 i_rate, int i_attr);
    /* 80152D84 */ void setEnvTevColor();
    /* 80152DE0 */ void setRoomNo();
    /* 80152E24 */ BOOL chkEndAnm(f32);
    /* 80152EC4 */ BOOL chkEndAnm(J3DFrameCtrl*, f32);
    /* 80152F40 */ BOOL playAllAnm();
    /* 80153150 */ void playExpressionAnm(daNpcF_c::daNpcF_anmPlayData***);
    /* 80153264 */ void playMotionAnm(daNpcF_c::daNpcF_anmPlayData***);
    /* 8015337C */ void setLookatMtx(int, int*, f32);
    /* 80153578 */ void hitChk2(dCcD_Cyl*, int, int);
    /* 80153658 */ void setDamage(int, int, int);
    /* 80153718 */ int ctrlMsgAnm(int&, int&, fopAc_ac_c*, int);
    /* 8015387C */ void orderEvent(int, char*, u16, u16, u8, u16);
    /* 80153954 */ void changeEvent(char*, char*, u16, u16);
    /* 801539F0 */ BOOL chkActorInSight(fopAc_ac_c*, f32);
    /* 80153A78 */ BOOL chkActorInArea(fopAc_ac_c*, cXyz, cXyz, s16);
    /* 80153BDC */ BOOL chkActorInAttnArea(fopAc_ac_c*, fopAc_ac_c*, int);
    /* 80153D1C */ int initTalk(int, fopAc_ac_c**);
    /* 80153D84 */ BOOL talkProc(int*, int, fopAc_ac_c**);
    /* 80153EF4 */ BOOL turn(s16, f32, int);
    /* 801540A4 */ void step(s16, int, int, int);
    /* 80154250 */ void setAngle(s16);
    /* 80154278 */ u8 getDistTableIdx(int, int);
    /* 801542A0 */ fopAc_ac_c* getEvtAreaTagP(int, int);
    /* 8015436C */ fopAc_ac_c* getAttnActorP(int, void* (*)(void*, void*), f32, f32, f32, f32, s16, int,
                                      int);
    /* 80154730 */ BOOL chkActorInSight2(fopAc_ac_c*, f32, s16);
    /* 80154834 */ BOOL chkPointInArea(cXyz, cXyz, f32, f32, f32, s16);
    /* 801548F4 */ BOOL chkPointInArea(cXyz, cXyz, cXyz, s16);
    /* 8015496C */ cXyz getAttentionPos(fopAc_ac_c*);
    /* 801549E0 */ void chkFindPlayer2(int, s16);
    /* 80154BD8 */ void setHitodamaPrtcl();

    /* 80155BF4 */ virtual ~daNpcF_c();
    /* 80155BC8 */ virtual void setParam();
    /* 80155BC0 */ virtual BOOL main();
    /* 80155BD8 */ virtual BOOL ctrlBtk();
    /* 80155BBC */ virtual void adjustShapeAngle();
    /* 8015276C */ virtual void setMtx();
    /* 801527FC */ virtual void setMtx2();
    /* 80155BB8 */ virtual void setAttnPos();
    /* 80155BB4 */ virtual void setCollisions();
    /* 80155BE0 */ virtual bool setExpressionAnm(int i_idx, bool i_modify);
    /* 80155EC8 */ virtual bool setExpressionBtp(int i_idx);
    /* 80155BF0 */ virtual void setExpression(int i_expression, f32 i_morf);
    /* 80155BE8 */ virtual void setMotionAnm(int i_idx, f32 i_morf);
    /* 80155BEC */ virtual void setMotion(int i_motion, f32 i_morf, int i_restart);
    /* 80155BD0 */ virtual BOOL drawDbgInfo();
    /* 80155BCC */ virtual void drawOtherMdls();

    BOOL chkActorInSpeakArea(fopAc_ac_c* i_actorCheck, fopAc_ac_c* i_actorArea) { return chkActorInAttnArea(i_actorCheck, i_actorArea, mAttentionInfo.field_0x0[3]); }
    BOOL chkPlayerInSpeakArea(fopAc_ac_c* i_actor) { return chkActorInSpeakArea(daPy_getPlayerActorClass(), i_actor); }
    BOOL chkActorInTalkArea(fopAc_ac_c* i_actorCheck, fopAc_ac_c* i_actorArea) { return chkActorInAttnArea(i_actorCheck, i_actorArea, mAttentionInfo.field_0x0[1]); }
    BOOL chkPlayerInTalkArea(fopAc_ac_c* i_actor) { return chkActorInTalkArea(daPy_getPlayerActorClass(), i_actor); }
    BOOL checkHide() { return mHide || (field_0x9f4 && !dComIfGs_wolfeye_effect_check()); }

    static u8 const mCcDObjInfo[48];
    static dCcD_SrcCyl mCcDCyl;
    static u8 mCcDSph[64];
    static fopAc_ac_c* mFindActorPList[100];
    static s32 mFindCount;
    static s16 mSrchActorName;
};

STATIC_ASSERT(sizeof(daNpcF_c) == 0xB48);

BOOL daNpcF_chkEvtBit(u32 i_idx);
BOOL daNpcF_chkTmpBit(u32 i_idx);
void daNpcF_offTmpBit(u32 i_idx);
int daNpcF_getPlayerInfoFromPlayerList(int param_0, int i_roomNo, cXyz& param_2,
                                            csXyz& param_3);
int daNpcF_getGroundAngle(cBgS_PolyInfo*, s16);

struct daBaseNpc_matAnm_c {
    /* 8014D884 */ void calc(J3DMaterial*) const;
    /* 80150444 */ ~daBaseNpc_matAnm_c();
};

class daBaseNpc_acMngr_c {
private:
    /* 0x00 */ u8 field_0x00[4];
    /* 0x04 */ u32 mActorId;
public:
    /* 8014D804 */ daBaseNpc_acMngr_c();
    /* 8014D81C */ void entry(fopAc_ac_c*);
    /* 8014D838 */ fopAc_ac_c* getActor();
    /* 80150524 */ ~daBaseNpc_acMngr_c();
};                                            

class daBaseNpc_path_c {
private:
    /* 0x000 */ f32 field_0x0;
    /* 0x004 */ dPath* mpRoomPath;
    /* 0x008 */ f32 field_0x8;
    /* 0x010 */ u8 field_0xc[2562];
    /* 0xA0E */ u16 field_0xa0e;
    /* 0xA10 */ u16 mIdx;
    /* 0xA12 */ s8 mDirection;
    /* 0xA13 */ u8 field_0xa13[17];

public:
    /* 8014D998 */ daBaseNpc_path_c();
    /* 8014D9A8 */ BOOL isPath();
    /* 8014D9BC */ int setPathInfo(u8, s8, s8);
    /* 8014DA48 */ void reverseDir();
    /* 8014DA64 */ s32 chkPnt(cXyz);
    /* 8014DAC4 */ void setNextPnt();
    /* 8014DB04 */ u16 getIdx();
    /* 8014DB0C */ void setIdx(u16);
    /* 8014DB14 */ Vec getPntPos(u16);
    /* 801503FC */ ~daBaseNpc_path_c();

    
};

class daBaseNpc_lookat_c {
private:
    /* 0x00 */ int field_0x00;
    /* 0x04 */ csXyz mMaxJntLmt[2];
    /* 0x10 */ u8 field_0x0A[12];
    /* 0x1C */ csXyz mMinJntLmt[2];
    /* 0x28 */ u8 field_0x28[12];
    /* 0x34 */ cXyz mJntPos[3];
    /* 0x4C */ u8 field_0x4C[24];
    /* 0x64 */ csXyz mUnk[2];
    /* 0x70 */ csXyz mRotation[2];
    /* 0x7C */ csXyz mUnk2[2];
    /* 0x88 */ u8 field_0x88[4];
    /* 0x8C */ cXyz* mpAttnPos;

public:
    /* 8014DB40 */ void limitter(s16, s16*, s16, s16);
    /* 8014DBB4 */ void calc(fopAc_ac_c*, f32 (*)[4], s16);
    /* 8014E634 */ void setMaxJntLmt(csXyz, int);
    /* 8014E658 */ void setMinJntLmt(csXyz, int);
    /* 8014E67C */ void setJntPos(cXyz, int);
    /* 8014E6A0 */ int setAttnPos(cXyz*);
    /* 8014E6AC */ csXyz getRot(int);
    /* 801502EC */ ~daBaseNpc_lookat_c();
};

class daBaseNpc_c : public fopAc_ac_c {
private:
    /* 0x568 */ void* vtable;
    /* 0x56C */ dBgS_Acch field_0x56c;
    /* 0x744 */ u8 field_0x744[16];
    /* 0x754 */ mDoExt_McaMorfSO* mMcaMorfAnm[2];
    /* 0x758 */ Z2Creature mCreature;
    /* 0x7EC */ mDoExt_bckAnm mBckAnm;
    /* 0x808 */ mDoExt_btpAnm mBtpAnm;
    /* 0x820 */ u8 tmp2[28];
    /* 0x83c */ u16* field_0x83c;
    /* 0x840 */ u16 field_0x840;
    /* 0x842 */ u8 field_0x842[6];
    /* 0x848 */ s32 mUnk;
    /* 0x84C */ dMsgFlow_c mMsg;
    /* 0x898 */ u8 field_0x898[2];
    /* 0x89A */ s16 mEvtIdx;
    /* 0x89C */ u8 field_0x89C[34];
    /* 0x8BE */ u8 mRoomId;
    /* 0x8C0 */ u8 field_0x8C0[90];
    /* 0x91A */ csXyz field_0x91a;
    /* 0x920 */ csXyz field_0xd7e;
    /* 0x926 */ csXyz field_0xd84;
    /* 0x92C */ csXyz field_0xd8a;
    /* 0x932 */ csXyz field_0x932;
    /* 0x938 */ u8 field_0x938[4];
    /* 0x93C */ csXyz field_0x93c;
    /* 0x940 */ u8 field_0x940[18];
    /* 0x954 */ cXyz field_0x954;
    /* 0x960 */ u8 field_0x960[36];
    /* 0x984 */ csXyz field_0x984;
    /* 0x98A */ u8 field_0x98A[18];
    /* 0x99C */ csXyz field_0x99c;
    /* 0x9A2 */ u8 field_0x9a2[70];
    /* 0x9E8 */ const cBgS_PolyInfo mBgSPolyInfo;
    /* 0x9F9 */ u8 field_0x9f9[27];

public:
    /* 8014E6C8 */ daBaseNpc_c();
    /* 8014E89C */ ~daBaseNpc_c();
    /* 8014EAD0 */ void execute();
    /* 8014EC50 */ void draw(f32);
    /* 8014EE3C */ bool getResName();
    /* 8014EE44 */ J3DAnmTransform* getTrnsfrmKeyAnmP(char*, int);
    /* 8014EE80 */ void setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 8014EEE4 */ void setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 8014EF28 */ J3DAnmTransform* getTexPtrnAnmP(char*, int);
    /* 8014EF64 */ void setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 8014EFA4 */ void attnSttsOn(int, int);
    /* 8014EFF0 */ void setParam();
    /* 8014EFF4 */ void orderEvent(int, char*);
    /* 8014F09C */ void mainProc();
    /* 8014F0A0 */ void setEnvTevColor();
    /* 8014F0FC */ void setRoomNo();
    /* 8014F140 */ bool btkCtrl();
    /* 8014F148 */ int checkEndAnm(f32);
    /* 8014F1C8 */ int checkEndAnm(J3DFrameCtrl*);
    /* 8014F228 */ void allAnmPlay();
    /* 8014F38C */ void adjustShapeAngle();
    /* 8014F390 */ void setMtx(int);
    /* 8014F4A0 */ void setCollisions();
    /* 8014F4A4 */ void setAttnPos();
    /* 8014F4A8 */ void drawOtherMdls();
    /* 8014F4AC */ bool dbgDraw();

    void setVtable(void* table) { vtable = table;}

    static u8 const mCcDObj[48];
    static u8 mCcDCyl[68];
    static u8 mCcDSph[64];
};

class daBaseNpc_moveBgActor_c : public daBaseNpc_c {
private:
    /* 0xA14 */ u32 field_0xa14;


public:
    /* 8014F4B4 */ daBaseNpc_moveBgActor_c();
    /* 8014F518 */ void MoveBGCreateHeap();
    /* 8014F60C */ void
    MoveBGCreate(char const*, int,
                 void (*)(dBgW*, void*, cBgS_PolyInfo const&, bool, cXyz*, csXyz*, csXyz*), u32);
    /* 8014F6FC */ void MoveBGDelete();
    /* 8014F770 */ void MoveBGExecute();
    /* 801503BC */ bool CreateHeap();
    /* 801503C4 */ bool Create();
    /* 801503CC */ bool Delete();
    /* 801503D4 */ bool Execute(f32 (**)[3][4]);
    /* 801503DC */ bool Draw();
    /* 801503E4 */ bool IsDelete();
    /* 801503EC */ bool ToFore();
    /* 801503F4 */ bool ToBack();
    /* 80155FB0 */ ~daBaseNpc_moveBgActor_c();

    static u8 m_name[4];
    static u8 m_dzb_id[4];
    static u8 m_set_func[4];
};

class daNpcF_MatAnm_c : public J3DMaterialAnm {
private:
    /* 0x0F4 */ mutable f32 field_0xF4;
    /* 0x0F8 */ mutable f32 field_0xF8;
    /* 0x0FC */ f32 mNowOffsetX;
    /* 0x100 */ f32 mNowOffsetY;
    /* 0x104 */ u8 mEyeMoveFlag;
    /* 0x105 */ u8 field_0x105;

public:
    daNpcF_MatAnm_c() { initialize(); }
    /* 80150738 */ void initialize();
    /* 8015075C */ void calc(J3DMaterial*) const;
    /* 80155ED0 */ ~daNpcF_MatAnm_c();
    void setNowOffsetX(float i_nowOffsetX) { mNowOffsetX = i_nowOffsetX; }
    void setNowOffsetY(float i_nowOffsetY) { mNowOffsetY = i_nowOffsetY; }
    void onEyeMoveFlag() { mEyeMoveFlag = 1; }
};

class daNpcF_SPCurve_c {
private: 
    /* 0x00 */ u16 mNurbs;
    /* 0x02 */ u16 field_0x02;
    /* 0x04 */ u8 field_0x04;
    /* 0x05 */ bool mIsClosed;
    /* 0x08 */ dStage_dPnt_c mPoints[96];


public:
    /* 80150870 */ void initialize(dPath*, int);
};

class daNpcF_Path_c {
private:
    /* 0x00 */ u16 mIdx;
    /* 0x02 */ u8 field_0x02;
    /* 0x03 */ u8 mIsClosed;
    /* 0x04 */ dPath* mpRoomPath;
    /* 0x08 */ f32 field_0x08;
    /* 0x0C */ f32 field_0x0C;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ cXyz mPosition;
    /* 0x20 */ daNpcF_SPCurve_c mSPCurve;

public:
    /* 80150900 */ void initialize();
    /* 8015095C */ int setPathInfo(u8, s8, u8);
    /* 80150A24 */ int chkPassed(cXyz);
    /* 80150A7C */ void chkPassedDst(cXyz);
    /* 80150BBC */ void reverse();
    /* 80150BE0 */ int setNextIdx();
    /* 80150C18 */ u16 getNextIdx();
    /* 80150C60 */ u16 getBeforeIdx();
    /* 80150CA8 */ void getBeforePos(cXyz&);
    /* 80150D44 */ void getNextPos(cXyz&);
    /* 80150DE0 */ int getDstPos(cXyz, cXyz&);
    /* 80150EB4 */ void setNextIdxDst(cXyz);

    u16& getIdx() { return mIdx; };
    cXyz* getPntPos(); // finish
};

class daNpcF_Lookat_c {
private:
    /* 0x00 */ cXyz field_0x00[4];
    /* 0x30 */ cXyz* mAttnPos;
    /* 0x34 */ csXyz field_0x34[4];
    /* 0x4C */ csXyz field_0x4c[4];
    /* 0x64 */ csXyz field_0x64[4];
    /* 0x7C */ csXyz mRotAngle[4];
    /* 0x94 */ u8 field_0x94[4];
    /* 0x98 vtable */

public:
    /* 80151038 */ void initialize();
    /* 801510B8 */ void setParam(f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, f32, s16,
                                 cXyz*);
    /* 80151350 */ void calc(fopAc_ac_c*, f32 (*)[4], csXyz**, int, int, int);
    /* 801515D4 */ void adjustMoveDisAngle(s16&, s16, s16, s16);
    /* 80151648 */ void initCalc(fopAc_ac_c*, f32 (*)[4], cXyz*, csXyz*, f32*, cXyz&, int);
    /* 80151A54 */ void update(cXyz*, csXyz*, f32*);
    /* 80151B68 */ void calcMoveDisAngle(int, cXyz*, csXyz*, cXyz, int, int);
    /* 80151F54 */ void setRotAngle();
    /* 80151FE0 */ void clrRotAngle();
    virtual ~daNpcF_Lookat_c() {}
    cXyz* getAttnPos() { return mAttnPos; }
    void setAttnPos(cXyz* i_attnPos) { mAttnPos = i_attnPos; }
};

class daNpcF_MoveBgActor_c {
private:

public:
    /* 80155B54 */ ~daNpcF_MoveBgActor_c();
    /* 80155E88 */ bool CreateHeap();
    /* 80155E90 */ bool Create();
    /* 80155E98 */ bool Delete();
    /* 80155EA0 */ bool Execute(f32 (**)[3][4]);
    /* 80155EA8 */ bool Draw();
    /* 80155EB0 */ bool IsDelete();
    /* 80155EB8 */ bool ToFore();
    /* 80155EC0 */ bool ToBack();
};

#endif /* D_A_D_A_NPC_H */
