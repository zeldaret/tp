#ifndef D_D_CAMERA_H
#define D_D_CAMERA_H

#include "SSystem/SComponent/c_angle.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/bg/d_bg_s_gnd_chk.h"
#include "d/d_stage.h"
#include "dolphin/types.h"
#include "d/d_drawlist.h"
#include "d/d_cam_param.h"

class fopAc_ac_c;

struct dCamMapToolData {
    /* 8015FEB8 */ void Set(s32, s32, fopAc_ac_c*, u16, u8);

    /* 0x00 */ stage_camera2_data_class field_0x0;
    /* 0x18 */ stage_arrow_class field_0x18;
    /* 0x2C */ u32 field_0x2c;
    /* 0x30 */ s32 field_0x30;
    /* 0x34 */ fopAc_ac_c* field_0x34;
    /* 0x38 */ u16 field_0x38;
    /* 0x3A */ u8 field_0x3a;
    /* 0x3B */ u8 field_0x3b;
};

struct dCamForcusLine : public dDlst_effectLine_c {
    /* 801824C8 */ void Init();
    /* 80182560 */ void Draw();
    /* 801825E4 */ void Off();

    /* 0x38 */ cXyz field_0x38;
    /* 0x44 */ GXColor field_0x44;
    /* 0x48 */ u8 field_0x48;
    /* 0x49 */ u8 field_0x49;
    /* 0x4C */ int field_0x4c;
    /* 0x50 */ int field_0x50;
    /* 0x54 */ int field_0x54;
    /* 0x58 */ u16 field_0x58;
    /* 0x5A */ u16 field_0x5a;
    /* 0x5C */ u16 field_0x5c;
    /* 0x5E */ u16 field_0x5e;
    /* 0x60 */ f32 field_0x60;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 field_0x68;
    /* 0x6C */ f32 field_0x6c;
};

struct dCamera_FakeAngle_system {
    /* 0x0 */ u8 field_0x0;
    /* 0x2 */ cSAngle field_0x2;
    /* 0x4 */ cSAngle field_0x4;
};

struct dCamera_monitoring_things {
    /* 0x00 */ cXyz field_0x0;
    /* 0x0C */ u8 field_0xc[8];
    /* 0x14 */ cXyz field_0x14;
};

struct d2DBSplinePath {
    /* 0x00 */ s32 field_0x0;
    /* 0x04 */ s32 field_0x4;
    /* 0x08 */ s32 field_0x8;
    /* 0x0C */ s32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u32 field_0x20;
    /* 0x24 */ u32 field_0x24;
    /* 0x28 */ u32 field_0x28;
    /* 0x2C */ u32 field_0x2c;

    /* 80097878 */ void Init(s32, s32);
    /* 80097B68 */ void Spot(f32*, f32);
    /* 801828D4 */ virtual ~d2DBSplinePath();
};

struct dCamera_event_data {
    /* 0x000 */ u8 field_0x0;
    /* 0x004 */ int field_0x4;
    /* 0x008 */ u8 field_0x8[4];
    /* 0x00C */ int field_0xc;
    /* 0x010 */ u8 field_0x10;
    /* 0x014 */ int field_0x14;
    /* 0x018 */ int field_0x18;
    /* 0x01C */ int field_0x1c;
    /* 0x020 */ int field_0x20;
    /* 0x024 */ u8 field_0x24[0xEC - 0x24];
    /* 0x0EC */ dStage_MapEvent_dt_c* field_0xec;
    /* 0x0F0 */ d2DBSplinePath field_0xf0;
};  // Size: 0x124

class camera_class;

class dCamera_c {
public:
    class dCamInfo_c {
    public:
        /* 8018291C */ dCamInfo_c();
        /* 80182920 */ ~dCamInfo_c();

    private:
        /* 0x00 */ cXyz field_0x0;
        /* 0x0C */ cXyz field_0xc;
        /* 0x18 */ f32 field_0x18;
        /* 0x1C */ cSAngle field_0x1c;
        /* 0x1E */ s16 field_0x1e;
    };  // Size: 0x20

    struct dCamera_pad_info {
        struct _stick {
            /* 0x00 */ f32 mLastPosX;
            /* 0x04 */ f32 mLastPosY;
            /* 0x08 */ f32 mLastValue;
            /* 0x0C */ f32 mPosXDelta;
            /* 0x10 */ f32 mPosYDelta;
            /* 0x14 */ f32 mValueDelta;
            /* 0x18 */ cSAngle field_0x18;
        };

