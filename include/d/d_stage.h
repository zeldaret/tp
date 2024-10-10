#ifndef D_D_STAGE_H
#define D_D_STAGE_H

#include "SSystem/SComponent/c_lib.h"
#include "d/d_kankyo.h"
#include "d/d_kankyo_data.h"
#include "d/d_save.h"
#include "global.h"

class JKRExpHeap;

struct stage_vrboxcol_info_class {
    // VRB
};  // Size: 0x18

// Virt
struct stage_vrbox_info_class {
    /* 0x00 */ color_RGB_class field_0x0;
    /* 0x03 */ color_RGB_class field_0x3;
    /* 0x06 */ color_RGB_class field_0x6;
    /* 0x09 */ GXColor field_0x9;
    /* 0x0D */ GXColor field_0xd;
    /* 0x11 */ GXColor field_0x11;
};  // Size: 0x15

class stage_tresure_class {
public:
    /* 0x00 */ char mName[8];
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 mTypeFlag;
    /* 0x0A */ u8 field_0xa;  // part of flag
    /* 0x0B */ u8 mAppearType;
    /* 0x0C */ Vec mPosition;
    /* 0x18 */ s16 mRoomNo;
    /* 0x1A */ s16 mRotation;
    /* 0x1C */ u8 mItem;
    /* 0x1D */ u8 mFlagID;
};  // Size: 0x20

enum StageType {
    /* 0x0 */ ST_FIELD,
    /* 0x1 */ ST_DUNGEON,
    /* 0x2 */ ST_ROOM,
    /* 0x3 */ ST_BOSS_ROOM,
    /* 0x4 */ ST_CASTLE_TOWN,
    /* 0x5 */ ST_CLOUD_SEA,
};

struct stage_stag_info_class {
    /* 0x00 */ f32 field_0x0;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ u8 mCameraType;
    /* 0x09 */ u8 field_0x09;
    /* 0x0A */ u16 field_0x0a;
    /* 0x0C */ u32 field_0x0c;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u8 field_0x14[6];  // usually all 0xFF
    /* 0x1A */ s16 mGapLevel;
    /* 0x1C */ s16 mRangeUp;
    /* 0x1E */ s16 mRangeDown;
    /* 0x20 */ f32 field_0x20;
    /* 0x24 */ f32 field_0x24;
    /* 0x28 */ u8 mMsgGroup;
    /* 0x2A */ u16 mStageTitleNo;
    /* 0x2C */ u8 mParticleNo[16];
};

struct stage_scls_info_class {
    /* 0x0 */ char mStage[8];
    /* 0x8 */ u8 mStart;
    /* 0x9 */ s8 mRoom;
    /* 0xA */ u8 field_0xa;
    /* 0xB */ u8 field_0xb;
    /* 0xC */ s8 mWipe;

    char* getStage() { return mStage; }

    int getRoom() { return mRoom; }
};  // Size: 0xD

struct stage_scls_info_dummy_class {
    /* 0x00 */ int numEntries;
    /* 0x04 */ stage_scls_info_class* mEntries;
};

struct stage_pure_lightvec_info_class {
    // LGT
    /* 0x00 */ Vec m_position;
    /* 0x0C */ f32 m_radius;
    /* 0x10 */ f32 m_directionX;
    /* 0x14 */ f32 m_directionY;
    /* 0x18 */ f32 m_spotCutoff;
    /* 0x1C */ u8 field_0x1c;
    /* 0x1D */ u8 field_0x1d;
    /* 0x1E */ u8 field_0x1e;
    /* 0x1F */ u8 field_0x1f;
};  // Size: 0x20

// Col
struct stage_pselect_info_class {
    /* 0x0 */ u8 mPalIdx[8];
    /* 0x8 */ f32 mChangeRate;
};  // Size: 0xC

struct stage_plight_info_class {
    // LGHT
    /* 0x00 */ Vec m_position;
    /* 0x0C */ f32 m_radius;
    /* 0x10 */ u8 field_0x10[0x18 - 0x10];
    /* 0x18 */ color_RGB_class m_color;
    /* 0x1B */ u8 m_fluctuation;
};  // Size: 0x1C

// PALE
struct stage_palette_info_class {
    /* 0x00 */ color_RGB_class mActorAmbColor;
    /* 0x03 */ color_RGB_class mBgAmbColor[4];
    /* 0x0F */ color_RGB_class mPlightColor[6];
    /* 0x21 */ color_RGB_class mFogColor;
    /* 0x24 */ f32 mFogStartZ;
    /* 0x28 */ f32 mFogEndZ;
    /* 0x2C */ u8 mVirtIdx;
    /* 0x2D */ u8 mTerrainLightInfluence;
    /* 0x2E */ u8 mCloudShadowDensity;
    /* 0x2F */ u8 field_0x2f;
    /* 0x30 */ u8 mBloomTblIdx;
    /* 0x31 */ u8 mBgAmbColor1A;
    /* 0x32 */ u8 mBgAmbColor2A;
    /* 0x33 */ u8 mBgAmbColor3A;
};  // Size: 0x34

struct stage_map_info_class {
    /* 0x00 */ u8 field_0x0[0x35];
    /* 0x35 */ u8 field_0x35;
    /* 0x36 */ u8 field_0x36[2];
};  // Size: 0x38

struct stage_map_info_dummy_class {
    /* 0x0 */ int field_0x0;
    /* 0x4 */ stage_map_info_class* mData;
};

struct stage_envr_info_class {
    /* 0x0 */ u8 m_pselectID[65];
};  // Size: 0x41

struct stage_camera2_data_class {
    struct {
        int field_0x0;
        Vec field_0x4;
    } /* 0x00 */ field_0x0;
    /* 0x10 */ u8 field_0x10;
    /* 0x11 */ u8 field_0x11;
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u16 field_0x16;
};  // Size: 0x18

struct stage_camera_class {
    /* 0x0 */ int field_0x0;
    /* 0x4 */ stage_camera2_data_class* mEntries;
};

struct stage_arrow_data_class {
    /* 0x00 */ cXyz mPosition;
    /* 0x0C */ csXyz mAngle;
    /* 0x12 */ s16 field_0x12;
};  // Size: 0x14

struct stage_arrow_class {
    /* 0x00 */ int mNum;
    /* 0x04 */ stage_arrow_data_class* mEntries;
};

class stage_actor_data_class {
public:
    /* 0x00 */ char mName[8];
    /* 0x08 */ u32 mParameter;
    /* 0x0C */ cXyz mSpawnPos;
    /* 0x18 */ csXyz mAngle;
    /* 0x1E */ u16 mEnemyNo;
};  // Size: 0x20

class stage_actor_class {
public:
    /* 0x0 */ int mEntryNum;
    /* 0x4 */ stage_actor_data_class* mEntries;
};

struct stage_tgsc_data_class : public stage_actor_data_class {
    /* 8002847C */ ~stage_tgsc_data_class() {}
    /* 800284B8 */ stage_tgsc_data_class() {}

    /* 0x20 */ u8 field_0x20[2];
    /* 0x22 */ u8 field_0x22;
};  // Size: 0x24

STATIC_ASSERT(sizeof(stage_tgsc_data_class) == 0x24);

class stage_tgsc_class {
public:
    /* 0x00 */ int mEntryNum;
    /* 0x04 */ stage_tgsc_data_class* mData;
};

