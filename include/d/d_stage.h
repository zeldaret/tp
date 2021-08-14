#ifndef D_D_STAGE_H
#define D_D_STAGE_H

#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "msl_c/string.h"

struct stage_vrboxcol_info_class {};

struct stage_vrbox_info_class {};

struct stage_tresure_class {};

struct stage_tgsc_data_class {
    /* 8002847C */ ~stage_tgsc_data_class();
    /* 800284B8 */ stage_tgsc_data_class();
};

struct stage_tgsc_class {};

struct stage_stag_info_class {};

struct stage_scls_info_dummy_class {};

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

struct roomRead_class {};

struct dStage_FileList2_dt_c {};

struct dStage_MemoryMap_c {};

struct dStage_dPath_c {};

struct dStage_Multi_c {};

struct dStage_SoundInfo_c {};

struct dStage_FileList_dt_c {};

struct dStage_dPnt_c {};

struct dStage_FloorInfo_c {};

struct dStage_Lbnk_c {};

struct dStage_Elst_c {};

struct dStage_MemoryConfig_c {};

struct dStage_DMap_c {};

struct dStage_MapEventInfo_c {};

// TODO: a lot more functions are virtual, fix
class dStage_dt_c {
public:
    dStage_dt_c() {}

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
    /* vtable */
    // u8 field_0x4[0x4];
    // stage_camera_class* mCamera;
    // stage_arrow_class* mArrow;
    // stage_actor_class* mPlayer;
    // roomRead_class* mRoom;
    // stage_map_info_class* mMapInfo;
    // stage_map_info_dummy_class* mMapInfoBase;
    // stage_palette_info_class* mPaletteInfo;
    // stage_pselect_info_class* mPselectInfo;
    // stage_envr_info_class* mEnvrInfo;
    // stage_vrbox_info_class* mVrboxInfo;
    // stage_vrboxcol_info_class* mVrboxcolInfo;
    // stage_plight_info_class* mPlightInfo;
    // dStage_MapEventInfo_c* mMapEventInfo;
    // u32 mPaletteNumInfo;
    // u32 mPselectNumInfo;
    // u32 mEnvrNumInfo;
    // u32 mVrboxNumInfo;
    // int mVrboxcolNumInfo;
    // u32 mPlightNumInfo;
    // u16 mPlayerNum;
    // u16 field_0x56;
    // u16 field_0x58;
    // u16 field_0x5a;
    // stage_stag_info_class* mStagInfo;
    // stage_scls_info_dummy_class* mSclsInfo;
    // dStage_dPnt_c* mPntInfo;
    // dStage_dPath_c* mPathInfo;
    // dStage_dPnt_c* mPnt2Inf;
    // dStage_dPath_c* mPath2Info;
    // dStage_SoundInfo_c* mSoundInf;
    // dStage_SoundInfo_c* mSoundInfCL;
    // dStage_FloorInfo_c* mFloorInfo;
    // dStage_MemoryConfig_c* mMemoryConfig;
    // dStage_MemoryMap_c* mMemoryMap;
    // dStage_Multi_c* mMulti;
    // dStage_Multi_c* mOldMulti;
    // stage_tresure_class* mTreasure;
    // dStage_DMap_c* mDMap;
    // stage_tgsc_class* mDrTg;
    // stage_tgsc_class* mDoor;
    // dStage_Elst_c* mElst;
};

