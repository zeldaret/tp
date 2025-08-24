/**
 * d_meter_map.cpp
 * 
*/

#include "d/dolzel.h"

#include "d/d_meter_map.h"
#include "JSystem/J2DGraph/J2DGrafContext.h"
#include "d/actor/d_a_player.h"
#include "d/d_map.h"
#include "d/d_menu_window.h"
#include "d/d_meter2_info.h"
#include "d/d_msg_object.h"
#include "f_op/f_op_overlap_mng.h"
#include "m_Do/m_Do_controller_pad.h"

/* 8020D49C-8020D528 207DDC 008C+00 1/1 0/0 0/0 .text            isEnableDispMap__11dMeterMap_cFv */
bool dMeterMap_c::isEnableDispMap() {
    bool minimapEnable = false;
    stage_stag_info_class* pstag = dComIfGp_getStage()->getStagInfo();

    if (pstag != NULL && getMapDispSizeTypeNo() != 0) {
        minimapEnable = dStage_stagInfo_GetMiniMap(pstag) != 0;
    }

    bool enableMap = false;
    if (minimapEnable && dMpath_c::isExistMapPathData()) {
        enableMap = true;
    }
    return enableMap;
}

/* 8020D528-8020D650 207E68 0128+00 3/3 0/0 0/0 .text getMapDispSizeTypeNo__11dMeterMap_cFv */
int dMeterMap_c::getMapDispSizeTypeNo() {
    int uvar6 = 7;

    dStage_FileList_dt_c* fList =
        dComIfGp_roomControl_getStatusRoomDt(dComIfGp_roomControl_getStayNo())->getFileListInfo();
    if (fList != NULL) {
        uvar6 = dStage_FileList_dt_getMiniMap(fList);
    }

    u32 stageMapSizeTypeNo = dStage_stagInfo_GetMiniMap(dComIfGp_getStage()->getStagInfo());
    s32 mapDispType = dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo());

    if (mapDispType == 1) {
        uvar6 = 1;
    } else if (uvar6 == 7) {
        uvar6 = stageMapSizeTypeNo;
    }

    int mapDispSizeType = 0;
    switch (uvar6) {
    case 0:
        break;
    case 1:
        if (mapDispType == 1) {
            mapDispSizeType = 4;
        } else {
            mapDispSizeType = 1;
        }
        break;
    case 2:
        if (mapDispType != 1) {
            mapDispSizeType = 2;
        }
        break;
    case 3:
        if (mapDispType == 1) {
            mapDispSizeType = 5;
        } else {
            mapDispSizeType = 3;
        }
        break;
    }

    return mapDispSizeType;
}

/* 8020D650-8020D690 207F90 0040+00 5/5 3/3 0/0 .text
 * isEnableDispMapAndMapDispSizeTypeNo__11dMeterMap_cFv         */
bool dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo() {
    if (isEnableDispMap() && getMapDispSizeTypeNo()) {
        return true;
    }

    return false;
}

/* 8020D690-8020D698 207FD0 0008+00 2/2 0/0 0/0 .text
 * getMapDispEdgeBottomY_Layout__11dMeterMap_cFv                */
f32 dMeterMap_c::getMapDispEdgeBottomY_Layout() {
    return 421.0f;
}

/* 8020D698-8020D72C 207FD8 0094+00 2/2 0/0 0/0 .text            isEventRunCheck__11dMeterMap_cFv */
bool dMeterMap_c::isEventRunCheck() {
    if (dComIfGp_event_runCheck()) {
        return true;
    } else if (dMsgObject_isTalkNowCheck()) {
        return true;
    }

    return dComIfGp_event_runCheck() != field_0x30 ? 1 : 0;
}

/* 8020D72C-8020D75C 20806C 0030+00 2/2 0/0 0/0 .text getMapDispEdgeLeftX_Layout__11dMeterMap_cFv
 */
f32 dMeterMap_c::getMapDispEdgeLeftX_Layout() {
    return field_0x28 + 35;
}

