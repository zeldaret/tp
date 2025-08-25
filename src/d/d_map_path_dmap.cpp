/**
 * d_map_path_dmap.cpp
 *
 */

#include "d/dolzel.h"

#include "d/d_map_path_dmap.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_map_path.h"
#include "d/d_meter_HIO.h"
#include "float.h"

/* 8003ECA0-8003ECD8 0395E0 0038+00 0/0 3/3 0/0 .text            chkGetCompass__10dMapInfo_nFv */
bool dMapInfo_n::chkGetCompass() {
    return dComIfGs_isDungeonItemCompass() ? true : false;
}

/* 8003ECD8-8003ED10 039618 0038+00 0/0 4/4 0/0 .text            chkGetMap__10dMapInfo_nFv */
bool dMapInfo_n::chkGetMap() {
    return dComIfGs_isDungeonItemMap() ? true : false;
}

/* 8003ED10-8003ED60 039650 0050+00 2/2 7/7 0/0 .text            isVisitedRoom__10dMapInfo_nFi */
bool dMapInfo_n::isVisitedRoom(int i_roomNo) {
    return g_fmapHIO.mAllRegionsUnlocked || dComIfGs_isVisitedRoom(i_roomNo);
}

/* 8003ED60-8003EDC0 0396A0 0060+00 1/1 2/2 0/0 .text correctionOriginPos__10dMapInfo_nFScP3Vec */
void dMapInfo_n::correctionOriginPos(s8 i_roomNo, Vec* o_pos) {
    dStage_FileList2_dt_c* filelist = dStage_roomControl_c::getFileList2(i_roomNo);

    if (o_pos != NULL) {
        rotAngle(filelist, o_pos);
        offsetPlus(filelist, o_pos);
    }
}

/* 8003EDC0-8003EDEC 039700 002C+00 3/3 0/0 0/0 .text
 * offsetPlus__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec      */
void dMapInfo_n::offsetPlus(dStage_FileList2_dt_c const* filelist, Vec* o_pos) {
    if (filelist == NULL) {
        return;
    }

    o_pos->x += filelist->field_0x14;
    o_pos->z += filelist->field_0x18;
}

/* 8003EDEC-8003EE5C 03972C 0070+00 3/3 0/0 0/0 .text
 * rotAngle__10dMapInfo_nFPC21dStage_FileList2_dt_cP3Vec        */
void dMapInfo_n::rotAngle(dStage_FileList2_dt_c const* filelist, Vec* o_pos) {
    s16 rot = 0;

    if (filelist != NULL) {
        rot = filelist->field_0x1c;
    }
    mDoMtx_stack_c::YrotS(rot);

    Vec mult;
    mDoMtx_stack_c::multVec(o_pos, &mult);

    *o_pos = mult;
}

/* 8003EE5C-8003EF20 03979C 00C4+00 1/1 6/6 0/0 .text            getMapPlayerPos__10dMapInfo_nFv */
Vec dMapInfo_n::getMapPlayerPos() {
    Vec pos;
    fopAc_ac_c* player = daPy_getPlayerActorClass();
    if (player != NULL) {
        pos = player->current.pos;
    } else {
        pos.x = 0.0f;
        pos.y = 0.0f;
        pos.z = 0.0f;
    }

    dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(dComIfGp_roomControl_getStayNo());
    if (fileList2_p != NULL) {
        rotAngle(fileList2_p, &pos);
        offsetPlus(fileList2_p, &pos);
    }

    return pos;
}

/* 8003EF20-8003EF70 039860 0050+00 1/1 1/1 0/0 .text            getMapPlayerAngleY__10dMapInfo_nFv
 */
s16 dMapInfo_n::getMapPlayerAngleY() {
    s32 stayNo = dComIfGp_roomControl_getStayNo();
    s16 angle = 0;

    daPy_py_c* player = daPy_getPlayerActorClass();
    if (player != NULL) {
        angle = player->shape_angle.y;
    }

    dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(stayNo);
    if (fileList2_p != NULL) {
        angle += fileList2_p->field_0x1c;
    }

    return angle;
}

/* 8003EF70-8003F02C 0398B0 00BC+00 2/2 0/0 0/0 .text getConstRestartIconPointer__10dMapInfo_nFv
 */
const dTres_c::typeGroupData_c* dMapInfo_n::getConstRestartIconPointer() {
    int group_num = dTres_c::getTypeGroupNumber(7);
    const dTres_c::typeGroupData_c* group_data = dTres_c::getFirstData(7);

    for (int i = 0; i < group_num && group_data != NULL; i++) {
        if (group_data->getRoomNo() == dComIfGs_getRestartRoomNo()) {
            if (group_data->getSwBit() == 0xFF) {
                break;
            }

            if (group_data->getSwBit() != 0xFF) {
                if (dComIfGs_isSwitch(group_data->getSwBit(), group_data->getRoomNo())) {
                    break;
                }
            }
        }

        group_data = dTres_c::getNextData(group_data);
    }

    return group_data;
}

/* 8003F02C-8003F0F8 03996C 00CC+00 1/1 2/2 0/0 .text            getMapRestartPos__10dMapInfo_nFv */
Vec dMapInfo_n::getMapRestartPos() {
    Vec pos;
    const dTres_c::typeGroupData_c* icon_data = getConstRestartIconPointer();

    if (icon_data != NULL) {
        pos = *icon_data->getPos();
    } else {
        pos = dComIfGs_getRestartRoomPos();
    }

    s32 roomNo = dComIfGs_getRestartRoomNo();
    dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(roomNo);
    rotAngle(fileList2_p, &pos);
    offsetPlus(fileList2_p, &pos);
    return pos;
}

/* 8003F0F8-8003F19C 039A38 00A4+00 1/1 1/1 0/0 .text            getMapRestartAngleY__10dMapInfo_nFv
 */
s16 dMapInfo_n::getMapRestartAngleY() {
    int angle = dComIfGs_getRestartRoomAngleY();

    const dTres_c::typeGroupData_c* icon_data = getConstRestartIconPointer();
    if (icon_data != NULL) {
        angle = icon_data->getAngleY();
        bool tmp = angle > 0;

        if (tmp) {
            angle = -angle;
        }

        angle = angle * 0x0100;
        if (tmp) {
            angle = -angle;
        }
    }

    s32 roomNo = dComIfGs_getRestartRoomNo();
    dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(roomNo);
    if (fileList2_p != NULL) {
        angle += fileList2_p->field_0x1c;
    }

    return angle;
}

/* 8003F19C-8003F1F4 039ADC 0058+00 0/0 1/1 0/0 .text            getRoomCenter__10dMapInfo_nFiPfPf
 */
