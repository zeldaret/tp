#ifndef D_D_STAGE_H
#define D_D_STAGE_H

#include "JSystem/JKernel/JKRExpHeap.h"
#include "d/save/d_save.h"
#include "dolphin/types.h"
#include "f_op/f_op_actor.h"
#include "msl_c/string.h"

struct stage_vrboxcol_info_class {};

struct stage_vrbox_info_class {};

struct stage_tresure_class {};

class stage_tgsc_data_class {
public:
    /* 8002847C */ ~stage_tgsc_data_class();
    /* 800284B8 */ stage_tgsc_data_class();

private:
    /* 0x00 */ u32 field_0x00;
    /* 0x04 */ u32 field_0x04;
    /* 0x08 */ u8 field_0x08[0x18];  // fopAcM_prmBase_class
    /* 0x20 */ u16 field_0x20;
    /* 0x22 */ u8 field_0x22;
};  // Size = 0x24

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

struct stage_actor_data_class {
    /* 0x00 */ const char* mName;
};

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

class dStage_dt_c {
public:
    void setRoomNo(s8 roomNo) { mRoomNo = roomNo; }
    s8 getRoomNo() { return mRoomNo; }

private:
    /* 0x04 */ s8 mRoomNo;
};

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
    class roomDzs_c {
    public:
        /* 80024A34 */ void create(u8);
        /* 80024ABC */ void remove();
        /* 80024B44 */ void add(u8, u8);

        /* 0x00 */ u8 m_num;
        /* 0x04 */ JKRHeap* m_dzs;
    };

    void init(void);
    static int getZoneNo(int room);
    /* 80024338 */ void initZone();
    /* 80024384 */ void getStatusRoomDt(int);
    /* 800243B0 */ void getMemoryBlock(int);
    /* 800243E8 */ static void setStayNo(int);
    /* 80024424 */ static void setNextStayNo(int);
    /* 800244E8 */ void checkRoomDisp(int) const;
    /* 8002451C */ void loadRoom(int, u8*, bool);
    /* 8002471C */ void zoneCountCheck(int) const;
    /* 80024844 */ static JKRExpHeap* createMemoryBlock(int, u32);
    /* 800248A8 */ void destroyMemoryBlock();
    /* 8002490C */ void setArcBank(int, char const*);
    /* 80024940 */ void getArcBank(int);
    /* 80024954 */ void resetArchiveBank(int);
    /* 80024DB0 */ static void SetTimePass(int);

    static JKRExpHeap* mMemoryBlock[19];
    static u8 mArcBank[320];
    static u8 mStatus[65792];
    static u8 mDemoArcName[10 + 2 /* padding */];
    static u32 mProcID;
    static u8 mArcBankName[4];
    static u8 mArcBankData[4];
    static roomDzs_c m_roomDzs;

    u8 field_0x0[164];
};

#pragma pack(push, 1)
class dStage_nextStage_c {
public:
    void set(const char*, s8, s16, s8, s8, u8);

private:
    char mStage[8];
    s16 mPoint;
    u8 mRoomNo;
    u8 mLayer;
    u8 field_0xc;
    u8 field_0xd;
    s8 enabled;
    u8 wipe;
    u8 wipe_speed;
};
#pragma pack(pop)

#pragma pack(push, 1)
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
#pragma pack(pop)

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
struct dStage_objectNameInf {
    char mName[8];
    s16 mProcName;
    s8 mSubtype;
};  // Size: 0xC

typedef void (*dStage_Func)(dStage_dt_c*, void*, int, void*);

struct FuncTable {
    char identifier[8];
    dStage_Func function;
};

const char* dStage_getName2(s16, s8);
dStage_objectNameInf* dStage_searchName(const char*);
static void dStage_stageKeepTresureInit(dStage_dt_c*, void*, int, void*);
static void dStage_filiInfo2Init(dStage_dt_c*, void*, int, void*);
static void dStage_mapPathInitCommonLayer(dStage_dt_c*, void*, int, void*);
static void dStage_mapPathInit(dStage_dt_c*, void*, int, void*);
static void dStage_memaInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_mecoInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_stagInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_soundInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_lgtvInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_envrInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_pselectInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_paletteInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_vrboxcolInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_roomDrtgInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_tgscInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_actorInit(dStage_dt_c*, void*, int, void*);
static void dStage_layerTresureInit(dStage_dt_c*, void*, int, void*);
static void dStage_elstInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_rppnInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_rpatInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_multInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_playerInit(dStage_dt_c*, void*, int, void*);
static void dStage_cameraInit(dStage_dt_c*, void*, int, void*);
static void dStage_actorInit_always(dStage_dt_c*, void*, int, void*);
static void dStage_roomReadInit(dStage_dt_c*, void*, int, void*);
static void dStage_arrowInit(dStage_dt_c*, void*, int, void*);
static void dStage_vrboxInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_sclsInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_tgscInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_plightInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_ppntInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_pathInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_filiInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_stageDrtgInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_floorInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_dmapInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_stEventInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_soundInfoInitCL(dStage_dt_c*, void*, int, void*);
static void dStage_RoomCameraInit(dStage_dt_c*, void*, int, void*);
static void dStage_lbnkInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_actorCommonLayerInit(dStage_dt_c*, void*, int, void*);
static void dStage_roomTresureInit(dStage_dt_c*, void*, int, void*);
static void dStage_tgscCommonLayerInit(dStage_dt_c*, void*, int, void*);
static void dStage_mapEventInfoInit(dStage_dt_c*, void*, int, void*);
static void dStage_fieldMapTresureInit(dStage_dt_c*, void*, int, void*);
static void dStage_fieldMapFiliInfo2Init(dStage_dt_c*, void*, int, void*);
static void dStage_fieldMapMapPathInit(dStage_dt_c*, void*, int, void*);

inline u8 dStage_roomRead_dt_c_GetLoadRoomIndex(u8 param_0) {
    return param_0 & 0x3f;
}

#endif /* D_D_STAGE_H */