/* 8020D75C-8020D7E4 20809C 0088+00 0/0 1/1 0/0 .text            getMapDispEdgeTop__11dMeterMap_cFv
 */
f32 dMeterMap_c::getMapDispEdgeTop() {
    f32 tmp = 0.0f;
    if (mMap != NULL) {
        tmp = mMap->getTexSizeY() -
              mMap->getTexelPerCm() * (mMap->getPackZ() - mMap->getPackPlusZ()) -
              mMap->getTopEdgePlus();
    }
    return getMapDispEdgeBottomY_Layout() - tmp;
}

/* 8020D7E4-8020D7EC 208124 0008+00 2/2 0/0 0/0 .text getDispPosInside_OffsetX__11dMeterMap_cFv */
s16 dMeterMap_c::getDispPosInside_OffsetX() {
    return 0;
}

/* 8020D7EC-8020D874 20812C 0088+00 2/2 0/0 0/0 .text getDispPosOutSide_OffsetX__11dMeterMap_cFv
 */
s16 dMeterMap_c::getDispPosOutSide_OffsetX() {
    f32 dvar3 = -36.0f - mSizeW;
    f32 offset = 0.0f;
    if (mMap != NULL) {
        offset = mMap->getTexelPerCm() * mMap->getPackX();
        offset += (mMap->getRightEdgePlus() + (mMap->getTexelPerCm() * mMap->getPackPlusZ()));
    }
    dvar3 += offset;
    return dvar3 - getMapDispEdgeLeftX_Layout();
}

/* 8020D874-8020D8BC 2081B4 0048+00 2/2 2/2 0/0 .text setDispPosInsideFlg_SE_On__11dMeterMap_cFv
 */
void dMeterMap_c::setDispPosInsideFlg_SE_On() {
    if (isEnableDispMapAndMapDispSizeTypeNo()) {
        dComIfGp_mapShow();
        field_0x2d = 1;
        field_0x2e = 7;
    }
}

/* 8020D8BC-8020D8F8 2081FC 003C+00 1/1 2/2 0/0 .text setDispPosOutsideFlg_SE_On__11dMeterMap_cFv
 */
void dMeterMap_c::setDispPosOutsideFlg_SE_On() {
    dComIfGp_mapHide();
    field_0x2d = 0;
    field_0x2e = 7;
}

/* 8020D8F8-8020D900 -00001 0008+00 0/0 0/0 0/0 .text            setMapAlpha__11dMeterMap_cFUc */
void dMeterMap_c::setMapAlpha(u8 i_alpha) {
    mMapAlpha = i_alpha;
}

/* 8020D900-8020D948 208240 0048+00 3/3 1/1 0/0 .text            isMapOpenCheck__11dMeterMap_cFv */
bool dMeterMap_c::isMapOpenCheck() {
    return dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 7 ? false : true;
}

/* 8020D948-8020D990 208288 0048+00 0/0 1/1 0/0 .text            __ct__11dMeterMap_cFP9J2DScreen */
dMeterMap_c::dMeterMap_c(J2DScreen* i_scrn) {
    _create(i_scrn);
}

/* 8020D990-8020D9EC 2082D0 005C+00 1/0 0/0 0/0 .text            __dt__11dMeterMap_cFv */
dMeterMap_c::~dMeterMap_c() {
    _delete();
}

/* 8020D9EC-8020DC50 20832C 0264+00 1/1 0/0 0/0 .text            _create__11dMeterMap_cFP9J2DScreen
 */