struct roomRead_data_class {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x4 */ u8* field_0x4;
};

struct roomRead_class {
    /* 0x0 */ int field_0x0;
    /* 0x4 */ roomRead_data_class** field_0x4;
};

class dStage_FileList2_dt_c {
public:
    /* 0x00 */ f32 mLeftRmX;
    /* 0x04 */ f32 mInnerRmZ;
    /* 0x08 */ f32 mRightRmX;
    /* 0x0C */ f32 mFrontRmZ;
    /* 0x10 */ u8 mMinFloorNo;
    /* 0x11 */ u8 mMaxFloorNo;
    /* 0x12 */ u8 field_0x12;
    /* 0x13 */ u8 field_0x13;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ s16 field_0x1c;
};  // Size: 0x20

struct dStage_MemoryMap_c {
    /* 0x0 */ int m_num;
    /* 0x4 */ u32* field_0x4;
};

struct dPath;
struct dStage_dPath_c {
    /* 0x0 */ int m_num;
    /* 0x4 */ dPath* m_path;
};

struct dStage_Mult_info {
    /* 0x0 */ f32 mTransX;
    /* 0x4 */ f32 mTransY;
    /* 0x8 */ s16 mAngle;
    /* 0xA */ u8 mRoomNo;
};  // Size: 0xC

class dStage_Multi_c {
public:
    /* 0x0 */ int field_0x0;
    /* 0x4 */ dStage_Mult_info* mInfo;
};

struct stage_sound_data {
    /* 0x00 */ char field_0x0[8];
    /* 0x08 */ Vec field_0x8;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 field_0x16;
    /* 0x17 */ u8 field_0x17;
    /* 0x18 */ u8 field_0x18;
    /* 0x19 */ u8 field_0x19;
    /* 0x1A */ u8 field_0x1a;
};  // Size: 0x1C

struct dStage_SoundInfo_c {
    // SOND
    /* 0x0 */ int num;
    /* 0x4 */ stage_sound_data* entries;
};

class dStage_FileList_dt_c {
public:
    /* 0x00 */ u32 mParameters;
    /* 0x04 */ f32 mSeaLevel;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ u8 field_0x10[10];
    /* 0x1A */ u8 mDefaultCamera;
    /* 0x1B */ u8 mBitSw;
    /* 0x1C */ u16 mMsg;
};  // Size: 0x20

// PPNT
struct dStage_dPnt_c {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 mArg0;
    /* 0x4 */ Vec m_position;
};  // Size: 0x10

struct dStage_FloorInfo_c {
    // FLOR
};

class dStage_Lbnk_dt_c {
public:
    /* 0x0 */ u8 bank;
    /* 0x1 */ u8 bank2;
    /* 0x2 */ u8 field_0x2;
};

struct dStage_Lbnk_c {
    /* 0x0 */ int num;
    /* 0x4 */ dStage_Lbnk_dt_c* entries;
};

struct dStage_Elst_data {
    /* 0x0 */ u8 m_layerTable[15];
};

struct dStage_Elst_c {
    /* 0x0 */ int m_entryNum;
    /* 0x4 */ dStage_Elst_data* m_entries;
};

struct dStage_MemoryConfig_data {
    /* 0x0 */ u8 m_roomNo;
    /* 0x1 */ u8 m_blockID;
};  // Size: 0x2

struct dStage_MemoryConfig_c {
    /* 0x0 */ int m_num;
    /* 0x4 */ dStage_MemoryConfig_data* field_0x4;
};

struct dStage_DMap_c {
    // DMAP
};

struct dStage_MapEvent_dt_c {
    /* 0x00 */ u8 mType;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u8 field_0x2;
    /* 0x03 */ u8 field_0x3;
    /* 0x04 */ u8 field_0x4;
    /* 0x05 */ u8 field_0x5;
    /* 0x06 */ u8 mPriority;
    /* 0x07 */ u8 field_0x7;
    /* 0x08 */ u8 field_0x8;
    /* 0x09 */ u8 field_0x9;
    /* 0x0A */ u8 field_0xA;
    /* 0x0B */ u8 field_0xB;
    /* 0x0C */ u8 field_0xC;
    /* 0x0D */ char mName[7];
    /* 0x14 */ u16 field_0x14;
    /* 0x16 */ u8 field_0x16;
    /* 0x17 */ u8 field_0x17;
    /* 0x18 */ u8 mSeType;  // 1: RIDDLE_A, 2: RIDDLE_B
    /* 0x19 */ u8 field_0x19[0x1B - 0x19];
    /* 0x1B */ u8 mSwitch;
};  // SIZE = 0x1C

struct dStage_MapEventInfo_c {
    // REVT
    int mCount;
    dStage_MapEvent_dt_c* mData;
};

class dStage_dt_c {
public:
    dStage_dt_c() {}
    void setRoomNo(s8 roomNo) { mRoomNo = roomNo; }
    s8 getRoomNo() { return mRoomNo; }

