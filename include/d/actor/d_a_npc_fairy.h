#ifndef D_A_NPC_FAIRY_H
#define D_A_NPC_FAIRY_H

#include "d/actor/d_a_npc.h"

/**
 * @ingroup actors-npcs
 * @class daNpc_Fairy_c
 * @brief Great Fairy
 *
 * @details
 *
*/

class daNpc_Fairy_c;

class _Fairy_Feather_c {
public:
    enum Joint {
        /* 0x00 */ JNT_ROOT,
        /* 0x01 */ JNT_TUKENE,
        /* 0x02 */ JNT_FEATHER1AL1,
        /* 0x03 */ JNT_FEATHER1AL2,
        /* 0x04 */ JNT_FEATHER1AR1,
        /* 0x05 */ JNT_FEATHER1AR2,
        /* 0x06 */ JNT_FEATHER1BL1,
        /* 0x07 */ JNT_FEATHER1BL2,
        /* 0x08 */ JNT_FEATHER1BR1,
        /* 0x09 */ JNT_FEATHER1BR2,
        /* 0x0A */ JNT_FEATHER2AL1,
        /* 0x0B */ JNT_FEATHER2AL2,
        /* 0x0C */ JNT_FEATHER2AR1,
        /* 0x0D */ JNT_FEATHER2AR2,
        /* 0x0E */ JNT_FEATHER2BL1,
        /* 0x0F */ JNT_FEATHER2BL2,
        /* 0x10 */ JNT_FEATHER2BR1,
        /* 0x11 */ JNT_FEATHER2BR2,
        /* 0x12 */ JNT_FEATHER3AL1,
        /* 0x13 */ JNT_FEATHER3AL2,
        /* 0x14 */ JNT_FEATHER3AR1,
        /* 0x15 */ JNT_FEATHER3AR2,
        /* 0x16 */ JNT_FEATHER3BL1,
        /* 0x17 */ JNT_FEATHER3BL2,
        /* 0x18 */ JNT_FEATHER3BR1,
        /* 0x19 */ JNT_FEATHER3BR2,
    };

    _Fairy_Feather_c() {
        mpMorf = NULL;
        mPrevAnm = -1;
    }
    ~_Fairy_Feather_c() {
        if (mpMorf != NULL) {
            delete mpMorf;
            mpMorf = NULL;
        }
    }
    /* 809B1B0C */ BOOL create();
    /* 809B1BC0 */ BOOL loadModel();
    /* 809B1CE4 */ BOOL setAnm(int);
    /* 809B1DEC */ BOOL setBrk(int);
    /* 809B1EA8 */ BOOL setBtk(int);
    /* 809B1F64 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809B1F6C */ void connect(daNpc_Fairy_c*);
    /* 809B1FD4 */ void draw(daNpc_Fairy_c*);

    void output_anmframe() {}

    void playAnm() {
        mBtkAnm.play();
        mBrkAnm.play();
        mpMorf->play(0, 0);
    }

    f32 getAnmFrame() { return mpMorf->getFrame(); }
    void setAnmFrame(f32 i_frame) { mpMorf->setFrame(i_frame); }
    void setAnmPlaySpeed(f32 i_playSpeed) { mpMorf->setPlaySpeed(i_playSpeed); }

    /* 0x00 */ mDoExt_McaMorfSO* mpMorf;
    /* 0x04 */ mDoExt_invisibleModel mModel;
    /* 0x0C */ mDoExt_btkAnm mBtkAnm;
    /* 0x24 */ mDoExt_brkAnm mBrkAnm;
    /* 0x3C */ int mPrevAnm;
    /* 0x40 */ Z2Creature mSound;
};

struct daNpc_Fairy_HIOParam {
    /* 0x00 */ daNpcT_HIOParam common;
    /* 0x8C */ f32 spirit_width;
    /* 0x90 */ f32 spirit_height;
};

class daNpc_Fairy_Param_c {
public:
    /* 809B9278 */ virtual ~daNpc_Fairy_Param_c() {}

    static daNpc_Fairy_HIOParam const m;
};

#if DEBUG
class daNpc_Fairy_HIO_c : public mDoHIO_entry_c {
public:
    daNpc_Fairy_HIO_c();
    void listenPropertyEvent(const JORPropertyEvent*);
    void genMessage(JORMContext*);

