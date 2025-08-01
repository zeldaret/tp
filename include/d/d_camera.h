#ifndef D_D_CAMERA_H
#define D_D_CAMERA_H

#include "d/d_attention.h"
#include "d/d_bg_s_lin_chk.h"
#include "d/d_bg_s_gnd_chk.h"
#include "d/d_cam_param.h"
#include "d/d_drawlist.h"
#include "d/d_spline_path.h"
#include "d/d_stage.h"
#include "f_op/f_op_actor.h"

dAttention_c* dComIfGp_getAttention();

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

#pragma warn_illunionmembers off

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
            /* 0x00 */ bool field_0x0;
            /* 0x04 */ dBgS_CamGndChk field_0x4;
            /* 0x58 */ f32 field_0x58;
        } /* 0x000 */ field_0x0;
        class {
        public:
            /* 0x00 */ bool field_0x0;
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
            /* 0x20 */ fopAc_ac_c* field_0x20;
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
    /* 80089730 */ bool pauseEvCamera();
    /* 800897E8 */ bool fixedFrameEvCamera();
    /* 8008A510 */ bool stokerEvCamera();
    /* 8008A974 */ bool rollingEvCamera();
    /* 8008B9B0 */ bool fixedPositionEvCamera();
    /* 8008BE2C */ bool uniformTransEvCamera();
    /* 8008BE50 */ bool uniformBrakeEvCamera();
    /* 8008BE74 */ bool uniformAcceleEvCamera();
    /* 8008BE98 */ bool transEvCamera(int);
    /* 8008E938 */ bool watchActorEvCamera();
    /* 8008FAE8 */ bool restorePosEvCamera();
    /* 80090174 */ bool talktoEvCamera();
    /* 80090230 */ bool maptoolIdEvCamera();
    /* 80090478 */ bool styleEvCamera();
    /* 80090514 */ bool gameOverEvCamera();
    /* 80091468 */ bool tactEvCamera();
    /* 800923B8 */ bool turnToActorEvCamera();
    /* 800923C0 */ bool stbWaitEvCamera();
    /* 800924D0 */ bool saveEvCamera();
    /* 8009258C */ bool loadEvCamera();
    /* 800929AC */ bool useItem0EvCamera();
    /* 800937AC */ bool useItem1EvCamera();
    /* 80094240 */ bool getItemEvCamera();
    /* 80094A70 */ bool possessedEvCamera();
    /* 80095010 */ bool fixedFramesEvCamera();
    /* 8009544C */ bool bSplineEvCamera();
    /* 800956E4 */ bool twoActor0EvCamera();
    /* 80095E7C */ bool peepHoleEvCamera();
    /* 80095FD0 */ bool digHoleEvCamera();
    /* 800965AC */ bool hintTalkEvCamera();
    /* 80096EDC */ bool bspTransEvCamera();
    /* 80097694 */ bool portalWarpEvCamera();
    /* 8009771C */ cXyz attentionPos(fopAc_ac_c*);
    /* 80097738 */ cSAngle directionOf(fopAc_ac_c*);
    /* 8009775C */ cXyz positionOf(fopAc_ac_c*);
    /* 8009778C */ cXyz eyePos(fopAc_ac_c*);
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
    /* 80166764 */ bool bumpCheck(u32);
    /* 80167BF8 */ bool lineBGCheckBoth(cXyz*, cXyz*, dBgS_LinChk*, u32);
    /* 80167CD8 */ BOOL jutOutCheck(cXyz*, f32);
    /* 80167E3C */ void tooNearEscape(cXyz*);
    /* 80167EF4 */ f32 getWaterSurfaceHeight(cXyz*);
    /* 80167FEC */ void checkGroundInfo();
    /* 80168744 */ bool chaseCamera(s32);
    /* 8016C384 */ bool lockonCamera(s32);
    /* 8016E448 */ fopAc_ac_c* getMsgCmdSpeaker();
    /* 8016E4A4 */ s32 getMsgCmdCut(s32);
    /* 8016E4F4 */ bool talktoCamera(s32);
    /* 80174EA4 */ bool CalcSubjectAngle(s16*, s16*);
    /* 80174EAC */ bool SaveZoomRatio();
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
    /* 8018050C */ bool currentEvCamera();
    /* 801806D4 */ bool letCamera(s32);
    /* 801806DC */ void setEventRecoveryTrans(s16);
    /* 80180738 */ s16 runEventRecoveryTrans();
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
    /* 80181280 */ int blureCamera();
    /* 80181490 */ void onHorseDush();
    /* 80181500 */ fopAc_ac_c* GetForceLockOnActor();
    /* 80181534 */ int ForceLockOn(fopAc_ac_c*);
    /* 80181560 */ int ForceLockOff(fpc_ProcID);
    /* 8018159C */ int ForceLockOff(fopAc_ac_c*);
    /* 80181E20 */ cXyz Up();
    /* 80181E64 */ cXyz Eye();
    /* 80181E98 */ cXyz Center();

    /* 8018295C */ f32 footHeightOf(fopAc_ac_c* i_actor) { return i_actor->current.pos.y; }
    /* 801829AC */ cSAngle Bank() { return mBank + mShake.field_0x40; }
    /* 80174E18 */ cXyz talkBasePos(fopAc_ac_c* i_actor) { return i_actor->current.pos; }
    /* 80174E34 */ cXyz talkEyePos(fopAc_ac_c* i_actor) { return i_actor->eyePos; }

    void debugDraw();

    bool Active() { return field_0x24 == 0; }
    f32 TrimHeight() { return mTrimHeight; }
    int Type() { return mCurType; }
    int Mode() { return mCurMode; }
    f32 Fovy() { return mFovy + mShake.field_0x3c; }
    bool isModeOK() { return field_0x158.field_0x0; }
    bool push_any_key() { return field_0x224; }

    bool chkFlag(u32 i_flag) { return (mEventFlags & i_flag) != 0; }
    u32 setFlag(u32 i_flag) { return mEventFlags |= i_flag; }
    u32 clrFlag(u32 i_flag) { return mEventFlags &= ~i_flag; }

    bool CheckFlag(u32 i_flag) { return mEventFlags & i_flag; }

    void ResetView() { setView(0.0f, 0.0f, 608.0f, 448.0f); }

    void clearInfo(dCamInfo_c* i_info, s16 param_1) {
        i_info->field_0x1e = param_1;
    }

    void EventFlag(int i_flag) {
        mEventData.field_0x24 = i_flag;
    }

    void Att() {
        dAttention_c* attn = dComIfGp_getAttention();
        mpLockonTarget = attn->LockonTruth() ? attn->LockonTarget(0) : NULL;
        attn->LockSoundOn();
    }

    void SetWindow(f32 param_0, f32 param_1) {
        field_0x914 = param_0;
        field_0x918 = param_1;
        field_0x92c = param_0 / param_1;
    }

    s16 U2() {
        if (chkFlag(0x10)) {
            return field_0x5c.mDirection.U();
        } else {
            return field_0x8c;
        }
    }

    void U2(s16 i_val) { field_0x8c = i_val; }

    void CorrectCenter() { setFlag(0x40000000); }

    static engine_fn engine_tbl[];

    /* 0x000 */ camera_class* field_0x0;
#if VERSION == VERSION_SHIELD_DEBUG
    cXyz dbg_field_0x04[16];
    u8 dbg_field_c4[0xDC - 0xC4];
#endif
    struct {
        /* 0x00 */ int mRoomNo;
        /* 0x04 */ cXyz field_0x04;
        /* 0x10 */ cXyz field_0x10;
    }
    /* 0x004 */ field_0x004;
    /* 0x020 */ u8 field_0x20;
    /* 0x021 */ u8 field_0x21;
    /* 0x022 */ u8 field_0x22[2];
    /* 0x024 */ int field_0x24;
    /* 0x028 */ cSGlobe mDirection;
    /* 0x030 */ cXyz mCenter;
    /* 0x03C */ cXyz mEye;
    /* 0x048 */ cXyz mUp;
    /* 0x054 */ cSAngle mBank;
    /* 0x058 */ f32 mFovy;
    class {
    public:
        /* 0x00 */ cSGlobe mDirection;
        /* 0x08 */ cXyz mCenter;
        /* 0x14 */ cXyz mEye;
        /* 0x20 */ cSAngle mBank;
        /* 0x24 */ f32 mFovy;
    }
    /* 0x05C */ field_0x5c;
    /* 0x084 */ f32 field_0x84;
    /* 0x088 */ u32 field_0x88;
    /* 0x08C */ cSAngle field_0x8c;
    /* 0x090 */ cXyz field_0x90;
    /* 0x09C */ cXyz field_0x9c;
    /* 0x0A8 */ u32 field_0xa8;
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
    /* 0x160 */ u32 field_0x160;
    /* 0x164 */ int field_0x164;
    /* 0x168 */ u8 field_0x168;
    /* 0x169 */ int field_0x16c;
    /* 0x170 */ int field_0x170;
    /* 0x174 */ u32 mCurCamStyleTimer;
    /* 0x178 */ u32 mCameraID;
    /* 0x17C */ u32 mPadID;
    /* 0x180 */ fopAc_ac_c* mpPlayerActor;
    /* 0x184 */ fopAc_ac_c* mpLockonTarget;
    /* 0x188 */ fopAc_ac_c* field_0x188;
    /* 0x18C */ fopAc_ac_c* field_0x18c;
    /* 0x190 */ int mIsWolf;
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
    /* 0x224 */ bool field_0x224;
    /* 0x228 */ dCamForcusLine mFocusLine;
    /* 0x298 */ dCamera_FakeAngle_system mFakeAngleSys;
    /* 0x2A0 */ dCamera_monitoring_things mMonitor;
    /* 0x2C0 */ f32 field_0x2c0;
    /* 0x2C4 */ int field_0x2c4;
    /* 0x2C8 */ f32 field_0x2c8;
    /* 0x2CC */ BG mBG;
    /* 0x3E8 */ union mWork {
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int field_0x4;
            /* 0x08 */ f32 field_0x8;
            /* 0x0C */ f32 field_0xc;
            /* 0x10 */ int field_0x10;
            /* 0x14 */ int field_0x14;
            /* 0x18 */ s16 field_0x18;
            /* 0x1A */ s16 field_0x1a;
            /* 0x1C */ s16 field_0x1c;
            /* 0x20 */ f32 field_0x20;
            /* 0x24 */ f32 field_0x24;
            /* 0x28 */ f32 field_0x28;
            /* 0x2C */ f32 field_0x2c;
            /* 0x30 */ f32 field_0x30;
            /* 0x34 */ f32 field_0x34;
            /* 0x38 */ f32 field_0x38;
            /* 0x3C */ f32 field_0x3c;
            /* 0x40 */ f32 field_0x40;
            /* 0x44 */ int field_0x44;
            /* 0x48 */ f32 field_0x48;
            /* 0x4C */ f32 field_0x4c;
            /* 0x50 */ f32 field_0x50;
            /* 0x54 */ f32 field_0x54;
            /* 0x58 */ cXyz field_0x58;
            /* 0x64 */ cXyz field_0x64;
            /* 0x70 */ bool field_0x70;
            /* 0x71 */ bool field_0x71;
            /* 0x72 */ bool field_0x72;
            /* 0x73 */ bool field_0x73;
            /* 0x74 */ f32 field_0x74;
            /* 0x78 */ f32 field_0x78;
            /* 0x7C */ f32 field_0x7c;
            /* 0x80 */ f32 field_0x80;
            /* 0x84 */ f32 field_0x84;
            /* 0x88 */ f32 field_0x88;
            /* 0x8C */ int field_0x8c;
            /* 0x90 */ bool field_0x90;
            /* 0x91 */ bool field_0x91;
            /* 0x92 */ bool field_0x92;
            /* 0x93 */ bool field_0x93;
            /* 0x94 */ bool field_0x94;
            /* 0x95 */ bool field_0x95;
            /* 0x96 */ cSAngle field_0x96;
            /* 0x98 */ cSAngle field_0x98;
            /* 0x9A */ cSAngle field_0x9a;
            /* 0x9C */ int field_0x9c;
            /* 0xA0 */ int field_0xa0;
            /* 0xA4 */ f32 field_0xa4;
            /* 0xA8 */ int field_0xa8;
            /* 0xAC */ f32 field_0xac;
        } chase;
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ u8 field_0x4[8];
            /* 0x0C */ int field_0xc;
            /* 0x10 */ f32 field_0x10;
            /* 0x14 */ int field_0x14;
            /* 0x18 */ bool field_0x18;
            /* 0x1C */ cXyz field_0x1c;
            /* 0x28 */ bool field_0x28;
            /* 0x29 */ bool field_0x29;
            /* 0x2A */ bool field_0x2a;
            /* 0x2C */ int field_0x2c;
            /* 0x30 */ int field_0x30;
            /* 0x34 */ cSGlobe field_0x34;
            /* 0x3C */ fpc_ProcID field_0x3c;
            /* 0x40 */ bool field_0x40;
            /* 0x42 */ cSAngle field_0x42;
            /* 0x44 */ int field_0x44;
            /* 0x48 */ f32 field_0x48;
            /* 0x4C */ f32 field_0x4c;
            /* 0x50 */ cSAngle field_0x50;
            /* 0x54 */ f32 field_0x54;
            /* 0x58 */ f32 field_0x58;
            /* 0x5C */ f32 field_0x5c;
            /* 0x60 */ f32 field_0x60;
        } lockon;
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cXyz field_0x1c;
            /* 0x28 */ cSGlobe field_0x28;
            /* 0x30 */ cSGlobe field_0x30;
            /* 0x38 */ int field_0x38;
            /* 0x3C */ int field_0x3c;
            /* 0x40 */ int field_0x40;
            /* 0x44 */ int field_0x44;
            /* 0x48 */ int field_0x48;
            /* 0x4C */ f32 field_0x4c;
            /* 0x50 */ f32 field_0x50;
            /* 0x54 */ f32 field_0x54;
            /* 0x58 */ f32 field_0x58;
            /* 0x5C */ f32 field_0x5c;
            /* 0x60 */ f32 field_0x60;
            /* 0x64 */ f32 field_0x64;
            /* 0x68 */ f32 field_0x68;
            /* 0x6C */ f32 field_0x6c;
            /* 0x70 */ fopAc_ac_c* field_0x70;
            /* 0x74 */ fopAc_ac_c* field_0x74;
            /* 0x78 */ fopAc_ac_c* field_0x78;
            /* 0x7C */ f32 field_0x7c;
            /* 0x80 */ f32 field_0x80;
            /* 0x84 */ s16 field_0x84;
            /* 0x86 */ s16 field_0x86;
            /* 0x88 */ bool field_0x88;
            /* 0x89 */ bool field_0x89;
            /* 0x8C */ u32 field_0x8c;
            /* 0x90 */ cXyz field_0x90;
            /* 0x9C */ cXyz field_0x9c;
            /* 0xA8 */ cSGlobe field_0xa8;
            /* 0xB0 */ f32 field_0xb0;
            /* 0xB4 */ cXyz field_0xb4;
            /* 0xC0 */ cXyz field_0xc0;
            /* 0xCC */ cXyz field_0xcc;
            /* 0xD8 */ cXyz field_0xd8;
        } talk;
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ int field_0x10;
            /* 0x14 */ int field_0x14;
            /* 0x18 */ int field_0x18;
            /* 0x1C */ bool field_0x1c;
            /* 0x1D */ bool field_0x1d;
            /* 0x20 */ f32 field_0x20;
            /* 0x24 */ f32 field_0x24;
            /* 0x28 */ cSAngle field_0x28;
            /* 0x2A */ cSAngle field_0x2a;
            /* 0x2C */ cSAngle field_0x2c;
            /* 0x2E */ cSAngle field_0x2e;
            /* 0x30 */ cXyz field_0x30;
            /* 0x3C */ cXyz field_0x3c;
            /* 0x48 */ cSGlobe field_0x48;
        } subject;
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cSGlobe field_0x1c;
        } magne;
        struct {
            /* 0x00 */ u8 field_0x0[8];
            /* 0x08 */ cXyz field_0x8;
            /* 0x14 */ f32 field_0x14;
            /* 0x18 */ int field_0x18;
        } colosseum;
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int field_0x4;
            /* 0x08 */ f32 field_0x8;
            /* 0x0C */ f32 field_0xc;
            /* 0x10 */ int field_0x10;
            /* 0x14 */ int field_0x14;
            /* 0x18 */ f32 field_0x18;
            /* 0x1C */ f32 field_0x1c;
            /* 0x20 */ f32 field_0x20;
            /* 0x24 */ f32 field_0x24;
            /* 0x28 */ cSAngle field_0x28;
            /* 0x2C */ f32 field_0x2c;
            /* 0x30 */ f32 field_0x30;
            /* 0x34 */ f32 field_0x34;
            /* 0x38 */ int field_0x38;
            /* 0x3C */ f32 field_0x3c;
            /* 0x40 */ f32 field_0x40;
            /* 0x44 */ f32 field_0x44;
            /* 0x48 */ cXyz field_0x48;
            /* 0x54 */ cXyz field_0x54;
            /* 0x60 */ cSAngle field_0x60;
            /* 0x64 */ int field_0x64;
            /* 0x68 */ bool field_0x68;
            /* 0x69 */ bool field_0x69;
            /* 0x6A */ bool field_0x6a;
            /* 0x6B */ bool field_0x6b;
            /* 0x6C */ bool field_0x6c;
            /* 0x70 */ f32 field_0x70;
            /* 0x74 */ f32 field_0x74;
            /* 0x78 */ f32 field_0x78;
            /* 0x7C */ f32 field_0x7c;
            /* 0x80 */ f32 field_0x80;
            /* 0x84 */ f32 field_0x84;
        } tower;
        struct {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ u8 field_0x4[4];
            /* 0x08 */ cXyz field_0x8;
            /* 0x14 */ cXyz field_0x14;
            /* 0x20 */ bool field_0x20;
        } hookshot;
        struct event {
            /* 0x00 */ bool field_0x0;
            /* 0x01 */ bool field_0x1;
            /* 0x04 */ int field_0x4;
            /* 0x08 */ int field_0x8;
            /* 0x0C */ u8 field_0xc[0x10 - 0xc];
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ f32 mFovy;
            /* 0x20 */ f32 mBank;
            /* 0x24 */ fopAc_ac_c* mRelActor;
            /* 0x28 */ char mRelUseMask;
            /* 0x29 */ char field_0x29;
            /* 0x2C */ int mTimer;
            /* 0x30 */ bool field_0x30;
            /* 0x34 */ cXyz mBasePos;
            /* 0x40 */ char field_0x40;
            /* 0x41 */ char field_0x41;
            /* 0x42 */ u8 field_0x42[0x48 - 0x42];
            /* 0x48 */ char field_0x48;
            /* 0x49 */ u8 field_0x49[0x4c - 0x49];
            /* 0x4C */ int field_0x4c;
            /* 0x50 */ int field_0x50;
            /* 0x54 */ u8 field_0x54[0x5c - 0x54];
            /* 0x5C */ f32* field_0x5c;
            /* 0x60 */ u8 field_0x60[0x6c - 0x60];
            /* 0x6C */ int field_0x6c;
        } event;
        struct fixedFrame {
            /* 0x00 */ bool field_0x0;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ f32 field_0x1c;
            /* 0x20 */ f32 field_0x20;
            /* 0x24 */ fopAc_ac_c* mpRelActor;
            /* 0x28 */ char mRelUseMask[4];
            /* 0x2C */ int mTimer;
            /* 0x30 */ bool field_0x30;
            /* 0x34 */ cXyz mBasePos;
        } fixedFrame;
        struct stoker {
            /* 0x00 */ bool field_0x0;
            /* 0x01 */ bool field_0x1;
            /* 0x02 */ u8 field_0x2[2];
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ f32 field_0x1c;
            /* 0x20 */ f32 field_0x20;
            /* 0x24 */ f32 field_0x24;
            /* 0x28 */ f32 field_0x28;
            /* 0x2C */ fopAc_ac_c* field_0x2c;
            /* 0x30 */ fopAc_ac_c* field_0x30;
            /* 0x34 */ fpc_ProcID field_0x34;
            /* 0x38 */ fpc_ProcID field_0x38;
            /* 0x3C */ u8 field_0x3c[0x40 - 0x3c];
            /* 0x40 */ int field_0x40;
        } stoker;
        struct rolling {
            /* 0x00 */ bool field_0x0;
            /* 0x00 */ bool field_0x1;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cXyz mEye;
            /* 0x28 */ cXyz mCenter;
            /* 0x34 */ f32 mFovy;
            /* 0x38 */ f32 mBank;
            /* 0x3C */ fopAc_ac_c* mpRelActor;
            /* 0x40 */ char mRelActor[4];
            /* 0x44 */ int mTimer;
            /* 0x48 */ int mTransType;
            /* 0x4C */ f32 mRoll;
            /* 0x50 */ f32 mRadiusAdd;
            /* 0x54 */ f32 mLatitude;
            /* 0x58 */ f32 mCtrCus;
        } rolling;
        struct fixedPos {
            /* 0x00 */ bool field_0x0;
            /* 0x00 */ bool field_0x1;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cXyz field_0x1c;
            /* 0x28 */ f32 field_0x28;
            /* 0x2C */ f32 field_0x2c;
            /* 0x30 */ f32 field_0x30;
            /* 0x34 */ f32 field_0x34;
            /* 0x38 */ f32 field_0x38;
            /* 0x3C */ fopAc_ac_c* field_0x3c;
            /* 0x40 */ fopAc_ac_c* field_0x40;
            /* 0x44 */ fpc_ProcID field_0x44;
            /* 0x48 */ u8 field_0x48[0x4c - 0x48];
            /* 0x4C */ u32 field_0x4c;
        } fixedPos;
        struct trans {
            /* 0x00 */ cXyz mStartEye;
            /* 0x0C */ cXyz mStartCenter;
            /* 0x18 */ f32 mStartFovy;
            /* 0x1C */ f32 field_0x1c;
            /* 0x20 */ cXyz mEye;
            /* 0x2C */ cXyz mCenter;
            /* 0x38 */ f32 mFovy;
            /* 0x3C */ f32 field_0x3c;
            /* 0x40 */ fopAc_ac_c* mRelActor;
            /* 0x44 */ fpc_ProcID mRelActorID;
            /* 0x48 */ char mRelUseMask;
            /* 0x49 */ char field_0x49;
            /* 0x4A */ char field_0x4a;
            /* 0x4B */ char field_0x4b;
            /* 0x4C */ u8 field_0x4c[4];
            /* 0x50 */ int mTimer;
            /* 0x54 */ int mTransType;
            /* 0x58 */ f32 mCushion;
            /* 0x5C */ f32* mBSpPoints;
            /* 0x60 */ cSGlobe field_0x60;
            /* 0x68 */ bool field_0x68;
            /* 0x6C */ int mBSpCurve;
        } trans;
        struct actor {
            /* 0x00 */ cXyz mCtrGap;
            /* 0x0C */ cXyz field_0xc;
            /* 0x18 */ f32 mCushion;
            /* 0x1C */ int mNearTimer;
            /* 0x20 */ f32 mNearDist;
            /* 0x24 */ int mFarTimer;
            /* 0x28 */ f32 mFarDist;
            /* 0x2C */ f32 mZoomDist;
            /* 0x30 */ f32 mZoomVAngle;
            /* 0x34 */ fopAc_ac_c* mTargetActor;
            /* 0x38 */ fpc_ProcID mTargetActorID;
            /* 0x3C */ cSGlobe field_0x3c;
            /* 0x44 */ int field_0x44;
            /* 0x48 */ u8 field_0x48[4];
            /* 0x4C */ cSGlobe field_0x4c;
            /* 0x54 */ int field_0x54;
            /* 0x58 */ int mBlure;
            /* 0x5C */ f32 mFrontAngle;
            /* 0x60 */ f32 mFovy;
            /* 0x64 */ u8 field_0x64[4];
            /* 0x68 */ int field_0x68;
        } actor;
        struct restorePos {
            /* 0x000 */ cXyz field_0x0;
            /* 0x00C */ cXyz field_0xc;
            /* 0x018 */ f32 field_0x18;
            /* 0x01C */ int field_0x1c;
            /* 0x020 */ f32 field_0x20;
            /* 0x024 */ int field_0x24;
            /* 0x028 */ f32 field_0x28;
            /* 0x02C */ u8 field_0x2c[0x034 - 0x02C];
            /* 0x034 */ fopAc_ac_c* field_0x34;
            /* 0x038 */ cSGlobe field_0x38;
            /* 0x040 */ int field_0x40;
            /* 0x044 */ int field_0x44;
            /* 0x048 */ dCamInfo_c field_0x48;
            /* 0x068 */ int field_0x68;
            /* 0x06C */ u8 field_0x6c[0x100 - 0x6c];
        } restorePos;
        struct gameOver {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int field_0x4;
            /* 0x08 */ int field_0x8;
            /* 0x0C */ int mType;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cSGlobe field_0x1c;
            /* 0x24 */ u8 field_0x24[0x3c - 0x24];
            /* 0x3C */ bool field_0x3c;
        } gameOver;
        struct tact {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int field_0x4;
            /* 0x08 */ int field_0x8;
            /* 0x0C */ int field_0xc;
            /* 0x10 */ u8 field_0x10[4];
            /* 0x14 */ int field_0x14;
            /* 0x18 */ u8 field_0x18[4];
            /* 0x1C */ cXyz* field_0x1c;
            /* 0x20 */ cXyz* field_0x20;
            /* 0x24 */ int field_0x24;
            /* 0x28 */ u8 field_0x28[4];
            /* 0x2C */ f32 field_0x2c;
            /* 0x30 */ cXyz field_0x30;
            /* 0x3C */ cXyz field_0x3c;
        } tact;
        struct load {
            /* 0x00 */ int mTimer;
            /* 0x04 */ int mSlot;
            /* 0x08 */ int mType;
            /* 0x0C */ cSGlobe field_0xc;
            /* 0x14 */ cSGlobe field_0x14;
            /* 0x1C */ cXyz field_0x1c;
            /* 0x28 */ cXyz field_0x28;
            /* 0x34 */ cXyz field_0x34;
            /* 0x40 */ cSAngle field_0x40;
            /* 0x42 */ cSAngle field_0x42;
            /* 0x44 */ f32 field_0x44;
            /* 0x48 */ f32 field_0x48;
        } load;
        struct item {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int field_0x4;
            /* 0x08 */ int mType;
            /* 0x0C */ cXyz field_0xc;
            /* 0x18 */ f32 field_0x18;
            /* 0x1C */ int field_0x1c;
            /* 0x20 */ int field_0x20;
            /* 0x24 */ cSGlobe field_0x24;
            /* 0x2C */ cXyz field_0x2c;
            /* 0x38 */ cXyz field_0x38;
            /* 0x44 */ cXyz field_0x44;
            /* 0x50 */ cXyz field_0x50;
            /* 0x5C */ f32 field_0x5c;
        } item;
        struct getItem {
            /* 0x000 */ u8 field_0x0[4];
            /* 0x004 */ int mTimer;
            /* 0x008 */ int field_0x8;
            /* 0x00C */ fopAc_ac_c* mRelActor;
            /* 0x010 */ fpc_ProcID mRelActorID;
            /* 0x014 */ f32* mCurvePoints;
            /* 0x018 */ int field_0x18;
            /* 0x01C */ cXyz mStartCenter;
            /* 0x028 */ cXyz mStartEye;
            /* 0x034 */ u8 field_0x34[8];
            /* 0x03C */ cSGlobe field_0x3c;
            /* 0x044 */ cXyz field_0x44;
            /* 0x050 */ cXyz field_0x50;
            /* 0x05C */ u8 field_0x5C[8];
            /* 0x064 */ cSGlobe field_0x64;
        } getItem;
        struct possessed {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int mType;
            /* 0x08 */ int mTimer;
            /* 0x0C */ int field_0xc;
            /* 0x10 */ f32 mRadius;
            /* 0x14 */ cSAngle mLatitude;
            /* 0x16 */ cSAngle mLongitude;
            /* 0x18 */ f32 mFovy;
            /* 0x1C */ f32 mCushion;
            /* 0x20 */ int mBlure;
            /* 0x24 */ fopAc_ac_c* mTargetActor;
            /* 0x28 */ cSGlobe field_0x28;
        } possessed;
        struct fixedFrames {
            /* 0x00 */ bool field_0x0;
            /* 0x04 */ cXyz field_0x4;
            /* 0x10 */ cXyz field_0x10;
            /* 0x1C */ cXyz* field_0x1c[2];
            /* 0x24 */ f32* field_0x24;
            /* 0x28 */ f32 field_0x28;
            /* 0x2C */ fopAc_ac_c* mRelActor;
            /* 0x30 */ char mRelUseMask;
            /* 0x31 */ char field_0x31;
            /* 0x34 */ int mTimer;
            /* 0x38 */ int field_0x38;
            /* 0x3C */ int mChoice;
        } fixedFrames;
        struct bSpline {
            /* 0x00 */ cXyz* mCenters;
            /* 0x04 */ cXyz* mEyes;
            /* 0x08 */ f32* mFovys;
            /* 0x0C */ int mTimer;
            /* 0x10 */ int field_0x10;
            /* 0x14 */ fopAc_ac_c* mRelActor;
            /* 0x18 */ u8 field_0x18[4];
            /* 0x1c */ bool field_0x1c;
        } bSpline;
        struct twoActor0 {
            /* 0x00 */ fopAc_ac_c* mActor1;
            /* 0x04 */ fopAc_ac_c* mActor2;
            /* 0x08 */ u8 field_0x8[4];
            /* 0x0C */ fpc_ProcID mActor1ID;
            /* 0x10 */ fpc_ProcID mActor2ID;
            /* 0x14 */ f32 mCtrCus;
            /* 0x18 */ f32 mEyeCus;
            /* 0x1C */ f32 mRadiusMin;
            /* 0x20 */ f32 mRadiusMax;
            /* 0x24 */ f32 mLatitudeMin;
            /* 0x28 */ f32 mLatitudeMax;
            /* 0x2C */ f32 mLongitudeMin;
            /* 0x30 */ f32 mLongitudeMax;
            /* 0x34 */ int mLongitudeType;
            /* 0x38 */ f32 mFovy;
            /* 0x3C */ f32 mCtrRatio;
            /* 0x40 */ cXyz mCtrGap;
            /* 0x4C */ f32 field_0x4c;
            /* 0x50 */ f32 field_0x50;
            /* 0x54 */ cSAngle field_0x54;
            /* 0x56 */ cSAngle field_0x56;
            /* 0x58 */ cSAngle field_0x58;
            /* 0x5A */ cSAngle field_0x5a;
        } twoActor0;
        struct digHole {
            /* 0x00 */ int field_0x0;
            /* 0x04 */ int mType;
            /* 0x08 */ int field_0x8;
            /* 0x0C */ f32 field_0xc;
            /* 0x10 */ u8 field_0x10;
            /* 0x11 */ u8 field_0x11[3];
            /* 0x14 */ cXyz field_0x14;
            /* 0x20 */ cXyz field_0x20;
        } digHole;
        struct hintTalk {
            /* 0x00 */ fopAc_ac_c* mTeacher;
            /* 0x04 */ fopAc_ac_c* mStudent;
            /* 0x08 */ cXyz field_0x8;
            /* 0x14 */ cXyz field_0x14;
            /* 0x20 */ cSGlobe mDirection;
            /* 0x28 */ cSGlobe field_0x28;
            /* 0x30 */ f32 mRadius;
            /* 0x34 */ f32 mFovy;
            /* 0x38 */ f32 mCtrGapY;
            /* 0x3C */ int mTimer;
            /* 0x40 */ cXyz field_0x40;
        } hintTalk;
        struct bspTrans {
            /* 0x00 */ int mTimer;
            /* 0x04 */ f32* mBase;
            /* 0x08 */ f32* mSet1;
            /* 0x0C */ d2DBSplinePath mSplinePath1;
            /* 0x40 */ f32* mSet2;
            /* 0x44 */ d2DBSplinePath mSplinePath2;
            /* 0x78 */ cXyz field_0x78;
            /* 0x84 */ cXyz field_0x84;
            /* 0x90 */ f32 field_0x90;
            /* 0x94 */ cXyz field_0x94;
            /* 0xA0 */ cXyz field_0xa0;
            /* 0xAC */ f32 field_0xac;
            /* 0xB0 */ fopAc_ac_c* mRelActor;
            /* 0xB4 */ fpc_ProcID mRelActorID;
            /* 0xB8 */ char mRelUseMask;
            /* 0xB9 */ char field_0xb9;
            /* 0xBC */ f32 mCushion;
            /* 0xC0 */ u32 field_0xc0[6];
            

        } bspTrans;
        struct {
            u8 field_0x0[0x100];
        } bytes;
    } mWork;
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
    /* 0x938 */ int field_0x938;
    /* 0x93C */ int field_0x93c;
    /* 0x940 */ int field_0x940;
    /* 0x944 */ u8 field_0x944;
    /* 0x948 */ int mThrowTimer;
    /* 0x94C */ cSAngle field_0x94c;
    /* 0x950 */ int field_0x950;
    /* 0x954 */ u8 field_0x954[0x958 - 0x954];
    /* 0x958 */ int field_0x958;
    /* 0x95C */ cXyz field_0x95c;
    /* 0x968 */ f32 field_0x968;
    /* 0x96C */ f32 field_0x96c;
    /* 0x970 */ dCamSetup_c mCamSetup;
    /* 0xAEC */ dCamParam_c mCamParam;
    /* 0xB0C */ u8 field_0xb0c;
    /* 0xB0D */ u8 field_0xb0d[0xd58 - 0xb0d];
};  // Size: 0xD58

#pragma warn_illunionmembers on

dCamera_c* dCam_getBody();
camera_class* dCam_getCamera();
s16 dCam_getControledAngleY(camera_class* param_0);
s16 dCam_getAngleX(camera_class* i_cam);
s16 dCam_getAngleY(camera_class* i_cam);

#endif /* D_D_CAMERA_H */
