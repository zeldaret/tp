#ifndef D_KANKYO_D_KANKYO_H
#define D_KANKYO_D_KANKYO_H

#include "JSystem/J3DGraphBase/J3DStruct.h"
#include "d/d_kankyo_wether.h"
#include "f_pc/f_pc_base.h"
#include "m_Do/m_Do_ext.h"

class JPABaseEmitter;
class cBgS_PolyInfo;
class color_RGB_class;

struct LIGHT_INFLUENCE {
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
    /* 0x00 */ cXyz position;
    /* 0x0C */ int field_0xc;
    /* 0x10 */ int timer;
    /* 0x14 */ fpc_ProcID actor_id;
};

struct DALKMIST_INFLUENCE {
    /* 0x00 */ cXyz mPos;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ s8 mIndex;
};

struct DUNGEON_LIGHT {
    /* 0x00 */ cXyz mPosition;
    /* 0x0C */ GXColor mColor;
    /* 0x10 */ f32 mRefDistance;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 mCutoffAngle;
    /* 0x1C */ f32 mAngleX;
    /* 0x20 */ f32 mAngleY;
    /* 0x24 */ u8 mAngleAttenuation;
    /* 0x25 */ u8 mDistAttenuation;
    /* 0x26 */ u8 field_0x26[6];
    /* 0x2C */ LIGHT_INFLUENCE mInfluence;
};  // Size: 0x4C

struct BOSS_LIGHT {
    /* 0x00 */ cXyz mPos;
    /* 0x0C */ GXColor mColor;
    /* 0x10 */ f32 mRefDistance;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 mCutoffAngle;
    /* 0x1C */ f32 mAngleX;
    /* 0x20 */ f32 mAngleY;
    /* 0x24 */ u8 mAngleAttenuation;
    /* 0x25 */ u8 mDistAttenuation;
    /* 0x26 */ u8 field_0x26;
};  // Size: 0x28

struct GB_WIND_INFLUENCE {
    /* 0x00 */ cXyz vec;
    /* 0x0C */ cXyz* vec_override;
    /* 0x10 */ f32 pow;
};

struct EF_THUNDER {
    /* 0x00 */ u8 mStatus;
    /* 0x01 */ u8 mState;
    /* 0x02 */ u8 field_0x2;
    /* 0x04 */ int mMode;
    /* 0x08 */ f32 mFlashTimer;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ u8 field_0x20[4];
    /* 0x24 */ LIGHT_INFLUENCE mLightInfluence;
};

struct GB_MAPLE_COL_CHANGE {
    /* 0x00 */ J3DLightObj light_obj;
};  // Size: 0x74

struct LightStatus {
    /* 0x00 */ Vec position;
    /* 0x0C */ Vec field_0xc;
    /* 0x18 */ GXColor color;
    /* 0x1C */ int field_0x1c;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ f32 field_0x28;
    /* 0x2C */ f32 field_0x2c;
    /* 0x30 */ f32 field_0x30;
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
    // Supposedly exists but didn't work. Might be too big to inline.
    // See dPa_modelEcallBack::model_c::set.
    // inline dKy_tevstr_c& operator=(const dKy_tevstr_c& b);

    /* 0x000 */ J3DLightObj mLightObj;
    /* 0x074 */ J3DLightObj mLights[6];
    /* 0x32C */ cXyz field_0x32c;  // some light pos, unsure how it differs
    /* 0x338 */ cXyz mLightPosWorld;
    /* 0x344 */ f32 field_0x344;
    /* 0x348 */ GXColorS10 AmbCol;
    /* 0x350 */ GXColorS10 FogCol;
    /* 0x358 */ GXColorS10 TevColor;
    /* 0x360 */ GXColor TevKColor;
    /* 0x364 */ GXColor mLightInf;
    /* 0x368 */ f32 mFogStartZ;
    /* 0x36C */ f32 mFogEndZ;
    /* 0x370 */ f32 pat_ratio;
    /* 0x374 */ f32 field_0x374;
    /* 0x378 */ u16 Material_id;  // Used for some sort of special material handling when non-0
    /* 0x37A */ u8 Type;
    /* 0x37B */ u8 mInitTimer;
    /* 0x37C */ u8 UseCol;
    /* 0x37D */ u8 PrevCol;
    /* 0x37E */ u8 wether_pat1;
    /* 0x37F */ u8 wether_pat0;
    /* 0x380 */ s8 room_no;  // Room Color
    /* 0x381 */ u8 YukaCol;  // Floor (Poly) Color
    /* 0x382 */ u8 mLightMode;
    /* 0x383 */ u8 Material_use_fg;
    /* 0x384 */ u8 field_0x384;
    /* 0x385 */ u8 field_0x385;
};  // Size = 0x388