void dMeterMap_c::_create(J2DScreen* unused) {
    s32 sizeX;
    s32 sizeY;
    s32 dispSizeW;
    s32 dispSizeH;

    getMapDispSizeTypeNo();
    switch (getMapDispSizeTypeNo()) {
    case 1:
        dispSizeW = 216;
        dispSizeH = 216;
        sizeX = 144;
        sizeY = 144;
        break;
    case 2:
        dispSizeW = 216;
        dispSizeH = 216;
        sizeX = 216;
        sizeY = 216;
        break;
    case 3:
        dispSizeW = 216;
        dispSizeH = 216;
        sizeX = 96;
        sizeY = 96;
        break;
    case 0:
    case 4:
        dispSizeW = 144;
        dispSizeH = 144;
        sizeX = 144;
        sizeY = 144;
        break;
    case 5:
        dispSizeW = 144;
        dispSizeH = 144;
        sizeX = 96;
        sizeY = 96;
        break;
    }

    mSizeW = (s16)sizeX;
    mSizeH = (s16)sizeY;

    mMap = new dMap_c(sizeX, sizeY, dispSizeW, dispSizeH);
    mMapJ2DPicture = new J2DPicture(mMap->getResTIMGPointer());

    mIsCompass = dComIfGs_isDungeonItemCompass();
    mIsMap = dComIfGs_isDungeonItemMap();
    field_0x14 = 0;
    field_0x2a = 0;

    if (dComIfGp_checkMapShow()) {
        field_0x2d = 1;

        if (!isEnableDispMapAndMapDispSizeTypeNo()) {
            field_0x2d = 0;
        }

        if (!isMapOpenCheck()) {
            field_0x2d = 0;
        }
    } else {
        field_0x2d = 0;
    }

    if (field_0x2d != 0) {
        field_0x2d = 1;
        field_0x28 = getDispPosInside_OffsetX();
        dMeter2Info_setMapStatus(1);
    } else {
        field_0x2d = 0;
        field_0x28 = getDispPosOutSide_OffsetX();
        dMeter2Info_setMapStatus(0);
    }

    field_0x2e = 0;
    field_0x28 = 0;
    field_0x30 = 0;
                 /* dSv_event_flag_c::M_085 - Twilight Hyrule Field - Midna dialogue right before Boss Bug's Tear of Light appears */
    field_0x2b = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[118]);
}

/* 8020DC50-8020DCE4 208590 0094+00 1/1 0/0 0/0 .text            _delete__11dMeterMap_cFv */
void dMeterMap_c::_delete() {
    if (mMapJ2DPicture != NULL) {
        delete mMapJ2DPicture;
    }

    if (mMap != NULL) {
        delete mMap;
    }

    if (isEnableDispMapAndMapDispSizeTypeNo()) {
        if (field_0x2d != 0) {
            dComIfGp_mapShow();
        } else {
            dComIfGp_mapHide();
        }
    }
}

/* 8020DCE4-8020DF1C 208624 0238+00 0/0 1/1 0/0 .text            _move__11dMeterMap_cFUl */
void dMeterMap_c::_move(u32 param_0) {
                       /* dSv_event_flag_c::M_085 - Twilight Hyrule Field - Midna dialogue right before Boss Bug's Tear of Light appears */
    if (!field_0x2b && dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[118])) {
        if (strcmp(dComIfGp_getStartStageName(), "F_SP115") == 0) {
            /* dSv_event_flag_c::M_086 - Twilight Hyrule Field - Show Boss Bug's Tear of Light on the map */
            dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[119]);
        } else {
                         /* dSv_event_flag_c::M_085 - Twilight Hyrule Field - Midna dialogue right before Boss Bug's Tear of Light appears */
            field_0x2b = dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[118]);
            dMeter2Info_setPauseStatus(2);
        }
    }
    int stayNo = dComIfGp_roomControl_getStayNo();

    field_0x14 = param_0;
    field_0x2a = checkMoveStatus();

    if (field_0x2a == 1 || field_0x2a == 2 || field_0x2a == 3 ||
        dMeter2Info_getPauseStatus() == 7 || dMeter2Info_getPauseStatus() == 2 ||
        dMeter2Info_getPauseStatus() == 6 || dMeter2Info_getPauseStatus() == 4 ||
        dMeter2Info_getPauseStatus() == 3 || dMeter2Info_getPauseStatus() == 5)
    {
        ctrlShowMap();
    }

    if (field_0x2d != 0) {
        if (field_0x28 != getDispPosInside_OffsetX()) {
            cLib_addCalcAngleS(&field_0x28, getDispPosInside_OffsetX(), 2, 60, 10);
        }
    } else {
        cLib_addCalcAngleS(&field_0x28, getDispPosOutSide_OffsetX(), 2, 60, 10);
    }

    Vec map_pos = dMapInfo_n::getMapPlayerPos();

    field_0x18 = field_0x28 + getMapDispEdgeLeftX_Layout();
    field_0x1c = getMapDispEdgeBottomY_Layout() - mSizeH;

    mMap->_move(map_pos.x, map_pos.z, stayNo, map_pos.y);
    field_0x30 = dComIfGp_event_runCheck();
}

