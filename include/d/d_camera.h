#ifndef D_D_CAMERA_H
#define D_D_CAMERA_H

#include "SSystem/SComponent/c_angle.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/bg/d_bg_s_lin_chk.h"
#include "d/d_stage.h"
#include "dolphin/types.h"
#include "f_op/f_op_camera_mng.h"

class fopAc_ac_c;

struct dCamMapToolData {
    /* 8015FEB8 */ void Set(s32, s32, fopAc_ac_c*, u16, u8);
};

struct dCamera_c {
    struct dCamInfo_c {
        /* 8018291C */ dCamInfo_c();
        /* 80182920 */ ~dCamInfo_c();
    };

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

    static u8 engine_tbl[240];
};

dCamera_c* dCam_getBody();

#endif /* D_D_CAMERA_H */