STATIC_ASSERT(sizeof(dKy_tevstr_c) == 0x388);

class fopAc_ac_c;
class dKyd_lightSchejule;
class stage_palette_info_class;
class stage_pselect_info_class;
class stage_envr_info_class;
class stage_vrboxcol_info_class;
class stage_plight_info_class;
class kytag08_class;

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

enum dKy_LIGHT_SIZE {
    LIGHT_SIZE_S,
    LIGHT_SIZE_M,
    LIGHT_SIZE_L,
    LIGHT_SIZE_LL,
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
    /* 801A133C */ void setLight_bg(dKy_tevstr_c*, GXColorS10*, GXColorS10*, f32*, f32*);
    /* 801A16C0 */ void setLight_actor(dKy_tevstr_c*, GXColorS10*, f32*, f32*);
    /* 801A1D64 */ void settingTevStruct_colget_actor(cXyz*, dKy_tevstr_c*, GXColorS10*,
                                                      GXColorS10*, f32*, f32*);
    /* 801A1F58 */ void settingTevStruct_colget_player(dKy_tevstr_c*);
    /* 801A2128 */ void settingTevStruct_plightcol_plus(cXyz*, dKy_tevstr_c*, GXColorS10,
                                                        GXColorS10, u8);
    /* 801A37C4 */ void settingTevStruct(int, cXyz*, dKy_tevstr_c*);
    /* 801A441C */ void setLightTevColorType(J3DModelData*, dKy_tevstr_c*);
    /* 801A4DA0 */ void setLightTevColorType_MAJI(J3DModelData*, dKy_tevstr_c*);
    /* 801A4E90 */ void CalcTevColor();
    /* 801A4F24 */ void Sndpos();
    /* 801A4F64 */ void Eflight_flush_proc();
    /* 801A516C */ void SetBaseLight();
    /* 801A5288 */ void exeKankyo();
    /* 801A56DC */ void drawKankyo();

    /* 801ADBBC */ virtual ~dScnKy_env_light_c() {}