void dMapInfo_n::getRoomCenter(int i_roomNo, f32* i_roomPosX, f32* i_roomPosZ) {
    dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(i_roomNo);

    if (i_roomPosX != NULL) {
        *i_roomPosX = (dStage_FileList2_dt_GetRightRmX(fileList2_p) +
                          dStage_FileList2_dt_GetLeftRmX(fileList2_p)) *
                         0.5f;
    }

    if (i_roomPosZ != NULL) {
        *i_roomPosZ = (dStage_FileList2_dt_GetFrontRmZ(fileList2_p) +
                          dStage_FileList2_dt_GetInnerRmZ(fileList2_p)) *
                         0.5f;
    }
}

/* 8003F1F4-8003F24C 039B34 0058+00 1/1 2/2 0/0 .text getRoomMinMaxXZ__10dMapInfo_nFiPfPfPfPf */
void dMapInfo_n::getRoomMinMaxXZ(int i_roomNo, f32* i_roomLeftX, f32* i_roomInnerZ,
                                 f32* i_roomRightX, f32* i_roomFrontZ) {
    dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(i_roomNo);

    if (i_roomLeftX != NULL) {
        *i_roomLeftX = dStage_FileList2_dt_GetLeftRmX(fileList2_p);
    }

    if (i_roomRightX != NULL) {
        *i_roomRightX = dStage_FileList2_dt_GetRightRmX(fileList2_p);
    }

    if (i_roomInnerZ != NULL) {
        *i_roomInnerZ = dStage_FileList2_dt_GetInnerRmZ(fileList2_p);
    }

    if (i_roomFrontZ != NULL) {
        *i_roomFrontZ = dStage_FileList2_dt_GetFrontRmZ(fileList2_p);
    }
}

/* 8003F24C-8003F40C 039B8C 01C0+00 2/2 0/0 0/0 .text getFloorParameter__10dMapInfo_nFfPScPfPfPfPf
 */
void dMapInfo_n::getFloorParameter(f32 param_0, s8* i_floorNo, f32* param_2, f32* param_3,
                                   f32* param_4, f32* param_5) {
    f32 gap_level = dStage_stagInfo_GetGapLevel(dComIfGp_getStageStagInfo());
    f32 range_up = fabsf(dStage_stagInfo_GetRangeUp(dComIfGp_getStageStagInfo()));
    f32 range_down = fabsf(dStage_stagInfo_GetRangeDown(dComIfGp_getStageStagInfo()));
    s8 floorNo = (f32)floor(param_0 / gap_level);

    if (i_floorNo != NULL) {
        *i_floorNo = floorNo;
    }

    f32 fvar1 = floorNo * gap_level;
    if (param_2 != NULL) {
        *param_2 = fvar1;
    }

    if (param_3 != NULL) {
        *param_3 = fvar1 + range_up;
    }

    if (param_4 != NULL) {
        *param_4 = (fvar1 + gap_level) - range_down;
    }

    if (param_5 != NULL) {
        *param_5 = gap_level;
    }
}

/* ############################################################################################## */
/* 80450E58-80450E5C 000358 0004+00 4/4 3/3 0/0 .sbss            None */
s8 dMapInfo_c::mNowStayFloorNo;

/* 80450E5C-80450E60 00035C 0004+00 4/4 0/0 0/0 .sbss            mNowStayRoomNo__10dMapInfo_c */
int dMapInfo_c::mNowStayRoomNo;

/* 80450E60-80450E64 000360 0004+00 4/4 3/3 0/0 .sbss            None */
u8 dMapInfo_c::mNowStayFloorNoDecisionFlg;

/* 8003F40C-8003F570 039D4C 0164+00 2/2 1/1 0/0 .text            calcFloorNo__10dMapInfo_cFfbi */
s8 dMapInfo_c::calcFloorNo(f32 param_0, bool i_chkMinMax, int i_roomNo) {
    f32 sp10;
    f32 spC;
    s8 floorNo;
    dMapInfo_n::getFloorParameter(param_0, &floorNo, NULL, &sp10, &spC, NULL);

    if (param_0 < sp10) {
        if (param_0 >= spC) {
            if (i_roomNo == mNowStayRoomNo && mNowStayFloorNoDecisionFlg &&
                (mNowStayFloorNo == floorNo || mNowStayFloorNo == floorNo + 1))
            {
                floorNo = mNowStayFloorNo;
            } else if (param_0 >= 0.5f * (spC + sp10)) {
                floorNo++;
            }
        }
    } else {
        floorNo++;
    }

    if (i_chkMinMax && i_roomNo >= 0 && i_roomNo < 64) {
        dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(i_roomNo);
        if (fileList2_p != NULL) {
            s8 min_floorNo = dStage_FileList2_dt_GetMinFloorNo(fileList2_p);
            s8 max_floorNo = dStage_FileList2_dt_GetMaxFloorNo(fileList2_p);

            if (floorNo < min_floorNo) {
                floorNo = min_floorNo;
            }

            if (floorNo > max_floorNo) {
                floorNo = max_floorNo;
            }
        }
    }

    return floorNo;
}

/* 8003F570-8003F6C8 039EB0 0158+00 1/1 1/1 0/0 .text            calcNowStayFloorNo__10dMapInfo_cFfb
 */
s8 dMapInfo_c::calcNowStayFloorNo(f32 param_0, bool i_chkMinMax) {
    f32 sp10;
    f32 spC;
    s8 floorNo;
    dMapInfo_n::getFloorParameter(param_0, &floorNo, NULL, &sp10, &spC, NULL);

    if (mNowStayFloorNoDecisionFlg) {
        if (param_0 < sp10) {
            if (param_0 >= spC && (mNowStayFloorNo == floorNo || mNowStayFloorNo == floorNo + 1)) {
                floorNo = mNowStayFloorNo;
            }
        } else {
            floorNo++;
        }
    } else if (param_0 >= 0.5f * (spC + sp10)) {
        floorNo++;
    }

    if (i_chkMinMax && mNowStayRoomNo >= 0 && mNowStayRoomNo < 64) {
        dStage_FileList2_dt_c* fileList2_p = dStage_roomControl_c::getFileList2(mNowStayRoomNo);
        if (fileList2_p != NULL) {
            s8 min_floorNo = dStage_FileList2_dt_GetMinFloorNo(fileList2_p);
            s8 max_floorNo = dStage_FileList2_dt_GetMaxFloorNo(fileList2_p);

            if (floorNo < min_floorNo) {
                floorNo = min_floorNo;
            }

            if (floorNo > max_floorNo) {
                floorNo = max_floorNo;
            }
        }
    }

    return floorNo;
}

/* 8003F6C8-8003F6FC 03A008 0034+00 0/0 1/1 0/0 .text            move__10dMapInfo_cFif */
void dMapInfo_c::move(int i_roomNo, f32 param_1) {
    mNowStayRoomNo = i_roomNo;
    mNowStayFloorNo = calcNowStayFloorNo(param_1, true);
    mNowStayFloorNoDecisionFlg = true;
}

/* 8003F6FC-8003F714 03A03C 0018+00 2/2 0/0 0/0 .text            init__10dMapInfo_cFv */
void dMapInfo_c::init() {
    mNowStayFloorNo = 0;
    mNowStayFloorNoDecisionFlg = false;
    mNowStayRoomNo = -1;
}

