#ifndef D_MAP_D_MAP_PATH_FMAP_H
#define D_MAP_D_MAP_PATH_FMAP_H

#include "d/map/d_map_path.h"
#include "d/d_tresure.h"
#include "d/d_stage.h"

class fmpTresTypeGroupData_c {
public:
    fmpTresTypeGroupData_c() {
        mpTresData = NULL;
        mpNext = NULL;
    }

    /* 8003EB70 */ ~fmpTresTypeGroupData_c();

    void setTypeGroupNo(u8 i_no) { mTypeGroupNo = i_no; }
    void setNextData(fmpTresTypeGroupData_c* i_next) { mpNext = i_next; }
    void setTresData(const dTres_c::data_s* i_data) { mpTresData = i_data; }
    const dTres_c::data_s* getTresData() { return mpTresData; }
    fmpTresTypeGroupData_c* getNextData() { return mpNext; }

    /* 0x0 */ const dTres_c::data_s* mpTresData;
    /* 0x0 */ fmpTresTypeGroupData_c* mpNext;
    /* 0x8 */ u8 mTypeGroupNo;
};  // Size: 0xC

class fmpTresTypeGroupDataList_c {
public:
    /* 8003D790 */ void addTypeGroupData(u8, dTres_c::data_s const*);
    /* 8003EB10 */ ~fmpTresTypeGroupDataList_c();
    /* 8003EC90 */ fmpTresTypeGroupDataList_c();

    /* 0x0 */ fmpTresTypeGroupData_c* mpTypeGroupDataHead;
    /* 0x4 */ fmpTresTypeGroupData_c* mpNextData;
};

class fmpTresTypeGroupDataListAll_c {
public:
    void addTypeGroupData(u8 i_typeGroupNo, const dTres_c::data_s* i_data) {
        mpTypeGroupData[i_typeGroupNo].addTypeGroupData(i_typeGroupNo, i_data);
    }

    /* 0x0 */ fmpTresTypeGroupDataList_c mpTypeGroupData[17];
};

class dMenu_Fmap_data_c {
public:
    dTres_c::list_class* getTresure() { return mp_tresure; }
    f32 getFilelist2MinX() { return m_fileList2->mLeftRmX; }
    f32 getFilelist2MinZ() { return m_fileList2->mInnerRmZ; }
    f32 getFilelist2MaxX() { return m_fileList2->mRightRmX; }
    f32 getFilelist2MaxZ() { return m_fileList2->mFrontRmZ; }

    void setFileList2(dStage_FileList2_dt_c* i_fileList) { m_fileList2 = i_fileList; }
    void setTresure(dTres_c::list_class* i_list) { mp_tresure = i_list; }
    void setMapPath(dDrawPath_c::room_class* i_path) { mp_mapPath = i_path; }

    /* 0x0 */ dTres_c::list_class* mp_tresure;
    /* 0x4 */ dStage_FileList2_dt_c* m_fileList2;
    /* 0x8 */ dDrawPath_c::room_class* mp_mapPath;
    /* 0xC */ void* mp_dzsData;
};

class dMenu_Fmap_stage_data_c;
class dMenu_Fmap_room_data_c {
public:
    /* 8003D818 */ bool isArrival();
    /* 8003D868 */ void buildTresTypeGroup(int, int, int);
    /* 8003D92C */ void buildFmapRoomData(int, int, f32, f32, f32, f32);

    f32 getFileList2MinX() { return mp_fmapData->getFilelist2MinX(); }
    f32 getFileList2MinZ() { return mp_fmapData->getFilelist2MinZ(); }
    f32 getFileList2MaxX() { return mp_fmapData->getFilelist2MaxX(); }
    f32 getFileList2MaxZ() { return mp_fmapData->getFilelist2MaxZ(); }
    dMenu_Fmap_room_data_c* getNextData() { return mp_nextData; }
    int getRoomNo() { return m_roomNo; }

