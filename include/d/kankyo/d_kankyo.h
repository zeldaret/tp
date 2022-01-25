#ifndef D_KANKYO_D_KANKYO_H
#define D_KANKYO_D_KANKYO_H

#include "JSystem/J3DGraphAnimator/J3DModelData.h"
#include "JSystem/J3DGraphBase/J3DStruct.h"
#include "JSystem/JParticle/JPAParticle.h"
#include "SSystem/SComponent/c_sxyz.h"
#include "SSystem/SComponent/c_xyz.h"
#include "d/kankyo/d_kankyo_wether.h"
#include "dolphin/gx/GX.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_ext.h"

void dKankyo_DayProc();
void dKy_set_nexttime(f32);

struct LIGHT_INFLUENCE {
    /* 800CFC7C */ ~LIGHT_INFLUENCE();
    /* 8019F4F8 */ LIGHT_INFLUENCE();

    /* 0x00 */ cXyz mPosition;
    /* 0x0C */ GXColorS10 mColor;
    /* 0x14 */ f32 mPow;
    /* 0x18 */ f32 mFluctuation;  // ?
    /* 0x1C */ int field_0x1c;
};

struct WIND_INFLUENCE {
    /* 0x00 */ cXyz field_0x00;
    /* 0x0C */ cXyz field_0x0c;
    /* 0x18 */ u8 field_0x18[0xC];
    /* 0x24 */ int field_0x24;
    /* 0x28 */ u8 field_0x28;
    /* 0x29 */ u8 field_0x29;
};

struct WIND_INF_ENTITY {
    /* 8019F4B8 */ ~WIND_INF_ENTITY();
    /* 8019F4F4 */ WIND_INF_ENTITY();

    /* 0x00 */ u8 field_0x0[0x10];
    /* 0x10 */ WIND_INFLUENCE field_0x10;
};  // Size: 0x3C

struct EFLIGHT_PROC {
    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x04 */ int field_0x4;
    /* 0x08 */ u8 field_0x8[0x20];  // LIGHT_INFLUENCE?
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
    /* 0x2C */  // LIGHT_INFLUENCE field_0x2c; this breaks ctor for some reason
    u8 field_0x2c[0x20];
};  // Size: 0x4C

struct BOSS_LIGHT {
    /* 8019F438 */ ~BOSS_LIGHT();
    /* 8019F474 */ BOSS_LIGHT();

    /* 0x00 */ cXyz field_0x0;
    /* 0x0C */ int field_0xc;
    /* 0x10 */ int field_0x10;
    /* 0x14 */ int field_0x14;
    /* 0x18 */ int field_0x18;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ int field_0x20;
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
    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u8 field_0x2;
    /* 0x04 */ int field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u8 field_0x20[4];
    /* 0x24 */ u8 field_0x24[0x20];  // LIGHT_INFLUENCE?
};

struct GB_MAPLE_COL_CHANGE {
    /* 8019F400 */ GB_MAPLE_COL_CHANGE();

    /* 0x00 */ J3DLightObj field_0x0;
};  // Size: 0x74

class dKy_tevstr_c {
public:
    /* 0x000 */ J3DLightObj field_0x000;
    /* 0x074 */ J3DLightObj field_0x074[6];
    /* 0x32C */ cXyz field_0x32c;
    /* 0x338 */ cXyz field_0x338;
    /* 0x344 */ f32 field_0x344;
    /* 0x348 */ int field_0x348;
    /* 0x34C */ int field_0x34c;
    /* 0x350 */ int field_0x350;
    /* 0x354 */ int field_0x354;
    /* 0x358 */ u16 field_0x358;
    /* 0x35A */ u16 field_0x35a;
    /* 0x35C */ u16 field_0x35c;
    /* 0x35E */ u8 field_0x35e[2];
    /* 0x360 */ u8 field_0x360;
    /* 0x361 */ u8 field_0x361;
    /* 0x362 */ u8 field_0x362;
    /* 0x363 */ u8 field_0x363;
    /* 0x364 */ u8 field_0x364;
    /* 0x365 */ u8 field_0x365;
    /* 0x366 */ u8 field_0x366;
    /* 0x367 */ u8 field_0x367;
    /* 0x368 */ f32 field_0x368;
    /* 0x36C */ f32 field_0x36c;
    /* 0x370 */ f32 field_0x370;
    /* 0x374 */ f32 field_0x374;
    /* 0x378 */ u16 field_0x378;
    /* 0x37A */ u8 field_0x37a;
    /* 0x37B */ u8 field_0x37b;
    /* 0x37C */ u8 field_0x37c;
    /* 0x37D */ u8 field_0x37d;
    /* 0x37E */ u8 field_0x37e;
    /* 0x37F */ u8 field_0x37f;
    /* 0x380 */ u8 field_0x380;
    /* 0x381 */ u8 field_0x381;
    /* 0x382 */ u8 field_0x382;
    /* 0x383 */ u8 field_0x383;
    /* 0x384 */ u8 field_0x384;
    /* 0x385 */ u8 field_0x385;
};  // Size = 0x388?