    /* vt[ 2] */ virtual void init(void) = 0;
    /* vt[ 3] */ virtual void setCamera(stage_camera_class*) = 0;
    /* vt[ 4] */ virtual stage_camera_class* getCamera(void) const = 0;
    /* vt[ 5] */ virtual void setArrow(stage_arrow_class*) = 0;
    /* vt[ 6] */ virtual stage_arrow_class* getArrow(void) const = 0;
    /* vt[ 7] */ virtual void setPlayer(stage_actor_class*) = 0;
    /* vt[ 8] */ virtual stage_actor_class* getPlayer(void) const = 0;
    /* vt[ 9] */ virtual void setPlayerNum(u16) = 0;
    /* vt[10] */ virtual u16 getPlayerNum(void) const = 0;
    /* vt[11] */ virtual void setRoom(roomRead_class*) = 0;
    /* vt[12] */ virtual roomRead_class* getRoom(void) const = 0;
    /* vt[13] */ virtual void setMapInfo(stage_map_info_class*) = 0;
    /* vt[14] */ virtual stage_map_info_class* getMapInfo(void) const = 0;
    /* vt[15] */ virtual stage_map_info_class* getMapInfo2(int) const = 0;
    /* vt[16] */ virtual void setMapInfoBase(stage_map_info_dummy_class*) = 0;
    /* vt[17] */ virtual stage_map_info_dummy_class* getMapInfoBase(void) const = 0;
    /* vt[18] */ virtual void setPaletteInfo(stage_palette_info_class*) = 0;
    /* vt[19] */ virtual stage_palette_info_class* getPaletteInfo(void) const = 0;
    /* vt[20] */ virtual void setPselectInfo(stage_pselect_info_class*) = 0;
    /* vt[21] */ virtual stage_pselect_info_class* getPselectInfo(void) const = 0;
    /* vt[22] */ virtual void setEnvrInfo(stage_envr_info_class*) = 0;
    /* vt[23] */ virtual stage_envr_info_class* getEnvrInfo(void) const = 0;
    /* vt[24] */ virtual void setVrboxInfo(stage_vrbox_info_class*) = 0;
    /* vt[25] */ virtual stage_vrbox_info_class* getVrboxInfo(void) const = 0;
    /* vt[26] */ virtual void setVrboxcolInfo(stage_vrboxcol_info_class*) = 0;
    /* vt[27] */ virtual stage_vrboxcol_info_class* getVrboxcolInfo(void) const = 0;
    /* vt[28] */ virtual void setPlightInfo(stage_plight_info_class*) = 0;
    /* vt[29] */ virtual stage_plight_info_class* getPlightInfo(void) const = 0;
    /* vt[30] */ virtual void setPaletteNumInfo(int) = 0;
    /* vt[31] */ virtual int getPaletteNumInfo(void) const = 0;
    /* vt[32] */ virtual void setPselectNumInfo(int) = 0;
    /* vt[33] */ virtual int getPselectNumInfo(void) const = 0;
    /* vt[34] */ virtual void setEnvrNumInfo(int) = 0;
    /* vt[35] */ virtual int getEnvrNumInfo(void) const = 0;
    /* vt[36] */ virtual void setVrboxNumInfo(int) = 0;
    /* vt[37] */ virtual int getVrboxNumInfo(void) const = 0;
    /* vt[38] */ virtual void setVrboxcolNumInfo(int) = 0;
    /* vt[39] */ virtual int getVrboxcolNumInfo(void) const = 0;
    /* vt[40] */ virtual void setPlightNumInfo(int) = 0;
    /* vt[41] */ virtual int getPlightNumInfo(void) const = 0;
    /* vt[42] */ virtual void setLightVecInfo(stage_pure_lightvec_info_class*) = 0;
    /* vt[43] */ virtual stage_pure_lightvec_info_class* getLightVecInfo(void) const = 0;
    /* vt[44] */ virtual void setLightVecInfoNum(int) = 0;
    /* vt[45] */ virtual int getLightVecInfoNum(void) const = 0;
    /* vt[46] */ virtual void setStagInfo(stage_stag_info_class*) = 0;
    /* vt[47] */ virtual stage_stag_info_class* getStagInfo(void) const = 0;
    /* vt[48] */ virtual void setSclsInfo(stage_scls_info_dummy_class*) = 0;
    /* vt[49] */ virtual stage_scls_info_dummy_class* getSclsInfo(void) const = 0;
    /* vt[50] */ virtual void setPntInfo(dStage_dPnt_c*) = 0;
    /* vt[51] */ virtual dStage_dPnt_c* getPntInf(void) const = 0;
    /* vt[52] */ virtual void setPathInfo(dStage_dPath_c*) = 0;
    /* vt[53] */ virtual dStage_dPath_c* getPathInf(void) const = 0;
    /* vt[54] */ virtual void setPnt2Info(dStage_dPnt_c*) = 0;
    /* vt[55] */ virtual dStage_dPnt_c* getPnt2Inf(void) const = 0;
    /* vt[56] */ virtual void setPath2Info(dStage_dPath_c*) = 0;
    /* vt[57] */ virtual dStage_dPath_c* getPath2Inf(void) const = 0;
    /* vt[58] */ virtual void setSoundInf(dStage_SoundInfo_c*) = 0;
    /* vt[59] */ virtual dStage_SoundInfo_c* getSoundInf(void) const = 0;
    /* vt[60] */ virtual void setSoundInfCL(dStage_SoundInfo_c*) = 0;
    /* vt[61] */ virtual dStage_SoundInfo_c* getSoundInfCL(void) const = 0;
    /* vt[62] */ virtual void setMapEventInfo(dStage_MapEventInfo_c*) = 0;
    /* vt[63] */ virtual dStage_MapEventInfo_c* getMapEventInfo(void) const = 0;
    /* vt[64] */ virtual void setFileList2Info(dStage_FileList2_dt_c*) = 0;
    /* vt[65] */ virtual dStage_FileList2_dt_c* getFileList2Info(void) const = 0;
    /* vt[66] */ virtual void setFileListInfo(dStage_FileList_dt_c*) = 0;
    /* vt[67] */ virtual dStage_FileList_dt_c* getFileListInfo(void) const = 0;
    /* vt[68] */ virtual void setFloorInfo(dStage_FloorInfo_c*) = 0;
    /* vt[69] */ virtual dStage_FloorInfo_c* getFloorInfo(void) const = 0;
    /* vt[70] */ virtual void setMemoryConfig(dStage_MemoryConfig_c*) = 0;
    /* vt[71] */ virtual dStage_MemoryConfig_c* getMemoryConfig(void) const = 0;
    /* vt[72] */ virtual void setMemoryMap(dStage_MemoryMap_c*) = 0;
    /* vt[73] */ virtual dStage_MemoryMap_c* getMemoryMap(void) const = 0;
    /* vt[74] */ virtual void setMulti(dStage_Multi_c*) = 0;
    /* vt[75] */ virtual dStage_Multi_c* getMulti(void) const = 0;
    /* vt[76] */ virtual void setOldMulti(void) = 0;
    /* vt[77] */ virtual void resetOldMulti(void) = 0;
    /* vt[78] */ virtual dStage_Multi_c* getOldMulti(void) const = 0;
    /* vt[79] */ virtual void setLbnk(dStage_Lbnk_c*) = 0;
    /* vt[80] */ virtual dStage_Lbnk_c* getLbnk(void) const = 0;
    /* vt[81] */ virtual void setTresure(stage_tresure_class*) = 0;
    /* vt[82] */ virtual stage_tresure_class* getTresure(void) const = 0;
    /* vt[83] */ virtual void setDMap(dStage_DMap_c*) = 0;
    /* vt[84] */ virtual dStage_DMap_c* getDMap(void) const = 0;
    /* vt[85] */ virtual void setDrTg(stage_tgsc_class*) = 0;
    /* vt[86] */ virtual stage_tgsc_class* getDrTg(void) const = 0;
    /* vt[87] */ virtual void setDoor(stage_tgsc_class*) = 0;
    /* vt[88] */ virtual stage_tgsc_class* getDoor(void) const = 0;
    /* vt[89] */ virtual void setMapPath(void*) = 0;
    /* vt[90] */ virtual int getMapPath(void) = 0;
    /* vt[91] */ virtual void setElst(dStage_Elst_c*) = 0;
    /* vt[92] */ virtual dStage_Elst_c* getElst(void) = 0;

private:
    /* 0x04 */ s8 mRoomNo;
};

class dStage_stageDt_c : public dStage_dt_c {
public:
    dStage_stageDt_c() {}

