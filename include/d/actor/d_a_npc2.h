#ifndef D_A_NPC2
#define D_A_NPC2

#include "JSystem/J3DGraphAnimator/J3DMaterialAnm.h"
#include "d/d_bg_s_acch.h"
#include "d/d_bg_s_movebg_actor.h"
#include "d/d_cc_d.h"
#include "d/d_msg_flow.h"
#include "d/d_path.h"

class daBaseNpc_acMngr_c {
public:
    /* 8014D804 */ daBaseNpc_acMngr_c();
    /* 8014D81C */ void entry(fopAc_ac_c*);
    /* 8014D838 */ fopAc_ac_c* getActor();
    /* 80150524 */ virtual ~daBaseNpc_acMngr_c() {}

private:
    /* 0x04 */ fpc_ProcID mActorId;
};

class daBaseNpc_matAnm_c : public J3DMaterialAnm {
public:
    /* 80150444 */ virtual ~daBaseNpc_matAnm_c() {}
    /* 8014D884 */ virtual void calc(J3DMaterial*) const;

    /* 0x0F4 */ mutable f32 field_0xF4;
    /* 0x0F8 */ mutable f32 field_0xF8;
    /* 0x0FC */ f32 mNowOffsetX;
    /* 0x100 */ f32 mNowOffsetY;
    /* 0x104 */ u8 mEyeMoveFlg;
    /* 0x105 */ u8 mMorfFrm;
};

class daBaseNpc_path_c {
public:
    /* 8014D998 */ daBaseNpc_path_c();
    /* 8014D9A8 */ BOOL isPath();
    /* 8014D9BC */ int setPathInfo(u8, s8, s8);
    /* 8014DA48 */ void reverseDir();
    /* 8014DA64 */ s32 chkPnt(cXyz);
    /* 8014DAC4 */ BOOL setNextPnt();
    /* 8014DB04 */ u16 getIdx();
    /* 8014DB0C */ void setIdx(u16);
    /* 8014DB14 */ Vec getPntPos(u16);
    void dbgDraw(f32);
    /* 801503FC */ virtual ~daBaseNpc_path_c() {}

    static const int MAXNUMCONTROLPNT_e = 64;

public:
    /* 0x004 */ dPath* mPathInfo;
    /* 0x008 */ f32 field_0x8;
    /* 0x00C */ dPnt mCurvePnts[160];
    /* 0xA0C */ u8 field_0xa0c[0xA0E - 0xA0C];
    /* 0xA0E */ u16 mCurvePntNum;
    /* 0xA10 */ u16 mIdx;
    /* 0xA12 */ s8 mDirection;
    /* 0xA13 */ u8 field_0xa13;
    /* 0xA14 */ s16 field_0xa14;
    /* 0xA16 */ u8 field_0xa16[2];
    /* 0xA18 */ int field_0xa18;
    /* 0xA1C */ u8 field_0xa1c[8];
};

class daBaseNpc_lookat_c {
public:
    /* 8014DB40 */ void limitter(s16, s16*, s16, s16);
    /* 8014DBB4 */ void calc(fopAc_ac_c*, f32 (*)[4], s16);
    /* 8014E634 */ void setMaxJntLmt(csXyz, int);
    /* 8014E658 */ void setMinJntLmt(csXyz, int);
    /* 8014E67C */ void setJntPos(cXyz, int);
    /* 8014E6A0 */ int setAttnPos(cXyz*);
    /* 8014E6AC */ csXyz getRot(int);
    /* 801502EC */ virtual ~daBaseNpc_lookat_c() {}

    /* 0x04 */ csXyz mMaxJntLmt[4];
    /* 0x1C */ csXyz mMinJntLmt[4];
    /* 0x34 */ cXyz mJntPos[4];
    /* 0x64 */ csXyz field_0x64[4];
    /* 0x7C */ csXyz mRot[4];
    /* 0x94 */ u8 field_0x94[4];
    /* 0x98 */ cXyz* mpAttnPos;
};

class daBaseNpc_c : public fopAc_ac_c {
public:
    /* 8014E6C8 */ daBaseNpc_c();
    /* 8014EE44 */ J3DAnmTransform* getTrnsfrmKeyAnmP(char*, int);
    /* 8014EE80 */ int setMcaMorfAnm(J3DAnmTransformKey*, f32, f32, int, int, int);
    /* 8014EEE4 */ int setBckAnm(J3DAnmTransform*, f32, int, int, int, bool);
    /* 8014EF28 */ J3DAnmTransform* getTexPtrnAnmP(char*, int);
    /* 8014EF64 */ int setBtpAnm(J3DAnmTexPattern*, J3DModelData*, f32, int);
    /* 8014EFF4 */ void orderEvent(int, char*);
    /* 8014F0A0 */ void setEnvTevColor();
    /* 8014F0FC */ void setRoomNo();
    /* 8014F148 */ int checkEndAnm(f32);
    /* 8014F1C8 */ int checkEndAnm(J3DFrameCtrl*);

