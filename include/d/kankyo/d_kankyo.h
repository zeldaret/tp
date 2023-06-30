#ifndef D_KANKYO_D_KANKYO_H
#define D_KANKYO_D_KANKYO_H

#include "JSystem/J3DGraphBase/J3DStruct.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/kankyo/d_kankyo_wether.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/types.h"
#include "global.h"
#include "m_Do/m_Do_ext.h"

class JPABaseEmitter;
class cBgS_PolyInfo;

void dKankyo_DayProc();
void dKy_set_nexttime(f32);
void dKy_itudemo_se();
BOOL dKy_darkworld_spot_check(char const* stageName, int roomNo);
void dKy_darkworld_Area_set(char const* stageName, int roomNo);
void dKy_FiveSenses_fullthrottle_dark();
s32 dKy_daynight_check();
void dKy_clear_game_init();
void dKy_setLight_init();
u8 dKy_pol_sound_get(cBgS_PolyInfo const* param_0);
void dKy_depth_dist_set(void* param_0);
void dKy_instant_rainchg();
void dKy_instant_timechg(f32);
static void dKy_set_vrboxsoracol_ratio(f32 ratio);
static void dKy_set_vrboxkumocol_ratio(f32 ratio);
void dKy_actor_addcol_set(s16 param_0, s16 param_1, s16 param_2, f32 param_3);
void dKy_fog_startendz_set(f32 param_0, f32 param_1, f32 param_2);
static void dKy_vrbox_addcol_set(s16 param_0, s16 param_1, s16 param_2, f32 param_3);
void dKy_GxFog_set();
static void GxFog_set();
static void GxXFog_set();
u8 dKy_pol_argument_get(cBgS_PolyInfo const* i_poly);
void dKy_Sound_set(cXyz param_0, int param_1, unsigned int param_2, int param_3);
void dKy_bg_MAxx_proc(void* param_0);
void dKy_change_colpat(u8 colpat);
void dKy_BossLight_set(cXyz* param_0, _GXColor* param_1, f32 param_2, u8 param_3);
void dKy_custom_colset(u8 prevGather, u8 curGather, f32 blend);
void dKy_setLight();
cXyz dKy_plight_near_pos();
void dKy_BossSpotLight_set(cXyz* param_0, f32 param_1, f32 param_2, f32 param_3, _GXColor* param_4,
                           f32 param_5, u8 param_6, u8 param_7);

struct LIGHT_INFLUENCE {
    /* 800CFC7C */ ~LIGHT_INFLUENCE() {}
    /* 8019F4F8 */ LIGHT_INFLUENCE() {}

    /* 0x00 */ cXyz mPosition;
    /* 0x0C */ GXColorS10 mColor;
    /* 0x14 */ f32 mPow;
    /* 0x18 */ f32 mFluctuation;
    /* 0x1C */ int mIndex;
};

struct WIND_INFLUENCE {
    /* 0x00 */ cXyz position;
    /* 0x0C */ cXyz mDirection;
    /* 0x18 */ f32 mRadius;
    /* 0x1C */ f32 mStrength;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ int field_0x24;
    /* 0x28 */ u8 mConstant;
    /* 0x29 */ u8 field_0x29;
};

struct WIND_INF_ENTITY {
    /* 8019F4B8 */ ~WIND_INF_ENTITY();
    /* 8019F4F4 */ WIND_INF_ENTITY();

    /* 0x00 */ u8 mInUse;
    /* 0x04 */ f32 mMinRadius;
    /* 0x08 */ f32 mSpeed;
    /* 0x0C */ f32 mStrengthMaxVel;
    /* 0x10 */ WIND_INFLUENCE mInfluence;
};  // Size: 0x3C

struct EFLIGHT_PROC {
    /* 0x00 */ u8 mState;
    /* 0x01 */ u8 mFrame;
    /* 0x04 */ int mLightType;
    /* 0x08 */ LIGHT_INFLUENCE field_0x8;
};

struct SND_INFLUENCE {
    /* 0x00 */ cXyz field_0x0;
    /* 0x0C */ int field_0xc;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ u32 field_0x14;
};

struct DALKMIST_INFLUENCE {
    /* 0x00 */ u8 field_0x0[0x10];
};

struct DUNGEON_LIGHT {
    /* 8019F478 */ ~DUNGEON_LIGHT();
    /* 8019F4B4 */ DUNGEON_LIGHT();