    /* vt[ 2] */ virtual void init(void);
    /* vt[ 3] */ virtual void setCamera(stage_camera_class*);
    /* vt[ 4] */ virtual stage_camera_class* getCamera(void) const;
    /* vt[ 5] */ virtual void setArrow(stage_arrow_class*);
    /* vt[ 6] */ virtual stage_arrow_class* getArrow(void) const;
    /* vt[ 7] */ virtual void setPlayer(stage_actor_class*);
    /* vt[ 8] */ virtual stage_actor_class* getPlayer(void) const;
    /* vt[ 9] */ virtual void setPlayerNum(u16);
    /* vt[10] */ virtual u16 getPlayerNum(void) const;
    /* vt[11] */ virtual void setRoom(roomRead_class*);
    /* vt[12] */ virtual roomRead_class* getRoom(void) const;
    /* vt[13] */ virtual void setMapInfo(stage_map_info_class*);
    /* vt[14] */ virtual stage_map_info_class* getMapInfo(void) const;
    /* vt[15] */ virtual stage_map_info_class* getMapInfo2(int) const;
    /* vt[16] */ virtual void setMapInfoBase(stage_map_info_dummy_class*);
    /* vt[17] */ virtual stage_map_info_dummy_class* getMapInfoBase(void) const;
    /* vt[18] */ virtual void setPaletteInfo(stage_palette_info_class*);
    /* vt[19] */ virtual stage_palette_info_class* getPaletteInfo(void) const;
    /* vt[20] */ virtual void setPselectInfo(stage_pselect_info_class*);
    /* vt[21] */ virtual stage_pselect_info_class* getPselectInfo(void) const;
    /* vt[22] */ virtual void setEnvrInfo(stage_envr_info_class*);
    /* vt[23] */ virtual stage_envr_info_class* getEnvrInfo(void) const;
    /* vt[24] */ virtual void setVrboxInfo(stage_vrbox_info_class*);
    /* vt[25] */ virtual stage_vrbox_info_class* getVrboxInfo(void) const;
    /* vt[26] */ virtual void setVrboxcolInfo(stage_vrboxcol_info_class*);
    /* vt[27] */ virtual stage_vrboxcol_info_class* getVrboxcolInfo(void) const;
    /* vt[28] */ virtual void setPlightInfo(stage_plight_info_class*);
    /* vt[29] */ virtual stage_plight_info_class* getPlightInfo(void) const;
    /* vt[30] */ virtual void setPaletteNumInfo(int);
    /* vt[31] */ virtual int getPaletteNumInfo(void) const;
    /* vt[32] */ virtual void setPselectNumInfo(int);
    /* vt[33] */ virtual int getPselectNumInfo(void) const;
    /* vt[34] */ virtual void setEnvrNumInfo(int);
    /* vt[35] */ virtual int getEnvrNumInfo(void) const;
    /* vt[36] */ virtual void setVrboxNumInfo(int);
    /* vt[37] */ virtual int getVrboxNumInfo(void) const;
    /* vt[38] */ virtual void setVrboxcolNumInfo(int);
    /* vt[39] */ virtual int getVrboxcolNumInfo(void) const;
    /* vt[40] */ virtual void setPlightNumInfo(int);
    /* vt[41] */ virtual int getPlightNumInfo(void) const;
    /* vt[42] */ virtual void setLightVecInfo(stage_pure_lightvec_info_class*);
    /* vt[43] */ virtual stage_pure_lightvec_info_class* getLightVecInfo(void) const;
    /* vt[44] */ virtual void setLightVecInfoNum(int);
    /* vt[45] */ virtual int getLightVecInfoNum(void) const;
    /* vt[46] */ virtual void setStagInfo(stage_stag_info_class*);
    /* vt[47] */ virtual stage_stag_info_class* getStagInfo(void) const;
    /* vt[48] */ virtual void setSclsInfo(stage_scls_info_dummy_class*);
    /* vt[49] */ virtual stage_scls_info_dummy_class* getSclsInfo(void) const;
    /* vt[50] */ virtual void setPntInfo(dStage_dPnt_c*);
    /* vt[51] */ virtual dStage_dPnt_c* getPntInf(void) const;
    /* vt[52] */ virtual void setPathInfo(dStage_dPath_c*);
    /* vt[53] */ virtual dStage_dPath_c* getPathInf(void) const;
    /* vt[54] */ virtual void setPnt2Info(dStage_dPnt_c*);
    /* vt[55] */ virtual dStage_dPnt_c* getPnt2Inf(void) const;
    /* vt[56] */ virtual void setPath2Info(dStage_dPath_c*);
    /* vt[57] */ virtual dStage_dPath_c* getPath2Inf(void) const;
    /* vt[58] */ virtual void setSoundInf(dStage_SoundInfo_c*);
    /* vt[59] */ virtual dStage_SoundInfo_c* getSoundInf(void) const;
    /* vt[60] */ virtual void setSoundInfCL(dStage_SoundInfo_c*);
    /* vt[61] */ virtual dStage_SoundInfo_c* getSoundInfCL(void) const;
    /* vt[62] */ virtual void setMapEventInfo(dStage_MapEventInfo_c*);
    /* vt[63] */ virtual dStage_MapEventInfo_c* getMapEventInfo(void) const;
    /* vt[64] */ virtual void setFileList2Info(dStage_FileList2_dt_c*);
    /* vt[65] */ virtual dStage_FileList2_dt_c* getFileList2Info(void) const;
    /* vt[66] */ virtual void setFileListInfo(dStage_FileList_dt_c*);
    /* vt[67] */ virtual dStage_FileList_dt_c* getFileListInfo(void) const;
    /* vt[68] */ virtual void setFloorInfo(dStage_FloorInfo_c*);
    /* vt[69] */ virtual dStage_FloorInfo_c* getFloorInfo(void) const;
    /* vt[70] */ virtual void setMemoryConfig(dStage_MemoryConfig_c*);
    /* vt[71] */ virtual dStage_MemoryConfig_c* getMemoryConfig(void) const;
    /* vt[72] */ virtual void setMemoryMap(dStage_MemoryMap_c*);
    /* vt[73] */ virtual dStage_MemoryMap_c* getMemoryMap(void) const;
    /* vt[74] */ virtual void setMulti(dStage_Multi_c*);
    /* vt[75] */ virtual dStage_Multi_c* getMulti(void) const;
    /* vt[76] */ virtual void setOldMulti(void);
    /* vt[77] */ virtual void resetOldMulti(void);
    /* vt[78] */ virtual dStage_Multi_c* getOldMulti(void) const;
    /* vt[79] */ virtual void setLbnk(dStage_Lbnk_c*);
    /* vt[80] */ virtual dStage_Lbnk_c* getLbnk(void) const;
    /* vt[81] */ virtual void setTresure(stage_tresure_class*);
    /* vt[82] */ virtual stage_tresure_class* getTresure(void) const;
    /* vt[83] */ virtual void setDMap(dStage_DMap_c*);
    /* vt[84] */ virtual dStage_DMap_c* getDMap(void) const;
    /* vt[85] */ virtual void setDrTg(stage_tgsc_class*);
    /* vt[86] */ virtual stage_tgsc_class* getDrTg(void) const;
    /* vt[87] */ virtual void setDoor(stage_tgsc_class*);
    /* vt[88] */ virtual stage_tgsc_class* getDoor(void) const;
    /* vt[89] */ virtual void setMapPath(void*);
    /* vt[90] */ virtual int getMapPath(void);
    /* vt[91] */ virtual void setElst(dStage_Elst_c*);
    /* vt[92] */ virtual dStage_Elst_c* getElst(void);

