#ifndef D_D_CAMERA_H
#define D_D_CAMERA_H

#include "d/d_attention.h"
#include "d/d_bg_s_lin_chk.h"
#include "d/d_bg_s_gnd_chk.h"
#include "d/d_cam_param.h"
#include "d/d_drawlist.h"
#include "d/d_stage.h"
#include "dolphin/types.h"

class fopAc_ac_c;
dAttention_c& dComIfGp_getAttention();

struct dCamMapToolData {
    dCamMapToolData() { Clr(); }

    /* 8015FEB8 */ int Set(s32, s32, fopAc_ac_c*, u16, u8);

    dCamMapToolData& operator=(dCamMapToolData const& other) {
        __memcpy(&field_0x0, &other.field_0x0, sizeof(stage_camera2_data_class));
        __memcpy(&field_0x18, &other.field_0x18, sizeof(stage_arrow_data_class));
        field_0x2c = other.field_0x2c;
        field_0x30 = other.field_0x30;
        field_0x34 = other.field_0x34;
        field_0x38 = other.field_0x38;
        field_0x3a = other.field_0x3a;
        field_0x3b = other.field_0x3b;
        return *this;
    }

    void Clr() {
        field_0x2c = 0xFF;
        field_0x30 = 0xFF;
        field_0x3a = 0;
        field_0x34 = NULL;
        field_0x3b = 0xFF;
        field_0x38 = 0xFF;
    }

    /* 0x00 */ stage_camera2_data_class field_0x0;
    /* 0x18 */ stage_arrow_data_class field_0x18;
    /* 0x2C */ int field_0x2c;
    /* 0x30 */ s32 field_0x30;
    /* 0x34 */ fopAc_ac_c* field_0x34;
    /* 0x38 */ u16 field_0x38;
    /* 0x3A */ u8 field_0x3a;
    /* 0x3B */ u8 field_0x3b;
};

struct dCamForcusLine {
    /* 801824C8 */ void Init();
    /* 80182560 */ void Draw();
    /* 801825E4 */ bool Off();

    /* 0x00 */ dDlst_effectLine_c mEffectLine;
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
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
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

    d2DBSplinePath() { Init(0, 0); }

    /* 80097878 */ void Init(s32, s32);
    /* 80097B68 */ void Spot(f32*, f32);
    /* 801828D4 */ virtual ~d2DBSplinePath() {}
};

struct dCamera_event_param {
    /* 0x00 */ char name[16];
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int value;
};

struct dCamera_event_data {
    /* 0x000 */ u8 field_0x0;
    /* 0x004 */ int field_0x4;
    /* 0x008 */ int field_0x8;
    /* 0x00C */ int field_0xc;
    /* 0x010 */ u8 field_0x10;
    /* 0x014 */ int field_0x14;
    /* 0x018 */ int field_0x18;
    /* 0x01C */ int field_0x1c;
    /* 0x020 */ int field_0x20;
    /* 0x024 */ int field_0x24;
    /* 0x028 */ u8 field_0x28[0x2C - 0x28];
    /* 0x02C */ dCamera_event_param mEventParams[8];
    /* 0x0EC */ dStage_MapEvent_dt_c* field_0xec;
    /* 0x0F0 */ d2DBSplinePath field_0xf0;
};  // Size: 0x124

struct dCamera_type_data {
    /* 0x00 */ char name[24];
    /* 0x18 */ s16 field_0x18[2][11];
};  // Size: 0x44

struct camSphChkdata {
    camSphChkdata(cXyz* i_center, cXyz* param_1, f32 i_radius) {
        field_0x0 = i_center;
        field_0x8 = param_1;
        field_0xc = *i_center;
        field_0x4 = i_radius;
        field_0x1c = false;
        field_0x18 = i_radius;
    }

    void Base(cXyz* param_0) {
        field_0x0 = param_0;
        field_0xc = *param_0;
    }

    /* 0x00 */ cXyz* field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ cXyz* field_0x8;
    /* 0x0C */ cXyz field_0xc;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ bool field_0x1c;
};

class camera_class;

class dCamera_c;
typedef bool (dCamera_c::*engine_fn)(s32);