/* 8003F714-8003F734 03A054 0020+00 1/1 0/0 0/0 .text            reset__10dMapInfo_cFv */
void dMapInfo_c::reset() {
    init();
}

/* 8003F734-8003F754 03A074 0020+00 1/1 0/0 0/0 .text            create__10dMapInfo_cFv */
void dMapInfo_c::create() {
    init();
}

/* 8003F754-8003F758 03A094 0004+00 1/1 0/0 0/0 .text            remove__10dMapInfo_cFv */
void dMapInfo_c::remove() {}

/* ############################################################################################## */
/* 80450E64-80450E68 000364 0004+00 5/5 1/1 0/0 .sbss            mLayerList__8dMpath_c */
dDrawPath_c::layer_data* dMpath_c::mLayerList;

/* 80450E68-80450E6C 000368 0004+00 3/3 1/1 0/0 .sbss            mMinX__8dMpath_c */
// these are needed for sinit, but its got reversed reg alloc?
f32 dMpath_c::mMinX = FLT_MAX;

/* 80450E6C-80450E70 00036C 0004+00 3/3 1/1 0/0 .sbss            mMaxX__8dMpath_c */
f32 dMpath_c::mMaxX = -FLT_MAX;

/* 80450E70-80450E74 000370 0004+00 3/3 2/2 0/0 .sbss            mMinZ__8dMpath_c */
f32 dMpath_c::mMinZ = FLT_MAX;

/* 80450E74-80450E78 000374 0004+00 3/3 1/1 0/0 .sbss            mMaxZ__8dMpath_c */
f32 dMpath_c::mMaxZ = -FLT_MAX;

/* 80450E78-80450E7C 000378 0004+00 1/1 2/2 0/0 .sbss            mAllCenterX__8dMpath_c */
f32 dMpath_c::mAllCenterX;

/* 80450E7C-80450E80 00037C 0004+00 1/1 2/2 0/0 .sbss            mAllCenterZ__8dMpath_c */
f32 dMpath_c::mAllCenterZ;

/* 80450E80-80450E84 000380 0004+00 1/1 4/4 0/0 .sbss            mAllSizeX__8dMpath_c */
f32 dMpath_c::mAllSizeX;

/* 80450E84-80450E88 000384 0004+00 1/1 4/4 0/0 .sbss            mAllSizeZ__8dMpath_c */
f32 dMpath_c::mAllSizeZ;

/* 80450E88-80450E90 000388 0008+00 4/3 0/0 0/0 .sbss            None */
static bool data_80450E88;

/* 8003F758-8003F760 -00001 0008+00 0/0 0/0 0/0 .text            isExistMapPathData__8dMpath_cFv */
bool dMpath_c::isExistMapPathData() {
    return data_80450E88;
}

/* 80450630-80450634 0000B0 0004+00 0/0 1/1 2/2 .sdata           mNextRoomNo__10dMapInfo_c */
int dMapInfo_c::mNextRoomNo = -1;

/* 80450634 0001+00 data_80450634 None */
s8 dMpath_c::mBottomFloorNo = 127;

/* 80450635 0001+00 data_80450635 None */
s8 dMpath_c::mTopFloorNo = -128;

/* 8003F760-8003F7E8 03A0A0 0088+00 0/0 1/1 0/0 .text getTopBottomFloorNo__8dMpath_cFPScPSc */
int dMpath_c::getTopBottomFloorNo(s8* i_topFloorNo, s8* i_bottomFloorNo) {
    if (isExistMapPathData()) {
        if (i_topFloorNo != NULL) {
            *i_topFloorNo = mTopFloorNo;
        }

        if (i_bottomFloorNo != NULL) {
            *i_bottomFloorNo = mBottomFloorNo;
        }
    } else {
        if (i_topFloorNo != NULL) {
            *i_topFloorNo = 0;
        }

        if (i_bottomFloorNo != NULL) {
            *i_bottomFloorNo = 0;
        }
    }

    return 1;
}

/* 8003F7E8-8003F810 03A128 0028+00 0/0 1/1 0/0 .text            createWork__8dMpath_cFv */
void dMpath_c::createWork() {
    mLayerList = new dDrawPath_c::layer_data;
    JUT_ASSERT(1416, mLayerList!=0);
}

/* 8003F810-8003FA40 03A150 0230+00 1/1 1/1 0/0 .text
 * setPointer__8dMpath_cFPQ211dDrawPath_c10room_classPScPSc     */
int dMpath_c::setPointer(dDrawPath_c::room_class* i_room, s8* param_1, s8* param_2) {
    int var_r6 = 0;
    if ((u32)i_room->mpFloor >= 0x80000000) {
        dDrawPath_c::floor_class* floor_p = i_room->mpFloor;
        for (int i = 0; i < i_room->mFloorNum; i++) {
            if (floor_p->mFloorNo < *param_1) {
                *param_1 = floor_p->mFloorNo;
            }

            if (floor_p->mFloorNo > *param_2) {
                *param_2 = floor_p->mFloorNo;
            }

            floor_p++;
        }

        dDrawPath_c::floor_class* floor_e = &i_room->mpFloor[i_room->mFloorNum - 1];
        dDrawPath_c::group_class* group_e = &floor_e->mpGroup[floor_e->mGroupNum - 1];

        if (group_e->mPolyNum != 0) {
            dDrawPath_c::poly_class* poly_e = &group_e->mpPoly[group_e->mPolyNum - 1];
            return (u32)(poly_e->mpData + poly_e->mDataNum) - (u32)i_room;
        }

        dDrawPath_c::line_class* line_e = &group_e->mpLine[group_e->mLineNum - 1];
        return (u32)(line_e->mpData + line_e->mDataNum) - (u32)i_room;
    }
    
    i_room->mpFloor = (dDrawPath_c::floor_class*)((u32)i_room + (u32)i_room->mpFloor);
    i_room->mpFloatData = (f32*)((u32)i_room + (u32)i_room->mpFloatData);

    dDrawPath_c::floor_class* floor_p = i_room->mpFloor;
    int room = (int)i_room;
    for (int i = 0; i < i_room->mFloorNum; i++) {
        floor_p->mpGroup = (dDrawPath_c::group_class*)(room + (u32)floor_p->mpGroup);

        dDrawPath_c::group_class* group_p = floor_p->mpGroup;
        for (int j = 0; j < floor_p->mGroupNum; j++) {
            var_r6 = (u32)group_p->mpPoly;
            group_p->mpLine = (dDrawPath_c::line_class*)(room + (u32)group_p->mpLine);

            dDrawPath_c::line_class* line_p = group_p->mpLine;
            for (int k = 0; k < group_p->mLineNum; k++) {
                var_r6 = (u32)(line_p->mpData + line_p->mDataNum);
                line_p->mpData = (u16*)(room + (u32)line_p->mpData);
                line_p++;
            }

            group_p->mpPoly = (dDrawPath_c::poly_class*)(room + (u32)group_p->mpPoly);
            
            dDrawPath_c::poly_class* poly_p = group_p->mpPoly;
            for (int l = 0; l < group_p->mPolyNum; l++) {
                var_r6 = (u32)(poly_p->mpData + poly_p->mDataNum);
                poly_p->mpData = (u16*)(room + (u32)poly_p->mpData);
                poly_p++;
            }

            group_p++;
        }
        
        if (floor_p->mFloorNo < *param_1) {
            *param_1 = floor_p->mFloorNo;
        }

        if (floor_p->mFloorNo > *param_2) {
            *param_2 = floor_p->mFloorNo;
        }

        floor_p++;
    }

    return var_r6;
}