    void setTreasure(stage_tresure_class*);

public:
    /* 0x08 */ stage_camera_class* mCamera;
    /* 0x0C */ stage_arrow_class* mArrow;
    /* 0x10 */ stage_actor_class* mPlayer;
    /* 0x14 */ roomRead_class* mRoom;
    /* 0x18 */ stage_map_info_class* mMapInfo;
    /* 0x1C */ stage_map_info_dummy_class* mMapInfoBase;
    /* 0x20 */ stage_palette_info_class* mPaletteInfo;
    /* 0x24 */ stage_pselect_info_class* mPselectInfo;
    /* 0x28 */ stage_envr_info_class* mEnvrInfo;
    /* 0x2C */ stage_vrbox_info_class* mVrboxInfo;
    /* 0x30 */ stage_vrboxcol_info_class* mVrboxcolInfo;
    /* 0x34 */ stage_plight_info_class* mPlightInfo;
    /* 0x38 */ dStage_MapEventInfo_c* mMapEventInfo;
    /* 0x3C */ u32 mPaletteNumInfo;
    /* 0x40 */ u32 mPselectNumInfo;
    /* 0x44 */ u32 mEnvrNumInfo;
    /* 0x48 */ u32 mVrboxNumInfo;
    /* 0x4C */ int mVrboxcolNumInfo;
    /* 0x50 */ u32 mPlightNumInfo;
    /* 0x54 */ u16 mPlayerNum;
    /* 0x56 */ u16 field_0x56;
    /* 0x58 */ u16 field_0x58;
    /* 0x5A */ u16 field_0x5a;
    /* 0x5C */ stage_stag_info_class* mStagInfo;
    /* 0x60 */ stage_scls_info_dummy_class* mSclsInfo;
    /* 0x64 */ dStage_dPnt_c* mPntInfo;
    /* 0x68 */ dStage_dPath_c* mPathInfo;
    /* 0x6C */ dStage_dPnt_c* mPnt2Inf;
    /* 0x70 */ dStage_dPath_c* mPath2Info;
    /* 0x74 */ dStage_SoundInfo_c* mSoundInf;
    /* 0x78 */ dStage_SoundInfo_c* mSoundInfCL;
    /* 0x7C */ dStage_FloorInfo_c* mFloorInfo;
    /* 0x80 */ dStage_MemoryConfig_c* mMemoryConfig;
    /* 0x84 */ dStage_MemoryMap_c* mMemoryMap;
    /* 0x88 */ dStage_Multi_c* mMulti;
    /* 0x8C */ dStage_Multi_c* mOldMulti;
    /* 0x90 */ stage_tresure_class* mTreasure;
    /* 0x94 */ dStage_DMap_c* mDMap;
    /* 0x98 */ stage_tgsc_class* mDrTg;
    /* 0x9C */ stage_tgsc_class* mDoor;
    /* 0xA0 */ dStage_Elst_c* mElst;
};

class dStage_roomDt_c : public dStage_dt_c {
public:
    dStage_roomDt_c() {}
    void initFileList2(void);
    void setPnt2Inf(dStage_dPnt_c*);
    void setTreasure(stage_tresure_class*);

    virtual void init(void);
    virtual void setCamera(stage_camera_class*);
    virtual stage_camera_class* getCamera(void) const;
    virtual void setArrow(stage_arrow_class*);
    virtual stage_arrow_class* getArrow(void) const;
    virtual void setPlayer(stage_actor_class*);
    virtual stage_actor_class* getPlayer(void) const;
    virtual void setPlayerNum(u16);
    virtual u16 getPlayerNum(void) const;
    virtual void setRoom(roomRead_class*);
    virtual roomRead_class* getRoom(void) const;
    virtual void setMapInfo(stage_map_info_class*);
    virtual stage_map_info_class* getMapInfo(void) const;
    virtual stage_map_info_class* getMapInfo2(int) const;
    virtual void setMapInfoBase(stage_map_info_dummy_class*);
    virtual stage_map_info_dummy_class* getMapInfoBase(void) const;
    virtual void setPaletteInfo(stage_palette_info_class*);
    virtual stage_palette_info_class* getPaletteInfo(void) const;
    virtual void setPselectInfo(stage_pselect_info_class*);
    virtual stage_pselect_info_class* getPselectInfo(void) const;
    virtual void setEnvrInfo(stage_envr_info_class*);
    virtual stage_envr_info_class* getEnvrInfo(void) const;
    virtual void setVrboxInfo(stage_vrbox_info_class*);
    virtual stage_vrbox_info_class* getVrboxInfo(void) const;
    virtual void setVrboxcolInfo(stage_vrboxcol_info_class*);
    virtual stage_vrboxcol_info_class* getVrboxcolInfo(void) const;
    virtual void setPlightInfo(stage_plight_info_class*);
    virtual stage_plight_info_class* getPlightInfo(void) const;
    virtual void setPaletteNumInfo(int);
    virtual int getPaletteNumInfo(void) const;
    virtual void setPselectNumInfo(int);
    virtual int getPselectNumInfo(void) const;
    virtual void setEnvrNumInfo(int);
    virtual int getEnvrNumInfo(void) const;
    virtual void setVrboxNumInfo(int);
    virtual int getVrboxNumInfo(void) const;
    virtual void setVrboxcolNumInfo(int);
    virtual int getVrboxcolNumInfo(void) const;
    virtual void setPlightNumInfo(int);
    virtual int getPlightNumInfo(void) const;
    virtual void setLightVecInfo(stage_pure_lightvec_info_class*);
    virtual stage_pure_lightvec_info_class* getLightVecInfo(void) const;
    virtual void setLightVecInfoNum(int);
    virtual int getLightVecInfoNum(void) const;
    virtual void setStagInfo(stage_stag_info_class*);
    virtual stage_stag_info_class* getStagInfo(void) const;
    virtual void setSclsInfo(stage_scls_info_dummy_class*);
    virtual stage_scls_info_dummy_class* getSclsInfo(void) const;
    virtual void setPntInfo(dStage_dPnt_c*);
    virtual dStage_dPnt_c* getPntInf(void) const;
    virtual void setPathInfo(dStage_dPath_c*);
    virtual dStage_dPath_c* getPathInf(void) const;
    virtual void setPnt2Info(dStage_dPnt_c*);
    virtual dStage_dPnt_c* getPnt2Inf(void) const;
    virtual void setPath2Info(dStage_dPath_c*);
    virtual dStage_dPath_c* getPath2Inf(void) const;
    virtual void setSoundInf(dStage_SoundInfo_c*);
    virtual dStage_SoundInfo_c* getSoundInf(void) const;
    virtual void setSoundInfCL(dStage_SoundInfo_c*);
    virtual dStage_SoundInfo_c* getSoundInfCL(void) const;
    virtual void setMapEventInfo(dStage_MapEventInfo_c*);
    virtual dStage_MapEventInfo_c* getMapEventInfo(void) const;
    virtual void setFileList2Info(dStage_FileList2_dt_c*);
    virtual dStage_FileList2_dt_c* getFileList2Info(void) const;
    virtual void setFileListInfo(dStage_FileList_dt_c*);
    virtual dStage_FileList_dt_c* getFileListInfo(void) const;
    virtual void setFloorInfo(dStage_FloorInfo_c*);
    virtual dStage_FloorInfo_c* getFloorInfo(void) const;
    virtual void setMemoryConfig(dStage_MemoryConfig_c*);
    virtual dStage_MemoryConfig_c* getMemoryConfig(void) const;
    virtual void setMemoryMap(dStage_MemoryMap_c*);
    virtual dStage_MemoryMap_c* getMemoryMap(void) const;
    virtual void setMulti(dStage_Multi_c*);
    virtual dStage_Multi_c* getMulti(void) const;
    virtual void setOldMulti(void);
    virtual void resetOldMulti(void);
    virtual dStage_Multi_c* getOldMulti(void) const;
    virtual void setLbnk(dStage_Lbnk_c*);
    virtual dStage_Lbnk_c* getLbnk(void) const;
    virtual void setTresure(stage_tresure_class*);
    virtual stage_tresure_class* getTresure(void) const;
    virtual void setDMap(dStage_DMap_c*);
    virtual dStage_DMap_c* getDMap(void) const;
    virtual void setDrTg(stage_tgsc_class*);
    virtual stage_tgsc_class* getDrTg(void) const;
    virtual void setDoor(stage_tgsc_class*);
    virtual stage_tgsc_class* getDoor(void) const;
    virtual void setMapPath(void*);
    virtual int getMapPath(void);
    virtual void setElst(dStage_Elst_c*);
    virtual dStage_Elst_c* getElst(void);

public:
    /* 0x08 */ stage_pure_lightvec_info_class* mLightVecInfo;
    /* 0x0C */ int mLightVecInfoNum;
    /* 0x10 */ stage_map_info_class* mMapInfo;
    /* 0x14 */ stage_map_info_dummy_class* mMapInfoBase;
    /* 0x18 */ stage_vrbox_info_class* mVrboxInfo;
    /* 0x1C */ stage_vrboxcol_info_class* mVrboxcolInfo;
    /* 0x20 */ dStage_FileList2_dt_c* mFileList2Info;
    /* 0x24 */ dStage_FileList_dt_c* mFileListInfo;
    /* 0x28 */ stage_actor_class* mPlayer;
    /* 0x2C */ dStage_dPnt_c* mPnt2Info;
    /* 0x30 */ dStage_dPath_c* mPath2Info;
    /* 0x34 */ stage_camera_class* mCamera;
    /* 0x38 */ stage_arrow_class* mArrow;
    /* 0x3C */ dStage_MapEventInfo_c* mMapEventInfo;
    /* 0x40 */ dStage_SoundInfo_c* mSoundInf;
    /* 0x44 */ dStage_SoundInfo_c* mSoundInfCL;
    /* 0x48 */ stage_scls_info_dummy_class* mSclsInfo;
    /* 0x4C */ dStage_Lbnk_c* mLbnk;
    /* 0x50 */ stage_tresure_class* mTreasure;
    /* 0x54 */ stage_tgsc_class* mDrTg;
    /* 0x58 */ stage_tgsc_class* mDoor;
    /* 0x5C */ dStage_FloorInfo_c* mFloorInfo;
    /* 0x60 */ u16 mPlayerNum;
    /* 0x62 */ u16 field_0x62;
    /* 0x64 */ int mVrboxNumInfo;
    /* 0x68 */ int mVrboxcolNumInfo;
};  // Size: 0x6C