    void setLightTevColorType(J3DModel* model_p, dKy_tevstr_c* tevstr_p) {
        setLightTevColorType(model_p->getModelData(), tevstr_p);
    }
    void setLightTevColorType_MAJI(J3DModel* model_p, dKy_tevstr_c* tevstr_p) {
        setLightTevColorType_MAJI(model_p->getModelData(), tevstr_p);
    }

public:
    /* 0x0000 */  // vtable
    /* 0x0004 */ stage_palette_info_class* stage_palette_info;
    /* 0x0008 */ stage_pselect_info_class* stage_pselect_info;
    /* 0x000C */ stage_envr_info_class* stage_envr_info;
    /* 0x0010 */ stage_vrboxcol_info_class* stage_vrboxcol_info;
    /* 0x0014 */ dKyd_lightSchejule* light_schedule;
    /* 0x0018 */ LIGHT_INFLUENCE base_light;
    /* 0x0038 */ LIGHT_INFLUENCE mLightInfluence[30];
    /* 0x03F8 */ LIGHT_INFLUENCE* pointlight[100];
    /* 0x0588 */ LIGHT_INFLUENCE* efplight[5];
    /* 0x059C */ u8 unk_0x59c[0x72C - 0x59C];
    /* 0x072C */ LIGHT_INFLUENCE* unk_0x72c[5];  // only ever set to NULL in plight_init
    /* 0x0740 */ LIGHT_INFLUENCE unk_0x740;
    /* 0x0760 */ u8 unk_0x760[0x764 - 0x760];
    /* 0x0764 */ LIGHT_INFLUENCE bgparts_active_light[2];
    /* 0x07A4 */ EFLIGHT_PROC eflight;
    /* 0x07CC */ stage_plight_info_class* stage_plight_info;
    /* 0x07D0 */ WIND_INFLUENCE* pntwind[30];
    /* 0x0848 */ WIND_INF_ENTITY wind_inf_entity[5];
    /* 0x0974 */ SND_INFLUENCE sound_influence;
    /* 0x098C */ u8 player_room_no;
    /* 0x0990 */ DALKMIST_INFLUENCE* dalkmist_influence[10];
    /* 0x09B8 */ DUNGEON_LIGHT dungeonlight[8];
    /* 0x0C18 */ BOSS_LIGHT field_0x0c18[8];
    /* 0x0D58 */ BOSS_LIGHT field_0x0d58[6];
    /* 0x0E48 */ GB_WIND_INFLUENCE global_wind_influence;
    /* 0x0E5C */ f32 custom_windpower;
    /* 0x0E60 */ f32 unk_0xe60;
    /* 0x0E64 */ u16 unk_0xe64;
    /* 0x0E66 */ u16 unk_0xe66;
    /* 0x0E68 */ s16 evt_wind_angle_x;
    /* 0x0E6A */ s16 evt_wind_angle_y;
    /* 0x0E6C */ u8 unk_0xe6c;
    /* 0x0E6D */ u8 evt_wind_go;
    /* 0x0E6E */ u8 TeachWind_existence;
    /* 0x0E6F */ u8 unk_0xe6f;
    /* 0x0E70 */ bool mSunInitialized;
    /* 0x0E74 */ dKankyo_sun_Packet* mpSunPacket;
    /* 0x0E78 */ dKankyo_sunlenz_Packet* mpSunLenzPacket;
    /* 0x0E7C */ bool mRainInitialized;
    /* 0x0E80 */ int raincnt;
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
    /* 0x0ECC */ f32 mVrkumoStrength;
    /* 0x0ED0 */ dKankyo_vrkumo_Packet* mpVrkumoPacket;
    /* 0x0ED4 */ EF_THUNDER mThunderEff;
    /* 0x0F18 */ u8 field_0xf18[4];
    /* 0x0F1C */ dKankyo_shstar_Packet* mpShstarPacket;
    /* 0x0F20 */ u8 mOdourPacketStatus;
    /* 0x0F21 */ u8 field_0xf21;
    /* 0x0F24 */ int field_0xf24;
    /* 0x0F28 */ dKankyo_odour_Packet* mpOdourPacket;
    /* 0x0F2C */ u8 field_0xf2c;
    /* 0x0F30 */ J3DModel* undwater_ef_model;
    /* 0x0F34 */ f32 field_0xf34;
    /* 0x0F38 */ JKRSolidHeap* undwater_ef_heap;
    /* 0x0F3C */ u8 senses_mode;
    /* 0x0F3D */ u8 now_senses_effect;
    /* 0x0F40 */ f32 senses_effect_strength;
    /* 0x0F44 */ JPABaseEmitter* senses_ef_emitter0;
    /* 0x0F48 */ JPABaseEmitter* senses_ef_emitter1;
    /* 0x0F4C */ JPABaseEmitter* senses_ef_emitter2;
    /* 0x0F50 */ GB_MAPLE_COL_CHANGE global_maple_col_change[2];
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
    /* 0x105C */ mDoExt_btkAnm* undwater_btk;
    /* 0x1060 */ kytag08_class* fog_avoid_tag;
    /* 0x1064 */ Vec field_0x1064;  // some light direction
    /* 0x1070 */ cXyz sun_light_pos;
    /* 0x107C */ cXyz plight_near_pos;
    /* 0x1088 */ cXyz sun_pos;
    /* 0x1094 */ cXyz moon_pos;
    /* 0x10A0 */ cXyz field_0x10a0;
    /* 0x10AC */ GXFogAdjTable mXFogTbl;
    /* 0x10C0 */ GXColorS10 vrbox_sky_col;
    /* 0x10C8 */ GXColorS10 vrbox_kumo_top_col;
    /* 0x10D0 */ GXColorS10 vrbox_kumo_bottom_col;
    /* 0x10D8 */ GXColorS10 vrbox_kumo_shadow_col;
    /* 0x10E0 */ GXColorS10 vrbox_kasumi_outer_col;
    /* 0x10E8 */ GXColorS10 vrbox_kasumi_inner_col;
    /* 0x10F0 */ GXColorS10 field_0x10f0;
    /* 0x10F8 */ GXColorS10 field_0x10f8;
    /* 0x1100 */ GXColorS10 actor_amb_col;
    /* 0x1108 */ GXColorS10 bg_amb_col[4];
    /* 0x1128 */ GXColorS10 dungeonlight_col[6];
    /* 0x1158 */ GXColorS10 fog_col;
    /* 0x1160 */ GXColorS10 actor_addcol_amb;
    /* 0x1168 */ u8 unk_0x1168[8];  // probably unused GXColorS10
    /* 0x1170 */ GXColorS10 bg_addcol_amb;
    /* 0x1178 */ u8 unk_0x1178[8];  // probably unused GXColorS10
    /* 0x1180 */ GXColorS10 bg1_addcol_amb;
    /* 0x1188 */ u8 unk_0x1188[8];  // probably unused GXColorS10
    /* 0x1190 */ GXColorS10 bg2_addcol_amb;
    /* 0x1198 */ u8 unk_0x1198[8];  // probably unused GXColorS10
    /* 0x11A0 */ GXColorS10 bg3_addcol_amb;
    /* 0x11A8 */ u8 unk_0x11a8[8];  // probably unused GXColorS10
    /* 0x11B0 */ GXColorS10 addcol_fog;
    /* 0x11B8 */ GXColorS10 vrbox_addcol_sky0;
    /* 0x11C0 */ GXColorS10 vrbox_addcol_kasumi;
    /* 0x11C8 */ f32 unk_0x11c8;  // used as a ratio, but only ever set to 1.0
    /* 0x11CC */ f32 unk_0x11cc;  // used as a ratio, but only ever set to 1.0
    /* 0x11D0 */ f32 unk_0x11d0;  // used as a ratio, but only ever set to 1.0
    /* 0x11D4 */ f32 dice_wether_change_time;
    /* 0x11D8 */ f32 dice_wether_time;
    /* 0x11DC */ f32 pat_ratio;
    /* 0x11E0 */ f32 mColPatBlendGather;
    /* 0x11E4 */ f32 mFogNear;
    /* 0x11E8 */ f32 mFogFar;
    /* 0x11EC */ f32 field_0x11ec;
    /* 0x11F0 */ f32 field_0x11f0;
    /* 0x11F4 */ f32 field_0x11f4;
    /* 0x11F8 */ f32 now_allcol_ratio;
    /* 0x11FC */ f32 now_actcol_ratio;
    /* 0x1200 */ f32 now_bgcol_ratio;
    /* 0x1204 */ f32 now_fogcol_ratio;
    /* 0x1208 */ f32 now_vrboxsoracol_ratio;
    /* 0x120C */ f32 now_vrboxkumocol_ratio;
    /* 0x1210 */ f32 field_0x1210;
    /* 0x1214 */ f32 allcol_ratio;
    /* 0x1218 */ f32 actcol_ratio;
    /* 0x121C */ f32 bgcol_ratio;
    /* 0x1220 */ f32 fogcol_ratio;
    /* 0x1224 */ f32 vrboxsoracol_ratio;
    /* 0x1228 */ f32 vrboxkumocol_ratio;
    /* 0x122C */ f32 field_0x122c;
    /* 0x1230 */ f32 field_0x1230;
    /* 0x1234 */ f32 field_0x1234;
    /* 0x1238 */ f32 field_0x1238;
    /* 0x123C */ f32 field_0x123c;
    /* 0x1240 */ f32 field_0x1240;
    /* 0x1244 */ f32 daytime;
    /* 0x1248 */ f32 nexttime;
    /* 0x124C */ f32 time_change_rate;
    /* 0x1250 */ f32 dark_daytime;
    /* 0x1254 */ f32 field_0x1254;
    /* 0x1258 */ f32 field_0x1258;
    /* 0x125C */ f32 bg_light_influence;
    /* 0x1260 */ f32 grass_light_inf_rate;
    /* 0x1264 */ f32 field_0x1264;
    /* 0x1268 */ f32 field_0x1268;
    /* 0x126C */ f32 field_0x126c;
    /* 0x1270 */ f32 mDemoAttentionPoint;
    /* 0x1274 */ f32 old_time;  // saved time of day before entering twilight. time set back to this when leaving twilight
    /* 0x1278 */ f32 field_0x1278;
    /* 0x127C */ f32 field_0x127c;
    /* 0x1280 */ int field_0x1280;
    /* 0x1284 */ u8 field_0x1284[4];
    /* 0x1288 */ u32 moya_se;
    /* 0x128C */ u8 unk_0x128c[0x1298 - 0x128C];
    /* 0x1298 */ int dice_wether_counter;
    /* 0x129C */ int base_raincnt;
    /* 0x12A0 */ int field_0x12a0;
    /* 0x12A4 */ int mPlayerPLightIdx;
    /* 0x12A8 */ int mPlayerEfLightIdx;
    /* 0x12AC */ u8 field_0x12ac[0x12B0 - 0x12AC];
    /* 0x12B0 */ int field_0x12b0;
    /* 0x12B4 */ int schbit_timer;
    /* 0x12B8 */ u8 field_0x12b8[0x12BC - 0x12B8];
    /* 0x12BC */ u16 mFogAdjCenter;
    /* 0x12BE */ u16 mDate;
    /* 0x12C0 */ s16 mActorLightEffect;
    /* 0x12C2 */ u8 wether_pat0;
    /* 0x12C3 */ u8 wether_pat1;
    /* 0x12C4 */ u8 mColpatPrevGather;
    /* 0x12C5 */ u8 mColpatCurrGather;
    /* 0x12C6 */ u8 PrevCol;
    /* 0x12C7 */ u8 UseCol;
    /* 0x12C8 */ u8 mColpatWeather;
    /* 0x12C9 */ u8 dice_wether_mode;
    /* 0x12CA */ u8 dice_wether_state;
    /* 0x12CB */ u8 dice_wether_pat;
    /* 0x12CC */ u8 field_0x12cc;
    /* 0x12CD */ u8 mColPatMode;
    /* 0x12CE */ u8 mColPatModeGather;
    /* 0x12CF */ u8 mFogAdjEnable;
    /* 0x12D0 */ u8 mFogAdjTableType;
    /* 0x12D1 */ u8 Itemgetcol_chg;
    /* 0x12D2 */ u8 light_init_timer;
    /* 0x12D3 */ u8 schbit;
    /* 0x12D4 */ bool hide_vrbox;
    /* 0x12D5 */ u8 mContrastFlag;
    /* 0x12D6 */ u8 field_0x12d6;
    /* 0x12D7 */ u8 shadow_mode;
    /* 0x12D8 */ u8 camera_water_in_status;
    /* 0x12DC */ dKy_pol_efftbl_struct* pol_efftbl;
    /* 0x12E0 */ dKy_pol_effcol_struct* pol_effcol;
    /* 0x12E4 */ dKy_pol_efftbl_struct* pol_efftbl2;
    /* 0x12E8 */ dKy_pol_effcol_struct* pol_effcol2;
    /* 0x12EC */ dKy_pol_sound_struct* pol_sound;
    /* 0x12F0 */ dKy_pol_arg_struct* pol_arg;
    /* 0x12F4 */ dKy_color_data_struct* colordata_tbl;
    /* 0x12F8 */ u8 mFogDensity;
    /* 0x12F9 */ u8 field_0x12f9;
    /* 0x12FA */ u8 is_blure;
    /* 0x12FB */ u8 using_time_control_tag;
    /* 0x12FC */ s8 field_0x12fc;
    /* 0x12FD */ u8 darktime_week;
    /* 0x12FE */ u8 fishing_hole_season;
    /* 0x1300 */ s16 field_0x1300;
    /* 0x1302 */ s16 field_0x1302;
    /* 0x1304 */ f32 mWaterSurfaceShineRate;
    /* 0x1308 */ u8 light_mask_type;
    /* 0x1309 */ u8 light_size;
    /* 0x130A */ u8 field_0x130a;
    /* 0x130B */ u8 field_0x130b;
    /* 0x130C */ u8 staffroll_next_timer;
};  // Size: 0x1310