        /* 0x00 */ _stick mMainStick;
        /* 0x1C */ _stick mCStick;
    };

    struct BG {
        /* 0x000 */ u8 field_0x0;
        /* 0x004 */ dBgS_CamGndChk field_0x4;
        /* 0x058 */ f32 field_0x58;
        /* 0x05C */ u8 field_0x5c;
        /* 0x060 */ dBgS_CamGndChk field_0x60;
        /* 0x0B4 */ f32 field_0xb4;
        /* 0x0B8 */ u8 field_0xb8[0xC0 - 0xB8];
        /* 0x0C0 */ u8 field_0xc0;
        /* 0x0C1 */ u8 field_0xc1;
        /* 0x0C4 */ cXyz field_0xc4;
        /* 0x0D0 */ cXyz field_0xd0;
        /* 0x0DC */ cSAngle field_0xdc;
        /* 0x0DE */ cSAngle field_0xde;
        /* 0x0E0 */ cSGlobe field_0xe0;
        /* 0x0E8 */ cSGlobe field_0xe8;
        /* 0x0F0 */ u8 field_0xf0[4];
        /* 0x0F4 */ int field_0xf4;
        /* 0x0F8 */ f32 field_0xf8;
        /* 0x0FC */ int field_0xfc;
        /* 0x100 */ int field_0x100;
        /* 0x104 */ u8 field_0x104[4];
        /* 0x108 */ int field_0x108;
        /* 0x10C */ f32 field_0x10c;
        /* 0x110 */ cXyz field_0x110;
    };

    struct Shake {
        /* 0x00 */ u8 field_0x0[12];
        /* 0x0C */ int field_0xc;
        /* 0x10 */ int field_0x10;
        /* 0x14 */ u8 field_0x14[4];
        /* 0x18 */ cXyz field_0x18;
        /* 0x24 */ cXyz field_0x24;
        /* 0x30 */ cXyz field_0x30;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ cSAngle field_0x40;
    };  // Size: 0x44