class dBgW_base;
class dStage_roomStatus_c {
public:
    /* 0x000 */ dStage_roomDt_c mRoomDt;
    /* 0x06C */ dKy_tevstr_c mKyTevStr;
    /* 0x3F4 */ u8 mFlag;
    /* 0x3F5 */ bool mDraw;
    /* 0x3F6 */ s8 mZoneCount;
    /* 0x3F7 */ s8 mZoneNo;
    /* 0x3F8 */ s8 mMemBlockID;
    /* 0x3F9 */ u8 mRegionNo;
    /* 0x3FC */ int mProcID;
    /* 0x400 */ dBgW_base* mpBgW;

    int getZoneNo() const { return mZoneNo; }
    ~dStage_roomStatus_c() {}
    dStage_roomStatus_c() {}
};  // Size: 0x404

STATIC_ASSERT(sizeof(dStage_roomStatus_c) == 0x404);

extern s8 mStayNo__20dStage_roomControl_c;  // gStayNo
extern s8 mOldStayNo__20dStage_roomControl_c;
extern s8 mNextStayNo__20dStage_roomControl_c;
extern s8 m_time_pass__20dStage_roomControl_c;
extern u8 mNoChangeRoom__20dStage_roomControl_c;
extern s8 data_804505F0;  // roomReadId

class dStage_roomControl_c {
public:
    class roomDzs_c {
    public:
        roomDzs_c() { m_num = 0; }
        void create(u8);
        void remove();
        void* add(u8, u8);

        /* 0x00 */ u8 m_num;
        /* 0x04 */ void** m_dzs;
    };

    struct nameData {
        /* 0x0 */ s8 m_num;
        /* 0x1 */ char m_names[32][10];  // ?
    };

    struct bankDataEntry {
        u8 field_0x0;
        u8 mLayerNo;
        u8 field_0x2[0x20];
    };

    struct bankData {
        /* 0x0 */ u8 m_num;
        /* 0x1 */ bankDataEntry m_entries[32];  // ?
    };

    static void createRoomDzs(u8 i_num) { m_roomDzs.create(i_num); }
    static void* addRoomDzs(u8 i_num, u8 roomNo) { return m_roomDzs.add(i_num, roomNo); }
    static void removeRoomDzs() { m_roomDzs.remove(); }

    dStage_roomControl_c() {}
    void init(void);
    static int getZoneNo(int i_roomNo) { return mStatus[i_roomNo].getZoneNo(); }
    /* 80024338 */ void initZone();
    /* 80024384 */ dStage_roomStatus_c* getStatusRoomDt(int);
    /* 800243B0 */ static JKRExpHeap* getMemoryBlock(int);
    /* 800243E8 */ static void setStayNo(int);
    /* 80024424 */ static void setNextStayNo(int);
    /* 800244E8 */ BOOL checkRoomDisp(int) const;
    /* 8002451C */ int loadRoom(int, u8*, bool);
    /* 8002471C */ void zoneCountCheck(int) const;
    /* 80024844 */ static JKRExpHeap* createMemoryBlock(int, u32);
    /* 800248A8 */ static void destroyMemoryBlock();
    /* 8002490C */ static void setArcBank(int, char const*);
    /* 80024940 */ static char* getArcBank(int);
    /* 80024954 */ static bool resetArchiveBank(int);
    /* 80024DB0 */ static void SetTimePass(int);
    /* 8025BAAC */ static void setZoneNo(int, int);
    static s8 GetTimePass();

    static s8 getStayNo() { return mStayNo; }
    static u8 getRegionNo(int i_roomNo) { return mStatus[i_roomNo].mRegionNo; }
    static s8 getMemoryBlockID(int i_roomNo) { return mStatus[i_roomNo].mMemBlockID; }
    dKy_tevstr_c* getTevStr(int i_roomNo) { return &mStatus[i_roomNo].mKyTevStr; }
    void setStatusFlag(int i_roomNo, u8 flag) { mStatus[i_roomNo].mFlag = flag; }
    static void onStatusDraw(int i_roomNo) { mStatus[i_roomNo].mDraw = true; }
    static dStage_FileList2_dt_c* getFileList2(int i_roomNo) {
        return mStatus[i_roomNo].mRoomDt.mFileList2Info;
    }
    static char* getDemoArcName() { return mDemoArcName; }
    static nameData* getArcBankName() { return mArcBankName; }
    static bankData* getArcBankData() { return mArcBankData; }
    static void setRoomReadId(s8 id) { data_804505F0 = id; }
    static s8 getRoomReadId() { return data_804505F0; }
    static void offNoChangeRoom() { mNoChangeRoom = false; }
    static void onNoChangeRoom() { mNoChangeRoom = true; }
    static void setProcID(u32 id) { mProcID = id; }
    static u32 getProcID() { return mProcID; }
    static void setStatusProcID(int i_roomNo, unsigned int i_id) { mStatus[i_roomNo].mProcID = i_id; }
    static int getStatusProcID(int i_roomNo) { return mStatus[i_roomNo].mProcID; }
    static void setRegionNo(int i_roomNo, u8 i_regionNo) { mStatus[i_roomNo].mRegionNo = i_regionNo; }
    static void setZoneCount(int i_roomNo, int count) { mStatus[i_roomNo].mZoneCount = count; }