    /* 8014E89C */ virtual ~daBaseNpc_c();
    /* 8014EAD0 */ virtual int execute();
    /* 8014EC50 */ virtual int draw(f32);
    /* 8014EE3C */ virtual const char* getResName();
    /* 8014EFA4 */ virtual void attnSttsOn(int, int);
    /* 8014EFF0 */ virtual void setParam();
    /* 8014F09C */ virtual void mainProc();
    /* 8014F140 */ virtual BOOL btkCtrl();
    /* 8014F228 */ virtual void allAnmPlay();
    /* 8014F38C */ virtual void adjustShapeAngle();
    /* 8014F390 */ virtual void setMtx(int);
    /* 8014F4A0 */ virtual void setCollisions();
    /* 8014F4A4 */ virtual void setAttnPos();
    /* 8014F4A8 */ virtual void drawOtherMdls();
    /* 8014F4AC */ virtual bool dbgDraw();

    static dCcD_SrcGObjInf const mCcDObj;
    static dCcD_SrcCyl mCcDCyl;
    static dCcD_SrcSph mCcDSph;

public:
    /* 0x56C */ dBgS_ObjAcch mAcch;
    /* 0x744 */ char field_0x744;
    /* 0x745 */ u8 field_0x745[0x74c - 0x745];
    /* 0x74C */ request_of_phase_process_class mPhase;
    /* 0x754 */ mDoExt_McaMorfSO* mpModelMorf;
    /* 0x758 */ Z2Creature mSound;
    /* 0x7E8 */ u32 mShadowId;
    /* 0x7EC */ mDoExt_bckAnm mBck;
    /* 0x808 */ mDoExt_btpAnm mBtp;
    /* 0x820 */ mDoExt_btkAnm mBtk;
    /* 0x838 */ s16 field_0x838;
    /* 0x83C */ u16* field_0x83c;
    /* 0x840 */ u16 field_0x840;
    /* 0x842 */ u16 field_0x842;
    /* 0x844 */ u8 field_0x844;
    /* 0x845 */ u8 field_0x845[0x848 - 0x845];
    /* 0x848 */ s32 field_0x848;
    /* 0x84C */ dMsgFlow_c mMsgFlow;
    /* 0x898 */ u8 field_0x898[0x89A - 0x898];
    /* 0x89A */ s16 mEvtIdx;
    /* 0x89C */ dCcD_Stts mCcStts;
    /* 0x8D8 */ dBgS_AcchCir mAcchCir;
    /* 0x918 */ s16 field_0x918;
    /* 0x91A */ csXyz field_0x91a;
    /* 0x920 */ daBaseNpc_lookat_c mLookat;
    /* 0x9BC */ csXyz field_0x9bc;
    /* 0x9C2 */ csXyz field_0x9c2;
    /* 0x9C8 */ csXyz field_0x9c8;
    /* 0x9CE */ csXyz field_0x9ce;
    /* 0x9D4 */ cBgS_GndChk field_0x9d4;
    /* 0xA10 */ f32 mGroundY;
};

STATIC_ASSERT(sizeof(daBaseNpc_c) == 0xA14);

class daBaseNpc_moveBgActor_c : public daBaseNpc_c {
public:
    /* 8014F4B4 */ daBaseNpc_moveBgActor_c();
    /* 8014F518 */ int MoveBGCreateHeap();
    /* 8014F60C */ int MoveBGCreate(char const*, int, MoveBGActor_SetFunc, u32);
    /* 8014F6FC */ int MoveBGDelete();
    /* 8014F770 */ int MoveBGExecute();
    int MoveBGDraw() {
        int ret = Draw();
        return ret;
    }

    /* 80155FB0 */ virtual ~daBaseNpc_moveBgActor_c() {}
    /* 801503BC */ virtual int CreateHeap() { return 1; }
    /* 801503C4 */ virtual int Create() { return 1; }
    /* 801503D4 */ virtual int Execute(Mtx**) { return 1; }
    /* 801503DC */ virtual int Draw() { return 1; }
    /* 801503CC */ virtual int Delete() { return 1; }
    /* 801503E4 */ virtual int IsDelete() { return 1; }
    /* 801503EC */ virtual int ToFore() { return 1; }
    /* 801503F4 */ virtual int ToBack() { return 1; }

    static const char* m_name;
    static int m_dzb_id;
    static MoveBGActor_SetFunc m_set_func;

public:
    /* 0xA14 */ dBgW* mpBgw;
    /* 0xA18 */ Mtx mBgMtx;
};

#endif /* D_A_NPC2 */