extern dScnKy_env_light_c g_env_light;

STATIC_ASSERT(sizeof(dScnKy_env_light_c) == 4880);

inline dScnKy_env_light_c* dKy_getEnvlight() {
    return &g_env_light;
}

enum dKy_dice_wether_mode {
    DICE_MODE_SUNNY_e,
    DICE_MODE_CLOUDY_e,
    DICE_MODE_RAIN_LIGHT_e,
    DICE_MODE_RAIN_HEAVY_e,
    DICE_MODE_THUNDER_LIGHT_e,
    DICE_MODE_THUNDER_HEAVY_e,
    DICE_MODE_UNK6_e,
    DICE_MODE_DONE_e = 0xFF,
};

enum dKy_dice_wether_state {
    DICE_STATE_RESET_e,
    DICE_STATE_INIT_e,
    DICE_STATE_EXEC_e,
    DICE_STATE_NEXT_e,
};

void dKy_set_nexttime(f32 nexttime);
void dKy_itudemo_se();
BOOL dKy_darkworld_spot_check(char const* stageName, int roomNo);
void dKy_darkworld_Area_set(char const* stageName, int roomNo);
void dKy_FiveSenses_fullthrottle_dark();
BOOL dKy_daynight_check();
void dKy_clear_game_init();
void dKy_setLight_init();
u8 dKy_pol_sound_get(const cBgS_PolyInfo* polyinfo_p);
void dKy_depth_dist_set(void* process_p);
void dKy_instant_rainchg();
void dKy_instant_timechg(f32 time);
void dKy_set_vrboxsoracol_ratio(f32 ratio);
void dKy_set_vrboxkumocol_ratio(f32 ratio);
void dKy_actor_addcol_set(s16 r, s16 g, s16 b, f32 ratio);
void dKy_fog_startendz_set(f32 param_0, f32 param_1, f32 ratio);
void dKy_vrbox_addcol_set(s16 r, s16 g, s16 b, f32 ratio);
void dKy_GxFog_set();
u8 dKy_pol_argument_get(const cBgS_PolyInfo* polyinfo_p);
void dKy_Sound_set(cXyz pos, int param_1, fpc_ProcID actor_id, int timer);
void dKy_bg_MAxx_proc(void* bg_model_p);
void dKy_change_colpat(u8 colpat);
int dKy_BossLight_set(cXyz* pos_p, GXColor* color_p, f32 ref_dist, u8 param_3);
void dKy_custom_colset(u8 prevGather, u8 curGather, f32 blend);
void dKy_setLight();
cXyz dKy_plight_near_pos();
int dKy_BossSpotLight_set(cXyz* pos_p, f32 angle_x, f32 angle_y, f32 cutoff, GXColor* color_p,
                          f32 ref_dist, u8 spot_type, u8 distattn_type);