/* 8003FA40-8003FB70 03A380 0130+00 0/0 2/2 0/0 .text            setPointer__8dMpath_cFScPvi */
#pragma push
#pragma optimization_level 2
void dMpath_c::setPointer(s8 i_roomNo, void* i_data, int i_mapLayerNo) {
    s32 roomNo;
    dDrawPath_c::room_class* room = ((map_path_class*)i_data)->m_entries;

    if (room != NULL) {
        roomNo = i_roomNo;

        reset();
        data_80450E88 = true;
        setPointer(room, &mBottomFloorNo, &mTopFloorNo);

        f32 minX = 0.0f;
        f32 maxX = 0.0f;
        f32 minZ = 0.0f;
        f32 maxZ = 0.0f;
        dMapInfo_n::getRoomMinMaxXZ(roomNo, &minX, &minZ, &maxX, &maxZ);

        if (minX < mMinX) {
            mMinX = minX;
        }

        if (maxX > mMaxX) {
            mMaxX = maxX;
        }

        if (minZ < mMinZ) {
            mMinZ = minZ;
        }

        if (maxZ > mMaxZ) {
            mMaxZ = maxZ;
        }

        mAllCenterX = (mMaxX + mMinX) * 0.5f;
        mAllCenterZ = (mMaxZ + mMinZ) * 0.5f;
        mAllSizeX = mMaxX - mMinX;
        mAllSizeZ = mMaxZ - mMinZ;

        mLayerList->mRooms[i_mapLayerNo][(s8)i_roomNo] = room;
    }
}
#pragma pop

/* 8003FB70-8003FBD0 03A4B0 0060+00 0/0 1/1 0/0 .text            create__8dMpath_cFv */
void dMpath_c::create() {
    stage_stag_info_class* p_stag = dComIfGp_getStage()->getStagInfo();
    if (dStage_stagInfo_GetSTType(p_stag) != ST_BOSS_ROOM) {
        reset();
        data_80450E88 = false;
    }

    dMpath_n::m_texObjAgg.create();
    dMapInfo_c::create();
}

/* ############################################################################################## */
/* 80450636-80450638 0000B6 0002+00 2/2 0/0 0/0 .sdata           None */
static u8 data_80450636 = 0x01;

/* 8003FBD0-8003FC70 03A510 00A0+00 2/2 0/0 0/0 .text            reset__8dMpath_cFv */
void dMpath_c::reset() {
    if (data_80450636) {
        for (int i = 0; i < 0x40; i++) {
            for (int j = 0; j < 2; j++) {
                mLayerList->mRooms[j][i] = NULL;
            }
        }
        mMinX = FLT_MAX;
        mMaxX = -FLT_MAX;
        mMinZ = FLT_MAX;
        mMaxZ = -FLT_MAX;
        mBottomFloorNo = 127;
        mTopFloorNo = -128;
        data_80450636 = 0;
        data_80450E88 = 0;
        dMapInfo_c::reset();
    }
}

/* 8003FC70-8003FCA4 03A5B0 0034+00 0/0 1/1 0/0 .text            remove__8dMpath_cFv */
void dMpath_c::remove() {
    data_80450636 = 1;
    dMpath_n::m_texObjAgg.remove();
    dMapInfo_c::remove();
}

/* 8003FCA4-8003FCC8 03A5E4 0024+00 2/2 0/0 0/0 .text
 * calcFloorNoForObjectByMapPathRend__16renderingDAmap_cCFfi    */
s8 renderingDAmap_c::calcFloorNoForObjectByMapPathRend(f32 param_0, int i_roomNo) const {
    return dMapInfo_c::calcFloorNo(param_0, true, i_roomNo);
}

/* 8003FCC8-8003FD08 03A608 0040+00 0/0 2/2 0/0 .text init__16renderingDAmap_cFPUcUsUsUsUs */
void renderingDAmap_c::init(u8* param_0, u16 param_1, u16 param_2, u16 param_3, u16 param_4) {
    mIsDraw = false;
    field_0x4 = param_0;
    mTexWidth = param_1;
    mTexHeight = param_2;
    field_0x20 = param_3;
    field_0x22 = param_4;

    mPosX = 0.0f;
    mPosZ = 0.0f;
    field_0x8 = 1.0f;
    field_0xc = 1.0f;
    mRoomNoSingle = 0;
    mRenderedFloor = 0;
}

/* 8003FD08-8003FD9C 03A648 0094+00 0/0 2/2 0/0 .text            entry__16renderingDAmap_cFfffiSc */
void renderingDAmap_c::entry(f32 param_0, f32 param_1, f32 i_cmPerTexel, int i_roomNoSingle,
                             s8 param_4) {
    mPosX = param_0;
    mPosZ = param_1;
    mCmPerTexel = i_cmPerTexel;
    field_0x8 = mCmPerTexel * field_0x20;
    field_0xc = mCmPerTexel * field_0x22;
    mRoomNoSingle = i_roomNoSingle;
    mRenderedFloor = param_4;
    dComIfGd_setCopy2D(this);
}

/* 8003FD9C-8003FE18 03A6DC 007C+00 3/0 3/0 0/0 .text
 * isSwitch__16renderingDAmap_cFPCQ211dDrawPath_c11group_class  */
bool renderingDAmap_c::isSwitch(dDrawPath_c::group_class const* i_group) {
    if (i_group->mSwbit == 0xFF) {
        return true;
    } else if (i_group->field_0x1 == 0) {
        return dComIfGs_isSwitch(i_group->mSwbit, mRoomNo) == false;
    } else {
        return dComIfGs_isSwitch(i_group->mSwbit, mRoomNo) != false;
    }
}

/* 8003FE18-8003FE4C 03A758 0034+00 3/0 2/1 0/0 .text            draw__16renderingDAmap_cFv */
void renderingDAmap_c::draw() {
    renderingMap();
    mIsDraw = true;
}

/* 8003FE4C-8003FE54 03A78C 0008+00 3/0 3/0 0/0 .text            getBackColor__16renderingDAmap_cCFv
 */
const GXColor* renderingDAmap_c::getBackColor() const {
    static const GXColor l_mapBaseColor = {4, 0, 0, 0};
    return &l_mapBaseColor;
}