    /* 0x4 */ daNpc_Fairy_HIOParam m;
};

#define NPC_FAIRY_HIO_CLASS daNpc_Fairy_HIO_c
#else
#define NPC_FAIRY_HIO_CLASS daNpc_Fairy_Param_c
#endif

class daNpc_Fairy_c : public daNpcT_c {
public:
    enum Joint {
        /* 0x00 */ JNT_CENTER,
        /* 0x01 */ JNT_BACKBONE1,
        /* 0x02 */ JNT_BACKBONE2,
        /* 0x03 */ JNT_BHAIR1,
        /* 0x04 */ JNT_BHAIR2,
        /* 0x05 */ JNT_BHAIR3,
        /* 0x06 */ JNT_FHAIRL1,
        /* 0x07 */ JNT_FHAIRL2,
        /* 0x08 */ JNT_FHAIRL3,
        /* 0x09 */ JNT_FHAIRR1,
        /* 0x0A */ JNT_FHAIRR2,
        /* 0x0B */ JNT_FHAIRR3,
        /* 0x0C */ JNT_NECK,
        /* 0x0D */ JNT_HEAD,
        /* 0x0E */ JNT_CHIN,
        /* 0x0F */ JNT_MAYUL,
        /* 0x10 */ JNT_MAYUR,
        /* 0x11 */ JNT_MOUTH,
        /* 0x12 */ JNT_SHOULDERL,
        /* 0x13 */ JNT_ARML1,
        /* 0x14 */ JNT_ARML2,
        /* 0x15 */ JNT_HANDL,
        /* 0x16 */ JNT_FINGERL,
        /* 0x17 */ JNT_THAMBL,
        /* 0x18 */ JNT_SHOULDERR,
        /* 0x19 */ JNT_ARMR1,
        /* 0x1A */ JNT_ARMR2,
        /* 0x1B */ JNT_HANDR,
        /* 0x1C */ JNT_FINGERR,
        /* 0x1D */ JNT_THAMBR,
        /* 0x1E */ JNT_WAIST,
        /* 0x1F */ JNT_CLOTH,
        /* 0x20 */ JNT_LEGL1,
        /* 0x21 */ JNT_LEGL2,
        /* 0x22 */ JNT_FOOTL,
        /* 0x23 */ JNT_TOEL,
        /* 0x24 */ JNT_LEGR1,
        /* 0x25 */ JNT_LEGR2,
        /* 0x26 */ JNT_FOOTR,
        /* 0x27 */ JNT_TOER,
    };

    typedef int (daNpc_Fairy_c::*actionFunc)(int);
    typedef int (daNpc_Fairy_c::*cutFunc)(int);

