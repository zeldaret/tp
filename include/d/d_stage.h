#ifndef D_D_STAGE_H
#define D_D_STAGE_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include "SSystem/SComponent/c_lib.h"
#include "d/kankyo/d_kankyo.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "f_op/f_op_actor_mng.h"

struct stage_vrboxcol_info_class {};

struct stage_vrbox_info_class {};

struct stage_tresure_class {};

struct stage_tgsc_data_class {
    /* 8002847C */ ~stage_tgsc_data_class() {}
    /* 800284B8 */ stage_tgsc_data_class() {}
    /* 0x00 */ u32 field_0x0;
    /* 0x04 */ u32 field_0x4;
    /* 0x08 */ fopAcM_prmBase_class field_0x8;
    /* 0x20 */ u16 field_0x20;
    /* 0x22 */ u8 field_0x22;
};  // Size = 0x24

STATIC_ASSERT(sizeof(stage_tgsc_data_class) == 0x24);

struct stage_tgsc_class {};

struct stage_stag_info_class {
    /* 0x00 */ u8 field_0x00[8];
    /* 0x08 */ u8 mCameraType;
    /* 0x09 */ u8 field_0x09;
    /* 0x0A */ u16 field_0x0a;
    /* 0x0C */ u32 field_0x0c;
    /* 0x10 */ u32 field_0x10;
    /* 0x14 */ u8 field_0x14[6];
    /* 0x1A */ s16 mGapLevel;
    /* 0x1C */ s16 mRangeUp;
    /* 0x1E */ s16 mRangeDown;
    /* 0x20 */ u8 field_0x20[8];
    /* 0x28 */ u8 mMsgGroup;
    /* 0x2A */ u16 mStageTitleNo;
};  // Size: Unknown

inline s16 dStage_stagInfo_GetUpButton(stage_stag_info_class* p_info) {
    return p_info->field_0x0a & 7;
}

inline u32 dStage_stagInfo_GetArg0(stage_stag_info_class* p_info) {
    return (p_info->field_0x0c >> 0x14) & 0xFF;
}

struct stage_scls_info_class {
    /* 0x0 */ char mStage[8];
    /* 0x8 */ u8 mStart;
    /* 0x9 */ s8 mRoom;
    /* 0xA */ s8 field_0xa;
    /* 0xB */ s8 field_0xb;
    /* 0xC */ s8 mWipe;
};  // Size: 0xD

struct stage_scls_info_dummy_class {
    /* 0x00 */ int numEntries;
    /* 0x04 */ stage_scls_info_class* mEntries;
};

struct stage_pure_lightvec_info_class {};

struct stage_pselect_info_class {};

struct stage_plight_info_class {};

struct stage_palette_info_class {};

struct stage_map_info_dummy_class {};

struct stage_map_info_class {};

struct stage_envr_info_class {};

struct stage_camera_class {};

struct stage_camera2_data_class {};

struct stage_arrow_class {};

struct stage_actor_data_class {};

struct stage_actor_class {};

struct roomRead_data_class {
    /* 0x0 */ u8 field_0x0[2];
    /* 0x2 */ u8 field_0x2;
};

struct roomRead_class {
    /* 0x0 */ int field_0x0;
    /* 0x4 */ roomRead_data_class** field_0x4;
};

inline s32 dStage_roomRead_dt_c_GetVrboxswitch(roomRead_data_class& data) {
    return data.field_0x2 & 8;
}

struct dStage_FileList2_dt_c {};

struct dStage_MemoryMap_c {};

struct dStage_dPath_c {};

struct dStage_Multi_c {};

struct dStage_SoundInfo_c {};

struct dStage_FileList_dt_c {
    /* 0x0 */ u32 field_0x0;
};

struct dStage_dPnt_c {};

struct dStage_FloorInfo_c {};

struct dStage_Lbnk_c {};

struct dStage_Elst_c {};

struct dStage_MemoryConfig_c {};

struct dStage_DMap_c {};

struct dStage_MapEventInfo_c {};

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
    /* vt[15] */ virtual int getMapInfo2(int) const = 0;
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
    /* vt[15] */ virtual int getMapInfo2(int) const;
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