/* 8003FE54-8003FE6C 03A794 0018+00 3/0 3/0 0/0 .text isRenderingFloor__16renderingDAmap_cFi */
bool renderingDAmap_c::isRenderingFloor(int i_floorNo) {
    return i_floorNo == mRenderedFloor;
}

/* 8003FE6C-8003FE70 03A7AC 0004+00 2/2 0/0 0/0 .text setSingleRoomSetting__16renderingDAmap_cFv
 */
void renderingDAmap_c::setSingleRoomSetting() {}

/* 8003FE70-8003FF14 03A7B0 00A4+00 3/0 3/1 0/0 .text            isDrawRoom__16renderingDAmap_cCFii
 */
bool renderingDAmap_c::isDrawRoom(int param_0, int param_1) const {
    bool rv = hasMap() || param_0 == param_1;
    if (isRendAllRoom()) {
        rv = rv || dMapInfo_n::isVisitedRoom(param_0);
    }
    return rv;
}

/* 8003FF14-8003FFC4 03A854 00B0+00 3/0 3/0 0/0 .text            preDrawPath__16renderingDAmap_cFv
 */
void renderingDAmap_c::preDrawPath() {
    Mtx m;
    Vec sp20;
    Vec sp14;
    Vec sp8;

    sp20.x = mPosX;
    sp20.y = mPosZ;
    sp20.z = -5000.0f;

    sp14.x = mPosX;
    sp14.y = mPosZ;
    sp14.z = 5000.0f;

    sp8.x = 0.0f;
    sp8.y = -1.0f;
    sp8.z = 0.0f;

    mDoMtx_lookAt(m, &sp20, &sp14, &sp8, 0);
    GXLoadPosMtxImm(m, GX_PNMTX0);
    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_INDEX16);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);
    GXSetMisc(GX_MT_XF_FLUSH, 8);
}

/* 8003FFC4-8003FFEC 03A904 0028+00 3/0 3/0 0/0 .text            postDrawPath__16renderingDAmap_cFv
 */
void renderingDAmap_c::postDrawPath() {
    GXSetMisc(GX_MT_XF_FLUSH, 0);
}

/* 8003FFEC-8003FFF4 03A92C 0008+00 3/0 3/1 0/0 .text getRoomNoSingle__16renderingDAmap_cFv */
int renderingDAmap_c::getRoomNoSingle() {
    return mRoomNoSingle;
}

/* 8003FFF4-80040094 03A934 00A0+00 2/2 0/0 0/0 .text getFirstDrawRoomNo__16renderingDAmap_cFv */
int renderingDAmap_c::getFirstDrawRoomNo() {
    int roomNo = 0;

    if (isRendAllRoom()) {
        if (!isDrawRoom(0, mRoomNoSingle)) {
            roomNo = getNextDrawRoomNo(0);
        }
    } else {
        roomNo = getRoomNoSingle();
    }

    return roomNo;
}

/* 80040094-80040134 03A9D4 00A0+00 2/2 0/0 0/0 .text getNextDrawRoomNo__16renderingDAmap_cFi */
int renderingDAmap_c::getNextDrawRoomNo(int param_0) {
    int i = param_0 + 1;

    if (isRendAllRoom()) {
        if (i >= 64) {
            i = -1;
        } else {
            while (!isDrawRoom(i, mRoomNoSingle)) {
                i++;
                if (i >= 64) {
                    i = -1;
                    break;
                }
            } 
        }
    } else {
        i = -1;
    }

    return i;
}

/* 80040134-800401E8 03AA74 00B4+00 3/0 3/0 0/0 .text getFirstRoomPointer__16renderingDAmap_cFv */
dDrawPath_c::room_class* renderingDAmap_c::getFirstRoomPointer() {
    dDrawPath_c::room_class* pRoomClass = NULL;
    mRoomNo = getFirstDrawRoomNo();
    if (mRoomNo >= 0) {
        field_0x28 = getFirstDrawLayerNo();

        pRoomClass = dMpath_c::getRoomPointer(field_0x28, mRoomNo);
        if (pRoomClass == NULL) {
            pRoomClass = getNextRoomPointer();
        }
    }

    if(pRoomClass != NULL) {
        setSingleRoomSetting();
    }
    return pRoomClass;
}

/* 800401E8-800402C0 03AB28 00D8+00 3/0 3/0 0/0 .text getNextRoomPointer__16renderingDAmap_cFv */
dDrawPath_c::room_class* renderingDAmap_c::getNextRoomPointer() {
    dDrawPath_c::room_class* pRoomClass = NULL;
    bool bVar1 = false;
    do  {
        mRoomNo = getNextDrawRoomNo(mRoomNo);
        if (mRoomNo < 0) {
            field_0x28 = getNextDrawLayerNo(field_0x28);
            if (field_0x28 < 0) {
                bVar1 = true;
            } else {
                mRoomNo = getFirstDrawRoomNo();
            }
        }

        if (!bVar1) {
            pRoomClass = dMpath_c::getRoomPointer(field_0x28, mRoomNo);
        }
    } while(pRoomClass == NULL && !bVar1);

    if (pRoomClass != NULL) {
        setSingleRoomSetting();
    } 
    return pRoomClass;
}

/* 800402C0-800402E0 03AC00 0020+00 3/0 3/0 0/0 .text            isDrawPath__16renderingDAmap_cFv */
bool renderingDAmap_c::isDrawPath() {
    return dMpath_c::isExistMapPathData();
}

/* 800402E0-800402E8 03AC20 0008+00 3/0 3/0 0/0 .text getFirstDrawLayerNo__16renderingDAmap_cFv */
int renderingDAmap_c::getFirstDrawLayerNo() {
    return 0;
}

/* 800402E8-800402FC 03AC28 0014+00 3/0 3/0 0/0 .text getNextDrawLayerNo__16renderingDAmap_cFi */
int renderingDAmap_c::getNextDrawLayerNo(int param_0) {
    int layerNo = param_0 + 1;
    if (layerNo >= 2) {
        layerNo = -1;
    }

    return layerNo;
}

/* 800402FC-80040518 03AC3C 021C+00 1/0 1/1 0/0 .text
 * afterDrawPath__28renderingPlusDoorAndCursor_cFv              */
void renderingPlusDoorAndCursor_c::afterDrawPath() {
    renderingPlusDoor_c::afterDrawPath();
    bool check_floor = isCheckFloor();

    if (isRendCursor() && isRendRestart()) {
        bool tmp = true;

        if (check_floor) {
            s8 calc_floor = dMapInfo_c::calcFloorNo(dMapInfo_n::getMapRestartPos().y, true,
                                                    dComIfGs_getRestartRoomNo());
            if (calc_floor != mRenderedFloor) {
                tmp = false;
            }
        }

        if (tmp) {
            int tmp2 = 0x1F;
            if (mRoomNoSingle != dComIfGs_getRestartRoomNo()) {
                tmp2 = 0x20;
            }

            f32 cursor_size = getRestartCursorSize();
            s16 angle_y = dMapInfo_n::getMapRestartAngleY();
            drawCursor(dMapInfo_n::getMapRestartPos(), angle_y, tmp2, cursor_size);
        }
    }

    if (mRoomNoSingle >= 0 && isRendIcon()) {
        drawTreasure();
    }

    if (isRendCursor() && daPy_getPlayerActorClass() != NULL) {
        f32 cursor_size = getPlayerCursorSize();
        drawCursor(dMapInfo_n::getMapPlayerPos(), dMapInfo_n::getMapPlayerAngleY(), 0x1E,
                   cursor_size);
    }

    if (mRoomNoSingle >= 0 && isRendIcon()) {
        drawTreasureAfterPlayer();
    }
}