/* 8020DF1C-8020DF68 20885C 004C+00 0/0 1/1 0/0 .text            _draw__11dMeterMap_cFv */
void dMeterMap_c::_draw() {
    mMap->_draw();
    dComIfGd_set2DOpa(this);
}

/* 8020DF68-8020E070 2088A8 0108+00 1/0 0/0 0/0 .text            draw__11dMeterMap_cFv */
void dMeterMap_c::draw() {
    if (mMap != NULL && mMap->isDraw()) {
        dComIfGp_getCurrentGrafPort()->setup2D();
        f32 sizeX = mSizeW;
        f32 sizeY = mSizeH;
        f32 tmp2 = field_0x18;
        f32 tmp3 = field_0x1c;

        mMapJ2DPicture->setAlpha(mMapAlpha);
        mMapJ2DPicture->draw(tmp2, tmp3, sizeX, sizeY, false, false, false);
        mMapJ2DPicture->calcMtx();
    }
}

/* 8020E070-8020E45C 2089B0 03EC+00 2/1 0/0 0/0 .text            ctrlShowMap__11dMeterMap_cFv */
void dMeterMap_c::ctrlShowMap() {
    if (!dMeter2Info_isGameStatus(1)) {
        if (!isMapOpenCheck() && !isEventRunCheck()) {
            if (dMw_LEFT_TRIGGER() || dMw_RIGHT_TRIGGER()) {
                Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        } else {
            if (dMeter2Info_getPauseStatus() == 1 || dMeter2Info_getPauseStatus() == 7 ||
                dMeter2Info_getPauseStatus() == 3 || dMeter2Info_getPauseStatus() == 5 ||
                dMeter2Info_getPauseStatus() == 2 || dMeter2Info_getPauseStatus() == 6)
            {
                if (dMeter2Info_getMapStatus() == 0 && field_0x2d == 0) {
                    setDispPosInsideFlg_SE_On();
                    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                             -1.0f, 0);
                    dMeter2Info_set2DVibration();
                    dMeter2Info_setMapStatus(1);
                }

                if (dMeter2Info_getMapStatus() == 1 && field_0x2d != 0 && isFmapScreen()) {
                    switch (dMeter2Info_getPauseStatus()) {
                    case 1:
                        dMeter2Info_setMapStatus(4);
                        break;
                    case 7:
                        dMeter2Info_setMapStatus(7);
                        break;
                    case 3:
                        dMeter2Info_setMapStatus(8);
                        break;
                    case 5:
                        dMeter2Info_setMapStatus(9);
                        break;
                    case 2:
                        dMeter2Info_setMapStatus(5);
                        break;
                    case 6:
                        dMeter2Info_setMapStatus(3);
                        break;
                    }
                    dMeter2Info_setMapKeyDirection(0x400);
                    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                             -1.0f, 0);
                    dMeter2Info_set2DVibration();
                }
                dMeter2Info_resetPauseStatus();
            } else {
                if (dMeter2Info_getPauseStatus() == 4) {
                    dMeter2Info_resetPauseStatus();
                    if (isDmapScreen()) {
                        if (dMeter2Info_getMapStatus() == 0 && field_0x2d == 0) {
                            setDispPosInsideFlg_SE_On();
                            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f,
                                                     -1.0f, -1.0f, 0);
                            dMeter2Info_set2DVibration();
                            dMeter2Info_setMapStatus(1);
                        }

                        if (dMeter2Info_getMapStatus() == 1 && field_0x2d != 0) {
                            dMeter2Info_setMapStatus(6);
                            dMeter2Info_setMapKeyDirection(0x400);
                            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f,
                                                     -1.0f, -1.0f, 0);
                            dMeter2Info_set2DVibration();
                        }
                    }

                } else if (!mDoCPd_c::getTrigUp(PAD_1) && !mDoCPd_c::getTrigDown(PAD_1)) {
                    keyCheck();
                }
            }

            if (mIsCompass != dComIfGs_isDungeonItemCompass()) {
                if (!isDispPosInsideFlg()) {
                    setDispPosInsideFlg_SE_On();
                    dMeter2Info_setMapStatus(1);
                }
                mIsCompass = dComIfGs_isDungeonItemCompass();
            }

            if (mIsMap != dComIfGs_isDungeonItemMap()) {
                if (!isDispPosInsideFlg()) {
                    setDispPosInsideFlg_SE_On();
                    dMeter2Info_setMapStatus(1);
                }
                mIsMap = dComIfGs_isDungeonItemMap();
            }
        }
    }
}