void dKy_calc_color_set(GXColorS10* out_color_p, color_RGB_class* color_a_start_p,
                        color_RGB_class* color_b_start_p, color_RGB_class* color_a_end_p,
                        color_RGB_class* color_b_end_p, f32 color_ratio, f32 blend_ratio,
                        GXColorS10 add_col, f32 scale);
void dKy_twilight_camelight_set();
u8 dKy_shadow_mode_check(u8 mode);
void dKy_shadow_mode_set(u8 mode);
void dKy_shadow_mode_reset(u8 mode);
void dKy_Itemgetcol_chg_on();
void dKy_actor_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio);
void dKy_bg_addcol_amb_set(s16 r, s16 g, s16 b, f32 ratio);
int dKy_WolfEyeLight_set(cXyz* pos_p, f32 angle_x, f32 angle_y, f32 cutoff, GXColor* color_p,
                         f32 ref_dist, u8 spot_type, u8 distattn_type);
BOOL dKy_TeachWind_existence_chk();
u8 dKy_darkworld_stage_check(char const* stageName, int roomNo);
BOOL dKy_withwarp_capture_check();
bool dKy_darkworld_check();
void dKy_undwater_filter_draw();
BOOL dKy_camera_water_in_status_check();
int dKy_Outdoor_check();
int dKy_getdaytime_hour();
int dKy_getdaytime_minute();
int dKy_get_dayofweek();
int dKy_getDarktime_minute();
int dKy_getDarktime_hour();
u8 dKy_getDarktime_week();
void dKy_Sound_init();
void dKy_setLight_nowroom(char room_no);
void dKy_setLight_nowroom_actor(dKy_tevstr_c* tevstr_p);
void dKy_setLight_again();
void dKy_GxFog_tevstr_set(dKy_tevstr_c* tevstr_p);
void dKy_plight_set(LIGHT_INFLUENCE* light_inf_p);
void dKy_plight_priority_set(LIGHT_INFLUENCE* light_inf_p);
void dKy_efplight_set(LIGHT_INFLUENCE* light_inf_p);
void dKy_efplight_cut(LIGHT_INFLUENCE* light_inf_p);
void dKy_tevstr_init(dKy_tevstr_c* tevstr_p, s8 room_no, u8 floorCol);
SND_INFLUENCE* dKy_Sound_get();
void dKy_plight_cut(LIGHT_INFLUENCE* light_inf_p);
void dKy_dalkmist_inf_set(DALKMIST_INFLUENCE* dalkmist_inf_p);
void dKy_dalkmist_inf_cut(DALKMIST_INFLUENCE* dalkmist_inf_p);
int dKy_rain_check();
void dKy_set_allcol_ratio(f32 ratio);
void dKy_set_actcol_ratio(f32 ratio);
void dKy_set_bgcol_ratio(f32 ratio);
void dKy_set_fogcol_ratio(f32 ratio);
void dKy_set_vrboxcol_ratio(f32 ratio);
f32 dKy_get_parcent(f32 max, f32 min, f32 value);
void dKy_setLight_nowroom_grass(char room_no, f32 light_ratio);
void dKy_Global_amb_set(dKy_tevstr_c* tevstr_p);
u8 dKy_pol_eff_prim_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p);
u8 dKy_pol_eff_env_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p);
u8 dKy_pol_eff_alpha_get(const cBgS_PolyInfo* polyinfo_p);
f32 dKy_pol_eff_ratio_get(const cBgS_PolyInfo* polyinfo_p);
u8 dKy_pol_eff2_prim_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p);
u8 dKy_pol_eff2_env_get(const cBgS_PolyInfo* polyinfo_p, GXColor* out_color_p);
u8 dKy_pol_eff2_alpha_get(const cBgS_PolyInfo* polyinfo_p);
f32 dKy_pol_eff2_ratio_get(const cBgS_PolyInfo* polyinfo_p);
u8 dKy_pol_efftype_get(const cBgS_PolyInfo* polyinfo_p);
u8 dKy_pol_efftype2_get(const cBgS_PolyInfo* polyinfo_p);
void dKy_ParticleColor_get_actor(cXyz* param_0, dKy_tevstr_c* tevstr_p, GXColor* param_2,
                                 GXColor* param_3, GXColor* param_4, GXColor* param_5, f32 param_6);