/* 80040518-80040574 03AE58 005C+00 2/1 1/1 0/0 .text afterDrawPath__19renderingPlusDoor_cFv */
void renderingPlusDoor_c::afterDrawPath() {
    if (mRoomNoSingle >= 0 && isRendDoor()) {
        drawDoor1();
        drawDoor2();
    }
}

/* 80040574-800405B8 03AEB4 0044+00 1/1 0/0 0/0 .text            drawDoor1__19renderingPlusDoor_cFv
 */
void renderingPlusDoor_c::drawDoor1() {
    dStage_KeepDoorInfo* door_info = dStage_GetKeepDoorInfo();
    drawDoorCommon(door_info->mDrTgData, door_info->mNum, true);
}

/* 800405B8-800405FC 03AEF8 0044+00 1/1 0/0 0/0 .text            drawDoor2__19renderingPlusDoor_cFv
 */
void renderingPlusDoor_c::drawDoor2() {
    dStage_KeepDoorInfo* door_info = dStage_GetRoomKeepDoorInfo();
    drawDoorCommon(door_info->mDrTgData, door_info->mNum, false);
}

/* 80451E58-80451E5C 000458 0004+00 1/1 0/0 0/0 .sdata2          l_doorWhite */
static const GXColor l_doorWhite = {100, 0, 0, 0};

/* 80451E5C-80451E60 00045C 0004+00 1/1 0/0 0/0 .sdata2          l_doorWhiteNoStay */
static const GXColor l_doorWhiteNoStay = {108, 0, 0, 0};

/* 80451E60-80451E64 000460 0004+00 1/1 0/0 0/0 .sdata2          l_doorWhite2 */
static const GXColor l_doorWhite2 = {100, 0, 0, 0};

/* 80451E64-80451E68 000464 0004+00 1/1 0/0 0/0 .sdata2          l_doorWhiteNoStay2 */
static const GXColor l_doorWhiteNoStay2 = {108, 0, 0, 0};

/* 800405FC-80040710 03AF3C 0114+00 2/2 0/0 0/0 .text
 * drawDoorCommon__19renderingPlusDoor_cFPC21stage_tgsc_data_classib */
void renderingPlusDoor_c::drawDoorCommon(stage_tgsc_data_class const* i_doorData, int i_dataNum,
                                         bool param_2) {
    static const u8 l_tex0[8] = {0x00, 0x00, 0x01, 0x00, 0x01, 0x01, 0x00, 0x01};
    int prm0;
    int prm1;

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGBA, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB565, 0);
    GXSetArray(GX_VA_TEX0, (void*)l_tex0, 2);

    setTevSettingIntensityTextureToCI();

    for (int i = 0; i < i_dataNum; i++, i_doorData++) {
        prm0 = (i_doorData->base.parameters >> 0xD) & 0x3F;
        prm1 = (i_doorData->base.parameters >> 0x13) & 0x3F;

        if (checkDispDoorS(prm0, prm1, i_doorData->base.position.y)) {
            GXLoadTexObj(dMpath_n::m_texObjAgg.getTexObjPointer(0), GX_TEXMAP0);
            drawNormalDoorS(i_doorData, prm0, prm1, param_2);
        }
    }

    setTevSettingNonTextureDirectColor();
}

/* 80040710-80040838 03B050 0128+00 1/1 0/0 0/0 .text checkDispDoorS__19renderingPlusDoor_cFiif */
bool renderingPlusDoor_c::checkDispDoorS(int param_0, int param_1, f32 param_2) {
    if (isRendAllRoom()) {
        if (!hasMap() && (!dMapInfo_n::isVisitedRoom(param_0) && param_0 != mRoomNoSingle) &&
            (!dMapInfo_n::isVisitedRoom(param_1) && param_1 != mRoomNoSingle))
        {
            return false;
        }
    } else if (param_0 != mRoomNoSingle && param_1 != mRoomNoSingle) {
        return false;
    }

    if (mRenderedFloor == calcFloorNoForObjectByMapPathRend(param_2, param_0) ||
        mRenderedFloor == calcFloorNoForObjectByMapPathRend(param_2, param_1))
    {
        return true;
    }

    return false;
}

/* 80040838-800409B4 03B178 017C+00 1/1 0/0 0/0 .text
 * drawNormalDoorS__19renderingPlusDoor_cFPC21stage_tgsc_data_classiib */
void renderingPlusDoor_c::drawNormalDoorS(stage_tgsc_data_class const* i_doorData, int i_roomNo,
                                          int param_2, bool param_3) {
    static Vec const l_100x100BoxVertexList[4] = {
        {-50.0f, -50.0f, 0.0f},
        {50.0f, -50.0f, 0.0f},
        {50.0f, 50.0f, 0.0f},
        {-50.0f, 50.0f, 0.0f},
    };

    if (i_roomNo == dComIfGp_roomControl_getStayNo() || param_2 == dComIfGp_roomControl_getStayNo())
    {
        GXSetTevColor(GX_TEVREG1, l_doorWhite);
        GXSetTevColor(GX_TEVREG2, l_doorWhite2);
    } else {
        GXSetTevColor(GX_TEVREG1, l_doorWhiteNoStay);
        GXSetTevColor(GX_TEVREG2, l_doorWhiteNoStay2);
    }

    Vec spC;
    spC.x = i_doorData->base.position.x;
    spC.y = i_doorData->base.position.y;
    spC.z = i_doorData->base.position.z;

    if (param_3) {
        dMapInfo_n::correctionOriginPos(i_roomNo, &spC);
    }

    mDoMtx_stack_c::transS(spC.x, spC.z, 0.0f);
    mDoMtx_stack_c::ZrotM(i_doorData->base.angle.y);
    mDoMtx_stack_c::scaleM(6.0f, 6.0f, 1.0f);

    Vec sp18[4];
    mDoMtx_stack_c::multVecArray(l_100x100BoxVertexList, sp18, 4);

    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    for (u8 i = 0; i < 4; i++) {
        GXPosition3f32(sp18[i].x, sp18[i].y, sp18[i].z);
        GXTexCoord1x8(i);
    }
    GXEnd();
}