    /* 809B228C */ ~daNpc_Fairy_c();
    /* 809B2430 */ cPhs__Step Create();
    /* 809B26E8 */ int CreateHeap();
    /* 809B2B44 */ void setAnmData();
    /* 809B2C20 */ bool setMotionAnm(int, f32, int);
    /* 809B2E78 */ bool afterSetMotionAnm(int, int, f32, int);
    /* 809B2EFC */ int Delete();
    /* 809B2F30 */ int Execute();
    /* 809B2F8C */ int Draw();
    /* 809B3034 */ void drawOtherMdl();
    /* 809B3074 */ static int createHeapCallBack(fopAc_ac_c*);
    /* 809B3094 */ static int ctrlJointCallBack(J3DJoint*, int);
    /* 809B30EC */ BOOL isDelete();
    /* 809B30F4 */ void reset();
    /* 809B32C4 */ void initStatus();
    /* 809B32D0 */ void afterJntAnm(int);
    /* 809B335C */ void setParam();
    /* 809B349C */ BOOL checkChangeEvt();
    /* 809B34A4 */ void setAfterTalkMotion();
    /* 809B3520 */ void srchActors();
    /* 809B3524 */ BOOL evtTalk();
    /* 809B3630 */ BOOL evtCutProc();
    /* 809B36F8 */ BOOL evtEndProc();
    /* 809B379C */ void action();
    /* 809B384C */ void ptcl_water();
    /* 809B38E8 */ void ptcl_sprit();
    /* 809B39FC */ void _to_FairyField();
    /* 809B3AB0 */ int chk_tempbit();
    /* 809B3B20 */ void beforeMove();
    /* 809B3B98 */ void afterMoved();
    /* 809B3C64 */ void setAttnPos();
    /* 809B3EA0 */ void setCollision();
    /* 809B3FD8 */ int drawDbgInfo();
    /* 809B3FE0 */ BOOL setAction(actionFunc, int);
    /* 809B4090 */ int wait(int);
    /* 809B4360 */ int talk(int);
    #if DEBUG
    int test(int);
    #endif
    /* 809B4450 */ void AppearDemoCall();
    /* 809B4588 */ void ReturnDemoCall();
    /* 809B45BC */ void PresentDemoCall();
    /* 809B464C */ int cutAppear_10F_01(int);
    /* 809B46E0 */ int _cutAppear_10F_01_Init(int const&);
    /* 809B48C4 */ int _cutAppear_10F_01_Main(int const&);
    /* 809B4A44 */ int cutAppear_10F_02(int);
    /* 809B4AD8 */ int _cutAppear_10F_02_Init(int const&);
    /* 809B4BF8 */ int _cutAppear_10F_02_Main(int const&);
    /* 809B4CC0 */ int cutAppear_20F_01(int);
    /* 809B4D54 */ int _cutAppear_20F_01_Init(int const&);
    /* 809B4EB4 */ int _cutAppear_20F_01_Main(int const&);
    /* 809B5000 */ int cutAppear_20F_02(int);
    /* 809B5094 */ int _cutAppear_20F_02_Init(int const&);
    /* 809B51F4 */ int _cutAppear_20F_02_Main(int const&);
    /* 809B5340 */ int cutAppear_30F_01(int);
    /* 809B53D4 */ int _cutAppear_30F_01_Init(int const&);
    /* 809B54F4 */ int _cutAppear_30F_01_Main(int const&);
    /* 809B55BC */ int cutAppear_30F_02(int);
    /* 809B5650 */ int _cutAppear_30F_02_Init(int const&);
    /* 809B5770 */ int _cutAppear_30F_02_Main(int const&);
    /* 809B5838 */ int cutAppear_40F_01(int);
    /* 809B58CC */ int _cutAppear_40F_01_Init(int const&);
    /* 809B59EC */ int _cutAppear_40F_01_Main(int const&);
    /* 809B5AB4 */ int cutAppear_40F_02(int);
    /* 809B5B48 */ int _cutAppear_40F_02_Init(int const&);
    /* 809B5C68 */ int _cutAppear_40F_02_Main(int const&);
    /* 809B5D30 */ int cutAppear_50F_01(int);
    /* 809B5E00 */ int _cutAppear_50F_01_Init(int const&, int const&);
    /* 809B6084 */ int _cutAppear_50F_01_Main(int const&, int const&);
    /* 809B631C */ int cutAppear_50F_02(int);
    /* 809B63EC */ int _cutAppear_50F_02_Init(int const&, int const&);
    /* 809B662C */ int _cutAppear_50F_02_Main(int const&, int const&);
    /* 809B6830 */ int cutAppear_50F_03(int);
    /* 809B6900 */ int _cutAppear_50F_03_Init(int const&, int const&);
    /* 809B6ADC */ int _cutAppear_50F_03_Main(int const&, int const&);
    /* 809B6C30 */ int cutAppear_50F_04(int);
    /* 809B6D00 */ int _cutAppear_50F_04_Init(int const&, int const&);
    /* 809B6F40 */ int _cutAppear_50F_04_Main(int const&, int const&);
    /* 809B7168 */ int cutAppear_50F_05(int);
    /* 809B7238 */ int _cutAppear_50F_05_Init(int const&, int const&);
    /* 809B74AC */ int _cutAppear_50F_05_Main(int const&, int const&);
    /* 809B7718 */ int cutSelect_Return1(int);
    /* 809B77AC */ int _cutSelect_Return1_Init(int const&);
    /* 809B78F0 */ int _cutSelect_Return1_Main(int const&);
    /* 809B79A4 */ int cutSelect_Return2(int);
    /* 809B7A38 */ int _cutSelect_Return2_Init(int const&);
    /* 809B7A9C */ int _cutSelect_Return2_Main(int const&);
    /* 809B7BA4 */ int cutSelect_Return3(int);
    /* 809B7C38 */ int _cutSelect_Return3_Init(int const&);
    /* 809B7D7C */ int _cutSelect_Return3_Main(int const&);
    /* 809B7E30 */ int cutReturnCancel(int);
    /* 809B7EC4 */ int _cutReturnCancel_Init(int const&);
    /* 809B7ECC */ int _cutReturnCancel_Main(int const&);
    /* 809B9054 */ daNpc_Fairy_c(daNpcT_faceMotionAnmData_c const* i_faceMotionAnmData,
        daNpcT_motionAnmData_c const* i_motionAnmData,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_faceMotionSequenceData,
        int i_faceMotionStepNum,
        daNpcT_MotionSeqMngr_c::sequenceStepData_c const* i_motionSequenceData, int i_motionStepNum,
        daNpcT_evtData_c const* i_evtData, char** i_arcNames)
        : daNpcT_c(i_faceMotionAnmData, i_motionAnmData, i_faceMotionSequenceData,
                   i_faceMotionStepNum, i_motionSequenceData, i_motionStepNum, i_evtData,
                   i_arcNames) {
                    OS_REPORT("|%06d:%x|daNpc_Fairy_c -> コンストラクト\n", g_Counter.mCounter0, this);
                   }
    /* 809B9238 */ u16 getEyeballMaterialNo() { return 1; }
    /* 809B9240 */ s32 getHeadJointNo() { return JNT_HEAD; }
    /* 809B9248 */ s32 getNeckJointNo() { return JNT_NECK; }
    /* 809B9250 */ s32 getBackboneJointNo() { return JNT_BACKBONE1; }
    /* 809B9258 */ BOOL checkChangeJoint(int i_joint) { return i_joint == JNT_HEAD; }
    /* 809B9268 */ BOOL checkRemoveJoint(int i_joint) { return i_joint == JNT_MOUTH; }