/* 8020E45C-8020E4C8 208D9C 006C+00 1/1 0/0 0/0 .text            checkMoveStatus__11dMeterMap_cFv */
u8 dMeterMap_c::checkMoveStatus() {
    u8 rv;
    if (isShow(field_0x14)) {
        if (isEnableDispMapAndMapDispSizeTypeNo()) {
            if (isDispPosInsideFlg()) {
                rv = 1;
            } else {
                rv = 2;
            }
        } else {
            rv = 3;
        }
    } else {
        rv = 0;
    }
    return rv;
}

/* 8020E4C8-8020E620 208E08 0158+00 2/2 0/0 0/0 .text            isShow__11dMeterMap_cFUl */
bool dMeterMap_c::isShow(u32 param_0) {
    if ((param_0 & 0x4000) || fopOvlpM_IsDoingReq() ||
        ((param_0 & 0x40) && dComIfGp_event_checkHind(0x100) &&
         !dComIfGp_event_chkEventFlag(0x40)) ||
        daPy_getPlayerActorClass()->getSumouMode() || (param_0 & 0x200000) || (param_0 & 0x100) ||
        (param_0 & 0x80) || (param_0 & 0x40000000) || (param_0 & 0x1000) || (param_0 & 0x100000) ||
        (param_0 & 0x20000) || (param_0 & 8) || (param_0 & 0x10) || (param_0 & 0x1000000) ||
        (param_0 & 0x800000) || (param_0 & 0x20) || (param_0 & 0x4000000) ||
        (param_0 & 0x10000000) || (param_0 & 0x800) || (param_0 & 0x20000000) ||
        daPy_getPlayerActorClass()->checkEnemyAttentionLock() || dMeter2Info_isGameStatus(2))
    {
        return false;
    }
    return true;
}

/* 8020E620-8020E70C 208F60 00EC+00 3/3 0/0 0/0 .text            isFmapScreen__11dMeterMap_cFv */
bool dMeterMap_c::isFmapScreen() {
    if (dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 0 ||
        dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 5 ||
        dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 3 ||
        dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 4 ||
        dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 6)
    {
        return true;
    }
    return false;
}

/* 8020E70C-8020E754 20904C 0048+00 3/3 0/0 0/0 .text            isDmapScreen__11dMeterMap_cFv */
bool dMeterMap_c::isDmapScreen() {
    return dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 1 ? 1 : 0;
}