class dCamera_c {
public:
    class dCamInfo_c {
    public:
        /* 0x00 */ cXyz mCenter;
        /* 0x0C */ cXyz mEye;
        /* 0x18 */ f32 mFovy;
        /* 0x1C */ cSAngle mBank;
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
            /* 0x18 */ cSAngle mAngle;
        };

        /* 0x00 */ _stick mMainStick;
        /* 0x1C */ _stick mCStick;
    };

    struct BG {
        class {
        public:
            /* 0x00 */ u8 field_0x0;
            /* 0x04 */ dBgS_CamGndChk field_0x4;
            /* 0x58 */ f32 field_0x58;
        } /* 0x000 */ field_0x0;
        class {
        public:
            /* 0x00 */ u8 field_0x0;
            /* 0x04 */ dBgS_CamGndChk field_0x4;
            /* 0x58 */ f32 field_0x58;
        } /* 0x05C */ field_0x5c;
        /* 0x0B8 */ u8 field_0xb8[0xC0 - 0xB8];
        class {
        public:
            /* 0x00 */ u8 field_0x0;
            /* 0x01 */ u8 field_0x1;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cSAngle field_0x1c;
            /* 0x1E */ cSAngle field_0x1e;
            /* 0x20 */ int field_0x20;
            /* 0x24 */ cSGlobe field_0x24;
            /* 0x2C */ cSGlobe field_0x2c;
            /* 0x34 */ int field_0x34;
            /* 0x38 */ f32 field_0x38;
            /* 0x3C */ int field_0x3c;
            /* 0x40 */ int field_0x40;
            /* 0x44 */ u8 field_0x44;
        } /* 0x0C0 */ field_0xc0;
        class {
        public:
            /* 0x0 */ int field_0x0;
            /* 0x4 */ f32 field_0x4;
            /* 0x8 */ cXyz field_0x8;
        } /* 0x108 */ field_0x108;
    };

    struct Shake {
        /* 0x00 */ u8 field_0x0[4];
        /* 0x04 */ u8 field_0x4[4];
        /* 0x08 */ u8 field_0x8[0xC - 0x8];
        /* 0x0C */ s32 m_length;
        /* 0x10 */ int field_0x10;
        /* 0x14 */ u8 field_0x14[4];
        /* 0x18 */ cXyz m_pos;
        /* 0x24 */ cXyz field_0x24;
        /* 0x30 */ cXyz mEyeShake;
        /* 0x3C */ f32 field_0x3c;
        /* 0x40 */ cSAngle field_0x40;
    };  // Size: 0x44

    /* 80088A7C */ int StartEventCamera(int, int, ...);
    /* 80088BBC */ int EndEventCamera(int);
    /* 80088C24 */ int searchEventArgData(char*);
    /* 8008908C */ bool getEvIntData(int*, char*, int);
    /* 80088CB0 */ bool getEvIntData(int*, char*);
    /* 80088D90 */ bool getEvFloatData(f32*, char*);
    /* 80089154 */ bool getEvFloatData(f32*, char*, f32);
    /* 80088E58 */ int getEvFloatListData(f32**, char*);
    /* 80088F1C */ int getEvXyzListData(cXyz**, char*);
    /* 8008941C */ char* getEvStringPntData(char*, char*);
    /* 80088FE0 */ char* getEvStringPntData(char*);
    /* 8008922C */ bool getEvXyzData(cXyz*, char*, cXyz);
    /* 8008933C */ bool getEvStringData(char*, char*, char*);
    /* 800894C4 */ fopAc_ac_c* getEvActor(char*);
    /* 800895F4 */ fopAc_ac_c* getEvActor(char*, char*);
    /* 80089730 */ int pauseEvCamera();
    /* 800897E8 */ int fixedFrameEvCamera();
    /* 8008A510 */ int stokerEvCamera();
    /* 8008A974 */ int rollingEvCamera();
    /* 8008B9B0 */ int fixedPositionEvCamera();
    /* 8008BE2C */ int uniformTransEvCamera();
    /* 8008BE50 */ int uniformBrakeEvCamera();
    /* 8008BE74 */ int uniformAcceleEvCamera();
    /* 8008BE98 */ void transEvCamera(int);
    /* 8008E938 */ int watchActorEvCamera();
    /* 8008FAE8 */ int restorePosEvCamera();
    /* 80090174 */ int talktoEvCamera();
    /* 80090230 */ bool maptoolIdEvCamera();
    /* 80090478 */ int styleEvCamera();
    /* 80090514 */ int gameOverEvCamera();
    /* 80091468 */ int tactEvCamera();
    /* 800923B8 */ int turnToActorEvCamera();
    /* 800923C0 */ int stbWaitEvCamera();
    /* 800924D0 */ int saveEvCamera();
    /* 8009258C */ int loadEvCamera();
    /* 800929AC */ int useItem0EvCamera();
    /* 800937AC */ int useItem1EvCamera();
    /* 80094240 */ int getItemEvCamera();
    /* 80094A70 */ int possessedEvCamera();
    /* 80095010 */ int fixedFramesEvCamera();
    /* 8009544C */ int bSplineEvCamera();
    /* 800956E4 */ int twoActor0EvCamera();
    /* 80095E7C */ int peepHoleEvCamera();
    /* 80095FD0 */ int digHoleEvCamera();
    /* 800965AC */ int hintTalkEvCamera();
    /* 80096EDC */ int bspTransEvCamera();
    /* 80097694 */ int portalWarpEvCamera();
    /* 8009771C */ cXyz attentionPos(fopAc_ac_c*);
    /* 80097738 */ cSAngle directionOf(fopAc_ac_c*);
    /* 8009775C */ cXyz positionOf(fopAc_ac_c*);
    /* 8009778C */ void eyePos(fopAc_ac_c*);
    /* 8016008C */ dCamera_c(camera_class*);
    /* 80160304 */ ~dCamera_c();
    /* 80160470 */ void initialize(camera_class*, fopAc_ac_c*, u32, u32);
    /* 801614AC */ void Start();
    /* 801614C4 */ void QuickStart();
    /* 801614D0 */ void Stop();
    /* 801614E8 */ void Stay();
    /* 801614F4 */ bool ChangeModeOK(s32);
    /* 80161550 */ void initPad();
    /* 801617B0 */ void updatePad();
    /* 80161D84 */ void initMonitor();
    /* 80161E34 */ void updateMonitor();
    /* 80162088 */ bool checkForceLockTarget();
    /* 801622B0 */ void infoReport();
    /* 801622B4 */ bool Run();
    /* 80162D38 */ bool NotRun();
    /* 80162FB8 */ s16 V();
    /* 80162FD4 */ s16 U();
    /* 8016300C */ bool SetTrimSize(s32);
    /* 80163028 */ bool SetTrimTypeForce(s32);
    /* 80163034 */ void CalcTrimSize();
    /* 80163154 */ int Draw();
    /* 8016317C */ void setStageMapToolData();
    /* 80163340 */ void setMapToolData();
    /* 80163558 */ void SetTagData(fopAc_ac_c*, s32, u16, u8);
    /* 801635AC */ inline void setRoomMapToolData(dCamMapToolData*, s32, s32);
    /* 801635E4 */ s32 nextMode(s32);
    /* 80163C38 */ bool onModeChange(s32, s32);
    /* 80163D50 */ int ModeFix(s32);
    /* 80163D5C */ s32 nextType(s32);
    /* 8016444C */ bool onTypeChange(s32, s32);
    /* 8016469C */ bool onStyleChange(s32, s32);
    /* 801647B0 */ int onRoomChange(s32);
    /* 80164878 */ fopAc_ac_c* getParamTargetActor(s32);
    /* 80164944 */ int GetCameraTypeFromMapToolID(s32, s32);
    /* 80164B64 */ int GetCameraTypeFromCameraName(char const*);
    /* 80164C10 */ int GetCameraTypeFromToolData(stage_camera2_data_class*);
    /* 80164C64 */ void pushInfo(dCamera_c::dCamInfo_c*, s16);
    /* 80164CAC */ void popInfo(dCamera_c::dCamInfo_c*);
    /* 80164D2C */ f32 heightOf(fopAc_ac_c*);
    /* 80164E20 */ cXyz relationalPos(fopAc_ac_c*, fopAc_ac_c*, cXyz*, f32);
    /* 80164D6C */ cXyz relationalPos(fopAc_ac_c*, cXyz*);
    /* 80165104 */ void setUSOAngle();
    /* 80165158 */ cSAngle getUSOAngle(cSAngle);
    /* 8016517C */ bool pointInSight(cXyz*);
    /* 80167C24 */ f32 radiusActorInSight(fopAc_ac_c*, fopAc_ac_c*, fopAc_ac_c*);
    /* 80165238 */ f32 radiusActorInSight(fopAc_ac_c*, fopAc_ac_c*, cXyz*, cXyz*, f32, s16, f32);
    /* 801657EC */ f32 groundHeight(cXyz*);
    /* 801658C0 */ bool lineBGCheck(cXyz*, cXyz*, dBgS_LinChk*, u32);
    /* 80165AF0 */ bool lineBGCheck(cXyz*, cXyz*, u32);
    /* 801659F4 */ bool lineBGCheck(cXyz*, cXyz*, cXyz*, u32);
    /* 80165B60 */ u32 lineCollisionCheckBush(cXyz*, cXyz*);
    /* 80165CE0 */ cXyz compWallMargin(cXyz*, cXyz*, f32);
    /* 80165EF4 */ int defaultTriming();
    /* 80165FB4 */ void setView(f32, f32, f32, f32);
    /* 8016608C */ cSAngle forwardCheckAngle();
    /* 80166764 */ void bumpCheck(u32);
    /* 80167BF8 */ bool lineBGCheckBoth(cXyz*, cXyz*, dBgS_LinChk*, u32);
    /* 80167CD8 */ BOOL jutOutCheck(cXyz*, f32);
    /* 80167E3C */ void tooNearEscape(cXyz*);
    /* 80167EF4 */ f32 getWaterSurfaceHeight(cXyz*);
    /* 80167FEC */ void checkGroundInfo();
    /* 80168744 */ bool chaseCamera(s32);
    /* 8016C384 */ bool lockonCamera(s32);
    /* 8016E448 */ void getMsgCmdSpeaker();
    /* 8016E4A4 */ void getMsgCmdCut(s32);
    /* 8016E4F4 */ bool talktoCamera(s32);
    /* 80174E18 */ void talkBasePos(fopAc_ac_c*);
    /* 80174E34 */ void talkEyePos(fopAc_ac_c*);
    /* 80174EA4 */ bool CalcSubjectAngle(s16*, s16*);
    /* 80174EAC */ void SaveZoomRatio();
    /* 80174ED4 */ bool subjectCamera(s32);
    /* 80176074 */ bool magneCamera(s32);
    /* 801767F8 */ bool colosseumCamera(s32);
    /* 80176DF0 */ bool test1Camera(s32);
    /* 80176DF8 */ bool test2Camera(s32);
    /* 80176E00 */ bool towerCamera(s32);
    /* 80178E50 */ bool hookshotCamera(s32);
    /* 80179590 */ bool railCamera(s32);
    /* 8017A2A0 */ bool paraRailCamera(s32);
    /* 8017ADC0 */ bool rideCamera(s32);
    /* 8017D974 */ bool manualCamera(s32);
    /* 8017D97C */ bool observeCamera(s32);
    /* 8017DFAC */ bool fixedFrameCamera(s32);
    /* 8017E730 */ bool fixedPositionCamera(s32);
    /* 8017F25C */ bool oneSideCamera(s32);
    /* 8017F828 */ bool eventCamera(s32);
    /* 8018050C */ int currentEvCamera();
    /* 801806D4 */ bool letCamera(s32);
    /* 801806DC */ void setEventRecoveryTrans(s16);
    /* 80180738 */ void runEventRecoveryTrans();
    /* 80180A40 */ void EventRecoverNotime();
    /* 80180AA8 */ int Set(cXyz, cXyz);
    /* 80180AE0 */ int Set(cXyz, cXyz, f32, s16);
    /* 80180B40 */ int Set(cXyz, cXyz, s16, f32);
    /* 80180C18 */ void Reset(cXyz, cXyz);
    /* 80180C68 */ int Reset();
    /* 80180BA0 */ void Reset(cXyz, cXyz, f32, s16);
    /* 80180D24 */ f32 shakeCamera();
    /* 80181000 */ int StartShake(s32, u8*, s32, cXyz);
    /* 80181158 */ int StopShake();
    /* 80181170 */ void StartBlure(int, fopAc_ac_c*, f32, f32);
    /* 801811B8 */ void ResetBlure();
    /* 80181208 */ void SetBlureAlpha(f32);
    /* 80181210 */ void SetBlureScale(f32, f32, f32);
    /* 80181220 */ void SetBlurePosition(f32, f32, f32);
    /* 80181278 */ void SetBlureActor(fopAc_ac_c*);
    /* 80181280 */ void blureCamera();
    /* 80181490 */ void onHorseDush();
    /* 80181500 */ fopAc_ac_c* GetForceLockOnActor();
    /* 80181534 */ int ForceLockOn(fopAc_ac_c*);
    /* 80181560 */ int ForceLockOff(fpc_ProcID);
    /* 8018159C */ int ForceLockOff(fopAc_ac_c*);
    /* 80181E20 */ cXyz Up();
    /* 80181E64 */ cXyz Eye();
    /* 80181E98 */ cXyz Center();
    /* 8018295C */ void footHeightOf(fopAc_ac_c*);
    /* 801829AC */ void Bank();

    bool Active() { return field_0x24 == 0; }
    f32 TrimHeight() { return mTrimHeight; }
    int Type() { return mCurType; }
    int Mode() { return mCurMode; }
    f32 Fovy() { return mFovY + mShake.field_0x3c; }
    bool isModeOK() { return field_0x158.field_0x0; }
    bool push_any_key() { return field_0x224; }

    bool chkFlag(u32 i_flag) { return mEventFlags & i_flag; }
    void setFlag(u32 i_flag) { mEventFlags |= i_flag; }
    void clrFlag(u32 i_flag) { mEventFlags &= ~i_flag; }

    bool CheckFlag(u32 i_flag) { return mEventFlags & i_flag; }

    void ResetView() { setView(0.0f, 0.0f, 608.0f, 448.0f); }

    void clearInfo(dCamInfo_c* i_info, s16 param_1) {
        i_info->field_0x1e = param_1;
    }

    void EventFlag(int i_flag) {
        mEventData.field_0x24 = i_flag;
    }

    void Att() {
        dAttention_c& attn = dComIfGp_getAttention();
        mpLockonTarget = attn.LockonTruth() ? attn.LockonTarget(0) : NULL;
        attn.LockSoundOn();
    }

    void SetWindow(f32 param_0, f32 param_1) {
        field_0x914 = param_0;
        field_0x918 = param_1;
        field_0x92c = param_0 / param_1;
    }

    s16 U2() {
        if (chkFlag(0x10)) {
            return field_0x5c.field_0x0.U();
        } else {
            return field_0x8c;
        }
    }

    static engine_fn engine_tbl[];

    /* 0x000 */ camera_class* field_0x0;
    /* 0x004 */ int mRoomNo;
    /* 0x008 */ u8 field_0x8[0x20 - 0x8];
    /* 0x020 */ u8 field_0x20;
    /* 0x021 */ u8 field_0x21;
    /* 0x022 */ u8 field_0x22[2];
    /* 0x024 */ int field_0x24;
    /* 0x028 */ cSGlobe field_0x28;
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
        /* 0x04 */ s16 field_0x4;
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
        /* 0x0 */ bool field_0x0;
        /* 0x2 */ cSAngle field_0x2;
        /* 0x4 */ cSAngle field_0x4;
    }
    /* 0x158 */ field_0x158;
    /* 0x160 */ int field_0x160;
    /* 0x164 */ int field_0x164;
    /* 0x168 */ u8 field_0x168;
    /* 0x169 */ int field_0x16c;
    /* 0x170 */ int field_0x170;
    /* 0x174 */ u32 mCurCamTypeTimer;
    /* 0x178 */ u32 mCameraID;
    /* 0x17C */ u32 mPadID;
    /* 0x180 */ fopAc_ac_c* mpPlayerActor;
    /* 0x184 */ fopAc_ac_c* mpLockonTarget;
    /* 0x188 */ u32 field_0x188;
    /* 0x18C */ u32 field_0x18c;
    /* 0x190 */ int field_0x190;
    /* 0x194 */ bool field_0x194;
    /* 0x198 */ fpc_ProcID mLockOnActorID;
    /* 0x19C */ fopAc_ac_c* mpLockOnActor;
    /* 0x1A0 */ int mForceLockTimer;
    /* 0x1A4 */ int mCurMode;
    /* 0x1A8 */ int mNextMode;
    /* 0x1AC */ int field_0x1ac;
    /* 0x1B0 */ cSAngle field_0x1b0;
    /* 0x1B4 */ f32 field_0x1b4;
    /* 0x1B8 */ u8 field_0x1b8[4];
    /* 0x1BC */ dCamera_pad_info mPadInfo;
    /* 0x1F4 */ int field_0x1f4;
    /* 0x1F8 */ int field_0x1f8;
    /* 0x1FC */ int field_0x1fc;
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
    /* 0x218 */ bool mHoldX;
    /* 0x219 */ bool mTrigX;
    /* 0x21A */ bool mHoldY;
    /* 0x21B */ bool mTrigY;
    /* 0x21C */ bool mHoldZ;
    /* 0x21D */ bool mTrigZ;
    /* 0x21E */ u8 field_0x21e;
    /* 0x21F */ u8 field_0x21f;
    /* 0x220 */ bool mHoldB;
    /* 0x221 */ bool mTrigB;
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
    /* 0x3EC */ int field_0x3ec;
    /* 0x3F0 */ int field_0x3f0;
    /* 0x3F4 */ u8 field_0x3f4[0x4E8 - 0x3F4];
    /* 0x4E8 */ dCamera_event_data mEventData;
    /* 0x60C */ u32 mEventFlags;
    /* 0x610 */ u8 field_0x610;
    /* 0x611 */ u8 field_0x611;
    /* 0x612 */ u8 field_0x612[2];
    class {
    public:
        /* 0x00 */ u8 field_0x0[8];
        /* 0x08 */ cSGlobe field_0x8;
        /* 0x10 */ u8 field_0x10[4];
    }
    /* 0x614 */ field_0x614[4];
    /* 0x664 */ u8 field_0x664[4];
    /* 0x668 */ int field_0x668;
    /* 0x66C */ int field_0x66c;
    /* 0x670 */ int field_0x670;
    /* 0x674 */ int field_0x674;
    /* 0x678 */ u8 field_0x678;
    /* 0x67C */ int mCamStyle;
    /* 0x680 */ int field_0x680;
    /* 0x684 */ dCamera_type_data* mCamTypeData;
    /* 0x688 */ int mCamTypeNum;
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
        /* 0x10 */ fopAc_ac_c* mpActor;
        /* 0x14 */ int field_0x14;
        /* 0x18 */ cXyz mPosition;
        /* 0x24 */ cXyz mScale;
        /* 0x30 */ f32 mAlpha;
    }
    /* 0x700 */ mBlure;
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
    /* 0x914 */ f32 field_0x914;
    /* 0x918 */ f32 field_0x918;
    /* 0x91C */ f32 field_0x91c;
    /* 0x920 */ f32 mTrimHeight;
    /* 0x924 */ int mTrimSize;
    /* 0x928 */ int mTrimTypeForce;
    /* 0x92C */ f32 field_0x92c;
    /* 0x930 */ u8 field_0x930[0x930 - 0x92c];
    /* 0x934 */ f32 field_0x934;
    /* 0x938 */ u8 field_0x938[0x93C - 0x938];
    /* 0x93C */ int field_0x93c;
    /* 0x940 */ int field_0x940;
    /* 0x944 */ u8 field_0x944;
    /* 0x948 */ int mThrowTimer;
    /* 0x94C */ cSAngle field_0x94c;
    /* 0x950 */ int field_0x950;
    /* 0x954 */ u8 field_0x954[0x958 - 0x954];
    /* 0x958 */ int field_0x958;
    /* 0x95C */ cXyz field_0x95c;
    /* 0x968 */ u8 field_0x968[0x970 - 0x968];
    /* 0x970 */ dCamSetup_c mCamSetup;
    /* 0xAEC */ dCamParam_c mCamParam;
    /* 0xB0C */ u8 field_0xb0c;
    /* 0xB0D */ u8 field_0xb0d[0xd58 - 0xb0d];
};  // Size: 0xD58

dCamera_c* dCam_getBody();
camera_class* dCam_getCamera();
s16 dCam_getControledAngleY(camera_class* param_0);

#endif /* D_D_CAMERA_H */