private:
    stage_camera_class* mCamera;
    stage_arrow_class* mArrow;
    stage_actor_class* mPlayer;
    roomRead_class* mRoom;
    stage_map_info_class* mMapInfo;
    stage_map_info_dummy_class* mMapInfoBase;
    stage_palette_info_class* mPaletteInfo;
    stage_pselect_info_class* mPselectInfo;
    stage_envr_info_class* mEnvrInfo;
    stage_vrbox_info_class* mVrboxInfo;
    stage_vrboxcol_info_class* mVrboxcolInfo;
    stage_plight_info_class* mPlightInfo;
    dStage_MapEventInfo_c* mMapEventInfo;
    u32 mPaletteNumInfo;
    u32 mPselectNumInfo;
    u32 mEnvrNumInfo;
    u32 mVrboxNumInfo;
    int mVrboxcolNumInfo;
    u32 mPlightNumInfo;
    u16 mPlayerNum;
    u16 field_0x56;
    u16 field_0x58;
    u16 field_0x5a;
    stage_stag_info_class* mStagInfo;
    stage_scls_info_dummy_class* mSclsInfo;
    dStage_dPnt_c* mPntInfo;
    dStage_dPath_c* mPathInfo;
    dStage_dPnt_c* mPnt2Inf;
    dStage_dPath_c* mPath2Info;
    dStage_SoundInfo_c* mSoundInf;
    dStage_SoundInfo_c* mSoundInfCL;
    dStage_FloorInfo_c* mFloorInfo;
    dStage_MemoryConfig_c* mMemoryConfig;
    dStage_MemoryMap_c* mMemoryMap;
    dStage_Multi_c* mMulti;
    dStage_Multi_c* mOldMulti;
    stage_tresure_class* mTreasure;
    dStage_DMap_c* mDMap;
    stage_tgsc_class* mDrTg;
    stage_tgsc_class* mDoor;
    dStage_Elst_c* mElst;
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
    virtual int getMapInfo2(int) const;
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

private:
    stage_pure_lightvec_info_class* mLightVecInfo;
    int mLightVecInfoNum;
    stage_map_info_class* mMapInfo;
    stage_map_info_dummy_class* mMapInfoBase;
    stage_vrbox_info_class* mVrboxInfo;
    stage_vrboxcol_info_class* mVrboxcolInfo;
    dStage_FileList2_dt_c* mFileList2Info;
    dStage_FileList_dt_c* mFileListInfo;
    stage_actor_class* mPlayer;
    dStage_dPnt_c* mPnt2Info;
    dStage_dPath_c* mPath2Info;
    stage_camera_class* mCamera;
    stage_arrow_class* mArrow;
    dStage_MapEventInfo_c* mMapEventInfo;
    dStage_SoundInfo_c* mSoundInf;
    dStage_SoundInfo_c* mSoundInfCL;
    stage_scls_info_dummy_class* mSclsInfo;
    dStage_Lbnk_c* mLbnk;
    stage_tresure_class* mTreasure;
    stage_tgsc_class* mDrTg;
    stage_tgsc_class* mDoor;
    dStage_FloorInfo_c* mFloorInfo;
    u16 mPlayerNum;
    u16 field_0x62;
    int mVrboxNumInfo;
    int mVrboxcolNumInfo;
};  // Size: 0x6C

class dStage_roomStatus_c {
public:
    /* 0x000 */ dStage_roomDt_c mRoomDt;
    /* 0x06C */ dKy_tevstr_c mKyTevStr;
    /* 0x3F4 */ u8 unk_0x3F4;
    /* 0x3F5 */ u8 unk_0x3F5[2];
    /* 0x3F7 */ s8 mZoneNo;
    /* 0x3F8 */ s8 mMemBlockID;
    /* 0x3F9 */ s8 unk_3F9[0x404 - 0x3F9];

    int getZoneNo() const { return mZoneNo; }
    /* 80028360 */ ~dStage_roomStatus_c() {}
    /* 8002839C */ dStage_roomStatus_c() {}
};  // Size: 0x404

STATIC_ASSERT(sizeof(dStage_roomStatus_c) == 0x404);

extern s8 struct_80450D64;  // sStayNo
extern s8 sLastStayNo;
extern s8 sNextStayNo;
extern s8 sTimePass;
extern u8 data_80450D68;

