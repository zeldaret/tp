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

class dStage_stageDt_c {
public:
    stage_camera_class* getCamera(void);
    stage_arrow_class* getArrow(void);
    stage_actor_class* getPlayer(void);
    roomRead_class* getRoom(void);
    stage_map_info_class* getMapInfo(void);
    stage_map_info_dummy_class* getMapInfoBase(void);
    stage_palette_info_class* getPaletteInfo(void);
    stage_pselect_info_class* getPselectInfo(void);
    stage_envr_info_class* getEnvrInfo(void);
    stage_vrbox_info_class* getVrboxInfo(void);
    stage_vrboxcol_info_class* getVrboxcolInfo(void);
    stage_plight_info_class* getPlightInfo(void);
    dStage_MapEventInfo_c* getMapEventInfo(void);
    u32 getPaletteNumInfo(void);
    u32 getPselectNumInfo(void);
    u32 getEnvrNumInfo(void);
    u32 getVrboxNumInfo(void);
    int getVrboxcolNumInfo(void);
    u32 getPlightNumInfo(void);
    u16 getPlayerNum(void);
    stage_stag_info_class* getStagInfo(void);
    stage_scls_info_dummy_class* getSclsInfo(void);
    dStage_dPnt_c* getPntInfo(void);
    dStage_dPath_c* getPathInfo(void);
    dStage_dPnt_c* getPnt2Inf(void);
    dStage_dPath_c* getPath2Info(void);
    dStage_SoundInfo_c* getSoundInf(void);
    dStage_SoundInfo_c* getSoundInfCL(void);
    dStage_FloorInfo_c* getFloorInfo(void);
    dStage_MemoryConfig_c* getMemoryConfig(void);
    dStage_MemoryMap_c* getMemoryMap(void);
    dStage_Multi_c* getMulti(void);
    dStage_Multi_c* getOldMulti(void);
    stage_tresure_class* getTreasure(void);
    dStage_DMap_c* getDMap(void);
    stage_tgsc_class* getDrTg(void);
    stage_tgsc_class* getDoor(void);
    dStage_Elst_c* getElst(void);

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
    void setPlightInfo(stage_plight_info_class*);
    void setMapEventInfo(dStage_MapEventInfo_c*);
    void setPaletteNumInfo(u32);
    void setPselectNumInfo(u32);
    void setEnvrNumInfo(u32);
    void setVrboxNumInfo(u32);
    void setVrboxcolNumInfo(int);
    void setPlightNumInfo(u32);
    void setPlayerNum(u16);
    void setStagInfo(stage_stag_info_class*);
    void setSclsInfo(stage_scls_info_dummy_class*);
    void setPntInfo(dStage_dPnt_c*);
    void setPathInfo(dStage_dPath_c*);
    void setPnt2Inf(dStage_dPnt_c*);
    void setPath2Info(dStage_dPath_c*);
    void setSoundInf(dStage_SoundInfo_c*);
    void setSoundInfCL(dStage_SoundInfo_c*);
    void setFloorInfo(dStage_FloorInfo_c*);
    void setMemoryConfig(dStage_MemoryConfig_c*);
    void setMemoryMap(dStage_MemoryMap_c*);
    void setMulti(dStage_Multi_c*);
    void setOldMulti(dStage_Multi_c*);
    void setTreasure(stage_tresure_class*);
    void setDMap(dStage_DMap_c*);
    void setDrTg(stage_tgsc_class*);
    void setDoor(stage_tgsc_class*);
    void setElst(dStage_Elst_c*);

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