/* 800409B4-800409E0 03B2F4 002C+00 3/0 2/0 0/0 .text isDrawRoomIcon__16renderingDAmap_cCFii */
bool renderingDAmap_c::isDrawRoomIcon(int param_0, int param_1) const {
    return isDrawRoom(param_0, param_1);
}

/* 800409E0-80040A94 03B320 00B4+00 3/0 3/0 0/0 .text
 * isDrawIconSingle__16renderingDAmap_cCFPCQ27dTres_c6data_siiibPC3Vec */
// drawTreasure and drawTreasureAfterPlayer match required a change of param_3 to int rather than bool.
// Nothing else made sense considering the assembly generated.
bool renderingDAmap_c::isDrawIconSingle(dTres_c::data_s const* data, int param_1, int param_2,
                                        bool param_3, bool param_4, Vec const* param_5) const {
    bool draw_room_icon = isDrawRoomIcon(data->mRoomNo, param_1);
    bool tmp = false;

    if (param_4) {
        int floorNo = calcFloorNoForObjectByMapPathRend(param_5->y, data->mRoomNo);
        if (floorNo == param_2) {
            tmp = true;
        }
    }

    return isDrawIconSingle2(data, tmp, draw_room_icon, param_1);
}

/* 80040A94-80040AB8 03B3D4 0024+00 1/0 2/1 0/0 .text
 * getFirstData__28renderingPlusDoorAndCursor_cFUc              */
dTres_c::typeGroupData_c* renderingPlusDoorAndCursor_c::getFirstData(u8 param_0) {
    return dTres_c::getFirstData((int)param_0);
}

/* 80040AB8-80040ADC 03B3F8 0024+00 1/0 2/1 0/0 .text
 * getNextData__28renderingPlusDoorAndCursor_cFPQ27dTres_c15typeGroupData_c */
dTres_c::typeGroupData_c*
renderingPlusDoorAndCursor_c::getNextData(dTres_c::typeGroupData_c* param_0) {
    return dTres_c::getNextData(param_0);
}

/* 80040ADC-80040AE4 03B41C 0008+00 1/0 2/1 0/0 .text
 * getIconPosition__28renderingPlusDoorAndCursor_cCFPQ27dTres_c15typeGroupData_c */
const Vec*
renderingPlusDoorAndCursor_c::getIconPosition(dTres_c::typeGroupData_c* i_typeGroupData) const {
    return i_typeGroupData->getPos();
}

/* 80040AE4-80040B00 03B424 001C+00 3/0 2/1 0/0 .text getIconGroupNumber__16renderingDAmap_cCFUc
 */
int renderingDAmap_c::getIconGroupNumber(u8 param_0) const {
    return dTres_c::getTypeGroupNumber(param_0);
}

/* 80451E74-80451E78 000474 0004+00 1/0 0/0 0/0 .sdata2          l_entranceStartColor */
static const GXColor l_entranceStartColor = {148, 0, 0, 0};

/* 80451E78-80451E7C 000478 0004+00 1/0 0/0 0/0 .sdata2          l_entranceLv8StartColor */
static const GXColor l_entranceLv8StartColor = {156, 0, 0, 0};

/* 80451E7C-80451E80 00047C 0004+00 3/2 0/0 0/0 .sdata2          l_treasureStartColor */
static const GXColor l_treasureStartColor = {124, 0, 0, 0};

/* 80451E80-80451E84 000480 0004+00 1/0 0/0 0/0 .sdata2          l_smallKeyStartColor */
static const GXColor l_smallKeyStartColor = {132, 0, 0, 0};

/* 80451E84-80451E88 000484 0004+00 1/0 0/0 0/0 .sdata2          l_bossStartColor */
static const GXColor l_bossStartColor = {136, 0, 0, 0};

/* 80451E88-80451E8C 000488 0004+00 1/0 0/0 0/0 .sdata2          l_npc0StartColor */
static const GXColor l_npc0StartColor = {140, 0, 0, 0};

/* 80451E8C-80451E90 00048C 0004+00 1/0 0/0 0/0 .sdata2          l_destinationStartColor */
static const GXColor l_destinationStartColor = {144, 0, 0, 0};

/* 80451E90-80451E94 000490 0004+00 1/0 0/0 0/0 .sdata2          l_npcYkmStartColor */
static const GXColor l_npcYkmStartColor = {140, 0, 0, 0};

/* 80451E94-80451E98 000494 0004+00 1/0 0/0 0/0 .sdata2          l_npcYkwStartColor */
static const GXColor l_npcYkwStartColor = {140, 0, 0, 0};

/* 80451E98-80451E9C 000498 0004+00 1/0 0/0 0/0 .sdata2          l_tksStartColor */
static const GXColor l_tksStartColor = {164, 0, 0, 0};

struct treasureDispData {
    /* 0x0 */ u8 field_0x0;
    /* 0x4 */ int field_0x4;
    /* 0x8 */ const GXColor* field_0x8;
};

/* 80040B00-80040E84 03B440 0384+00 1/1 0/0 0/0 .text
 * drawTreasure__28renderingPlusDoorAndCursor_cFv               */
void renderingPlusDoorAndCursor_c::drawTreasure() {
    static const u8 l_iconTex0[8] = {0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00};
    static const GXColor tboxNotStayColor = {128, 0, 0, 0};
    static const treasureDispData l_treasureDispList[4] = {
        {1, 2, &l_entranceStartColor},
        {8, 5, &l_entranceLv8StartColor},
        {0, 1, &l_treasureStartColor},
        {5, 3, &l_destinationStartColor},
    };

    bool rend_all_room = isRendAllRoom();

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB565, 0);
    GXSetArray(GX_VA_TEX0, (void*)l_iconTex0, 2);

    setTevSettingIntensityTextureToCI();

    for (int i = 0; i < 4; i++) {
        dTres_c::typeGroupData_c* typeGroupData_p;
        u8 tmp = l_treasureDispList[i].field_0x0;
        typeGroupData_p = getFirstData(tmp);
        int group_num = getIconGroupNumber(tmp);

        if (group_num != 0) {
            JUT_ASSERT(0xaf9, typeGroupData_p != 0);

            f32 icon_size = getIconSize(tmp) * mCmPerTexel;
            f32 icon_size_2 = icon_size;

            GXInvalidateTexAll();
            GXLoadTexObj(dMpath_n::m_texObjAgg.getTexObjPointer(l_treasureDispList[i].field_0x4), GX_TEXMAP0);
            GXColor sp18;
            sp18 = *l_treasureDispList[i].field_0x8;

            GXSetTevColor(GX_TEVREG1, sp18);

            sp18.r += (u8)4;
            GXSetTevColor(GX_TEVREG2, sp18);

            for (int j = 0; j < group_num && typeGroupData_p != NULL; j++) {
                const Vec* icon_pos = getIconPosition(typeGroupData_p);

                if (tmp == 0) {
                    if (mRoomNoSingle != typeGroupData_p->getRoomNo()) {
                        sp18 = tboxNotStayColor;
                    } else {
                        sp18 = l_treasureStartColor;
                    }

                    GXSetTevColor(GX_TEVREG1, sp18);

                    sp18.r += (u8)4;
                    GXSetTevColor(GX_TEVREG2, sp18);
                }

                if (isDrawAreaCheck(*icon_pos) &&
                    isDrawIconSingle(typeGroupData_p->getConstDataPointer(), mRoomNoSingle,
                                     mRenderedFloor, rend_all_room, true, icon_pos))
                {
                    drawIconSingle(*icon_pos, icon_size, icon_size_2);
                }

                typeGroupData_p = getNextData(typeGroupData_p);
            }
        }
    }

    setTevSettingNonTextureDirectColor();
}