    static void setMemoryBlockID(int i_roomNo, int i_blockID) {
        mStatus[i_roomNo].mMemBlockID = i_blockID;
    }

    static void setFileList2(int i_roomNo, dStage_FileList2_dt_c* list) {
        mStatus[i_roomNo].mRoomDt.mFileList2Info = list;
    }

    static void setBgW(int param_0, dBgW_base* i_bgw) {
        mStatus[param_0].mpBgW = i_bgw;
    }

    BOOL checkStatusFlag(int i_roomNo, u8 flag) const {
        return cLib_checkBit(mStatus[i_roomNo].mFlag, flag);
    }

    void offStatusFlag(int i_roomNo, u8 flag) {
        return cLib_offBit(mStatus[i_roomNo].mFlag, flag);
    }

    void onStatusFlag(int i_roomNo, u8 flag) {
        return cLib_onBit(mStatus[i_roomNo].mFlag, flag);
    }

    static JKRExpHeap* mMemoryBlock[19];
    static char mArcBank[32][10];
    static dStage_roomStatus_c mStatus[0x40];
    static char mDemoArcName[10];
    static u32 mProcID;
    static nameData* mArcBankName;
    static bankData* mArcBankData;
    static roomDzs_c m_roomDzs;
    static s8 mStayNo;
    static s8 mOldStayNo;
    static s8 mNextStayNo;
    static s8 m_time_pass;
    static u8 mNoChangeRoom;

private:
    /* 0x0 */ u8 field_0x0[4];
};

class dStage_startStage_c {
public:
    void set(const char*, s8, s16, s8);
    const char* getName() const { return mName; }
    s16 getPoint() const { return mPoint; }
    s8 getRoomNo() const { return mRoomNo; }
    s8 getLayer() const { return mLayer; }
    void setLayer(s8 layer) { mLayer = layer; }
    s8 getDarkArea() const { return mDarkArea; }
    void setDarkArea(s8 darkArea) { mDarkArea = darkArea; }

private:
    /* 0x0 */ char mName[8];
    /* 0x8 */ s16 mPoint;
    /* 0xA */ s8 mRoomNo;
    /* 0xB */ s8 mLayer;
    /* 0xC */ s8 mDarkArea;
};

class dStage_nextStage_c : public dStage_startStage_c {
public:
    dStage_nextStage_c() {
        enabled = 0;  // TODO: maybe wrong
    }
    void set(const char*, s8, s16, s8, s8, u8);
    void offEnable() { enabled = 0; }
    BOOL isEnable() const { return enabled; }
    s8 getWipe() const { return wipe; }
    u8 getWipeSpeed() const { return wipe_speed; }

private:
    s8 enabled;
    s8 wipe;
    u8 wipe_speed;
};

// unknown name
struct dStage_objectNameInf {
    char mName[8];
    s16 mProcName;
    s8 mSubtype;
};  // Size: 0xC

class dStage_KeepDoorInfo {
public:
    /* 80028418 */ ~dStage_KeepDoorInfo() {}
    /* 0x000 */ int mNum;
    /* 0x004 */ stage_tgsc_data_class mDrTgData[0x40];
};  // Size = 0x904

typedef int (*dStage_Func)(dStage_dt_c*, void*, int, void*);

struct FuncTable {
    char identifier[5];
    dStage_Func function;
};

struct dStage_fileHeader {
    /* 0x0 */ int chunkCount;
};

struct dStage_nodeHeader {
    /* 0x0 */ u32 m_tag;
    /* 0x4 */ int m_entryNum;
    /* 0x8 */ u32 m_offset;
};

const char* dStage_getName2(s16, s8);
dStage_objectNameInf* dStage_searchName(const char*);
static int dStage_stageKeepTresureInit(dStage_dt_c*, void*, int, void*);
static int dStage_filiInfo2Init(dStage_dt_c*, void*, int, void*);
static int dStage_mapPathInitCommonLayer(dStage_dt_c*, void*, int, void*);
static int dStage_mapPathInit(dStage_dt_c*, void*, int, void*);
static int dStage_memaInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_mecoInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_stagInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_soundInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_lgtvInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_envrInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_pselectInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_paletteInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_vrboxcolInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_roomDrtgInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_tgscInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_actorInit(dStage_dt_c*, void*, int, void*);
static int dStage_layerTresureInit(dStage_dt_c*, void*, int, void*);
static int dStage_elstInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_rppnInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_rpatInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_multInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_playerInit(dStage_dt_c*, void*, int, void*);
static int dStage_cameraInit(dStage_dt_c*, void*, int, void*);
static int dStage_actorInit_always(dStage_dt_c*, void*, int, void*);
static int dStage_roomReadInit(dStage_dt_c*, void*, int, void*);
static int dStage_arrowInit(dStage_dt_c*, void*, int, void*);
static int dStage_vrboxInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_sclsInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_tgscInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_plightInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_ppntInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_pathInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_filiInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_stageDrtgInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_floorInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_dmapInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_stEventInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_soundInfoInitCL(dStage_dt_c*, void*, int, void*);
static int dStage_RoomCameraInit(dStage_dt_c*, void*, int, void*);
static int dStage_lbnkInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_actorCommonLayerInit(dStage_dt_c*, void*, int, void*);
static int dStage_roomTresureInit(dStage_dt_c*, void*, int, void*);
static int dStage_tgscCommonLayerInit(dStage_dt_c*, void*, int, void*);
static int dStage_mapEventInfoInit(dStage_dt_c*, void*, int, void*);
static int dStage_fieldMapTresureInit(dStage_dt_c*, void*, int, void*);
static int dStage_fieldMapFiliInfo2Init(dStage_dt_c*, void*, int, void*);
static int dStage_fieldMapMapPathInit(dStage_dt_c*, void*, int, void*);

s8 dStage_roomRead_dt_c_GetReverbStage(roomRead_class&, int);
int dStage_changeScene(int i_exitId, f32 i_speed, u32 i_mode, s8 i_roomNo, s16 i_angle, int i_layerOverride);
void dStage_infoCreate();
u32 dStage_stagInfo_GetParticleNo(stage_stag_info_class* p_info, int layer);
int dStage_changeSceneExitId(cBgS_PolyInfo& param_0, f32 speed, u32 mode, s8 roomNo, s16 angle);
int dStage_changeScene4Event(int i_exitId, s8 room_no, int i_wipe, bool param_3, f32 speed,
                             u32 mode, s16 angle, int param_7);