    /* 0x00 */ cXyz mPosition;
    /* 0x0C */ GXColor mColor;
    /* 0x10 */ f32 mRefDistance;
    /* 0x14 */ u8 field_0x14[4];
    /* 0x18 */ f32 mCutoffAngle;
    /* 0x1C */ f32 mAngleX;
    /* 0x20 */ f32 mAngleY;
    /* 0x24 */ u8 mAngleAttenuation;
    /* 0x25 */ u8 mDistAttenuation;
    /* 0x26 */ u8 field_0x26[6];
    /* 0x2C */ LIGHT_INFLUENCE field_0x2c;
};  // Size: 0x4C

struct BOSS_LIGHT {
    /* 8019F438 */ ~BOSS_LIGHT();
    /* 8019F474 */ BOSS_LIGHT();

    /* 0x00 */ cXyz mPos;
    /* 0x0C */ GXColor mColor;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ u8 field_0x24;
    /* 0x25 */ u8 field_0x25;
    /* 0x26 */ u8 field_0x26;
};  // Size: 0x28

struct GB_WIND_INFLUENCE {
    /* 0x00 */ cXyz vec;
    /* 0x0C */ int field_0xc;
    /* 0x10 */ f32 pow;
};

struct EF_THUNDER {
    /* 0x00 */ u8 mStatus;
    /* 0x01 */ u8 mStateTimer;
    /* 0x02 */ u8 field_0x2;
    /* 0x04 */ int mMode;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u8 field_0x20[4];
    /* 0x24 */ LIGHT_INFLUENCE mLightInfluence;
};

struct GB_MAPLE_COL_CHANGE {
    /* 8019F400 */ GB_MAPLE_COL_CHANGE();

    /* 0x00 */ J3DLightObj field_0x0;
};  // Size: 0x74

// most of these members are guesses, fix later
struct LightStatus {
    /* 0x00 */ Vec field_0x0;
    /* 0x0C */ Vec field_0xc;
    /* 0x18 */ GXColor field_0x18;
    /* 0x1C */ Vec field_0x1c;
    /* 0x28 */ Vec field_0x28;
    /* 0x34 */ f32 field_0x34;
    /* 0x38 */ Vec mLightDir;
    /* 0x44 */ f32 mCutoff;
    /* 0x48 */ GXSpotFn mSpotFn;
    /* 0x4C */ f32 mRefDist;
    /* 0x50 */ f32 mRefBrightness;
    /* 0x54 */ GXDistAttnFn mDistFn;
    /* 0x58 */ u32 field_0x58[2][6];  //?
    /* 0x88 */ f32 field_0x88;
    /* 0x8C */ f32 field_0x8c;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ u32 field_0x98[2][8];  //?
    /* 0xD8 */ f32 field_0xd8;
    /* 0xDC */ f32 field_0xdc;
    /* 0xE0 */ f32 field_0xe0;
    /* 0xE4 */ f32 field_0xe4;
};  // Size: 0xE8

class dKy_tevstr_c {
public:
    /* 0x000 */ J3DLightObj mLightObj;
    /* 0x074 */ J3DLightObj field_0x074[6];
    /* 0x32C */ cXyz field_0x32c;
    /* 0x338 */ cXyz mLightPosWorld;
    /* 0x344 */ f32 field_0x344;
    /* 0x348 */ GXColorS10 mColorC0;
    /* 0x350 */ GXColorS10 mColorK0;
    /* 0x358 */ GXColorS10 mFogColor;
    /* 0x360 */ u8 field_0x360;
    /* 0x361 */ u8 field_0x361;
    /* 0x362 */ u8 field_0x362;
    /* 0x363 */ u8 field_0x363;
    /* 0x364 */ u8 field_0x364;
    /* 0x365 */ u8 field_0x365;
    /* 0x366 */ u8 field_0x366;
    /* 0x367 */ u8 field_0x367;
    /* 0x368 */ f32 mFogStartZ;
    /* 0x36C */ f32 mFogEndZ;
    /* 0x370 */ f32 field_0x370;
    /* 0x374 */ f32 field_0x374;
    /* 0x378 */ u16 field_0x378;
    /* 0x37A */ u8 field_0x37a;
    /* 0x37B */ u8 mInitTimer;
    /* 0x37C */ u8 mEnvrIdxCurr;
    /* 0x37D */ u8 mEnvrIdxPrev;
    /* 0x37E */ u8 mColpatCurr;
    /* 0x37F */ u8 mColpatPrev;
    /* 0x380 */ s8 mRoomNo;
    /* 0x381 */ u8 mEnvrIdxOverride;
    /* 0x382 */ u8 mLightMode;
    /* 0x383 */ u8 mInitType;
    /* 0x384 */ u8 field_0x384;
    /* 0x385 */ u8 field_0x385;
};  // Size = 0x388