/* 80040E84-80041208 03B7C4 0384+00 1/1 0/0 0/0 .text
 * drawTreasureAfterPlayer__28renderingPlusDoorAndCursor_cFv    */
void renderingPlusDoorAndCursor_c::drawTreasureAfterPlayer() {
    static const treasureDispData l_treasureDispList[11] = {
        {16, 4, &l_tksStartColor},     {2, 4, &l_smallKeyStartColor}, {10, 4, &l_npc0StartColor},
        {9, 4, &l_npc0StartColor},     {14, 4, &l_npcYkwStartColor},  {13, 4, &l_npcYkmStartColor},
        {15, 4, &l_npc0StartColor},    {11, 4, &l_npc0StartColor},    {12, 4, &l_npc0StartColor},
        {4, 4, &l_smallKeyStartColor}, {3, 4, &l_bossStartColor},
    };
    static const u8 l_iconTex0[8] = {0x00, 0x01, 0x01, 0x01, 0x01, 0x00, 0x00, 0x00};
    static const GXColor tboxNotStayColor = {0x80, 0x00, 0x00, 0x00};

    bool rend_all_room = isRendAllRoom();

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxDesc(GX_VA_TEX0, GX_INDEX8);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_TEX0, GX_CLR_RGBA, GX_RGB565, 0);
    GXSetArray(GX_VA_TEX0, (void*)l_iconTex0, 2);

    setTevSettingIntensityTextureToCI();

    for (int i = 0; i < 11; i++) {
        dTres_c::typeGroupData_c* typeGroupData_p;
        u8 tmp = l_treasureDispList[i].field_0x0;
        typeGroupData_p = getFirstData(tmp);
        int group_num = getIconGroupNumber(tmp);

        if (group_num != 0) {
            JUT_ASSERT(0xb7e, typeGroupData_p != 0);

            f32 icon_size = getIconSize(tmp) * mCmPerTexel;
            f32 icon_size_2 = icon_size;

            GXInvalidateTexAll();
            GXLoadTexObj(dMpath_n::m_texObjAgg.getTexObjPointer(l_treasureDispList[i].field_0x4), GX_TEXMAP0);
            GXColor sp18;
            sp18 = *l_treasureDispList[i].field_0x8;

            GXSetTevColor(GX_TEVREG1, sp18);

            sp18.r += (u8)4;
            GXSetTevColor(GX_TEVREG2, sp18);

            for (int j = 0; j < group_num && typeGroupData_p != NULL; j++) {
                const Vec* icon_pos = getIconPosition(typeGroupData_p);

                if (tmp == 0) {
                    if (mRoomNoSingle != typeGroupData_p->getRoomNo()) {
                        sp18 = tboxNotStayColor;
                    } else {
                        sp18 = l_treasureStartColor;
                    }

                    GXSetTevColor(GX_TEVREG1, sp18);

                    sp18.r += (u8)4;
                    GXSetTevColor(GX_TEVREG2, sp18);
                }

                if (isDrawAreaCheck(*icon_pos) &&
                    isDrawIconSingle(typeGroupData_p->getConstDataPointer(), mRoomNoSingle,
                                     mRenderedFloor, rend_all_room, true, icon_pos))
                {
                    drawIconSingle(*icon_pos, icon_size, icon_size_2);
                }

                typeGroupData_p = getNextData(typeGroupData_p);
            }
        }
    }

    setTevSettingNonTextureDirectColor();
}

/* 80041208-800412C0 03BB48 00B8+00 2/2 0/0 0/0 .text
 * drawIconSingle__28renderingPlusDoorAndCursor_cFRC3Vecff      */
void renderingPlusDoorAndCursor_c::drawIconSingle(Vec const& param_0, f32 param_1, f32 param_2) {
    static f32 const l_iconPosData[4][2] = {
        {-50.0f, 50.0f},
        {50.0f, 50.0f},
        {50.0f, -50.0f},
        {-50.0f, -50.0f},
    };

    GXBegin(GX_QUADS, GX_VTXFMT0, 4);
    for (u8 i = 0; i < 4; i++) {
        GXPosition2f32(param_0.x + param_1 * l_iconPosData[i][0],
                       param_0.z + param_2 * l_iconPosData[i][1]);
        GXTexCoord1x8(i);
    }

    GXEnd();
}

/* 800412C0-8004145C 03BC00 019C+00 1/1 0/0 0/0 .text
 * drawCursor__28renderingPlusDoorAndCursor_cFRC3Vecsif         */
void renderingPlusDoorAndCursor_c::drawCursor(Vec const& param_0, s16 param_1, int param_2,
                                              f32 param_3) {
    static Vec const l_offset[3] = {
        {0.0f, 0.0f, 400.0f},
        {-200.0f, 0.0f, -240.0f},
        {200.0f, 0.0f, -240.0f},
    };

    static GXColor l_cursorColor = {120, 0, 0, 0};

    f32 temp_f3 = param_3 / 640.0f;
    f32 temp_f31 = temp_f3 * (field_0x8 / field_0x20);
    f32 temp_f30 = temp_f3 * (field_0xc / field_0x22);

    mDoMtx_stack_c::transS(param_0.x, 0.0f, param_0.z);
    mDoMtx_stack_c::scaleM(temp_f31, 1.0f, temp_f30);
    mDoMtx_stack_c::YrotM(param_1);

    Vec offset[3];
    for (int i = 0; i < 3; i++) {
        mDoMtx_stack_c::multVec(&l_offset[i], &offset[i]);
    }

    GXClearVtxDesc();
    GXSetVtxDesc(GX_VA_POS, GX_DIRECT);
    GXSetVtxAttrFmt(GX_VTXFMT0, GX_VA_POS, GX_CLR_RGB, GX_F32, 0);

    l_cursorColor.r = param_2 * 4;
    GXSetTevColor(GX_TEVREG0, l_cursorColor);

    GXBegin(GX_TRIANGLES, GX_VTXFMT0, 3);
    for (int i = 0; i < 3; i++) {
        GXPosition2f32(offset[i].x, offset[i].z);
    }

    GXEnd();
}

/* 8004145C-80041460 03BD9C 0004+00 2/0 0/0 0/0 .text beforeDrawPath__19renderingPlusDoor_cFv */
void renderingPlusDoor_c::beforeDrawPath() {}
