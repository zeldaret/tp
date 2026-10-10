#include "d/dolzel.h" // IWYU pragma: keep

#include "d/d_com_inf_game.h"
#include "d/d_map_path_fmap.h"
#include <cstring>

#include "d/d_meter_HIO.h"

// real name unknown
struct dMenu_Fmap_point_s {
    f32 x;
    f32 z;
};

void fmpTresTypeGroupDataList_c::addTypeGroupData(u8 i_typeGroupNo,
                                                  dTres_c::data_s const* i_tresData) {
    fmpTresTypeGroupData_c* next = mpNextData;
    fmpTresTypeGroupData_c* fmpTresTypeGroupData_p = new fmpTresTypeGroupData_c();
    JUT_ASSERT(47, fmpTresTypeGroupData_p != NULL);

    if (mpTypeGroupDataHead == NULL) {
        mpTypeGroupDataHead = fmpTresTypeGroupData_p;
    }

    fmpTresTypeGroupData_p->setTresData(i_tresData);
    fmpTresTypeGroupData_p->setNextData(NULL);
    fmpTresTypeGroupData_p->setTypeGroupNo(i_typeGroupNo);

    if (next != NULL) {
        next->setNextData(fmpTresTypeGroupData_p);
    }

    mpNextData = fmpTresTypeGroupData_p;
}

bool dMenu_Fmap_room_data_c::isArrival() {
#if DEBUG
    if (g_fmapHIO.mAllRegionsUnlocked) {
        return true;
    }
#endif

    JUT_ASSERT(84, mp_parentStage != NULL);
    dMenu_Fmap_stage_arc_data_c* stageArc = mp_parentStage->getStageArc();
    JUT_ASSERT(86, stageArc != NULL);
    return dComIfGs_isSaveVisitedRoom(stageArc->getVisitedRoomSaveTableNo(), m_roomNo) != false;
}

void dMenu_Fmap_room_data_c::buildTresTypeGroup(int i_stageNo, int i_roomIndex, int i_roomNo) {
    UNUSED(i_stageNo);
    UNUSED(i_roomIndex);

    dTres_c::list_class* tresure_p = mp_fmapData->getTresure();
    if (tresure_p != NULL) {
        int num = tresure_p->field_0x0;
        dTres_c::data_s* data_p = tresure_p->field_0x4;
        JUT_ASSERT(107, data_p != NULL);

        if (mp_fmpTresTypeGroupDataListAll == NULL) {
            mp_fmpTresTypeGroupDataListAll = new fmpTresTypeGroupDataListAll_c();
            JUT_ASSERT(113, mp_fmpTresTypeGroupDataListAll != NULL);
        }

        for (int i = 0; i < num; i++) {
            data_p->mRoomNo = i_roomNo;
            u8 typeGroupNo = dTres_c::getTypeToTypeGroupNo(data_p->mType);
            mp_fmpTresTypeGroupDataListAll->addTypeGroupData(typeGroupNo, data_p);
            data_p++;
        }
    }
}

void dMenu_Fmap_room_data_c::buildFmapRoomData(int i_stageNo, int i_index, f32 i_regionOffsetX,
                                               f32 i_regionOffsetZ, f32 i_stageOffsetX,
                                               f32 i_stageOffsetZ) {
    UNUSED(i_regionOffsetX);
    UNUSED(i_regionOffsetZ);
    UNUSED(i_stageOffsetX);
    UNUSED(i_stageOffsetZ);

    u8 roomNo = m_roomNo;

    if (mp_fmapData != NULL) {
        buildTresTypeGroup(i_stageNo, i_index, roomNo);
    }
}

bool dMenu_Fmap_stage_data_c::isArrival() {
#if DEBUG
    if (g_fmapHIO.mAllRegionsUnlocked) {
        return true;
    }
#endif

    JUT_ASSERT(186, mpStageArc != NULL);
    JUT_ASSERT(187, mp_roomTop != NULL);

    bool is_arrival = false;
    dMenu_Fmap_room_data_c* room = mp_roomTop;
    int table_no = mpStageArc->getVisitedRoomSaveTableNo();
    for (; !is_arrival && room != NULL; room = room->getNextData()) {
        is_arrival = dComIfGs_isSaveVisitedRoom(table_no, room->getRoomNo()) != false;
    }

    return is_arrival;
}