STATIC_ASSERT(sizeof(dKy_tevstr_c) == 0x388);

class fopAc_ac_c;
class dKyd_lightSchejule;
class stage_palette_info_class;
class stage_pselect_info_class;
class stage_envr_info_class;
class stage_vrbox_info_class;
class stage_plight_info_class;

struct dKy_pol_arg_struct {
    u8 data[8];
};

struct dKy_color_data_struct {
    u8 data[8];
};

struct dKy_pol_efftbl_struct {
    u8 data[8];
};

struct dKy_pol_effcol_struct {
    u8 data[8];
};

struct dKy_pol_sound_struct {
    u8 data[8];
};

class dScnKy_env_light_c {
public:
    /* 8019F2E8 */ dScnKy_env_light_c();
    /* 8019F4FC */ void setDaytime();
    /* 8019F788 */ void setSunpos();
    /* 8019FA08 */ f32 getDaytime();
    /* 8019FBCC */ f32 getDarkDaytime();
    /* 8019FBD4 */ void setLight_palno_get(u8*, u8*, u8*, u8*, u8*, u8*, u8*, u8*, f32*, int*, int*,
                                           f32*, u8*);
    /* 801A040C */ void setLight();
    /* 801A133C */ void setLight_bg(dKy_tevstr_c*, _GXColorS10*, _GXColorS10*, f32*, f32*);
    /* 801A16C0 */ void setLight_actor(dKy_tevstr_c*, _GXColorS10*, f32*, f32*);
    /* 801A1D64 */ void settingTevStruct_colget_actor(cXyz*, dKy_tevstr_c*, _GXColorS10*,
                                                      _GXColorS10*, f32*, f32*);
    /* 801A1F58 */ void settingTevStruct_colget_player(dKy_tevstr_c*);
    /* 801A2128 */ void settingTevStruct_plightcol_plus(cXyz*, dKy_tevstr_c*, _GXColorS10,
                                                        _GXColorS10, u8);
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A441C */ void setLightTevColorType(J3DModelData*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
    /* 801A4E90 */ void CalcTevColor();
    /* 801A4F24 */ void Sndpos();
    /* 801A4F64 */ void Eflight_flush_proc();
    /* 801A516C */ void SetBaseLight();
    /* 801A5288 */ void exeKankyo();
    /* 801A56DC */ void drawKankyo();

    /* 801ADBBC */ virtual ~dScnKy_env_light_c();

    void setLightTevColorType_MAJI(J3DModel* i_model, dKy_tevstr_c* tevstr) {
        setLightTevColorType_MAJI(i_model->getModelData(), tevstr);
    }

public:
    /* 0x0000 */  // vtable
    /* 0x0004 */ stage_palette_info_class* mpDmPalet;
    /* 0x0008 */ stage_pselect_info_class* mpDmPselect;
    /* 0x000C */ stage_envr_info_class* mpDmEnvr;
    /* 0x0010 */ stage_vrbox_info_class* mpDmVrbox;
    /* 0x0014 */ dKyd_lightSchejule* mpSchedule;
    /* 0x0018 */ LIGHT_INFLUENCE mBaseLightInfluence;
    /* 0x0038 */ LIGHT_INFLUENCE mLightInfluence[30];
    /* 0x03F8 */ LIGHT_INFLUENCE* mPointLight[100];
    /* 0x0588 */ LIGHT_INFLUENCE* mEfPLight[5];
    /* 0x059C */ u8 field_0x59c[400];
    /* 0x072C */ LIGHT_INFLUENCE* field_0x72c[5];
    /* 0x0740 */ LIGHT_INFLUENCE field_0x740;
    /* 0x0760 */ u8 field_0x760[4];
    /* 0x0764 */ LIGHT_INFLUENCE mBGpartsActiveLight[2];
    /* 0x07A4 */ EFLIGHT_PROC mSwordLight;
    /* 0x07CC */ stage_plight_info_class* stagPlightInfo;  // might be part of EFLIGHT_PROC
    /* 0x07D0 */ WIND_INFLUENCE* mPntWind[30];
    /* 0x0848 */ WIND_INF_ENTITY mWindInfluenceEntity[5];
    /* 0x0974 */ SND_INFLUENCE mSound;
    /* 0x098C */ u8 field_0x98c;  // often set to room no
    /* 0x0990 */ DALKMIST_INFLUENCE* mDalkmistInf[10];
    /* 0x09B8 */ DUNGEON_LIGHT mDungeonLights[8];
    /* 0x0C18 */ BOSS_LIGHT field_0x0c18[8];
    /* 0x0D58 */ BOSS_LIGHT field_0x0d58[6];
    /* 0x0E48 */ GB_WIND_INFLUENCE mWind;
    /* 0x0E5C */ f32 custom_windpower;
    /* 0x0E60 */ f32 field_0xe60;
    /* 0x0E64 */ u16 field_0xe64;
    /* 0x0E66 */ u16 field_0xe66;
    /* 0x0E68 */ s16 mEvtWindAngleX;
    /* 0x0E6A */ s16 mEvtWindAngleY;
    /* 0x0E6C */ u8 field_0xe6c;
    /* 0x0E6D */ u8 mEvtWindSet;
    /* 0x0E6E */ u8 mTeachWindExist;
    /* 0x0E6F */ u8 field_0xe6f;
    /* 0x0E70 */ bool mSunInitialized;
    /* 0x0E74 */ dKankyo_sun_Packet* mpSunPacket;
    /* 0x0E78 */ dKankyo_sunlenz_Packet* mpSunLenzPacket;
    /* 0x0E7C */ bool mRainInitialized;
    /* 0x0E80 */ int mRainCount;
    /* 0x0E84 */ dKankyo_rain_Packet* mpRainPacket;
    /* 0x0E88 */ bool mSnowInitialized;
    /* 0x0E8C */ int mSnowCount;
    /* 0x0E90 */ u8 field_0xe90;
    /* 0x0E91 */ u8 field_0xe91;
    /* 0x0E92 */ bool field_0xe92;
    /* 0x0E94 */ dKankyo_snow_Packet* mpSnowPacket;
    /* 0x0E98 */ bool mStarInitialized;
    /* 0x0E9C */ int mStarCount;
    /* 0x0EA0 */ f32 mStarDensity;
    /* 0x0EA4 */ dKankyo_star_Packet* mpStarPacket;
    /* 0x0EA8 */ bool mHousiInitialized;
    /* 0x0EA9 */ u8 field_0xea9;
    /* 0x0EAC */ int mHousiCount;
    /* 0x0EB0 */ dKankyo_housi_Packet* mpHousiPacket;
    /* 0x0EB4 */ u8 mCloudInitialized;
    /* 0x0EB5 */ u8 mMoyaMode;
    /* 0x0EB8 */ int mMoyaCount;
    /* 0x0EBC */ f32 field_0xebc;
    /* 0x0EC0 */ dKankyo_cloud_Packet* mpCloudPacket;
    /* 0x0EC4 */ u8 mVrkumoStatus;
    /* 0x0EC8 */ int mVrkumoCount;
    /* 0x0ECC */ f32 field_0xecc;
    /* 0x0ED0 */ dKankyo_vrkumo_Packet* mpVrkumoPacket;
    /* 0x0ED4 */ EF_THUNDER mThunderEff;
    /* 0x0F18 */ u8 field_0xf18[4];
    /* 0x0F1C */ dKankyo_shstar_Packet* mpShstarPacket;
    /* 0x0F20 */ u8 mOdourPacketStatus;
    /* 0x0F21 */ u8 field_0xf21;
    /* 0x0F24 */ int field_0xf24;
    /* 0x0F28 */ dKankyo_odour_Packet* mpOdourPacket;
    /* 0x0F2C */ u8 field_0xf2c;
    /* 0x0F30 */ J3DModel* field_0xf30;
    /* 0x0F34 */ f32 field_0xf34;
    /* 0x0F38 */ JKRSolidHeap* field_0xf38;
    /* 0x0F3C */ u8 field_0xf3c;
    /* 0x0F3D */ u8 field_0xf3d;
    /* 0x0F40 */ f32 field_0xf40;
    /* 0x0F44 */ JPABaseEmitter* field_0xf44;
    /* 0x0F48 */ JPABaseEmitter* field_0xf48;
    /* 0x0F4C */ JPABaseEmitter* field_0xf4c;
    /* 0x0F50 */ GB_MAPLE_COL_CHANGE field_0xf50[2];
    /* 0x1038 */ u8 field_0x1038;
    /* 0x103C */ int field_0x103c;
    /* 0x1040 */ u8 field_0x1040[4];
    /* 0x1044 */ u8 mMudInitialized;
    /* 0x1048 */ int field_0x1048;
    /* 0x104C */ dKankyo_mud_Packet* mpMudPacket;
    /* 0x1050 */ u8 mEvilInitialized;
    /* 0x1051 */ u8 field_0x1051;
    /* 0x1054 */ int field_0x1054;
    /* 0x1058 */ dKankyo_evil_Packet* mpEvilPacket;
    /* 0x105C */ mDoExt_btkAnm* field_0x105c;
    /* 0x1060 */ fopAc_ac_c* field_0x1060;
    /* 0x1064 */ f32 field_0x1064;
    /* 0x1068 */ f32 field_0x1068;
    /* 0x106C */ f32 field_0x106c;
    /* 0x1070 */ cXyz mSunPos2;
    /* 0x107C */ cXyz mPLightNearPos;
    /* 0x1088 */ cXyz mSunPos;
    /* 0x1094 */ cXyz mMoonPos;
    /* 0x10A0 */ cXyz field_0x10a0;
    /* 0x10AC */ GXFogAdjTable mXFogTbl;
    /* 0x10C0 */ GXColorS10 mSkyColor;
    /* 0x10C8 */ GXColorS10 mUpperCloudColor;
    /* 0x10D0 */ GXColorS10 mUnderCloudColor;
    /* 0x10D8 */ GXColorS10 mUnderCloudShadowColor;
    /* 0x10E0 */ GXColorS10 mCloudOuterHazeColor;
    /* 0x10E8 */ GXColorS10 mCloudInnerHazeColor;
    /* 0x10F0 */ s16 field_0x10f0;
    /* 0x10F2 */ s16 field_0x10f2;
    /* 0x10F4 */ s16 field_0x10f4;
    /* 0x10F6 */ s16 field_0x10f6;
    /* 0x10F8 */ s16 field_0x10f8;
    /* 0x10FA */ s16 field_0x10fa;
    /* 0x10FC */ s16 field_0x10fc;
    /* 0x10FE */ s16 field_0x10fe;
    /* 0x1100 */ _GXColorS10 mActorAmbience;
    /* 0x1108 */ _GXColorS10 mTerrainAmbienceBG0;
    /* 0x1110 */ s16 mTerrainAmbienceBG1_R;
    /* 0x1112 */ s16 mTerrainAmbienceBG1_G;
    /* 0x1114 */ s16 mTerrainAmbienceBG1_B;
    /* 0x1116 */ s16 mWaterSurfaceAlphaA;
    /* 0x1118 */ s16 mTerrainAmbienceBG2_R;
    /* 0x111A */ s16 mTerrainAmbienceBG2_G;
    /* 0x111C */ s16 mTerrainAmbienceBG2_B;
    /* 0x111E */ s16 mAuxAlphaA2;
    /* 0x1120 */ s16 mTerrainAmbienceBG3_R;
    /* 0x1122 */ s16 mTerrainAmbienceBG3_G;
    /* 0x1124 */ s16 mTerrainAmbienceBG3_B;
    /* 0x1126 */ s16 mFakeFogA;
    /* 0x1128 */ GXColorS10 field_0x1128;
    /* 0x1130 */ u8 field_0x1130[0x28];
    /* 0x1158 */ GXColorS10 mFogColor;
    /* 0x1160 */ GXColorS10 mActorAddColAmb;
    /* 0x1168 */ u8 field_0x1168[8];
    /* 0x1170 */ GXColorS10 mBgAddColAmb;
    /* 0x1178 */ u8 field_0x1178[8];
    /* 0x1180 */ GXColorS10 mBg1AddColAmb;
    /* 0x1188 */ u8 field_0x1188[8];
    /* 0x1190 */ GXColorS10 mBg2AddColAmb;
    /* 0x1198 */ u8 field_0x1198[8];
    /* 0x11A0 */ GXColorS10 mBg3AddColAmb;
    /* 0x11A8 */ u8 field_0x11a8[8];
    /* 0x11B0 */ GXColorS10 mFogAddCol;
    /* 0x11B8 */ GXColorS10 mVrboxAddcolSky0;
    /* 0x11C0 */ GXColorS10 mVrboxAddcolKasumi;
    /* 0x11C8 */ f32 field_0x11c8;
    /* 0x11CC */ f32 field_0x11cc;
    /* 0x11D0 */ f32 field_0x11d0;
    /* 0x11D4 */ f32 mDiceWeatherChangeTime;
    /* 0x11D8 */ f32 mDiceWeatherTime;
    /* 0x11DC */ f32 mColPatBlend;
    /* 0x11E0 */ f32 mColPatBlendGather;
    /* 0x11E4 */ f32 mFogNear;
    /* 0x11E8 */ f32 mFogFar;
    /* 0x11EC */ f32 field_0x11ec;
    /* 0x11F0 */ f32 field_0x11f0;
    /* 0x11F4 */ f32 field_0x11f4;
    /* 0x11F8 */ f32 mColAllcolRatio;
    /* 0x11FC */ f32 mColActColRatio;
    /* 0x1200 */ f32 mColBgColRatio;
    /* 0x1204 */ f32 mColFogColRatio;
    /* 0x1208 */ f32 mColVrboxSoraColRatio;
    /* 0x120C */ f32 mColVrboxKumocolRatio;
    /* 0x1210 */ f32 field_0x1210;
    /* 0x1214 */ f32 mAllcolRatio;
    /* 0x1218 */ f32 mActcolRatio;
    /* 0x121C */ f32 mBgcolRatio;
    /* 0x1220 */ f32 mFogcolRatio;
    /* 0x1224 */ f32 mVrboxSoracolRatio;
    /* 0x1228 */ f32 mVrboxKumocolRatio;
    /* 0x122C */ f32 field_0x122c;
    /* 0x1230 */ f32 field_0x1230;
    /* 0x1234 */ f32 field_0x1234;
    /* 0x1238 */ f32 field_0x1238;
    /* 0x123C */ f32 field_0x123c;
    /* 0x1240 */ f32 field_0x1240;
    /* 0x1244 */ f32 mDaytime;
    /* 0x1248 */ f32 mNexttime;
    /* 0x124C */ f32 mTimeSpeed;
    /* 0x1250 */ f32 mDarkDaytime;
    /* 0x1254 */ f32 field_0x1254;
    /* 0x1258 */ f32 field_0x1258;
    /* 0x125C */ f32 mPaletteTerrainLightEffect;
    /* 0x1260 */ f32 mGrassLightEffectRate;
    /* 0x1264 */ f32 field_0x1264;
    /* 0x1268 */ f32 field_0x1268;
    /* 0x126C */ f32 field_0x126c;
    /* 0x1270 */ f32 mDemoAttentionPoint;
    /* 0x1274 */ f32 mTime;  // ?
    /* 0x1278 */ f32 field_0x1278;
    /* 0x127C */ f32 field_0x127c;
    /* 0x1280 */ int field_0x1280;
    /* 0x1284 */ u8 field_0x1284[4];
    /* 0x1288 */ u32 mMoyaSE;
    /* 0x128C */ u8 field_0x128c[12];
    /* 0x1298 */ int mDiceWeatherCounter;
    /* 0x129C */ int mRainCountOrig;
    /* 0x12A0 */ int field_0x12a0;
    /* 0x12A4 */ int mPlayerPLightIdx;
    /* 0x12A8 */ int mPlayerEfLightIdx;
    /* 0x12AC */ u8 field_0x12ac[4];
    /* 0x12B0 */ int field_0x12b0;
    /* 0x12B4 */ int mSchbitTimer;
    /* 0x12B8 */ u8 field_0x12b8[4];
    /* 0x12BC */ u16 mFogAdjCenter;
    /* 0x12BE */ u16 mDate;
    /* 0x12C0 */ u16 mActorLightEffect;
    /* 0x12C2 */ u8 mColPatPrev;
    /* 0x12C3 */ u8 mColPatCurr;
    /* 0x12C4 */ u8 mColpatPrevGather;
    /* 0x12C5 */ u8 mColpatCurrGather;
    /* 0x12C6 */ s8 mNowRoom;
    /* 0x12C7 */ u8 mEnvrIdxCurr;
    /* 0x12C8 */ u8 mColpatWeather;
    /* 0x12C9 */ u8 mDiceWeatherMode;
    /* 0x12CA */ u8 mDiceWeatherState;
    /* 0x12CB */ u8 mDiceWeatherCurrPattern;
    /* 0x12CC */ u8 field_0x12cc;
    /* 0x12CD */ u8 mColPatMode;
    /* 0x12CE */ u8 mColPatModeGather;
    /* 0x12CF */ u8 mFogAdjEnable;
    /* 0x12D0 */ u8 mFogAdjTableType;
    /* 0x12D1 */ u8 mItemGetCol_chg;
    /* 0x12D2 */ u8 mInitAnmTimer;
    /* 0x12D3 */ u8 mSchBit;
    /* 0x12D4 */ bool mVrboxInvisible;
    /* 0x12D5 */ u8 mContrastFlag;
    /* 0x12D6 */ u8 field_0x12d6;
    /* 0x12D7 */ u8 mShadowMode;
    /* 0x12D8 */ u8 mCameraInWater;
    /* 0x12DC */ dKy_pol_efftbl_struct* mResPolEfftbl;
    /* 0x12E0 */ dKy_pol_effcol_struct* mResPolEffcol;
    /* 0x12E4 */ dKy_pol_efftbl_struct* mResPolEfftbl2;
    /* 0x12E8 */ dKy_pol_effcol_struct* mResPolEffcol2;
    /* 0x12EC */ dKy_pol_sound_struct* mResPolSound;
    /* 0x12F0 */ dKy_pol_arg_struct* mResPolArg;
    /* 0x12F4 */ dKy_color_data_struct* mResColorDataTbl;
    /* 0x12F8 */ s8 mFogDensity;
    /* 0x12F9 */ u8 field_0x12f9;
    /* 0x12FA */ u8 field_0x12fa;
    /* 0x12FB */ u8 field_0x12fb;
    /* 0x12FC */ s8 field_0x12fc;
    /* 0x12FD */ u8 mDarktimeWeek;
    /* 0x12FE */ u8 field_0x12fe;
    /* 0x1300 */ s16 field_0x1300;
    /* 0x1302 */ s16 field_0x1302;
    /* 0x1304 */ f32 mWaterSurfaceShineRate;
    /* 0x1308 */ u8 field_0x1308;
    /* 0x1309 */ u8 field_0x1309;
    /* 0x130A */ u8 field_0x130a;
    /* 0x130B */ u8 field_0x130b;
    /* 0x130C */ u8 field_0x130c;
};  // Size: 0x1310

extern dScnKy_env_light_c g_env_light;

STATIC_ASSERT(sizeof(dScnKy_env_light_c) == 4880);

inline dScnKy_env_light_c* i_dKy_getEnvlight() {
    return &g_env_light;
}

u8 dKy_darkworld_stage_check(char const*, int);
BOOL dKy_withwarp_capture_check();
bool dKy_darkworld_check();
void dKy_undwater_filter_draw();
BOOL dKy_camera_water_in_status_check();
static int dKy_Outdoor_check();
s32 dKy_getdaytime_hour();
s32 dKy_getdaytime_minute();
s32 dKy_get_dayofweek();
static void dKy_Sound_init();
void dKy_setLight_nowroom(char);
void dKy_setLight_nowroom_actor(dKy_tevstr_c*);
void dKy_setLight_again();
void dKy_GxFog_tevstr_set(dKy_tevstr_c*);
void dKy_plight_set(LIGHT_INFLUENCE* param_0);
void dKy_plight_priority_set(LIGHT_INFLUENCE* param_0);
void dKy_tevstr_init(dKy_tevstr_c* param_0, s8 param_1, u8 param_2);
SND_INFLUENCE* dKy_Sound_get();
void dKy_plight_cut(LIGHT_INFLUENCE* param_0);

#endif /* D_KANKYO_D_KANKYO_H */