    /* 0x00 */ dMenu_Fmap_data_c* mp_fmapData;
    /* 0x04 */ fmpTresTypeGroupDataListAll_c* mp_fmpTresTypeGroupDataListAll;
    /* 0x08 */ dMenu_Fmap_room_data_c* mp_nextData;
    /* 0x0C */ dMenu_Fmap_stage_data_c* mp_parentStage;
    /* 0x10 */ u8 m_roomNo;
};

class dMenu_Fmap_stage_arc_data_c {
public:
    u8 getVisitedRoomSaveTableNo() { return mVisitedRoomSaveTableNo; }

    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 mSaveTableNo;
    /* 0x2 */ u8 mVisitedRoomSaveTableNo;
};

class dMenu_Fmap_stage_data_c {
public:
    /* 8003D95C */ bool isArrival();
    /* 8003D9D8 */ int buildFmapStageData(int, f32, f32);

    dMenu_Fmap_stage_arc_data_c* getStageArc() { return mpStageArc; }
    dMenu_Fmap_stage_data_c* getNextData() { return mpNextData; }

    /* 0x00 */ char name[8];
    /* 0x08 */ dMenu_Fmap_stage_arc_data_c* mpStageArc;
    /* 0x0C */ dMenu_Fmap_room_data_c* mp_roomTop;
    /* 0x10 */ dMenu_Fmap_stage_data_c* mpNextData;
    /* 0x14 */ f32 m_offsetX;
    /* 0x18 */ f32 m_offsetZ;
    /* 0x1C */ f32 m_stageMinX;
    /* 0x20 */ f32 m_stageMinZ;
    /* 0x24 */ f32 m_stageMaxX;
    /* 0x28 */ f32 m_stageMaxZ;
    /* 0x2C */ int m_stageCntNo;
};

class dMenu_Fmap_region_data_c {
public:
    /* 8003DB48 */ dMenu_Fmap_stage_data_c* getMenuFmapStageData(int);
    /* 8003DB70 */ void getPointStagePathInnerNo(f32, f32, int, int*, int*);
    /* 8003DEE0 */ void buildFmapRegionData(int);

    /* 0x00 */ dMenu_Fmap_stage_data_c* mpMenuFmapStageDataTop;
    /* 0x04 */ dMenu_Fmap_region_data_c* mpNextData;
    /* 0x08 */ f32 mRegionOffsetX;
    /* 0x0C */ f32 mRegionOffsetZ;
    /* 0x10 */ f32 mRegionMinX;
    /* 0x14 */ f32 mRegionMaxX;
    /* 0x18 */ f32 mRegionMinZ;
    /* 0x1C */ f32 mRegionMaxZ;
    /* 0x20 */ int mRegionNo;
};

struct dMenu_Fmap_world_data_c {
    /* 8003E028 */ void create(dMenu_Fmap_region_data_c*);
    /* 8003E04C */ void buildFmapWorldData();

    /* 0x00 */ dMenu_Fmap_region_data_c* mp_fmapRegionData;
    /* 0x04 */ f32 m_worldMinX;
    /* 0x08 */ f32 m_worldMinZ;
    /* 0x0C */ f32 m_worldMaxX;
    /* 0x10 */ f32 m_worldMaxZ;
};

struct dMenuFmapIconPointer_c {
    /* 8003E114 */ void init(dMenu_Fmap_region_data_c*, dMenu_Fmap_stage_data_c*, u8, int, int);
    /* 8003E1C0 */ void getFirstData();
    /* 8003E2BC */ void getData();
    /* 8003E350 */ void getFirstRoomData();
    /* 8003E37C */ void getNextRoomData();
    /* 8003E3A4 */ void getNextStageData();
    /* 8003E3D8 */ void getNextData();
    /* 8003E490 */ void nextData();
    /* 8003E510 */ void getValidData();
};

struct dMenuFmapIconDisp_c {
    /* 8003E578 */ void getPosition(int*, int*, f32*, f32*, dTres_c::data_s const**);
    /* 8003E6E8 */ void isDrawDisp();
};

#endif /* D_MAP_D_MAP_PATH_FMAP_H */