class dStage_roomControl_c {
public:
    class roomDzs_c {
    public:
        roomDzs_c() { m_num = 0; }
        /* 80024A34 */ void create(u8);
        /* 80024ABC */ void remove();
        /* 80024B44 */ void add(u8, u8);

        /* 0x00 */ u8 m_num;
        /* 0x04 */ JKRHeap* m_dzs;
    };

    dStage_roomControl_c() {}
    void init(void);
    static int getZoneNo(int room);
    /* 80024338 */ void initZone();
    /* 80024384 */ dStage_roomStatus_c* getStatusRoomDt(int);
    /* 800243B0 */ JKRExpHeap* getMemoryBlock(int);
    /* 800243E8 */ static void setStayNo(int);
    /* 80024424 */ static void setNextStayNo(int);
    /* 800244E8 */ bool checkRoomDisp(int) const;
    /* 8002451C */ void loadRoom(int, u8*, bool);
    /* 8002471C */ void zoneCountCheck(int) const;
    /* 80024844 */ static JKRExpHeap* createMemoryBlock(int, u32);
    /* 800248A8 */ void destroyMemoryBlock();
    /* 8002490C */ static void setArcBank(int, char const*);
    /* 80024940 */ static char* getArcBank(int);
    /* 80024954 */ static int resetArchiveBank(int);
    /* 80024DB0 */ static void SetTimePass(int);
    static s32 GetTimePass();

    inline static s8 getStayNo() { return struct_80450D64; }
    s8 getMemoryBlockID(int i_roomNo) { return mStatus[i_roomNo].mMemBlockID; }
    bool checkStatusFlag(int i_roomNo, u8 flag) const {
        return cLib_checkBit(mStatus[i_roomNo].unk_0x3F4, flag);
    }
    static char* getDemoArcName() { return mDemoArcName; }

    static JKRExpHeap* mMemoryBlock[19];
    static char mArcBank[32][10];
    static dStage_roomStatus_c mStatus[0x40];
    static char mDemoArcName[10];
    static u32 mProcID;
    static char* mArcBankName;
    static char* mArcBankData;
    static roomDzs_c m_roomDzs;

private:
    u8 field_0x0[4];
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

private:
    s8 enabled;
    u8 wipe;
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
    /* 0x000 */ stage_tgsc_class* unk_0x0;
    /* 0x004 */ stage_tgsc_data_class unk_0x4[0x40];
};  // Size = 0x904

typedef int (*dStage_Func)(dStage_dt_c*, void*, int, void*);

struct FuncTable {
    char identifier[8];
    dStage_Func function;
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

u8 dStage_roomRead_dt_c_GetReverbStage(roomRead_class&, int);
void dStage_changeScene(int, f32, u32, s8, s16, int);

inline u8 dStage_roomRead_dt_c_GetLoadRoomIndex(u8 param_0) {
    return param_0 & 0x3f;
}

inline u32 dStage_stagInfo_GetSTType(stage_stag_info_class* pstag) {
    return pstag->field_0x0c >> 0x10 & 7;
}

inline u32 dStage_stagInfo_GetEscapeWarp(stage_stag_info_class* pstag) {
    return pstag->field_0x10 >> 0x18;
}

inline u32 dStage_stagInfo_GetMiniMap(stage_stag_info_class* pstag) {
    return (pstag->field_0x0a >> 0xD) & 7;
}

inline s8 dStage_sclsInfo_getSceneLayer(stage_scls_info_class* p_info) {
    return p_info->field_0xb & 0xF;
}

inline s8 dStage_sclsInfo_getWipe(stage_scls_info_class* p_info) {
    return p_info->mWipe;
}

inline s8 dStage_sclsInfo_getWipeTime(stage_scls_info_class* p_info) {
    return p_info->field_0xb >> 5;
}

inline s8 dStage_sclsInfo_getTimeH(stage_scls_info_class* p_info) {
    return (p_info->field_0xa >> 4) | (p_info->field_0xb & 16);
}

inline u32 dStage_FileList_dt_getMiniMap(dStage_FileList_dt_c* p_fList) {
    return p_fList->field_0x0 >> 3 & 7;
}

#endif /* D_D_STAGE_H */