void dStage_Create();
void dStage_Delete();
static s32 dStage_stagInfo_GetSaveTbl(stage_stag_info_class* param_0);
void dStage_restartRoom(u32 roomParam, u32 mode, int param_2);
class cBgS_GndChk;
int dStage_RoomCheck(cBgS_GndChk* gndChk);
void dStage_dt_c_roomReLoader(void* i_data, dStage_dt_c* stageDt, int param_2);
void dStage_dt_c_roomLoader(void* i_data, dStage_dt_c* stageDt, int param_2);
dStage_KeepDoorInfo* dStage_GetKeepDoorInfo();
dStage_KeepDoorInfo* dStage_GetRoomKeepDoorInfo();
void dStage_dt_c_fieldMapLoader(void* i_data, dStage_dt_c* i_stage);

inline bool dStage_roomRead_dt_c_ChkBg(u8 param_0) {
    return param_0 & 0x80;
}

inline s32 dStage_roomRead_dt_c_GetVrboxswitch(roomRead_data_class& data) {
    return data.field_0x2 & 8;
}

inline s32 dStage_roomRead_dt_c_GetTimePass(roomRead_data_class& data) {
    return data.field_0x2 & 3;
}

inline u8 dStage_roomRead_dt_c_GetLoadRoomIndex(u8 param_0) {
    return param_0 & 0x3f;
}

inline u8 dStage_roomRead_dt_c_GetReverb(roomRead_data_class& room) {
    return room.field_0x1 & 0x7F;
}

inline u32 dStage_stagInfo_GetSTType(stage_stag_info_class* pstag) {
    return (pstag->field_0x0c >> 16) & 7;
}

inline int dStage_stagInfo_GetEscapeWarp(stage_stag_info_class* pstag) {
    return (pstag->field_0x10 >> 24);
}

inline u32 dStage_stagInfo_GetMiniMap(stage_stag_info_class* pstag) {
    return (pstag->field_0x0a >> 0xD) & 7;
}

inline u32 dStage_stagInfo_GetParticleNo(stage_stag_info_class* p_info) {
    return (p_info->field_0x0a >> 0x3) & 0xFF;
}

inline s16 dStage_stagInfo_GetUpButton(stage_stag_info_class* p_info) {
    return p_info->field_0x0a & 7;
}

inline u32 dStage_stagInfo_GetArg0(stage_stag_info_class* p_info) {
    return (p_info->field_0x0c >> 0x14) & 0xFF;
}

inline int dStage_stagInfo_GetMsgGroup(stage_stag_info_class* p_info) {
    return p_info->mMsgGroup;
}

inline s32 i_dStage_stagInfo_GetSaveTbl(stage_stag_info_class* param_0) {
    return param_0->field_0x09 >> 1 & 0x1f;
}

inline s8 dStage_stagInfo_GetTimeH(stage_stag_info_class* p_info) {
    return (p_info->field_0x0c >> 8) & 0xFF;
}

inline BOOL dStage_staginfo_GetArchiveHeap(stage_stag_info_class* p_info) {
    return p_info->field_0x0a & 0x1000;
}

inline int dStage_stagInfo_GetGapLevel(stage_stag_info_class* pstag) {
    return pstag->mGapLevel;
}

inline int dStage_stagInfo_GetRangeUp(stage_stag_info_class* pstag) {
    return pstag->mRangeUp;
}

inline int dStage_stagInfo_GetRangeDown(stage_stag_info_class* pstag) {
    return pstag->mRangeDown;
}

inline u32 dStage_stagInfo_ChkKeyDisp(stage_stag_info_class* pstag) {
    return pstag->field_0x09 & 1;
}

inline u8 dStage_stagInfo_GetWolfDashType(stage_stag_info_class* pstag) {
    return (pstag->field_0x09 >> 6) & 3;
}

inline u16 dStage_stagInfo_GetStageTitleNo(stage_stag_info_class* pstag) {
    return pstag->mStageTitleNo;
}

inline u8 dStage_stagInfo_DefaultCameraType(stage_stag_info_class* pstag) {
    return pstag->mCameraType;
}

inline u32 dStage_sclsInfo_getSceneLayer(stage_scls_info_class* p_info) {
    return p_info->field_0xb & 0xF;
}

inline s32 dStage_sclsInfo_getWipe(stage_scls_info_class* p_info) {
    return p_info->mWipe;
}

inline s32 dStage_sclsInfo_getWipeTime(stage_scls_info_class* p_info) {
    return (p_info->field_0xb >> 5) & 7;
}

inline int dStage_sclsInfo_getTimeH(stage_scls_info_class* p_info) {
    return (u8)((p_info->field_0xa >> 4) & 0xF) | (p_info->field_0xb & 0x10 & ~0xF);
}

inline u32 dStage_FileList_dt_getMiniMap(dStage_FileList_dt_c* p_fList) {
    return p_fList->mParameters >> 3 & 7;
}

inline u32 dStage_FileList_dt_GetEnemyAppear1Flag(dStage_FileList_dt_c* p_fList) {
    return p_fList->mParameters & 0x20000000;
}

inline int dStage_FileList_dt_GetBitSw(dStage_FileList_dt_c* p_fList) {
    return p_fList->mBitSw;
}

inline f32 dStage_FileList_dt_SeaLevel(dStage_FileList_dt_c* p_fList) {
    return p_fList->mSeaLevel;
}

inline int dStage_FileList_dt_GlobalWindLevel(dStage_FileList_dt_c* i_fili) {
    return (i_fili->mParameters >> 0x12) & 3;
}

inline int dStage_FileList_dt_GlobalWindDir(dStage_FileList_dt_c* i_fili) {
    return (i_fili->mParameters >> 0xF) & 7;
}

inline u8 dStage_FileList_dt_GetDefaultCamera(dStage_FileList_dt_c* p_fList) {
    return p_fList->mDefaultCamera;
}

inline f32 dStage_FileList2_dt_GetLeftRmX(dStage_FileList2_dt_c* p_fList2) {
    return p_fList2->mLeftRmX;
}

inline f32 dStage_FileList2_dt_GetRightRmX(dStage_FileList2_dt_c* p_fList2) {
    return p_fList2->mRightRmX;
}

inline f32 dStage_FileList2_dt_GetInnerRmZ(dStage_FileList2_dt_c* p_fList2) {
    return p_fList2->mInnerRmZ;
}

inline f32 dStage_FileList2_dt_GetFrontRmZ(dStage_FileList2_dt_c* p_fList2) {
    return p_fList2->mFrontRmZ;
}

inline s8 dStage_FileList2_dt_GetMinFloorNo(dStage_FileList2_dt_c* p_fList2) {
    return p_fList2->mMinFloorNo;
}

inline s8 dStage_FileList2_dt_GetMaxFloorNo(dStage_FileList2_dt_c* p_fList2) {
    return p_fList2->mMaxFloorNo;
}

inline int dStage_MapEvent_dt_c_getEventSCutSW(dStage_MapEvent_dt_c* event) {
    return event->field_0x8 & 1;
}

inline int dStage_MapEvent_dt_c_getEventSCutType(dStage_MapEvent_dt_c* event) {
    return event->field_0x8 >> 1 & 3;
}

inline int dStage_lbnkWIND(dStage_Lbnk_dt_c* i_data) {
    return (i_data->field_0x2 >> 3) & 7;
}

inline int dStage_lbnkWlevel(dStage_Lbnk_dt_c* i_data) {
    return (i_data->field_0x2 >> 6) & 3;
}

#endif /* D_D_STAGE_H */