STATIC_ASSERT(sizeof(dKy_tevstr_c) == 0x388);

class fopAc_ac_c;

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

public:
    /* 0x0000 */  // vtable
    /* 0x0004 */ void* mpDmPalet;
    /* 0x0008 */ void* mpDmPselect;
    /* 0x000C */ void* mpDmEnvr;
    /* 0x0010 */ void* mpDmVrbox;
    /* 0x0014 */ void* mpSchedule;
    /* 0x0018 */ u8 field_0x18[0x20];  // LIGHT_INFLUENCE?
    /* 0x0038 */ LIGHT_INFLUENCE field_0x38[30];
    /* 0x03F8 */ LIGHT_INFLUENCE* mPointLight[100];
    /* 0x0588 */ LIGHT_INFLUENCE* mEfPLight[5];
    /* 0x059C */ u8 field_0x59c[400];
    /* 0x072C */ LIGHT_INFLUENCE* field_0x72c[5];
    /* 0x0740 */ u8 field_0x740[0x20];  // LIGHT_INFLUENCE?
    /* 0x0760 */ u8 field_0x760[4];
    /* 0x0764 */ LIGHT_INFLUENCE mBGpartsActiveLight[2];
    /* 0x07A4 */ EFLIGHT_PROC field_0x7a4;
    /* 0x07CC */ void* stagPlightInfo;  // might be part of EFLIGHT_PROC
    /* 0x07D0 */ WIND_INFLUENCE* mPntWind[30];
    /* 0x0848 */ WIND_INF_ENTITY field_0x848[5];
    /* 0x0974 */ SND_INFLUENCE mSound;
    /* 0x098C */ u8 field_0x98c;
    /* 0x0990 */ DALKMIST_INFLUENCE* mDalkmistInf[10];
    /* 0x09B8 */ DUNGEON_LIGHT mDungeonLights[8];
    /* 0x0C18 */ BOSS_LIGHT field_0x0c18[8];
    /* 0x0D58 */ BOSS_LIGHT field_0x0d58[6];
    /* 0x0E48 */ GB_WIND_INFLUENCE mWind;
    /* 0x0E5C */ f32 custom_windpower;
    /* 0x0E60 */ f32 field_0xe60;
    /* 0x0E64 */ u16 field_0xe64;
    /* 0x0E66 */ u16 field_0xe66;
    /* 0x0E68 */ s16 field_0xe68;
    /* 0x0E6A */ s16 field_0xe6a;
    /* 0x0E6C */ u8 field_0xe6c;
    /* 0x0E6D */ u8 field_0xe6d;
    /* 0x0E6E */ u8 field_0xe6e;  // E5C - E6E might all be part of GB_WIND_INFLUENCE
    /* 0x0E6F */ u8 field_0xe6f;
    /* 0x0E70 */ bool mSunPacketEnabled;
    /* 0x0E74 */ dKankyo_sun_Packet* mpSunPacket;
    /* 0x0E78 */ dKankyo_sunlenz_Packet* mpSunLenzPacket;
    /* 0x0E7C */ bool mRainPacketEnabled;
    /* 0x0E80 */ int mRainCount;
    /* 0x0E84 */ dKankyo_rain_Packet* mpRainPacket;
    /* 0x0E88 */ bool mSnowPacketEnabled;
    /* 0x0E8C */ int mSnowCount;
    /* 0x0E90 */ u8 field_0xe90;
    /* 0x0E91 */ u8 field_0xe91;
    /* 0x0E92 */ bool field_0xe92;
    /* 0x0E94 */ dKankyo_snow_Packet* mpSnowPacket;
    /* 0x0E98 */ bool mStarPacketEnabled;
    /* 0x0E9C */ int mStarCount;
    /* 0x0EA0 */ f32 mStarDensity;
    /* 0x0EA4 */ dKankyo_star_Packet* mpStarPacket;
    /* 0x0EA8 */ bool mHousiPacketEnabled;
    /* 0x0EA9 */ u8 field_0xea9;
    /* 0x0EAC */ int field_0xeac;
    /* 0x0EB0 */ dKankyo_housi_Packet* mpHousiPacket;
    /* 0x0EB4 */ u8 mCloudPacketEnabled;
    /* 0x0EB5 */ u8 field_0xeb5;
    /* 0x0EB8 */ int field_0xeb8;
    /* 0x0EBC */ f32 field_0xebc;
    /* 0x0EC0 */ dKankyo_cloud_Packet* mpCloudPacket;
    /* 0x0EC4 */ u8 field_0xec4;
    /* 0x0EC8 */ int field_0xec8;
    /* 0x0ECC */ f32 field_0xecc;
    /* 0x0ED0 */ dKankyo_vrkumo_Packet* mpVrkumoPacket;
    /* 0x0ED4 */ EF_THUNDER field_0xed4;
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
    /* 0x1044 */ u8 mMudPacketEnabled;
    /* 0x1048 */ int field_0x1048;
    /* 0x104C */ dKankyo_mud_Packet* mpMudPacket;
    /* 0x1050 */ u8 mEvilPacketEnabled;
    /* 0x1051 */ u8 field_0x1051;
    /* 0x1054 */ int field_0x1054;
    /* 0x1058 */ dKankyo_evil_Packet* mpEvilPacket;
    /* 0x105C */ mDoExt_btkAnm* field_0x105c;
    /* 0x1060 */ fopAc_ac_c* field_0x1060;
    /* 0x1064 */ f32 field_0x1064;
    /* 0x1068 */ f32 field_0x1068;
    /* 0x106C */ f32 field_0x106c;
    /* 0x1070 */ cXyz field_0x1070;
    /* 0x107C */ cXyz mPLightNearPos;
    /* 0x1088 */ cXyz field_0x1088;
    /* 0x1094 */ cXyz field_0x1094;
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
    /* 0x1128 */ _GXColorS10 field_0x1128;
    /* 0x1130 */ u8 field_0x1130[0x28];
    /* 0x1158 */ _GXColorS10 mFogColor;
    /* 0x1160 */ s16 field_0x1160;
    /* 0x1162 */ s16 field_0x1162;
    /* 0x1164 */ s16 field_0x1164;
    /* 0x1166 */ u8 field_0x1166[10];
    /* 0x1170 */ s16 field_0x1170;
    /* 0x1172 */ s16 field_0x1172;
    /* 0x1174 */ s16 field_0x1174;
    /* 0x1176 */ u8 field_0x1176[10];
    /* 0x1180 */ s16 field_0x1180;
    /* 0x1182 */ s16 field_0x1182;
    /* 0x1184 */ s16 field_0x1184;
    /* 0x1186 */ u8 field_0x1186[10];
    /* 0x1190 */ s16 field_0x1190;
    /* 0x1192 */ s16 field_0x1192;
    /* 0x1194 */ s16 field_0x1194;
    /* 0x1196 */ u8 field_0x1196[10];
    /* 0x11A0 */ s16 field_0x11a0;
    /* 0x11A2 */ s16 field_0x11a2;
    /* 0x11A4 */ s16 field_0x11a4;
    /* 0x11A6 */ u8 field_0x11a6[10];
    /* 0x11B0 */ s16 field_0x11b0;
    /* 0x11B2 */ s16 field_0x11b2;
    /* 0x11B4 */ s16 field_0x11b4;
    /* 0x11B6 */ s16 field_0x11b6;
    /* 0x11B8 */ s16 field_0x11b8;
    /* 0x11BA */ s16 field_0x11ba;
    /* 0x11BC */ s16 field_0x11bc;
    /* 0x11BE */ u8 field_0x11be[2];
    /* 0x11C0 */ s16 field_0x11c0;
    /* 0x11C2 */ s16 field_0x11c2;
    /* 0x11C4 */ s16 field_0x11c4;
    /* 0x11C8 */ f32 field_0x11c8;
    /* 0x11CC */ f32 field_0x11cc;
    /* 0x11D0 */ f32 field_0x11d0;
    /* 0x11D4 */ f32 field_0x11d4;
    /* 0x11D8 */ f32 field_0x11d8;
    /* 0x11DC */ f32 field_0x11dc;
    /* 0x11E0 */ f32 field_0x11e0;
    /* 0x11E4 */ f32 mFogNear;
    /* 0x11E8 */ f32 mFogFar;
    /* 0x11EC */ f32 field_0x11ec;
    /* 0x11F0 */ f32 field_0x11f0;
    /* 0x11F4 */ f32 field_0x11f4;
    /* 0x11F8 */ f32 field_0x11f8;
    /* 0x11FC */ f32 field_0x11fc;
    /* 0x1200 */ f32 field_0x1200;
    /* 0x1204 */ f32 field_0x1204;
    /* 0x1208 */ f32 field_0x1208;
    /* 0x120C */ f32 field_0x120c;
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
    /* 0x1288 */ int field_0x1288;
    /* 0x128C */ u8 field_0x128c[12];
    /* 0x1298 */ int field_0x1298;
    /* 0x129C */ int field_0x129c;
    /* 0x12A0 */ int field_0x12a0;
    /* 0x12A4 */ int field_0x12a4;
    /* 0x12A8 */ int field_0x12a8;
    /* 0x12AC */ u8 field_0x12ac[4];
    /* 0x12B0 */ int field_0x12b0;
    /* 0x12B4 */ int field_0x12b4;
    /* 0x12B8 */ u8 field_0x12b8[4];
    /* 0x12BC */ u16 field_0x12bc;
    /* 0x12BE */ u16 mDate;
    /* 0x12C0 */ u16 mActorLightEffect;
    /* 0x12C2 */ u8 field_0x12c2;
    /* 0x12C3 */ u8 field_0x12c3;
    /* 0x12C4 */ u8 field_0x12c4;
    /* 0x12C5 */ u8 mWeatherPalette;
    /* 0x12C6 */ s8 mNowRoom;
    /* 0x12C7 */ u8 field_0x12c7;
    /* 0x12C8 */ u8 field_0x12c8;
    /* 0x12C9 */ u8 field_0x12c9;
    /* 0x12CA */ u8 field_0x12ca;
    /* 0x12CB */ u8 field_0x12cb;
    /* 0x12CC */ u8 field_0x12cc;
    /* 0x12CD */ u8 field_0x12cd;
    /* 0x12CE */ u8 field_0x12ce;
    /* 0x12CF */ u8 field_0x12cf;
    /* 0x12D0 */ u8 field_0x12d0;
    /* 0x12D1 */ u8 mItemGetCol_chg;
    /* 0x12D2 */ u8 field_0x12d2;
    /* 0x12D3 */ u8 field_0x12d3;
    /* 0x12D4 */ bool field_0x12d4;  // related to vrbox color
    /* 0x12D5 */ u8 field_0x12d5;
    /* 0x12D6 */ u8 field_0x12d6;
    /* 0x12D7 */ u8 mShadowMode;
    /* 0x12D8 */ u8 mCameraInWater;
    /* 0x12DC */ void* mResPolEfftbl;
    /* 0x12E0 */ void* mResPolEffcol;
    /* 0x12E4 */ void* mResPolEfftbl2;
    /* 0x12E8 */ void* mResPolEffcol2;
    /* 0x12EC */ void* mResPolSound;
    /* 0x12F0 */ void* mResPolArg;
    /* 0x12F4 */ void* mResColorDataTbl;
    /* 0x12F8 */ s8 mFogDensity;
    /* 0x12F9 */ u8 field_0x12f9;
    /* 0x12FA */ u8 field_0x12fa;
    /* 0x12FB */ u8 field_0x12fb;
    /* 0x12FC */ u8 field_0x12fc;
    /* 0x12FD */ u8 mDarktimeWeek;
    /* 0x12FE */ u8 field_0x12fe;
    /* 0x1300 */ u16 field_0x1300;
    /* 0x1302 */ u16 field_0x1302;
    /* 0x1304 */ f32 mWaterSurfaceShineRate;
    /* 0x1308 */ u8 field_0x1308;
    /* 0x1309 */ u8 field_0x1309;
    /* 0x130A */ u8 field_0x130a;
    /* 0x130B */ u8 field_0x130b;
    /* 0x130C */ u8 field_0x130c;
};  // Size: 0x1310

STATIC_ASSERT(sizeof(dScnKy_env_light_c) == 4880);

BOOL dKy_darkworld_stage_check(char const*, int);
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

#endif /* D_KANKYO_D_KANKYO_H */