int dMenu_Fmap_stage_data_c::buildFmapStageData(int i_stageNo, f32 i_regionOffsetX,
                                                f32 i_regionOffsetZ) {
    UNUSED(i_regionOffsetX);
    UNUSED(i_regionOffsetZ);

    dMenu_Fmap_room_data_c* room = mp_roomTop;
    f32 stage_min_x = FLT_MAX;
    f32 stage_min_z = FLT_MAX;
    f32 stage_max_x = -FLT_MAX;
    f32 stage_max_z = -FLT_MAX;
    int room_no = 0;

    f32 room_min_x;
    f32 room_min_z;
    f32 room_max_x;
    f32 room_max_z;

    for (; room != NULL; room_no++) {
        room->buildFmapRoomData(i_stageNo, room_no, i_regionOffsetX, i_regionOffsetZ,
                                m_offsetX, m_offsetZ);
        room_min_x = room->getFileList2MinX();
        room_min_z = room->getFileList2MinZ();
        room_max_x = room->getFileList2MaxX();
        room_max_z = room->getFileList2MaxZ();

        if (room_min_x < stage_min_x) {
            stage_min_x = room_min_x;
        }

        if (room_min_z < stage_min_z) {
            stage_min_z = room_min_z;
        }

        if (room_max_x > stage_max_x) {
            stage_max_x = room_max_x;
        }

        if (room_max_z > stage_max_z) {
            stage_max_z = room_max_z;
        }

        room = room->getNextData();
    }

    if (room_no > 0) {
        m_stageMinX = stage_min_x;
        m_stageMinZ = stage_min_z;
        m_stageMaxX = stage_max_x;
        m_stageMaxZ = stage_max_z;
    } else {
        m_stageMinX = 0.0f;
        m_stageMinZ = 0.0f;
        m_stageMaxX = 0.0f;
        m_stageMaxZ = 0.0f;
    }

    return room_no;
}

dMenu_Fmap_stage_data_c* dMenu_Fmap_region_data_c::getMenuFmapStageData(int param_0) {
    dMenu_Fmap_stage_data_c* stage = mpMenuFmapStageDataTop;
    for (int i = 0; stage != NULL && i < param_0; i++) {
        stage = stage->getNextData();
    }

    return stage;
}

