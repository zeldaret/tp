#ifndef __D_STAGE_H_
#define __D_STAGE_H_
#include "global.h"

class stage_arrow_class {};

class stage_palette_info_class {};

class stage_map_info_dummy_class {};

class dStage_dPath_c {};

class stage_camera_class {};

class stage_pselect_info_class {};

class dStage_MapEventInfo_c {};

class dStage_dPnt_c {};

class stage_map_info_class {};

class dStage_SoundInfo_c {};

class stage_tgsc_class {};

class dStage_DMap_c {};

class stage_scls_info_dummy_class {};

class dStage_Elst_c {};

class stage_vrbox_info_class {};

class stage_envr_info_class {};

class dStage_MemoryMap_c {};

class dStage_MemoryConfig_c {};

class roomRead_class {};

class stage_stag_info_class {};

class stage_actor_class {};

class stage_plight_info_class {};

class stage_tresure_class {};

class stage_vrboxcol_info_class {};

class dStage_FloorInfo_c {};

class dStage_Multi_c {};

class dStage_FileList2_dt_c {};

class dStage_FileList_dt_c {};

class dStage_Lbnk_c {};

class stage_pure_lightvec_info_class {};

class dStage_stageDt_c {
public:
    stage_camera_class* getCamera(void) const;
    stage_arrow_class* getArrow(void) const;
    stage_actor_class* getPlayer(void) const;
    roomRead_class* getRoom(void) const;
    stage_map_info_class* getMapInfo(void) const;
    stage_map_info_dummy_class* getMapInfoBase(void) const;
    stage_palette_info_class* getPaletteInfo(void) const;
    stage_pselect_info_class* getPselectInfo(void) const;
    stage_envr_info_class* getEnvrInfo(void) const;
    stage_vrbox_info_class* getVrboxInfo(void) const;
    stage_vrboxcol_info_class* getVrboxcolInfo(void) const;
    dStage_FileList2_dt_c* getFileList2Info(void) const;
    dStage_FileList_dt_c* getFileListInfo(void) const;
    stage_plight_info_class* getPlightInfo(void) const;
    dStage_MapEventInfo_c* getMapEventInfo(void) const;
    int getPaletteNumInfo(void) const;
    int getPselectNumInfo(void) const;
    int getEnvrNumInfo(void) const;
    int getVrboxNumInfo(void) const;
    int getVrboxcolNumInfo(void) const;
    int getPlightNumInfo(void) const;
    u16 getPlayerNum(void) const;
    int getMapInfo2(int) const;
    stage_stag_info_class* getStagInfo(void) const;
    stage_scls_info_dummy_class* getSclsInfo(void) const;
    dStage_Lbnk_c* getLbnk(void) const;
    dStage_dPnt_c* getPntInf(void) const;
    dStage_dPath_c* getPathInf(void) const;
    dStage_dPnt_c* getPnt2Inf(void) const;
    dStage_dPath_c* getPath2Inf(void) const;
    dStage_SoundInfo_c* getSoundInf(void) const;
    dStage_SoundInfo_c* getSoundInfCL(void) const;
    dStage_FloorInfo_c* getFloorInfo(void) const;
    dStage_MemoryConfig_c* getMemoryConfig(void) const;
    dStage_MemoryMap_c* getMemoryMap(void) const;
    dStage_Multi_c* getMulti(void) const;
    dStage_Multi_c* getOldMulti(void) const;
    stage_tresure_class* getTresure(void) const;
    dStage_DMap_c* getDMap(void) const;
    stage_tgsc_class* getDrTg(void) const;
    stage_tgsc_class* getDoor(void) const;
    dStage_Elst_c* getElst(void);
    stage_pure_lightvec_info_class* getLightVecInfo(void) const;
    int getLightVecInfoNum(void) const;
    int getMapPath(void);

    void init(void);
    void resetOldMulti(void);

    void setCamera(stage_camera_class*);
    void setArrow(stage_arrow_class*);
    void setPlayer(stage_actor_class*);
    void setRoom(roomRead_class*);
    void setMapInfo(stage_map_info_class*);
    void setMapInfoBase(stage_map_info_dummy_class*);
    void setPaletteInfo(stage_palette_info_class*);
    void setPselectInfo(stage_pselect_info_class*);
    void setEnvrInfo(stage_envr_info_class*);
    void setVrboxInfo(stage_vrbox_info_class*);
    void setVrboxcolInfo(stage_vrboxcol_info_class*);
    void setFileList2Info(dStage_FileList2_dt_c*);
    void setFileListInfo(dStage_FileList_dt_c*);
    void setPlightInfo(stage_plight_info_class*);
    void setMapEventInfo(dStage_MapEventInfo_c*);
    void setPaletteNumInfo(int);
    void setPselectNumInfo(int);
    void setEnvrNumInfo(int);
    void setVrboxNumInfo(int);
    void setVrboxcolNumInfo(int);
    void setPlightNumInfo(int);
    void setPlayerNum(u16);
    void setStagInfo(stage_stag_info_class*);
    void setSclsInfo(stage_scls_info_dummy_class*);
    void setLbnk(dStage_Lbnk_c*);
    void setPntInfo(dStage_dPnt_c*);
    void setPathInfo(dStage_dPath_c*);
    void setPnt2Info(dStage_dPnt_c*);
    void setPath2Info(dStage_dPath_c*);
    void setSoundInf(dStage_SoundInfo_c*);
    void setSoundInfCL(dStage_SoundInfo_c*);
    void setFloorInfo(dStage_FloorInfo_c*);
    void setMemoryConfig(dStage_MemoryConfig_c*);
    void setMemoryMap(dStage_MemoryMap_c*);
    void setMulti(dStage_Multi_c*);
    void setOldMulti(void);
    void setTreasure(stage_tresure_class*);
    void setDMap(dStage_DMap_c*);
    void setDrTg(stage_tgsc_class*);
    void setDoor(stage_tgsc_class*);
    void setElst(dStage_Elst_c*);
    void setLightVecInfo(stage_pure_lightvec_info_class*);
    void setLightVecInfoNum(int);
    void setTresure(stage_tresure_class*);
    void setMapPath(void*);

private:
    u8 field_0x0[0x8];
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
    dStage_SoundInfo_c* mSoundInfo;
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
};

#pragma pack(push, 1)
class dStage_roomControl_c {
public:
private:
    u8 field_0x0[164];
};
#pragma pack(pop)

#pragma pack(push, 1)
class dStage_nextStage_c {
public:
private:
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u8 field_0x8;
    u8 field_0x9;
    u8 field_0xa;
    u8 field_0xb;
    u8 field_0xc;
    u8 field_0xd;
    u8 enabled;
    u8 wipe;
    u8 wipe_speed;
};
#pragma pack(pop)

#pragma pack(push, 1)
class dStage_startStage_c {
public:
private:
    /* 0x0 */ char mStage[8];
    /* 0x8 */ s16 mPoint;
    /* 0xA */ s8 mRoomNo;
    /* 0xB */ s8 mLayer;
    /* 0xC */ s8 mDarkArea;
};
#pragma pack(pop)

#endif