class dStage_roomDt_c {
public:
    stage_pure_lightvec_info_class* getLightVecInfo(void) const;
    int getLightVecInfoNum(void) const;
    stage_map_info_class* getMapInfo(void) const;
    stage_map_info_dummy_class* getMapInfoBase(void) const;
    int getMapPath(void);
    stage_vrbox_info_class* getVrboxInfo(void) const;
    stage_vrboxcol_info_class* getVrboxcolInfo(void) const;
    dStage_FileList2_dt_c* getFileList2Info(void) const;
    dStage_FileList_dt_c* getFileListInfo(void) const;
    stage_actor_class* getPlayer(void) const;
    dStage_dPnt_c* getPnt2Inf(void) const;
    dStage_dPath_c* getPath2Inf(void) const;
    stage_camera_class* getCamera(void) const;
    stage_arrow_class* getArrow(void) const;
    dStage_MapEventInfo_c* getMapEventInfo(void) const;
    dStage_SoundInfo_c* getSoundInf(void) const;
    dStage_SoundInfo_c* getSoundInfCL(void) const;
    stage_scls_info_dummy_class* getSclsInfo(void) const;
    dStage_Lbnk_c* getLbnk(void) const;
    stage_tresure_class* getTresure(void) const;
    stage_tgsc_class* getDrTg(void) const;
    stage_tgsc_class* getDoor(void) const;
    dStage_FloorInfo_c* getFloorInfo(void) const;
    u16 getPlayerNum(void) const;
    int getEnvrNumInfo(void) const;
    int getVrboxNumInfo(void) const;
    int getVrboxcolNumInfo(void) const;
    int getMapInfo2(int) const;
    int getPlightNumInfo(void) const;
    stage_stag_info_class* getStagInfo(void) const;
    dStage_dPnt_c* getPntInf(void) const;
    dStage_dPath_c* getPathInf(void) const;
    dStage_MemoryConfig_c* getMemoryConfig(void) const;
    dStage_MemoryMap_c* getMemoryMap(void) const;
    dStage_Multi_c* getMulti(void) const;
    dStage_Multi_c* getOldMulti(void) const;
    dStage_DMap_c* getDMap(void) const;
    dStage_Elst_c* getElst(void);
    roomRead_class* getRoom(void) const;
    stage_palette_info_class* getPaletteInfo(void) const;
    stage_pselect_info_class* getPselectInfo(void) const;
    stage_envr_info_class* getEnvrInfo(void) const;
    stage_plight_info_class* getPlightInfo(void) const;
    int getPaletteNumInfo(void) const;
    int getPselectNumInfo(void) const;

    void initFileList2(void);
    void init(void);

    void setLightVecInfo(stage_pure_lightvec_info_class*);
    void setLightVecInfoNum(int);
    void setMapInfo(stage_map_info_class*);
    void setMapInfoBase(stage_map_info_dummy_class*);
    void setVrboxInfo(stage_vrbox_info_class*);
    void setVrboxcolInfo(stage_vrboxcol_info_class*);
    void setFileList2Info(dStage_FileList2_dt_c*);
    void setFileListInfo(dStage_FileList_dt_c*);
    void setPlayer(stage_actor_class*);
    void setPnt2Inf(dStage_dPnt_c*);
    void setPath2Info(dStage_dPath_c*);
    void setCamera(stage_camera_class*);
    void setArrow(stage_arrow_class*);
    void setMapEventInfo(dStage_MapEventInfo_c*);
    void setSoundInf(dStage_SoundInfo_c*);
    void setSoundInfCL(dStage_SoundInfo_c*);
    void setSclsInfo(stage_scls_info_dummy_class*);
    void setLbnk(dStage_Lbnk_c*);
    void setTreasure(stage_tresure_class*);
    void setDrTg(stage_tgsc_class*);
    void setDoor(stage_tgsc_class*);
    void setFloorInfo(dStage_FloorInfo_c*);
    void setPlayerNum(u16);
    void setVrboxNumInfo(int);
    void setVrboxcolNumInfo(int);
    void setStagInfo(stage_stag_info_class*);
    void setPntInfo(dStage_dPnt_c*);
    void setPathInfo(dStage_dPath_c*);
    void setPnt2Info(dStage_dPnt_c*);
    void setPlightNumInfo(int);
    void setMemoryConfig(dStage_MemoryConfig_c*);
    void setMemoryMap(dStage_MemoryMap_c*);
    void setMulti(dStage_Multi_c*);
    void setOldMulti(void);
    void resetOldMulti(void);
    void setTresure(stage_tresure_class*);
    void setDMap(dStage_DMap_c*);
    void setMapPath(void*);
    void setElst(dStage_Elst_c*);
    void setRoom(roomRead_class*);
    void setPaletteInfo(stage_palette_info_class*);
    void setPselectInfo(stage_pselect_info_class*);
    void setEnvrInfo(stage_envr_info_class*);
    void setPlightInfo(stage_plight_info_class*);
    void setPaletteNumInfo(int);
    void setPselectNumInfo(int);
    void setEnvrNumInfo(int);

private:
    u8 field_0x0[0x8];
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

class dStage_roomControl_c {
public:
    struct roomDzs_c {
        /* 80024A34 */ void create(u8);
        /* 80024ABC */ void remove();
        /* 80024B44 */ void add(u8, u8);
    };