/* 8020E754-8020E9CC 209094 0278+00 0/0 1/1 0/0 .text            meter_map_move__11dMeterMap_cFUl */
void dMeterMap_c::meter_map_move(u32 param_0) {
    if (isShow(param_0) && isMapOpenCheck()) {
        if (dMeter2Info_getPauseStatus() == 6) {
            if (!dMeter2Info_isSub2DStatus(1) && isFmapScreen()) {
                dMeter2Info_setMapStatus(3);
                dMeter2Info_setMapKeyDirection(0x400);
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            }
            dMeter2Info_resetPauseStatus();
        } else {
            if (dMw_LEFT_TRIGGER() && !dComIfGp_event_runCheck() &&
                !dMsgObject_isTalkNowCheck() &&
                (dMeter2Info_getMapStatus() == 0 || dMeter2Info_getMapStatus() == 1))
            {
                if (dMeter2Info_getMapStatus() == 0 && !dMeter2Info_isSub2DStatus(1)) {
                    if (isFmapScreen() || isDmapScreen()) {
                        dMeter2Info_setMapStatus(2);
                        dMeter2Info_setMapKeyDirection(0x200);
                        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                                 -1.0f, 0);
                        dMeter2Info_set2DVibration();
                    }
                }
            } else if (dMw_RIGHT_TRIGGER() && !dComIfGp_event_runCheck() &&
                       !dMsgObject_isTalkNowCheck() &&
                       (dMeter2Info_getMapStatus() == 0 || dMeter2Info_getMapStatus() == 1))
            {
                if (!dMeter2Info_isSub2DStatus(1)) {
                    if (isFmapScreen() || isDmapScreen()) {
                        dMeter2Info_setMapStatus(2);
                        dMeter2Info_setMapKeyDirection(0x400);
                        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                                 -1.0f, 0);
                        dMeter2Info_set2DVibration();
                    }
                }
            }
        }
    }
}

/* 8020E9CC-8020ED60 20930C 0394+00 1/1 0/0 0/0 .text            keyCheck__11dMeterMap_cFv */
void dMeterMap_c::keyCheck() {
    if (dMw_LEFT_TRIGGER() && !isEventRunCheck() &&
        (dMeter2Info_getMapStatus() == 0 || dMeter2Info_getMapStatus() == 1))
    {
        if (dMeter2Info_getMapStatus() == 1) {
            if (isDispPosInsideFlg()) {
                setDispPosOutsideFlg_SE_On();
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_setMapStatus(0);
            }
        } else if (dMeter2Info_getMapStatus() == 0) {
            if (!dMeter2Info_isSub2DStatus(1) && (isFmapScreen() || isDmapScreen())) {
                dMeter2Info_setMapStatus(2);
                dMeter2Info_setMapKeyDirection(0x200);
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            } else {
                setDispPosInsideFlg_SE_On();
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
                dMeter2Info_setMapStatus(1);
            }
        }
    } else if (dMw_RIGHT_TRIGGER() && !isEventRunCheck() &&
               (dMeter2Info_getMapStatus() == 0 || dMeter2Info_getMapStatus() == 1))
    {
        if (dMeter2Info_getMapStatus() == 0) {
            if (isEnableDispMapAndMapDispSizeTypeNo()) {
                if (!isDispPosInsideFlg()) {
                    setDispPosInsideFlg_SE_On();
                    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f,
                                             -1.0f, 0);
                    dMeter2Info_set2DVibration();
                    dMeter2Info_setMapStatus(1);
                }
            } else if (!dMeter2Info_isSub2DStatus(1) && (isFmapScreen() || isDmapScreen())) {
                dMeter2Info_setMapStatus(2);
                dMeter2Info_setMapKeyDirection(0x400);
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            }
        } else if (dMeter2Info_getMapStatus() == 1 && isDispPosInsideFlg()) {
            if (!dMeter2Info_isSub2DStatus(1) && (isFmapScreen() || isDmapScreen())) {
                dMeter2Info_setMapStatus(2);
                dMeter2Info_setMapKeyDirection(0x400);
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_OPEN_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_set2DVibration();
            } else {
                setDispPosOutsideFlg_SE_On();
                Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_S, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f,
                                         0);
                dMeter2Info_setMapStatus(0);
            }
        }
    }
}