void dKy_ParticleColor_get_bg(cXyz* param_0, dKy_tevstr_c* tevstr_p, GXColor* param_2,
                              GXColor* param_3, GXColor* param_4, GXColor* param_5, f32 param_6);
GXColor dKy_light_influence_col(GXColor* param_0, f32 param_1);
void dKy_WaterIn_Light_set();
void dKy_SordFlush_set(cXyz light_pos, int light_type);
void dKy_camera_water_in_status_set(u8 status);
void dKy_mock_light_every_set(LIGHT_INFLUENCE* light_inf_p);
f32 dKy_move_room_ratio(dKy_tevstr_c* tevstr_p, s8* room_no_p);
void dKy_bg1_addcol_amb_set(s16 r, s16 g, s16 b, f32 factor);
void dKy_vrbox_addcol_sky0_set(s16 r, s16 g, s16 b, f32 factor);
void dKy_vrbox_addcol_kasumi_set(s16 r, s16 g, s16 b, f32 factor);
void dKy_addcol_fog_set(s16 r, s16 g, s16 b, f32 factor);
cXyz dKy_light_influence_pos(int light_id);
BOOL dKy_SunMoon_Light_Check();
void dKy_bgparts_activelight_set(LIGHT_INFLUENCE* light_inf_p, int bgpart_id);
void dKy_bgparts_activelight_cut(int bgpart_id);
int dKy_Indoor_check();
void dKy_GfFog_tevstr_set(dKy_tevstr_c* tevstr_p);

#endif /* D_KANKYO_D_KANKYO_H */