    dStage_roomControl_c() {}
    void init(void);
    static int getZoneNo(int room);
    /* 80024338 */ void initZone();
    /* 80024384 */ void getStatusRoomDt(int);
    /* 800243B0 */ void getMemoryBlock(int);
    /* 800243E8 */ void setStayNo(int);
    /* 80024424 */ void setNextStayNo(int);
    /* 800244E8 */ void checkRoomDisp(int) const;
    /* 8002451C */ void loadRoom(int, u8*, bool);
    /* 8002471C */ void zoneCountCheck(int) const;
    /* 80024844 */ void createMemoryBlock(int, u32);
    /* 800248A8 */ void destroyMemoryBlock();
    /* 8002490C */ void setArcBank(int, char const*);
    /* 80024940 */ void getArcBank(int);
    /* 80024954 */ void resetArchiveBank(int);
    /* 80024DB0 */ void SetTimePass(int);

    static u8 mMemoryBlock[76];
    static u8 mArcBank[320];
    static u8 mStatus[65792];
    static u8 mDemoArcName[10 + 2 /* padding */];
    static u8 mProcID[4];
    static u8 mArcBankName[4];
    static u8 mArcBankData[4];
    static u8 m_roomDzs[8];

private:
    u8 field_0x0[164];
};

class dStage_nextStage_c {
public:
    dStage_nextStage_c() {
        enabled = 0; // TODO: maybe wrong
    }
    void set(const char*, s8, s16, s8, s8, u8);

private:
    char mStage[8];
    s16 mPoint;
    u8 mRoomNo;
    u8 mLayer;
    u8 field_0xc;
    s8 enabled;
    u8 wipe;
    u8 wipe_speed;
};

class dStage_startStage_c {
public:
    void set(const char*, s8, s16, s8);
    inline char* getName() { return mStage; }
    s8 getLayer() { return mLayer; }
    void operator=(const dStage_startStage_c& other) {
        strcpy(mStage, other.mStage);
        mPoint = other.mPoint;
        mRoomNo = other.mRoomNo;
        mLayer = other.mLayer;
        mDarkArea = other.mDarkArea;
    }

private:
    /* 0x0 */ char mStage[8];
    /* 0x8 */ s16 mPoint;
    /* 0xA */ s8 mRoomNo;
    /* 0xB */ s8 mLayer;
    /* 0xC */ s8 mDarkArea;
};

class dStage_roomStatus_c : dStage_roomDt_c {
private:
    /* 0x06C */ u8 mJ3DLightInfo[0xA0 - 0x6C];
    /* 0x0A0 */ u8 unk_A0[0x3F7 - 0xA0];
    /* 0x3F7 */ s8 mZoneNo;
    /* 0x3F8 */ u8 unk_3F8[0x404 - 0x3F8];

public:
    int getZoneNo() const { return mZoneNo; }
    /* 80028360 */ ~dStage_roomStatus_c();
    /* 8002839C */ dStage_roomStatus_c();
};  // Size: 0x404

// unknown name
struct objectNameInfo {
    char mName[8];
    s16 mProcTypeID;
    s8 unkA;
};  // Size: 0xC

const char* dStage_getName2(s16, s8);

#endif /* D_D_STAGE_H */