    int getFlowNodeNo() {
        u16 nodeNo = home.angle.x;
        return nodeNo == 0xFFFF ? -1 : nodeNo;
    }

    u8 getType() {
        u32 param = fopAcM_GetParam(this) & 0xFF;
        if (param == 0xFF) {
            param = 0;
        }

        return param;
    }

    BOOL chkAction(actionFunc action) { return mAction == action; }

    int getSwitchBitNo() { return fopAcM_GetParam(this) >> 24; }

    void sprit_se() { mSound.startCreatureSoundLevel(Z2SE_FAIRY_STAY, 0, -1); }
    void feather_se() { mSound.startCreatureSoundLevel(Z2SE_FAIRY_HANE_STAY, 0, -1); }
    void feather_appear_se() { mSound.startCreatureSound(Z2SE_FAIRY_HANE_OP, 0, -1); }

    u8 getSceneNo1() { return (fopAcM_GetParam(this) >> 8) & 0xFF; }
    u8 getSceneNo2() { return (fopAcM_GetParam(this) >> 16) & 0xFF; }

    static char* mCutNameList[18];
    static cutFunc mCutList[18];
private:
    /* 0x0E40 */ NPC_FAIRY_HIO_CLASS* mHIO;
    /* 0x0E44 */ dCcD_Cyl mCyl;
    /* 0x0F80 */ u8 mType;
    /* 0x0F84 */ actionFunc mAction;
    /* 0x0F90 */ s16 mTimer;
    /* 0x0F92 */ u8 field_0xf92[0xf94 - 0xf92];
    /* 0x0F94 */ s16 mPrtclTimer;
    /* 0x0F98 */ dPaPo_c mPaPo;
    /* 0x0FD0 */ u32 mPrtcls[3];
    /* 0x0FDC */ int mSwitchBit;
    /* 0x0FE0 */ u8 field_0xfe0[0xfe4 - 0xfe0];
    /* 0x0FE4 */ int mTempBit;
    /* 0x0FE8 */ cXyz mCurrentPosCopy;
    /* 0x0FF4 */ u16 field_0xff4;
    /* 0x0FF6 */ u8 mStatus;
    /* 0x0FF7 */ u8 mUnkFlag;
    /* 0x0FF8 */ _Fairy_Feather_c mFairyFeather;
};

STATIC_ASSERT(sizeof(daNpc_Fairy_c) == 0x10c8);

#endif /* D_A_NPC_FAIRY_H */