int dMenu_Fmap_region_data_c::getPointStagePathInnerNo(f32 i_pointX, f32 i_pointZ, int i_stageNo,
                                                       int* o_stageNo, int* o_roomNo) {
    dMenu_Fmap_point_s* point;
    dMenu_Fmap_point_s* prev_point;
    u16* point_index;
    dDrawPath_c::line_class* line;
    dDrawPath_c::group_class* group;
    dDrawPath_c::floor_class* floor;
    dMenu_Fmap_point_s* points;
    dDrawPath_c::room_class* path;
    dMenu_Fmap_data_c* map_data;
    dMenu_Fmap_room_data_c* room;
    dMenu_Fmap_stage_data_c* stage;
    int line_num, group_num, floor_num;
    int room_no;
    int point_num, point_no;
    int stage_no = 0;
    int found_stage_no = -1;
    int dir;
    int prev_dir;
    int found_room_no = -1;
    Vec vec1, vec2, cross;
    Vec vec0;
    vec0.x = i_pointX;
    vec0.y = 0.0f;
    vec0.z = i_pointZ;
    vec1.y = 0.0f;
    vec2.y = 0.0f;

    bool outside, found;
    bool sp14 = false;

    stage = mpMenuFmapStageDataTop;
    while (stage != NULL) {
        room_no = 0;
        if (stage->getStageArc() != NULL) {
            int save_table_no = stage->getStageArc()->getVisitedRoomSaveTableNo();

            room = stage->getFmapRoomDataTop();
            while (room != NULL) {
                if (i_stageNo == stage_no || stage->isArrival()) {
                    if (dComIfGs_isSaveVisitedRoom(save_table_no, room->getRoomNo())) {
                        f32 offsetX = mRegionOffsetX + stage->getOffsetX();
                        f32 offsetZ = mRegionOffsetZ + stage->getOffsetZ();

                        map_data = room->getFmapData();
                        if (map_data != NULL) {
                            room_no = 0;

                            path = map_data->getMapPath();
                            if (path != NULL) {
                                floor = path->mpFloor;
                                points = (dMenu_Fmap_point_s*)path->mpFloatData;
                                if (floor != NULL) {
                                    found = false;
                                    floor_num = path->mFloorNum;
                                    for (int floor_no = 0; !found && floor_no < floor_num; floor_no++, floor++) {
                                        group_num = floor->mGroupNum;
                                        group = floor->mpGroup;
                                        if (group == NULL) {
                                            continue;
                                        }
                                        for (int group_no = 0; !found && group_no < group_num; group_no++, group++) {
                                            line_num = group->mLineNum;
                                            if (line_num <= 0) {
                                                continue;
                                            }
                                            line = group->mpLine;
                                            if (line == NULL) {
                                                continue;
                                            }
                                            for (int line_no = 0; !found && line_no < line_num; line_no++, line++) {
                                                if (line->field_0x1 != 3) {
                                                    continue;
                                                }
                                                point_num = line->mDataNum;
                                                if (point_num < 3) {
                                                    continue;
                                                }

                                                outside = false;
                                                point_index = line->mpData;
                                                prev_point = &points[*point_index];
                                                point_index++;
                                                point = &points[*point_index];
                                                point_index++;
                                                point_no = 2;

                                                do {
                                                    vec1.x = prev_point->x + offsetX - vec0.x;
                                                    vec1.z = prev_point->z + offsetZ - vec0.z;
                                                    vec2.x = point->x + offsetX - vec0.x;
                                                    vec2.z = point->z + offsetZ - vec0.z;

                                                    PSVECCrossProduct(&vec1, &vec2, &cross);
                                                    dir = cross.y >= 0.0f ? 0 : -1;

                                                    if (point_no > 2 && dir != prev_dir) {
                                                        outside = true;
                                                        break;
                                                    }

                                                    prev_dir = dir;
                                                    prev_point = point;
                                                    point = &points[*point_index];
                                                    point_index++;
                                                    point_no++;

                                                    if (outside) {
                                                        break;
                                                    }
                                                } while (point_no <= point_num);

                                                if (!outside) {
                                                    found = true;
                                                    found_stage_no = stage_no;
                                                    found_room_no = room->getRoomNo();
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                room_no++;
                room = room->getNextData();
            }
        }
        stage = stage->getNextData();
        stage_no++;
    }

    if (o_stageNo != NULL) {
        *o_stageNo = found_stage_no;
    }
    if (o_roomNo != NULL) {
        *o_roomNo = found_room_no;
    }

    return 1;
}

int dMenu_Fmap_region_data_c::buildFmapRegionData(int param_0) {
    UNUSED(param_0);
    f32 region_min_x = FLT_MAX;
    f32 region_min_z = FLT_MAX;
    f32 region_max_x = -FLT_MAX;
    f32 region_max_z = -FLT_MAX;

    dMenu_Fmap_stage_data_c* stage = mpMenuFmapStageDataTop;
    int stage_no = 0;

    f32 stage_min_x;
    f32 stage_min_z;
    f32 stage_max_x;
    f32 stage_max_z;
    while (stage != NULL) {
        stage->buildFmapStageData(stage_no, mRegionOffsetX, mRegionOffsetZ);
        stage_min_x = stage->getStageMinX() + stage->getOffsetX();
        stage_min_z = stage->getStageMinZ() + stage->getOffsetZ();
        stage_max_x = stage->getStageMaxX() + stage->getOffsetX();
        stage_max_z = stage->getStageMaxZ() + stage->getOffsetZ();

        if (stage_min_x < region_min_x) {
            region_min_x = stage_min_x;
        }
        if (stage_min_z < region_min_z) {
            region_min_z = stage_min_z;
        }
        if (stage_max_x > region_max_x) {
            region_max_x = stage_max_x;
        }
        if (stage_max_z > region_max_z) {
            region_max_z = stage_max_z;
        }

        stage = stage->getNextData();
        stage_no++;
    }

    if (stage_no > 0) {
        mRegionMinX = region_min_x;
        mRegionMinZ = region_min_z;
        mRegionMaxX = region_max_x;
        mRegionMaxZ = region_max_z;
    } else {
        mRegionMinX = 0.0f;
        mRegionMaxX = 0.0f;
        mRegionMinZ = 0.0f;
        mRegionMaxZ = 0.0f;
    }

    return stage_no;
}

void dMenu_Fmap_world_data_c::create(dMenu_Fmap_region_data_c* i_regionData) {
    mp_fmapRegionData = i_regionData;
    buildFmapWorldData();
}

int dMenu_Fmap_world_data_c::buildFmapWorldData() {
    f32 min_x = FLT_MAX;
    f32 min_z = FLT_MAX;
    f32 max_x = -FLT_MAX;
    f32 max_z = -FLT_MAX;

    dMenu_Fmap_region_data_c* region = mp_fmapRegionData;
    int region_no = 0;

    f32 region_min_x;
    f32 region_min_z;
    f32 region_max_x;
    f32 region_max_z;
    while (region != NULL) {
        region_min_x = region->getRegionMinX() + region->getRegionOffsetX();
        region_min_z = region->getRegionMinZ() + region->getRegionOffsetZ();
        region_max_x = region->getRegionMaxX() + region->getRegionOffsetX();
        region_max_z = region->getRegionMaxZ() + region->getRegionOffsetZ();

        if (region_min_x < min_x) {
            min_x = region_min_x;
        }
        if (region_min_z < min_z) {
            min_z = region_min_z;
        }
        if (region_max_x > max_x) {
            max_x = region_max_x;
        }
        if (region_max_z > max_z) {
            max_z = region_max_z;
        }

        region = region->getNextData();
        region_no++;
    }

    if (region_no > 0) {
        m_worldMinX = min_x;
        m_worldMinZ = min_z;
        m_worldMaxX = max_x;
        m_worldMaxZ = max_z;
    } else {
        m_worldMinX = 0.0f;
        m_worldMaxX = 0.0f;
        m_worldMinZ = 0.0f;
        m_worldMaxZ = 0.0f;
    }

    return region_no;
}

bool dMenuFmapIconPointer_c::init(dMenu_Fmap_region_data_c* i_regionData,
                                 dMenu_Fmap_stage_data_c* i_stageData, u8 i_typeGroupNo,
                                 int i_stayStageNo, int i_stayRoomNo) {
    stage_stag_info_class* pstag = dComIfGp_getStage()->getStagInfo();
    JUT_ASSERT(1458, pstag != NULL);
    if (pstag == NULL) {
        return false;
    }

    mSaveTbl = dStage_stagInfo_GetSaveTbl(pstag);
    mpRegionData = i_regionData;
    m_menuFmapStageData = i_stageData;
    mType = dTres_c::getTypeGroupNoToType(i_typeGroupNo);
    mTypeGroupNo = i_typeGroupNo;
    mStayStageNo = i_stayStageNo;
    mStayRoomNo = i_stayRoomNo;
    mStageNo = 0;
    getFirstRoomData();
    return true;
}

bool dMenuFmapIconPointer_c::getFirstData() {
    bool ret = false;
    JUT_ASSERT(1510, m_menuFmapStageData != NULL);
    JUT_ASSERT(1511, m_menuFmapStageData->getStageArc() != NULL);
    if (!strcmp(m_menuFmapStageData->getStageName(), dComIfGp_getStartStageName())) {
        mpTresTypeGroupData = dTres_c::getFirstData(mTypeGroupNo);
        m_tresData = mpTresTypeGroupData->getConstDataPointer();
    } else {
        mpFmpTresTypeGroupDataList = NULL;
        mpFmpTresTypeGroupData = NULL;
        m_tresData = NULL;
        mpFmpTresTypeGroupDataListAll = m_menuFmapRoomData->getTypeGroupDataListAll();
        if (mpFmpTresTypeGroupDataListAll != NULL) {
            mpFmpTresTypeGroupDataList =
                mpFmpTresTypeGroupDataListAll->getTypeGroupDataList(mTypeGroupNo);
            if (mpFmpTresTypeGroupDataList != NULL) {
                mpFmpTresTypeGroupData = mpFmpTresTypeGroupDataList->getTypeGroupDataHead();
                if (mpFmpTresTypeGroupData != NULL) {
                    do {
                        m_tresData = mpFmpTresTypeGroupData->getTresData();
                        if (m_tresData != NULL) {
                            ret = true;
                            break;
                        }
                        mpFmpTresTypeGroupData = mpFmpTresTypeGroupData->getNextData();
                    } while (m_tresData != NULL);  // !@bug presumably supposed to be mpFmpTresTypeGroupData != NULL
                }
            }
        }
    }
    return ret;
}

bool dMenuFmapIconPointer_c::getData() {
    bool ret = false;
    if (!strcmp(m_menuFmapStageData->getStageName(), dComIfGp_getStartStageName())) {
        if (mpTresTypeGroupData != NULL
            && m_menuFmapRoomData->getRoomNo() == mpTresTypeGroupData->getRoomNo())
        {
            m_tresData = mpTresTypeGroupData->getConstDataPointer();
            ret = true;
        }
    } else {
        if (m_tresData != NULL) {
            ret = true;
        }
    }
    return ret;
}

void dMenuFmapIconPointer_c::getFirstRoomData() {
    m_menuFmapRoomData = m_menuFmapStageData->getFmapRoomDataTop();
    getFirstData();
}

bool dMenuFmapIconPointer_c::getNextRoomData() {
    bool ret = false;
    m_menuFmapRoomData = m_menuFmapRoomData->getNextData();
    if (m_menuFmapRoomData == NULL) {
        ret = true;
    }
    return ret;
}

bool dMenuFmapIconPointer_c::getNextStageData() {
    bool ret = false;
    mStageNo++;
    m_menuFmapStageData = m_menuFmapStageData->getNextData();
    if (m_menuFmapStageData == NULL) {
        ret = true;
    }
    return ret;
}

bool dMenuFmapIconPointer_c::getNextData() {
    bool ret = true;
    if (!strcmp(m_menuFmapStageData->getStageName(), dComIfGp_getStartStageName())) {
        if (mpTresTypeGroupData != NULL) {
            mpTresTypeGroupData = dTres_c::getNextData(mpTresTypeGroupData);
            if (mpTresTypeGroupData != NULL) {
                m_tresData = mpTresTypeGroupData->getConstDataPointer();
                ret = false;
            }
        }
    } else {
        if (mpFmpTresTypeGroupData != NULL) {
            mpFmpTresTypeGroupData = mpFmpTresTypeGroupData->getNextData();
            if (mpFmpTresTypeGroupData != NULL) {
                m_tresData = mpFmpTresTypeGroupData->getTresData();
                if (m_tresData != NULL) {
                    ret = false;
                }
            }
        }
    }
    return ret;
}

bool dMenuFmapIconPointer_c::nextData() {
    bool ret = false;
    if (getNextData()) {
        if (getNextRoomData()) {
            if (getNextStageData()) {
                ret = true;
            } else {
                getFirstRoomData();
            }
        } else {
            getFirstData();
        }
    }
    return ret;
}

bool dMenuFmapIconPointer_c::getValidData() {
    bool iVar2 = false;
    bool iVar1 = false;
    do {
        iVar1 = getData();
        if (!iVar1) {
            iVar2 = nextData();
        }
    } while (!iVar2 && !iVar1);
    return iVar2;
}

bool dMenuFmapIconDisp_c::getPosition(int* o_stageNo, int* o_roomNo, f32* o_posX, f32* o_posZ,
                                      dTres_c::data_s const** o_tresData) {
    f32 offset_x = mpRegionData->getRegionOffsetX() + m_menuFmapStageData->getOffsetX();
    f32 offset_z = mpRegionData->getRegionOffsetZ() + m_menuFmapStageData->getOffsetZ();

    if (o_posX != NULL) {
        *o_posX = 0.0f;
    }
    if (o_posZ != NULL) {
        *o_posZ = 0.0f;
    }
    if (o_stageNo != NULL) {
        *o_stageNo = mStageNo;
    }
    if (o_roomNo != NULL) {
        *o_roomNo = m_menuFmapRoomData->getRoomNo();
    }

    if (!strcmp(m_menuFmapStageData->getStageName(), dComIfGp_getStartStageName())) {
        if (mpTresTypeGroupData != NULL) {
            if (o_tresData != NULL) {
                *o_tresData = mpTresTypeGroupData->getConstDataPointer();
            }
            if (o_posX != NULL) {
                *o_posX = offset_x + mpTresTypeGroupData->getPos()->x;
            }
            if (o_posZ != NULL) {
                *o_posZ = offset_z + mpTresTypeGroupData->getPos()->z;
            }
        }
    } else {
        if (m_tresData != NULL) {
            if (o_tresData != NULL) {
                *o_tresData = m_tresData;
            }
            if (o_posX != NULL) {
                *o_posX = offset_x + m_tresData->mPos.x;
            }
            if (o_posZ != NULL) {
                *o_posZ = offset_z + m_tresData->mPos.z;
            }
        }
    }

    return false;
}

bool dMenuFmapIconDisp_c::isDrawDisp() {
    JUT_ASSERT(0x7a8, m_menuFmapStageData != NULL);
    JUT_ASSERT(0x7a9, m_menuFmapRoomData != NULL);
    dMenu_Fmap_stage_arc_data_c* m_fmapStageArc = m_menuFmapStageData->getStageArc();
    JUT_ASSERT(0x7ac, m_fmapStageArc != NULL);
    if (m_fmapStageArc == NULL) {
        return false;
    }

    int save_table_no = m_fmapStageArc->getSaveTableNo();
    s32 room_no = m_menuFmapRoomData->getRoomNo();
    bool bVar2 = (mStayStageNo == mStageNo && mStayRoomNo == room_no) || m_menuFmapRoomData->isArrival();
    bool ret = false;
    bool bVar1;

    switch (mTypeGroupNo) {
    case 0:
        JUT_ASSERT(0x7bc, FALSE);
        break;

    case 1:
    case 8:
        if (save_table_no == mSaveTbl) {
            ret = bVar2 && (m_tresData->mSwBit == 0xff ||
                (m_tresData->mSwBit != 0xff && dComIfGs_isSwitch(m_tresData->mSwBit, room_no)));
        } else {
            ret = bVar2 && (m_tresData->mSwBit == 0xff ||
                    (m_tresData->mSwBit != 0xff && (m_tresData->mSwBit < 0x80
                        && dComIfGs_isStageSwitch(save_table_no, m_tresData->mSwBit))));
        }
        break;

    case 2:
        JUT_ASSERT(0x7e0, FALSE);
        break;

    case 3:
        JUT_ASSERT(0x7e3, FALSE);
        break;

    case 4:
        JUT_ASSERT(0x7ea, m_tresData->mNo != 255);
        bVar1 = false;
        if (dComIfGp_isLightDropMapVisible()) {
            if (dComIfGp_getStartStageDarkArea() == 2) {
                int tres_no = m_tresData->mNo;
                if (tres_no == 0x33 || tres_no == 0x34 || tres_no == 0x35) {
                        /* dSv_event_flag_c::M_086 - Twilight Hyrule Field - Show Boss Bug's Tear of Light on the map */
                    if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[119])) {
                        bVar1 = true;
                    }
                } else {
                    bVar1 = true;
                }
            } else {
                bVar1 = true;
            }
        }
        if (bVar1 && m_tresData->mNo != 0xff && !dComIfGs_isStageTbox(save_table_no, m_tresData->mNo)) {
            ret = true;
        }
        (void)0;
        break;

    case 5:
        if (save_table_no == mSaveTbl) {
            ret = (m_tresData->mNo == 0xff ||
                    (m_tresData->mNo != 0xff && !dComIfGs_isTbox(m_tresData->mNo)))
                && (m_tresData->mSwBit == 0xff || (m_tresData->mSwBit != 0xff
                    && dComIfGs_isSwitch(m_tresData->mSwBit, room_no)));
        } else {
            ret = (m_tresData->mNo == 0xff || (m_tresData->mNo != 0xff
                    && !dComIfGs_isStageTbox(save_table_no, m_tresData->mNo)))
                && (m_tresData->mSwBit == 0xff ||
                    (m_tresData->mSwBit != 0xff && ((bool)(m_tresData->mSwBit < 0x80) &&
                    dComIfGs_isStageSwitch(save_table_no, m_tresData->mSwBit))));
        }
        break;

    case 6:
        JUT_ASSERT(0x83a, m_tresData->mSwBit != 255);
        if (save_table_no == mSaveTbl) {
            ret = dComIfGs_isSwitch(m_tresData->mSwBit, room_no) != FALSE;
        } else if (m_tresData->mSwBit < 0x80) {
            ret = dComIfGs_isStageSwitch(save_table_no, m_tresData->mSwBit) != FALSE;
        }
        break;

    case 9:
        JUT_ASSERT(0x846, FALSE);
        break;

    case 10:
        JUT_ASSERT(0x84a, m_tresData->mNo != 255);
        ret = m_tresData->mNo != 0xff && dComIfGs_isStageTbox(save_table_no, m_tresData->mNo);
        break;

    case 13:
    case 14:
        if (save_table_no == mSaveTbl) {
            ret = m_tresData->mSwBit == 0xff ||
                (m_tresData->mSwBit != 0xff && dComIfGs_isSwitch(m_tresData->mSwBit, room_no));
        } else {
            ret = m_tresData->mSwBit == 0xff || ((bool)(m_tresData->mSwBit < 0x80)
                && dComIfGs_isStageSwitch(save_table_no, m_tresData->mSwBit));
        }
        break;

    default:
        JUT_ASSERT(0x866, FALSE);
    }

    return ret;
}