    /* 8008908C */ void getEvIntData(int*, char*, int);
    /* 80088CB0 */ void getEvIntData(int*, char*);
    /* 80089154 */ void getEvFloatData(f32*, char*, f32);
    /* 80088D90 */ void getEvFloatData(f32*, char*);
    /* 8008933C */ void getEvStringData(char*, char*, char*);
    /* 800894C4 */ void getEvActor(char*);
    /* 800895F4 */ void getEvActor(char*, char*);
    /* 80089730 */ void pauseEvCamera();
    /* 800897E8 */ void fixedFrameEvCamera();
    /* 8008A510 */ void stokerEvCamera();
    /* 8008A974 */ void rollingEvCamera();
    /* 8008B9B0 */ void fixedPositionEvCamera();
    /* 8008BE2C */ void uniformTransEvCamera();
    /* 8008BE50 */ void uniformBrakeEvCamera();
    /* 8008BE74 */ void uniformAcceleEvCamera();
    /* 8008E938 */ void watchActorEvCamera();
    /* 8008FAE8 */ void restorePosEvCamera();
    /* 80090174 */ void talktoEvCamera();
    /* 80090230 */ void maptoolIdEvCamera();
    /* 80090478 */ void styleEvCamera();
    /* 80090514 */ void gameOverEvCamera();
    /* 80091468 */ void tactEvCamera();
    /* 800923B8 */ bool turnToActorEvCamera();
    /* 800923C0 */ void stbWaitEvCamera();
    /* 800924D0 */ void saveEvCamera();
    /* 8009258C */ void loadEvCamera();
    /* 800929AC */ void useItem0EvCamera();
    /* 800937AC */ void useItem1EvCamera();
    /* 80094240 */ void getItemEvCamera();
    /* 80094A70 */ void possessedEvCamera();
    /* 80095010 */ void fixedFramesEvCamera();
    /* 8009544C */ void bSplineEvCamera();
    /* 800956E4 */ void twoActor0EvCamera();
    /* 80095E7C */ void peepHoleEvCamera();
    /* 80095FD0 */ void digHoleEvCamera();
    /* 800965AC */ void hintTalkEvCamera();
    /* 80096EDC */ void bspTransEvCamera();
    /* 80097694 */ bool portalWarpEvCamera();
    /* 8009771C */ void attentionPos(fopAc_ac_c*);
    /* 80097738 */ void directionOf(fopAc_ac_c*);
    /* 8009775C */ void positionOf(fopAc_ac_c*);
    /* 80097778 */ void setFlag(u32);
    /* 8009778C */ void eyePos(fopAc_ac_c*);
    /* 8016008C */ dCamera_c(camera_class*);
    /* 80160304 */ ~dCamera_c();
    /* 80160470 */ void initialize(camera_class*, fopAc_ac_c*, u32, u32);
    /* 801614AC */ void Start();
    /* 801614C4 */ void QuickStart();
    /* 801614D0 */ void Stop();
    /* 801614E8 */ void Stay();
    /* 801614F4 */ void ChangeModeOK(s32);
    /* 80161550 */ void initPad();
    /* 801617B0 */ void updatePad();
    /* 80161D84 */ void initMonitor();
    /* 80161E34 */ void updateMonitor();
    /* 80162088 */ void checkForceLockTarget();
    /* 801622B0 */ void infoReport();
    /* 801622B4 */ void Run();
    /* 80162D38 */ void NotRun();
    /* 80162FB8 */ void V();
    /* 80162FD4 */ void U();
    /* 8016300C */ void SetTrimSize(s32);
    /* 80163028 */ void SetTrimTypeForce(s32);
    /* 80163034 */ void CalcTrimSize();
    /* 80163154 */ void Draw();
    /* 8016317C */ void setStageMapToolData();
    /* 80163340 */ void setMapToolData();
    /* 80163558 */ void SetTagData(fopAc_ac_c*, s32, u16, u8);
    /* 801635AC */ void setRoomMapToolData(dCamMapToolData*, s32, s32);
    /* 801635E4 */ void nextMode(s32);
    /* 80163C38 */ void onModeChange(s32, s32);
    /* 80163D50 */ void ModeFix(s32);
    /* 80163D5C */ void nextType(s32);
    /* 8016444C */ void onTypeChange(s32, s32);
    /* 8016469C */ void onStyleChange(s32, s32);
    /* 801647B0 */ void onRoomChange(s32);
    /* 80164878 */ void getParamTargetActor(s32);
    /* 80164944 */ void GetCameraTypeFromMapToolID(s32, s32);
    /* 80164B64 */ void GetCameraTypeFromCameraName(char const*);
    /* 80164C10 */ void GetCameraTypeFromToolData(stage_camera2_data_class*);
    /* 80164C64 */ void pushInfo(dCamera_c::dCamInfo_c*, s16);
    /* 80164CAC */ void popInfo(dCamera_c::dCamInfo_c*);
    /* 80164D2C */ void heightOf(fopAc_ac_c*);
    /* 80164E20 */ void relationalPos(fopAc_ac_c*, fopAc_ac_c*, cXyz*, f32);
    /* 80164D6C */ void relationalPos(fopAc_ac_c*, cXyz*);
    /* 80165104 */ void setUSOAngle();
    /* 80165158 */ void getUSOAngle(cSAngle);
    /* 8016517C */ void pointInSight(cXyz*);
    /* 80167C24 */ void radiusActorInSight(fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80165238 */ void radiusActorInSight(fopAc_ac_c*, fopAc_ac_c*, cXyz*, cXyz*, f32, s16, f32);
    /* 801657EC */ void groundHeight(cXyz*);
    /* 801658C0 */ void lineBGCheck(cXyz*, cXyz*, dBgS_LinChk*, u32);
    /* 80165AF0 */ void lineBGCheck(cXyz*, cXyz*, u32);
    /* 801659F4 */ void lineBGCheck(cXyz*, cXyz*, cXyz*, u32);
    /* 80165B60 */ void lineCollisionCheckBush(cXyz*, cXyz*);
    /* 80165CE0 */ void compWallMargin(cXyz*, cXyz*, f32);
    /* 80165EF4 */ void defaultTriming();
    /* 80165FB4 */ void setView(f32, f32, f32, f32);
    /* 8016608C */ void forwardCheckAngle();
    /* 80166764 */ void bumpCheck(u32);
    /* 80167BF8 */ void lineBGCheckBoth(cXyz*, cXyz*, dBgS_LinChk*, u32);
    /* 80167CD8 */ void jutOutCheck(cXyz*, f32);
    /* 80167E3C */ void tooNearEscape(cXyz*);
    /* 80167EF4 */ void getWaterSurfaceHeight(cXyz*);
    /* 80167FEC */ void checkGroundInfo();
    /* 80168744 */ void chaseCamera(s32);
    /* 8016C384 */ void lockonCamera(s32);
    /* 8016E448 */ void getMsgCmdSpeaker();
    /* 8016E4A4 */ void getMsgCmdCut(s32);
    /* 8016E4F4 */ void talktoCamera(s32);
    /* 80174E18 */ void talkBasePos(fopAc_ac_c*);
    /* 80174E34 */ void talkEyePos(fopAc_ac_c*);
    /* 80174EA4 */ bool CalcSubjectAngle(s16*, s16*);
    /* 80174EAC */ void SaveZoomRatio();
    /* 80174ED4 */ void subjectCamera(s32);
    /* 80176074 */ void magneCamera(s32);
    /* 801767F8 */ void colosseumCamera(s32);
    /* 80176DF0 */ bool test1Camera(s32);
    /* 80176DF8 */ bool test2Camera(s32);
    /* 80176E00 */ void towerCamera(s32);
    /* 80178E50 */ void hookshotCamera(s32);
    /* 80179590 */ void railCamera(s32);
    /* 8017A2A0 */ void paraRailCamera(s32);
    /* 8017ADC0 */ void rideCamera(s32);
    /* 8017D974 */ bool manualCamera(s32);
    /* 8017D97C */ void observeCamera(s32);
    /* 8017DFAC */ void fixedFrameCamera(s32);
    /* 8017E730 */ void fixedPositionCamera(s32);
    /* 8017F25C */ void oneSideCamera(s32);
    /* 8017F828 */ void eventCamera(s32);
    /* 8018050C */ void currentEvCamera();
    /* 801806D4 */ bool letCamera(s32);
    /* 801806DC */ void setEventRecoveryTrans(s16);
    /* 80180738 */ void runEventRecoveryTrans();
    /* 80180A40 */ void EventRecoverNotime();
    /* 80180AA8 */ void Set(cXyz, cXyz);
    /* 80180AE0 */ void Set(cXyz, cXyz, f32, s16);
    /* 80180B40 */ void Set(cXyz, cXyz, s16, f32);
    /* 80180C18 */ void Reset(cXyz, cXyz);
    /* 80180C68 */ void Reset();
    /* 80180BA0 */ void Reset(cXyz, cXyz, f32, s16);
    /* 80180D24 */ void shakeCamera();
    /* 80181000 */ void StartShake(s32, u8*, s32, cXyz);
    /* 80181158 */ void StopShake();
    /* 80181170 */ void StartBlure(int, fopAc_ac_c*, f32, f32);
    /* 801811B8 */ void ResetBlure();
    /* 80181208 */ void SetBlureAlpha(f32);
    /* 80181210 */ void SetBlureScale(f32, f32, f32);
    /* 80181220 */ void SetBlurePosition(f32, f32, f32);
    /* 80181278 */ void SetBlureActor(fopAc_ac_c*);
    /* 80181280 */ void blureCamera();
    /* 80181490 */ void onHorseDush();
    /* 80181500 */ void GetForceLockOnActor();
    /* 80181534 */ void ForceLockOn(fopAc_ac_c*);
    /* 80181560 */ void ForceLockOff(unsigned int);
    /* 8018159C */ void ForceLockOff(fopAc_ac_c*);
    /* 80181E20 */ void Up();
    /* 80181E64 */ void Eye();
    /* 80181E98 */ cXyz Center();
    /* 8018295C */ void footHeightOf(fopAc_ac_c*);
    /* 80182964 */ void push_any_key();
    /* 8018296C */ void clrFlag(u32);
    /* 80182980 */ void chkFlag(u32);
    /* 801829AC */ void Bank();

    bool Active() { return field_0x24 == 0; }

    static u8 engine_tbl[240];

    /* 0x000 */ camera_class* field_0x0;
    /* 0x004 */ int mRoomNo;
    /* 0x008 */ u8 field_0x8[0x20 - 0x8];
    /* 0x020 */ u8 field_0x20;
    /* 0x021 */ u8 field_0x21;
    /* 0x022 */ u8 field_0x22[2];
    /* 0x024 */ int field_0x24;
    /* 0x028 */ f32 field_0x28;
    /* 0x02C */ s16 field_0x2c;
    /* 0x02E */ s16 field_0x2e;
    /* 0x030 */ cXyz mCenter;
    /* 0x03C */ cXyz mEye;
    /* 0x048 */ cXyz mUp;
    /* 0x054 */ cSAngle mBank;
    /* 0x058 */ f32 mFovY;
    class {
    public:
        /* 0x00 */ cSGlobe field_0x0;
        /* 0x08 */ cXyz field_0x8;
        /* 0x14 */ cXyz field_0x14;
        /* 0x20 */ cSAngle field_0x20;
    }
    /* 0x05C */ field_0x5c;
    /* 0x080 */ f32 field_0x80;
    /* 0x084 */ f32 field_0x84;
    /* 0x088 */ u32 field_0x88;
    /* 0x08C */ cSAngle field_0x8c;
    /* 0x090 */ cXyz field_0x90;
    /* 0x09C */ cXyz field_0x9c;
    /* 0x0A8 */ int field_0xa8;
    /* 0x0AC */ u32 field_0xac;
    /* 0x0B0 */ dCamInfo_c field_0xb0;
    /* 0x0D0 */ dCamInfo_c field_0xd0[2];
    class {
    public:
        /* 0x00 */ int field_0x0;
        /* 0x04 */ u16 field_0x4;
        /* 0x08 */ dCamInfo_c field_0x8;
        /* 0x28 */ cXyz field_0x28;
    }
    /* 0x110 */ field_0x110;
    class {
    public:
        /* 0x0 */ cXyz field_0x0;
        /* 0xC */ csXyz field_0xc;
    }
    /* 0x144 */ field_0x144;
    class {
    public:
        /* 0x0 */ u8 field_0x0;
        /* 0x2 */ cSAngle field_0x2;
        /* 0x4 */ cSAngle field_0x4;
    }
    /* 0x158 */ field_0x158;
    /* 0x160 */ int field_0x160;
    /* 0x164 */ u8 field_0x164[0x170 - 0x164];
    /* 0x170 */ int field_0x170;
    /* 0x174 */ u32 field_0x174;
    /* 0x178 */ u32 mCameraID;
    /* 0x17C */ u32 mPadID;
    /* 0x180 */ fopAc_ac_c* mpPlayerActor;
    /* 0x184 */ fopAc_ac_c* mpLockonTarget;
    /* 0x188 */ u8 field_0x188[0x190 - 0x188];
    /* 0x190 */ int field_0x190;
    /* 0x194 */ u8 field_0x194;
    /* 0x198 */ u32 field_0x198;
    /* 0x19C */ u32 field_0x19c;
    /* 0x1A0 */ int mCurMode;
    /* 0x1A4 */ int mNextMode;
    /* 0x1A8 */ int field_0x1a8;
    /* 0x1B0 */ cSAngle field_0x1b0;
    /* 0x1B4 */ f32 field_0x1b4;
    /* 0x1B8 */ u8 field_0x1b8[4];
    /* 0x1BC */ dCamera_pad_info mPadInfo;
    /* 0x1F4 */ u8 field_0x1f4[0x200 - 0x1F4];
    /* 0x200 */ f32 mTriggerLeftLast;
    /* 0x204 */ f32 mTriggerLeftDelta;
    /* 0x208 */ u8 field_0x208;
    /* 0x209 */ u8 field_0x209;
    /* 0x20A */ u8 field_0x20a;
    /* 0x20B */ u8 field_0x20b;
    /* 0x20C */ f32 mTriggerRightLast;
    /* 0x210 */ f32 mTriggerRightDelta;
    /* 0x214 */ u8 field_0x214;
    /* 0x215 */ u8 field_0x215;
    /* 0x216 */ u8 field_0x216;
    /* 0x217 */ u8 field_0x217;
    /* 0x218 */ u8 mHoldX;
    /* 0x219 */ u8 mTrigX;
    /* 0x21A */ u8 mHoldY;
    /* 0x21B */ u8 mTrigY;
    /* 0x21C */ u8 mHoldZ;
    /* 0x21D */ u8 mTrigZ;
    /* 0x21E */ u8 field_0x21e;
    /* 0x21F */ u8 field_0x21f;
    /* 0x220 */ u8 mHoldB;
    /* 0x221 */ u8 mTrigB;
    /* 0x222 */ u8 field_0x222;
    /* 0x223 */ u8 field_0x223;
    /* 0x224 */ u8 field_0x224;
    /* 0x228 */ dCamForcusLine mFocusLine;
    /* 0x298 */ dCamera_FakeAngle_system mFakeAngleSys;
    /* 0x2A0 */ dCamera_monitoring_things mMonitor;
    /* 0x2C0 */ f32 field_0x2c0;
    /* 0x2C4 */ int field_0x2c4;
    /* 0x2C8 */ f32 field_0x2c8;
    /* 0x2CC */ BG mBG;
    /* 0x3E8 */ u8 field_0x3e8;
    /* 0x3E9 */ u8 field_0x3e9[0x4e8 - 0x3e9];
    /* 0x4E8 */ dCamera_event_data mEventData;
    /* 0x60C */ u32 mEventFlags;
    /* 0x610 */ u8 field_0x610;
    /* 0x611 */ u8 field_0x611;
    /* 0x612 */ u8 field_0x612[2];
    class {
    public:
        /* 0x00 */ u8 field_0x0[8];
        /* 0x08 */ cSAngle field_0x8;
        /* 0x10 */ u8 field_0x10[4];
    }
    /* 0x614 */ field_0x614[4];
    /* 0x664 */ u8 field_0x664[4];
    /* 0x668 */ int field_0x668;
    /* 0x66C */ int field_0x66c;
    /* 0x670 */ int field_0x670;
    /* 0x674 */ int field_0x674;
    /* 0x678 */ int field_0x678;
    /* 0x67C */ int mCamStyle;
    /* 0x680 */ int field_0x684;
    /* 0x684 */ u8* mCamTypeData;
    /* 0x688 */ int field_0x688;
    /* 0x68C */ int mCurType;
    /* 0x690 */ int mNextType;
    /* 0x694 */ int mMapToolType;
    /* 0x698 */ int field_0x698;
    /* 0x69C */ int field_0x69c;
    /* 0x6A0 */ u8 field_0x6a0[0x6b8 - 0x6a0];
    /* 0x6B8 */ Shake mShake;
    /* 0x6FC */ int field_0x6fc;
    class {
    public:
        /* 0x00 */ u8 field_0x0[4];
        /* 0x04 */ int field_0x4;
        /* 0x08 */ csXyz field_0x8;
        /* 0x10 */ fopAc_ac_c* field_0x10;
        /* 0x14 */ int field_0x14;
        /* 0x18 */ cXyz mBlurePosition;
        /* 0x24 */ cXyz mBlureScale;
    }
    /* 0x700 */ field_0x700;
    /* 0x730 */ f32 mBlureAlpha;
    /* 0x734 */ f32 field_0x734;
    /* 0x738 */ f32 field_0x738;
    /* 0x73C */ f32 field_0x73c;
    class {
    public:
        /* 0x00 */ cXyz field_0x0;
        /* 0x0C */ cXyz field_0xc;
        /* 0x18 */ cXyz field_0x18;
        /* 0x24 */ cSGlobe field_0x24;
    }
    /* 0x740 */ field_0x740;
    /* 0x76C */ u8 field_0x76c[0x79c - 0x76c];
    class {
    public:
        /* 0x0 */ u8 field_0x0[4];
        /* 0x4 */ cXyz field_0x4;
    }
    /* 0x79C */ field_0x79c;
    /* 0x7AC */ dCamMapToolData field_0x7ac;
    /* 0x7E8 */ dCamMapToolData field_0x7e8;
    /* 0x824 */ dCamMapToolData field_0x824;
    /* 0x860 */ dCamMapToolData field_0x860;
    /* 0x89C */ dCamMapToolData field_0x89c;
    /* 0x8D8 */ dCamMapToolData field_0x8d8;
    /* 0x914 */ u8 field_0x914[0x91c - 0x914];
    /* 0x91C */ f32 field_0x91c;
    /* 0x920 */ f32 mTrimHeight;
    /* 0x924 */ int mTrimSize;
    /* 0x928 */ int mTrimTypeForce;
    /* 0x92C */ u8 field_0x92c[0x970 - 0x92c];
    /* 0x970 */ dCamSetup_c mCamSetup;
    /* 0xAEC */ dCamParam_c mCamParam;
    /* 0xB0C */
};

dCamera_c* dCam_getBody();
dCamera_c* dCam_getCamera();

#endif /* D_D_CAMERA_H */
