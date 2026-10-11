#include "d/dolzel.h" // IWYU pragma: keep

#include "JSystem/JKernel/JKRAramArchive.h"
#include "JSystem/JKernel/JKRExpHeap.h"
#include "JSystem/JKernel/JKRMemArchive.h"
#include "SSystem/SComponent/c_math.h"
#include "d/actor/d_a_midna.h"
#include "d/actor/d_a_player.h"
#include "d/d_com_inf_game.h"
#include "d/d_lib.h"
#include "d/d_menu_fmap.h"
#include "d/d_menu_fmap2D.h"
#include "d/d_menu_fmap_map.h"
#include "d/d_menu_window.h"
#include "d/d_meter2_draw.h"
#include "d/d_meter2_info.h"
#include "d/d_meter_HIO.h"
#include "d/d_meter_map.h"
#include "d/d_msg_object.h"
#include "d/d_msg_scrn_explain.h"
#include "d/d_s_play.h"
#include "d/d_stage.h"
#include "f_op/f_op_msg_mng.h"

#if PLATFORM_WII
#include "m_Re/m_Re_controller_pad.h"
#endif

#include <cstdio>
#include <cstring>

static dMf_HIO_c g_fmHIO;

dMf_HIO_c* dMf_HIO_c::mMySelfPointer;

dMf_HIO_c::dMf_HIO_c() {
    mMySelfPointer = this;
    mBackAnimeStep = 0.2f;
    mBaseBackAlpha = 60;
    mTopAnimeStep = 1.0f;
    mMoyaAlpha = 95;
}

#if DEBUG
void dMf_HIO_c::genMessage(JORMContext* mctx) {
    mctx->genLabel("\n■枠BTKアニメフレーム", 0);
    mctx->genSlider("フレーム数", &mBackAnimeStep, 0.0, 10.0);
    mctx->genLabel("\n■枠の明度", 0);
    mctx->genSlider("アルファ", &mBaseBackAlpha, 0, 255);
    mctx->genLabel("\n■もやもやBTKアニメフレーム", 0);
    mctx->genSlider("フレーム数", &mTopAnimeStep, 0.0, 10.0);
    mctx->genLabel("\n■もやもやの明度", 0);
    mctx->genSlider("アルファ", &mMoyaAlpha, 0, 255);
}
#endif

const char* dMenuFmap_getStartStageName(void* i_fieldData) {
    static char virtual_stage[8];
    if (dStage_stagInfo_GetUpButton(dComIfGp_getStage()->getStagInfo()) == 5) {
        dMenu_Fmap_field_data_c* fieldData = (dMenu_Fmap_field_data_c*)i_fieldData;
        dMenu_Fmap_virtual_stage_data_c* data_list = (dMenu_Fmap_virtual_stage_data_c*)
                ((intptr_t)i_fieldData + fieldData->mVirtualStageOffset);
        dMenu_Fmap_virtual_stage_data_c::data* data = data_list->mData;
        for (int i = 0; i < data_list->mCount; i++) {
            if (!strcmp(dComIfGp_getStartStageName(), data[i].mStageName)) {
                // !@bug: probably supposed to be data[i].mVirtualStageName, but doesn't matter
                // because the two entries have the same virtual stage name
                strcpy(virtual_stage, data->mVirtualStageName);
                return virtual_stage;
            }
        }
        JUT_ASSERT(203, 0);
    }
    return dComIfGp_getStartStageName();
}

static dMenu_Fmap_c::process init_process[30] = {
    &dMenu_Fmap_c::all_map_init,
    &dMenu_Fmap_c::portal_demo2_init,
    &dMenu_Fmap_c::portal_demo3_init,
    &dMenu_Fmap_c::table_demo1_init,
    &dMenu_Fmap_c::zoom_all_to_region_init,
    &dMenu_Fmap_c::zoom_region_to_all_init,
    &dMenu_Fmap_c::region_map_init,
    &dMenu_Fmap_c::to_portal_warp_map_init,
    &dMenu_Fmap_c::portal_warp_map_init,
    &dMenu_Fmap_c::portal_warp_select_init,
    &dMenu_Fmap_c::portal_warp_forbid_init,
    &dMenu_Fmap_c::zoom_region_to_spot_init,
    &dMenu_Fmap_c::zoom_spot_to_region_init,
    &dMenu_Fmap_c::spot_map_init,
    &dMenu_Fmap_c::portal_demo1_init,
    &dMenu_Fmap_c::portal_demo4_init,
    &dMenu_Fmap_c::portal_demo5_init,
    &dMenu_Fmap_c::portal_demo6_init,
    &dMenu_Fmap_c::yamiboss_demo1_init,
    &dMenu_Fmap_c::yamiboss_demo2_init,
    &dMenu_Fmap_c::yamiboss_demo3_init,
    &dMenu_Fmap_c::yamiboss_demo4_init,
    &dMenu_Fmap_c::yamiboss_demo5_init,
    &dMenu_Fmap_c::light_demo1_init,
    &dMenu_Fmap_c::light_demo2_init,
    &dMenu_Fmap_c::table_demo2_init,
    &dMenu_Fmap_c::table_demo3_init,
    &dMenu_Fmap_c::howl_demo1_init,
    &dMenu_Fmap_c::howl_demo2_init,
    &dMenu_Fmap_c::howl_demo3_init,
};

static dMenu_Fmap_c::process move_process[30] = {
    &dMenu_Fmap_c::all_map_proc,
    &dMenu_Fmap_c::portal_demo2_move,
    &dMenu_Fmap_c::portal_demo3_move,
    &dMenu_Fmap_c::table_demo1_move,
    &dMenu_Fmap_c::zoom_all_to_region_proc,
    &dMenu_Fmap_c::zoom_region_to_all_proc,
    &dMenu_Fmap_c::region_map_proc,
    &dMenu_Fmap_c::to_portal_warp_map_proc,
    &dMenu_Fmap_c::portal_warp_map_proc,
    &dMenu_Fmap_c::portal_warp_select_proc,
    &dMenu_Fmap_c::portal_warp_forbid_proc,
    &dMenu_Fmap_c::zoom_region_to_spot_proc,
    &dMenu_Fmap_c::zoom_spot_to_region_proc,
    &dMenu_Fmap_c::spot_map_proc,
    &dMenu_Fmap_c::portal_demo1_move,
    &dMenu_Fmap_c::portal_demo4_move,
    &dMenu_Fmap_c::portal_demo5_move,
    &dMenu_Fmap_c::portal_demo6_move,
    &dMenu_Fmap_c::yamiboss_demo1_move,
    &dMenu_Fmap_c::yamiboss_demo2_move,
    &dMenu_Fmap_c::yamiboss_demo3_move,
    &dMenu_Fmap_c::yamiboss_demo4_move,
    &dMenu_Fmap_c::yamiboss_demo5_move,
    &dMenu_Fmap_c::light_demo1_move,
    &dMenu_Fmap_c::light_demo2_move,
    &dMenu_Fmap_c::table_demo2_move,
    &dMenu_Fmap_c::table_demo3_move,
    &dMenu_Fmap_c::howl_demo1_move,
    &dMenu_Fmap_c::howl_demo2_move,
    &dMenu_Fmap_c::howl_demo3_move,
};

dMenu_Fmap_c* dMenu_Fmap_c::MyClass;

dMenu_Fmap_c::dMenu_Fmap_c(JKRExpHeap* i_heap, STControl* i_stick, CSTControl* i_cstick,
                           u8 i_process, u8 i_regionCursor, u8 i_stageCursor, f32 i_stageTransX,
                           f32 i_stageTransZ, u8 i_panDirection) {
    MyClass = this;
    mpHeap = i_heap;
    mpStick = i_stick;
    mpCStick = i_cstick;
    mPortalNo = -1;
    mErrorSound = false;
    mStartStageNo = -1;
    mStageCursor = -1;
    mRoomCursor = -1;
    mFlashRooms = NULL;
    mFlashRoomCount = 0;
    field_0x310 = 0;
    mResetAreaName = false;
    mAreaNameSet = false;
    mRegionNo = -1;
    mStayStageNo = -1;
    field_0x30b = false;
    field_0x30f = 0;
    mOldRegionCursor = i_regionCursor;
    mOldStageCursor = i_stageCursor;
    mOldStageTransX = i_stageTransX;
    mOldStageTransZ = i_stageTransZ;
    mpMountArchive = NULL;
    mpResArchive = NULL;
    mpDraw2DBack = NULL;
    mpDraw2DTop = NULL;
    mpMenuFmapMap = NULL;
    mpFieldDat = NULL;
    mSpotTextureFadeAlpha = 0.0f;
    mpFmapMapRes = NULL;
    mpPortalDat = NULL;
    mpWorldData = NULL;
    field_0xb4 = 0;
    mDataNumMax = 0;

    for (int i = 0; i < 8; i++) {
        mpRegionData[i] = NULL;
        mpStageData[i] = NULL;
        mpRoomData[i] = NULL;
    }

    field_0x305 = false;

    for (int i = 0; i < 8; i++) {
        field_0x168[i] = 0.0f;
        field_0x188[i] = 0.0f;
        field_0x128[i] = 0.0f;
        field_0x148[i] = 0.0f;
    }

    mpTalkHeap = JKRCreateExpHeap(0x32000, mpHeap, false);
    JUT_ASSERT(359, mpTalkHeap != NULL);
    field_0x200 = 0;
    mIsWarpMap = false;

    mProcess = PROC_REGION_MAP_e;
    strcpy(mMarkedStageName, "");
    if (g_fmapHIO.mpArcData != NULL && g_fmapHIO.mpArcData->isMounted()) {
        mProcess = i_process;
        mpMapArchive = g_fmapHIO.mpArcData;
    } else {
        mpMapArchive = dComIfGp_getFieldMapArchive2();
    }
    mPrevProcess = mProcess;
    mPrevProcessAlt = mProcess;

    if (dMeter2Info_getMapStatus() == 4) {
        mIsWarpMap = false;
        mProcess = PROC_PORTAL_DEMO1_e;
    } else if (dMeter2Info_getMapStatus() == 5) {
        mIsWarpMap = false;
        mProcess = PROC_YAMIBOSS_DEMO1_e;
    } else if (dMeter2Info_getMapStatus() == 8) {
        mIsWarpMap = false;
        mProcess = PROC_LIGHT_DEMO1_e;
    } else if (dMeter2Info_getMapStatus() == 3) {
        mIsWarpMap = true;
        mProcess = PROC_ALL_MAP_e;
    } else if (dMeter2Info_getMapStatus() == 7) {
        i_panDirection = 0xff;
        mIsWarpMap = false;
        mProcess = PROC_TABLE_DEMO1_e;
    } else if (dMeter2Info_getMapStatus() == 9) {
        mIsWarpMap = false;
        mProcess = PROC_HOWL_DEMO1_e;
    }

    if (i_panDirection == 1) {
        mTransX = -FB_WIDTH_BASE;
        mTransY = 0.0f;
    } else if (i_panDirection == 3) {
        mTransX = FB_WIDTH_BASE;
        mTransY = 0.0f;
    } else if (i_panDirection == 2) {
        mTransX = 0.0f;
        mTransY = -FB_HEIGHT_BASE;
    } else if (i_panDirection == 0) {
        mTransX = 0.0f;
        mTransY = FB_HEIGHT_BASE;
    } else {
        mTransX = 0.0f;
        mTransY = 0.0f;
    }

    mAlphaRatio = 0.0f;
    mPanDirection = i_panDirection;
    field_0x210 = 0;
    mDisplayFrame = 0;
    mZoomLevel = 0;

    for (int i = 0; i < 8; i++) {
        mRegionOffsetX[i] = 0.0f;
        mRegionOffsetZ[i] = 0.0f;
        mRegionTexture[i] = NULL;
        mTitleName[i] = 0;
    }

    for (int i = 0; i < 20; i++) {
        mAreaName[i] = 0;
    }

    field_0x1ec = 0.0f;
    mSpotNum = 0;
    mAllTitleName = 0;

    resetRoomDataBit();
}

dMenu_Fmap_c::~dMenu_Fmap_c() {
    s32 heapFreeSize = mpHeap->getTotalFreeSize();
    if (mpFieldDat != NULL) {
        mpHeap->free(mpFieldDat);
        mpFieldDat = NULL;
    }
    if (mpPortalDat != NULL) {
        mpHeap->free(mpPortalDat);
        mpPortalDat = NULL;
    }

    for (int i = 0; i < 8; i++) {
        if (i == 7) {
            if (mRegionTexture[i] != NULL) {
                mpResArchive->removeResource(mRegionTexture[i]);
            }
            mRegionTexture[i] = NULL;
        } else {
            if (mRegionTexture[i] != NULL) {
                mpMapArchive->removeResource(mRegionTexture[i]);
                mRegionTexture[i] = NULL;
                mRegionTexture[i] = NULL;
            }
        }
    }

    removeAreaData();

    if (mpDraw2DBack != NULL) {
        delete mpDraw2DBack;
        mpDraw2DBack = NULL;
    }
    if (mpDraw2DTop != NULL) {
        delete mpDraw2DTop;
        mpDraw2DTop = NULL;
    }
    if (mpMenuFmapMap != NULL) {
        mpMenuFmapMap->_delete();
        delete mpMenuFmapMap;
        mpMenuFmapMap = NULL;
    }

    dComIfGp_getFmapResArchive()->removeResourceAll();
    if (mpMapArchive != NULL) {
        mpMapArchive->removeResourceAll();
    }

    MyClass = NULL;

    if (mpTalkHeap != NULL) {
        if (dMsgObject_getTalkHeap() == mpTalkHeap) {
            dMsgObject_setTalkHeap(NULL);
        }
        mDoExt_destroyExpHeap(mpTalkHeap);
        mpTalkHeap = NULL;
    }

    if (mpMountArchive != NULL) {
        JKRUnmountArchive(mpMountArchive->getArchive());
        mpMountArchive->destroy();
        mpMountArchive = NULL;
    }

    if (mpResArchive != NULL) {
        JKRUnmountArchive(mpResArchive);
        mpResArchive = NULL;
    }
}

void dMenu_Fmap_c::_create() {
    s32 heapFreeSize = mpHeap->getTotalFreeSize();
    mpDraw2DBack = new dMenu_Fmap2DBack_c();
    JUT_ASSERT(594, mpDraw2DBack != NULL);
    mpDraw2DBack->setRegionCursor(dComIfGp_getNowLevel() - 1);
    mpDraw2DTop = new dMenu_Fmap2DTop_c(mpHeap, mpStick);
    JUT_ASSERT(599, mpDraw2DTop != NULL);
    mpMenuFmapMap = new dMenu_FmapMap_c();
    JUT_ASSERT(603, mpMenuFmapMap != NULL);
    mpMenuFmapMap->_create(dMeter2Info_get2DWidth(), dMeter2Info_get2DHeight(),
                           dMeter2Info_get2DWidth(), dMeter2Info_get2DHeight(), mpFmapMapRes);
    
    readFieldMapData((void**)&mpFieldDat, "dat/field.dat", false, false);
    decodeFieldMapData();
    readFieldMapData((void**)&mpPortalDat, "dat/portal.dat", false, false);
    decodePortalData();
    mpDraw2DTop->setPortalBin(mpPortalDat);

    mpWorldData = NULL;
    for (int i = 0; i < 8; i++) {
        mpRegionData[i] = NULL;
        mpStageData[i] = NULL;
        mpRoomData[i] = NULL;
    }

    field_0x305 = false;

    for (int i = 0; i < 8; i++) {
        field_0x168[i] = 0.0f;
        field_0x188[i] = 0.0f;
        field_0x128[i] = 0.0f;
        field_0x148[i] = 0.0f;
    }

    if (mIsWarpMap == true) {
        mZoomLevel = 0;
        mpDraw2DBack->zoomMapCalc((f32)mZoomLevel / (YREG_S(1) + 10));
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_LEFTRIGHT, 0.0f);
        mpDraw2DTop->setCrossLRString(0);
    } else {
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_LEFTRIGHT, 1.0f);
        mpDraw2DTop->setCrossLRString(0x3f9);
    }
    mpDraw2DBack->setArrowAlpha(1.0f);

    if (mProcess == PROC_REGION_MAP_e || mProcess == PROC_PORTAL_WARP_MAP_e
        || mProcess == PROC_PORTAL_DEMO1_e || mProcess == PROC_YAMIBOSS_DEMO1_e
        || mProcess == PROC_LIGHT_DEMO1_e || mProcess == PROC_HOWL_DEMO1_e)
    {
        if (g_fmapHIO.field_0x2f9) {
            mpDraw2DBack->setRegionCursor(mOldRegionCursor);
        }

        if (mProcess == PROC_HOWL_DEMO1_e) {
            u8 process = mProcess;
            mProcess = PROC_ZOOM_REGION_TO_ALL_e;
            readWorldData(mpDraw2DBack->getRegionCursor() + 1);
            mZoomLevel = 0;
            mpDraw2DBack->zoomMapCalc((f32)mZoomLevel / (YREG_S(1) + 10));
            mProcess = process;
            getPlayerPos2D();
            mpDraw2DBack->regionMapMove(mpStick);
            drawIcon(field_0x1ec, true);
            mpDraw2DBack->setRegionCursor(getHowlRegionID() - 1);
        }

        readWorldData(mpDraw2DBack->getRegionCursor() + 1);
        mZoomLevel = YREG_S(1) + 10;
        mpDraw2DBack->zoomMapCalc((f32)mZoomLevel / (YREG_S(1) + 10));

        if (mIsWarpMap == true) {
            mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
            mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
            mpDraw2DTop->setBButtonString(0x522, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            mpDraw2DTop->setZButtonString(0x52a, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            mpDraw2DTop->set3DStickString(0x526);
        } else {
            mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UPDOWN, 0.0f);
            mpDraw2DTop->setBButtonString(0x522, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            mpDraw2DTop->set3DStickString(0x528);
            mpDraw2DBack->iconScale(0, 1.0f, 1.0f, 0.0f);
            if (mProcess != PROC_YAMIBOSS_DEMO1_e) {
                arrowPosInit();
            } else {
                yamibossArrowPosInit();
            }
        }
    } else if (mProcess == PROC_SPOT_MAP_e) {
        if (g_fmapHIO.field_0x2f9) {
            mpDraw2DBack->setRegionCursor(mOldRegionCursor);
        }
        readWorldData(mpDraw2DBack->getRegionCursor() + 1);
        mZoomLevel = YREG_S(1) + 10;
        mpDraw2DBack->zoomMapCalc((f32)mZoomLevel / (YREG_S(1) + 10));
        if (g_fmapHIO.field_0x2f9) {
            mpDraw2DBack->setSpotCursor(mOldStageCursor);
        }
        mpDraw2DBack->zoomMapCalc2((f32)mZoomLevel / (YREG_S(1) + 10));
        mpDraw2DBack->setStageTransForceXZ(mOldStageTransX, mOldStageTransZ);
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
        mpDraw2DTop->setBButtonString(0x522, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        if (PLATFORM_WII && dComIfGs_getOptPointer()) {
            mpDraw2DTop->setAButtonString(0x536, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        } else {
            mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        }
        mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        mpDraw2DTop->set3DStickString(0x528);
        mpDraw2DBack->iconScale(0, 0.0f, 0.0f, 1.0f);
        arrowPosInit();
    } else {
        u8 process = mProcess;
        mProcess = PROC_ZOOM_REGION_TO_ALL_e;
        readWorldData(mpDraw2DBack->getRegionCursor() + 1);
        mZoomLevel = 0;
        mpDraw2DBack->zoomMapCalc((f32)mZoomLevel / (YREG_S(1) + 10));
        mProcess = process;
        getPlayerPos2D();
        mpDraw2DBack->regionMapMove(mpStick);
        drawIcon(field_0x1ec, true);
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
        mpDraw2DTop->setBButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        mpDraw2DTop->set3DStickString(0x524);
        mpDraw2DBack->iconScale(0, 1.0f, 1.0f, 0.0f);
        arrowPosInit();
    }

    if (mProcess == PROC_PORTAL_DEMO1_e || mProcess == PROC_YAMIBOSS_DEMO1_e
        || mProcess == PROC_TABLE_DEMO1_e || mProcess == PROC_LIGHT_DEMO1_e
        || mProcess == PROC_HOWL_DEMO1_e)
    {
        mpDraw2DBack->offArrowDrawFlag();
    }

    (this->*init_process[mProcess])();

    if (mProcess != PROC_HOWL_DEMO1_e) {
        getPlayerPos2D();
    }

    g_fmapHIO.field_0x2f9 = false;
}

void dMenu_Fmap_c::_delete() {
    /* empty function */
}

void dMenu_Fmap_c::_move() {
    u8 process = mProcess;
    field_0x310 = 0;
    mpDraw2DBack->clearIconInfo();

    (this->*move_process[mProcess])();
    
    mpDraw2DTop->_execute();
    mpDraw2DBack->setBaseBackAlpha(g_fmHIO.mBaseBackAlpha);
    mpDraw2DBack->btkAnimeLoop(g_fmHIO.mBackAnimeStep);
    mpDraw2DTop->setMoyaAlpha(g_fmHIO.mMoyaAlpha);
    mpDraw2DTop->btkAnimeLoop(g_fmHIO.mTopAnimeStep);

    if (mProcess != process) {
        (this->*init_process[mProcess])();
    }

    if (mProcess == PROC_PORTAL_WARP_FORBID_e) {
        mpDraw2DBack->calcBackAlpha(true);
    } else {
        mpDraw2DBack->calcBackAlpha(false);
    }

    mpDraw2DBack->setAllTrans(mTransX, mTransY);
    mpDraw2DTop->setAllTrans(mTransX, mTransY);

#if DEBUG
    if (mpDraw2DBack->getAllPathShowFlag() != g_fmapHIO.mDisplayAllPaths) {
        g_fmapHIO.field_0x2f9 = true;
    }

    if (g_fmapHIO.mRegionImageDebug) {
        decodeFieldMapData2();
    }
#endif

    if (g_fmapHIO.mRangeCheck) {
        drawDebugStage();
    }

    if (mSpotTextureFadeAlpha != 1.0f) {
        cLib_addCalc2(&mSpotTextureFadeAlpha, 1.0f, 0.4f, 0.5f);
        if (std::fabs(mSpotTextureFadeAlpha - 1.0f) < 0.1f) {
            mSpotTextureFadeAlpha = 1.0f;
        }
        mpDraw2DBack->setSpotTextureFadeAlpha(mSpotTextureFadeAlpha);
    }
}

void dMenu_Fmap_c::_draw() {
    if (mpDraw2DBack != NULL && mpDraw2DTop != NULL) {
        if (field_0x305) {
            mpMenuFmapMap->setRendering(mpWorldData, mStartStageNo,
                                        mpDraw2DBack->getRenderingPosX(),
                                        mpDraw2DBack->getRenderingPosZ(),
                                        mpDraw2DBack->getRenderingScale(),
                                        mpDraw2DBack->getMapZoomRate());
            mpDraw2DBack->setStageInfo(mSpotNum, mpMenuFmapMap);
            drawIcon(field_0x1ec, false);
            if (mProcess == PROC_ZOOM_REGION_TO_SPOT_e || mProcess == PROC_ZOOM_SPOT_TO_REGION_e
                || mProcess == PROC_YAMIBOSS_DEMO4_e || mProcess == PROC_LIGHT_DEMO1_e
                || mProcess == PROC_TABLE_DEMO2_e || mProcess == PROC_HOWL_DEMO1_e)
            {
                f32 scale = 1.0f - field_0x1ec;
                f32 sp24 = scale;
                f32 sp20 = 1.0f - scale;
                mpDraw2DBack->iconScale(0, scale, sp24, sp20);
            } else {
#if DEBUG
                f32 scale = 1.0f - field_0x1ec;
                f32 sp1C = scale;
                f32 sp18 = 1.0f - scale;
                mpDraw2DBack->iconScale(0, scale, sp1C, sp18);
#endif
            }
        } else {
            drawPortalIcon();
            if (mProcess == PROC_ZOOM_ALL_TO_REGION_e || mProcess == PROC_ZOOM_REGION_TO_ALL_e) {
                f32 scale = 1.0f - (f32)mZoomLevel / (YREG_S(1) + 10);
                f32 sp14 = scale;
                f32 sp10 = 1.0f - scale;
                mpDraw2DBack->iconScale(0, scale, sp14, sp10);
            } else {
#if DEBUG
                f32 scale = 1.0f - (f32)mZoomLevel / (YREG_S(1) + 10);
                f32 sp0C = scale;
                f32 sp08 = 1.0f - scale;
                mpDraw2DBack->iconScale(0, scale, sp0C, sp08);
#endif
            }
        }

        mpDraw2DBack->setMapDrawFlag(mpMenuFmapMap->isDrawEnable());
        dComIfGd_set2DOpa(mpDraw2DBack);
        dComIfGd_set2DOpaTop(mpDraw2DTop);
    }
}

u8 dMenu_Fmap_c::getNextStatus(u8* param_0) {
    u8 ret = 8;
    *param_0 = 0;

    if (mProcess == PROC_ALL_MAP_e && dMw_B_TRIGGER()) {
        if (PLATFORM_WII || mPanDirection == 3) {
            mPanDirection = 1;
            dMeter2Info_setMapStatus(0);
            dMeter2Info_setMapKeyDirection(0x400);
        } else {
            mPanDirection = 3;
            if (dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo()) {
                dMeter2Info_setMapStatus(1);
            } else {
                dMeter2Info_setMapStatus(0);
            }
            dMeter2Info_setMapKeyDirection(0x200);
        }

        ret = 9;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibrationM();
    }

    if (mProcess == PROC_PORTAL_WARP_MAP_e && dMeter2Info_getWarpStatus() == 3) {
        if (PLATFORM_WII || mPanDirection == 3) {
            mPanDirection = 1;
            dMeter2Info_setMapStatus(0);
            dMeter2Info_setMapKeyDirection(0x400);
        } else {
            mPanDirection = 3;
            if (dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo()) {
                dMeter2Info_setMapStatus(1);
            } else {
                dMeter2Info_setMapStatus(0);
            }
            dMeter2Info_setMapKeyDirection(0x200);
        }

        ret = 9;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        dMeter2Info_set2DVibrationM();
        return ret;
    } else if ((mProcess == PROC_ALL_MAP_e || mProcess == PROC_REGION_MAP_e
                || mProcess == PROC_PORTAL_WARP_MAP_e || mProcess == PROC_SPOT_MAP_e) && isSync()) {
#if PLATFORM_WII
        if (dMw_LEFT_TRIGGER()) {
#else
        if (dMw_LEFT_TRIGGER()) {
            if (dMeterMap_c::isEnableDispMapAndMapDispSizeTypeNo()) {
                dMeter2Info_setMapStatus(1);
            } else {
                dMeter2Info_setMapStatus(0);
            }
            mPanDirection = 3;
            dMeter2Info_setMapKeyDirection(0x200);
            ret = 9;
            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibrationM();
            return ret;
        } else if (dMw_RIGHT_TRIGGER()) {
#endif
            dMeter2Info_setMapStatus(0);
            mPanDirection = 1;
            dMeter2Info_setMapKeyDirection(0x400);
            ret = 9;
            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_CLOSE_L, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            dMeter2Info_set2DVibrationM();
            return ret;
        }
    }

    return ret;
}

bool dMenu_Fmap_c::isSync() {
    if (mpMountArchive != NULL && !mpMountArchive->sync()) {
        return false;
    }
    return true;
}

void dMenu_Fmap_c::all_map_init() {
    if (mIsWarpMap == true) {
        setTitleName(0x525);
        mpDraw2DTop->setZButtonString(0x52a, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    } else {
        setTitleName(mAllTitleName);
        mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    }

    mResetAreaName = true;

    if (!mAreaNameSet) {
        setAreaNameZero();
    } else {
        setAreaName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    }

    mRegionNo = mpDraw2DBack->getRegionCursor();
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    mpDraw2DTop->setBButtonString(0x3f9, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0x524);
    mpDraw2DTop->setCrossLRString(0x3f9);
}

void dMenu_Fmap_c::all_map_proc() {
    mpStick->checkTrigger();

    u8 region = mpDraw2DBack->getSelectRegion();
    bool region_change = false;
    u8 var_r27 = false;
    if (mRegionNo != region) {
        mRegionNo = region;
        region_change = true;
    }

    if (region != 0xff && mpDraw2DBack->isShowRegion(region)) {
        if (PLATFORM_GCN && getRegionStageNum(region + 1) == 0) {
            mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        } else {
            mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        }
        if (region_change) {
#if PLATFORM_WII
            if (dComIfGs_getOptPointer()) {
                var_r27 = true;
                dMeter2Info_set2DVibration();
            }
#endif

            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_AREA_SELECT, NULL, var_r27, 0,
                                     1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    } else {
        mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    }

    if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        if (region == 0xff || !mpDraw2DBack->isShowRegion(region)) {
            if (!mErrorSound) {
                Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                mErrorSound = true;

                if (PLATFORM_WII && dComIfGs_getOptPointer()) {
                    field_0x310 = true;
                }
            }
        } else {
            mpDraw2DBack->setRegionCursor(region);
            if (getRegionStageNum(mpDraw2DBack->getRegionCursor() + 1) == 0) {
                if (!mErrorSound) {
                    Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0,
                                             1.0f, 1.0f, -1.0f, -1.0f, 0);
                    mErrorSound = true;

                    if (PLATFORM_WII && dComIfGs_getOptPointer()) {
                        field_0x310 = true;
                    }
                }
            } else {
                mpDraw2DBack->calcDrawPriority();
                setProcess(PROC_ZOOM_ALL_TO_REGION_e);
                if (mErrorSound == true) {
                    mErrorSound = false;
                }
            }
        }
    } else if (dMw_B_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        if (mErrorSound == true) {
            mErrorSound = false;
        }
    } else if (dMw_Z_TRIGGER() && mpDraw2DTop->isWarpAccept()) {
            /* dSv_event_flag_c::F_0265 - Arbiter's Grounds - Arbiter's Grounds clear */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x109])
                /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
            && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x169]))
        {
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
            mpDraw2DTop->getScrnExplainPtr()->openExplain(0x8b4, 0, 0, 0xff, true);
            mPrevProcessAlt = mProcess;
            setProcess(PROC_PORTAL_WARP_FORBID_e);
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else if (mpDraw2DTop->checkPlayerWarpAccept()) {
            if (mIsWarpMap == true) {
                mIsWarpMap = false;
                mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
                Z2GetAudioMgr()->seStart(Z2SE_WARP_MAP_OFF, NULL, 0, 0,
                                         1.0f, 1.0f, -1.0f, -1.0f, 0);
            } else {
                mIsWarpMap = true;
                mpDraw2DTop->setZButtonString(0x52a, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
                Z2GetAudioMgr()->seStart(Z2SE_WARP_MAP_ON, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            }
        } else {
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
                /* dSv_event_flag_c::M_071 - Cutscene - [cutscene: 20] Zant appears (during Midna's desperate hour) */
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x68])
                    /* dSv_event_flag_c::F_0250 - Cutscene - [cutscene: 21] reunion with Zelda / Midna revived (Hyrule Castle barrier appears) */
                && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0xFA]))
            {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x85d, 0, 0, 0xff, true);
            } else if (!mpDraw2DTop->checkWarpAcceptCannon()) {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7de, 0, 0, 0xff, true);
                /* dSv_event_flag_c::F_0787 - Kakariko Village - Stopped by Midna when trying to warp the sky cannon */
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x313]);
            } else if (!mpDraw2DTop->checkWarpAcceptRegion4()) {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7dd, 0, 0, 0xff, true);
            } else {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51d, 0, 0, 0xff, true);
            }
            mPrevProcessAlt = mProcess;
            setProcess(PROC_PORTAL_WARP_FORBID_e);
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    } else {
        u8 region1 = mpDraw2DBack->getSelectRegion();
        mpDraw2DBack->allmap_move2(mpStick);
        if (region1 != mpDraw2DBack->getSelectRegion() || mResetAreaName) {
            mResetAreaName = false;
            if (mpDraw2DBack->getSelectRegion() != 0xff
                && mpDraw2DBack->isShowRegion(mpDraw2DBack->getSelectRegion()))
            {
                setAreaName(mTitleName[mpDraw2DBack->getSelectRegion()]);
                mpDraw2DBack->setSpotCursor(0);

            } else {
                setAreaNameZero();
            }
        }
        if (mErrorSound == true) {
            mErrorSound = false;
        }
    }
}

void dMenu_Fmap_c::zoom_all_to_region_init() {
    if (!readWorldData(mpDraw2DBack->getRegionCursor() + 1)) {
        setProcess(PROC_ALL_MAP_e);
        if (!mErrorSound) {
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
            mErrorSound = true;
        }
    } else {
        mZoomLevel = 0;
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
}

void dMenu_Fmap_c::zoom_all_to_region_proc() {
    mZoomLevel++;
    f32 var_f31 = (f32)mZoomLevel / (YREG_S(1) + 10);
    mpDraw2DBack->zoomMapCalc(var_f31);

    if (mIsWarpMap == true) {
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    } else {
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    }

    if (mZoomLevel >= (YREG_S(1) + 10)) {
        if (mIsWarpMap == true) {
            setProcess(PROC_PORTAL_WARP_MAP_e);
        } else {
            setProcess(PROC_REGION_MAP_e);
        }
    }
}

void dMenu_Fmap_c::zoom_region_to_all_init() {
    mZoomLevel = YREG_S(1) + 10;
    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMOUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

void dMenu_Fmap_c::zoom_region_to_all_proc() {
    mZoomLevel--;
    f32 var_f31 = (f32)mZoomLevel / (YREG_S(1) + 10);
    mpDraw2DBack->zoomMapCalc(var_f31);

    if (mIsWarpMap == true) {
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    } else {
        mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    }

    if (mZoomLevel <= 0) {
        if (mpDraw2DBack->getAllPathShowFlag()) {
            removeAreaData();
            readWorldData(0xff);
        }
        setProcess(PROC_ALL_MAP_e);
    }
}

void dMenu_Fmap_c::region_map_init() {
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    mResetAreaName = true;

    if (!mAreaNameSet) {
        setAreaNameZero();
    } else {
        setAreaName(mAreaName[mpDraw2DBack->getSpotCursor()]);
    }

    mStageCursor = mpDraw2DBack->getSpotCursor();
    mRoomCursor = -1;
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UPDOWN, 0.0f);
    mpDraw2DTop->setBButtonString(0x522, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0x528);
    mpDraw2DTop->setCrossLRString(0x3f9);
}

void dMenu_Fmap_c::region_map_proc() {
    bool r29 = false;

    if (PLATFORM_WII && dComIfGs_getOptPointer()) {
        if (mStageCursor >= 0 || mpDraw2DBack->getSelectRegion() != 0xff) {
            mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            r29 = true;
        } else {
            mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        }
    } else {
        mpDraw2DTop->setAButtonString(0x527, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        r29 = true;
    }

    if (dMw_B_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        setProcess(PROC_ZOOM_REGION_TO_ALL_e);
        mpMenuFmapMap->setFlashOff();
    } else if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        if (r29) {
            setProcess(PROC_ZOOM_REGION_TO_SPOT_e);
        } else {
            if (!mErrorSound) {
                Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                mErrorSound = true;
            }
#if PLATFORM_WII
            if (dComIfGs_getOptPointer()) {
                field_0x310 = true;
            }
#endif
        }
    } else if (dMw_Z_TRIGGER() && mpDraw2DTop->isWarpAccept()) {
            /* dSv_event_flag_c::F_0265 - Arbiter's Grounds - Arbiter's Grounds clear */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x109])
                /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
            && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x169]))
        {
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
            mpDraw2DTop->getScrnExplainPtr()->openExplain(0x8b4, 0, 0, 0xff, true);
            mPrevProcessAlt = mProcess;
            setProcess(PROC_PORTAL_WARP_FORBID_e);
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else if (mpDraw2DTop->checkPlayerWarpAccept()) {
            mIsWarpMap = true;
            setProcess(PROC_TO_PORTAL_WARP_MAP_e);
            mpMenuFmapMap->setFlashOff();
            mpDraw2DTop->setZButtonString(0x52a, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            Z2GetAudioMgr()->seStart(Z2SE_WARP_MAP_ON, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else {
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
                /* dSv_event_flag_c::M_071 - Cutscene - [cutscene: 20] Zant appears (during Midna's desperate hour) */
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x68])
                    /* dSv_event_flag_c::F_0250 - Cutscene - [cutscene: 21] reunion with Zelda / Midna revived (Hyrule Castle barrier appears) */
                && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0xFA]))
            {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x85d, 0, 0, 0xff, true);
            } else if (!mpDraw2DTop->checkWarpAcceptCannon()) {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7de, 0, 0, 0xff, true);
                /* dSv_event_flag_c::F_0787 - Kakariko Village - Stopped by Midna when trying to warp the sky cannon */
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x313]);
            } else if (!mpDraw2DTop->checkWarpAcceptRegion4()) {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7dd, 0, 0, 0xff, true);
            } else {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51d, 0, 0, 0xff, true);
            }
            mPrevProcessAlt = mProcess;
            setProcess(PROC_PORTAL_WARP_FORBID_e);
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    } else {
        if (g_fmapHIO.mDisplayReferenceArea) {
            mpDraw2DBack->zoomMapCalc(1.0f);
        }
        mpDraw2DBack->regionMapMove(mpStick);
        int stage_no, room_no;

        f32 pos_x;
        f32 pos_y;
#if PLATFORM_WII
        if (dComIfGs_getOptPointer()) {
            Vec2& dpd_pos = mReCPd::getDpd2DPos(0);
            f32 dpd_x = dpd_pos.x;
            f32 dpd_x_mirror = mpDraw2DBack->getMirrorPosX(dpd_x, 0.0f);
            pos_x = dpd_x_mirror
                - mDoGph_gInf_c::getMinXF()
                - mDoGph_gInf_c::getWidthF() / 2.0f;
            pos_y = dpd_pos.y - mDoGph_gInf_c::getHeightF() / 2.0f;
        } else {
            f32 arrow_x = mpDraw2DBack->getArrowPos2DX();
            pos_x = arrow_x
                - mDoGph_gInf_c::getMinXF()
                - mDoGph_gInf_c::getWidthF() / 2.0f;
            pos_y = mpDraw2DBack->getArrowPos2DY() - mDoGph_gInf_c::getHeightF() / 2.0f;
        }
#else
        pos_x = mpDraw2DBack->getArrowPos2DX() - mDoGph_gInf_c::getMinXF()
                                                    - mDoGph_gInf_c::getWidthF() / 2.0f;
        pos_y = mpDraw2DBack->getArrowPos2DY() - mDoGph_gInf_c::getHeightF() / 2.0f;
#endif
        mpMenuFmapMap->getPointStagePathInnerNo(getNowFmapRegionData(), pos_x, pos_y,
                                                mStayStageNo, &stage_no, &room_no);
        if (mStageCursor != stage_no || mRoomCursor != room_no || mResetAreaName) {
            mStageCursor = stage_no;
            mRoomCursor = room_no;
            u16 area_name = checkStRoomData();
            if (mStageCursor >= 0) {
                mpDraw2DBack->setSpotCursor(mStageCursor);
                if (area_name != 0xffff) {
                    setAreaName(area_name);
                } else {
                    setAreaName(mAreaName[mStageCursor]);
                }
            } else {
                setAreaNameZero();
            }
        }
        if (mErrorSound == true) {
            mErrorSound = false;
        }
    }

    if (mStageCursor >= 0) {
        setFlash(mStageCursor, true);
    } else {
        mpMenuFmapMap->setFlashOff();
    }
}

void dMenu_Fmap_c::to_portal_warp_map_init() {
    mZoomLevel = YREG_S(1) + 10;
}

void dMenu_Fmap_c::to_portal_warp_map_proc() {
    mZoomLevel--;

    f32 var_f31 = (f32)mZoomLevel / (YREG_S(1) + 10);

    if (mZoomLevel <= 0) {
        setProcess(PROC_PORTAL_WARP_MAP_e);
    }
}

void dMenu_Fmap_c::portal_warp_map_init() {
    if (mPrevProcess != PROC_PORTAL_WARP_SELECT_e) {
        mPortalNo = 0xff;
        setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
        if (mPortalNo == 0xff) {
            setAreaNameZero();
        }
    }

    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    mpDraw2DTop->setBButtonString(0x522, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setZButtonString(0x52a, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0x526);
}

void dMenu_Fmap_c::portal_warp_map_proc() {
    mpStick->checkTrigger();

    if (dMw_B_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        setProcess(PROC_ZOOM_REGION_TO_ALL_e);
        if (mErrorSound == true) {
            mErrorSound = false;
        }
    } else if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        if (mPortalNo != 0xff) {
            dMenu_Fmap_portal_data_c* portalDat = mpPortalDat;
            dMenu_Fmap_portal_data_c::data* portals = portalDat->mData;
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
            dMsgObject_setPortalMessageID(portals[mPortalNo].mMessageID);

                /* dSv_event_flag_c::M_071 - Cutscene - [cutscene: 20] Zant appears (during Midna's desperate hour) */
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x68])
                    /* dSv_event_flag_c::F_0250 - Cutscene - [cutscene: 21] reunion with Zelda / Midna revived (Hyrule Castle barrier appears) */
                && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0xFA]))
            {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x85d, 0, 0, 0xff, true);
                       /* dSv_event_flag_c::F_0786 - Kakariko Village - Forced conversation with Shad when he sees the sky cannon */
            } else if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x312])
                    /* dSv_event_flag_c::F_0785 - Kakariko Village - Shad leaves after attempting to warp sky cannon */
                && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x311]))
            {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7de, 0, 0, 0xff, true);
                /* dSv_event_flag_c::F_0787 - Kakariko Village - Stopped by Midna when trying to warp the sky cannon */
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x313]);
            } else if (mPortalNo == 6) {
                if ((!strcmp(dComIfGp_getStartStageName(), "F_SP124")
                                && ((daMidna_c*)daPy_py_c::getMidnaActor())->checkPortalObjRide())
                       /* dSv_event_flag_c::M_092 - Hyrule Field - Warped Eldin Bridge */
                    || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x7D]))
                {
                    mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51e, 2, 0, 0xff, true);
                } else {
                    mpDraw2DTop->getScrnExplainPtr()->openExplain(0x53a, 0, 0, 0xff, true);
                }
            } else if (mPortalNo == 3) {
                if ((dMeter2Info_getMapStatus() == 3
                                && dStage_stagInfo_GetSaveTbl(dComIfGp_getStageStagInfo()) == dStage_SaveTbl_FARON
                                && dComIfGs_isOneZoneSwitch(0xf, -1))
                       /* dSv_event_flag_c::M_018 - Main Event - Brought Kakariko bridge back to original location */
                    || dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x33]))
                {
                    mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51e, 2, 0, 0xff, true);
                } else {
                    mpDraw2DTop->getScrnExplainPtr()->openExplain(0x53b, 0, 0, 0xff, true);
                }
            } else {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51e, 2, 0, 0xff, true);
            }

            setProcess(PROC_PORTAL_WARP_SELECT_e);
            if (mErrorSound == true) {
                mErrorSound = false;
            }
            Z2GetAudioMgr()->seStart(Z2SE_SY_CURSOR_OK, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else {
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    } else if (dMw_Z_TRIGGER()) {
        mIsWarpMap = false;
        setProcess(PROC_REGION_MAP_e);
        mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        Z2GetAudioMgr()->seStart(Z2SE_WARP_MAP_OFF, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    } else {
        portalWarpMapMove(mpStick);
        if (mErrorSound == true) {
            mErrorSound = false;
        }
    }

    setFlash(mpDraw2DBack->getSpotCursor(), false);
}

void dMenu_Fmap_c::portal_warp_select_init() {
    /* empty function */
}

void dMenu_Fmap_c::portal_warp_select_proc() {
    mpDraw2DTop->getScrnExplainPtr()->move();

    if (mpDraw2DTop->getScrnExplainPtr()->getStatus() == 0) {
        mpDraw2DTop->deleteExplain();

        if (dMeter2Info_getWarpStatus() == 3) {
            dMenu_Fmap_portal_data_c* portalDat = mpPortalDat;
            dMenu_Fmap_portal_data_c::data* portals = portalDat->mData;
            u8 region = mpDraw2DBack->getRegionCursor();

            dMeter2Info_setWarpInfo(portals[mPortalNo].mStageName,
                cXyz(portals[mPortalNo].mPosition.x + mpDraw2DBack->getRegionOriginX(region),
                     portals[mPortalNo].mPosition.y,
                     portals[mPortalNo].mPosition.z + mpDraw2DBack->getRegionOriginZ(region)),
                0, (u8)portals[mPortalNo].mRoomNo, 0, (u8)portals[mPortalNo].mWarpPlayerNo);

            dComIfGp_SelectWarpPt_set(portals[mPortalNo].mSelectWarpPt);
            setProcess(PROC_PORTAL_WARP_MAP_e);
        } else if (mPrevProcess == PROC_PORTAL_DEMO5_e) {
            setProcess(PROC_PORTAL_DEMO5_e);
        } else {
            setProcess(PROC_PORTAL_WARP_MAP_e);
        }
    }

    setFlash(mpDraw2DBack->getSpotCursor(), false);
}

void dMenu_Fmap_c::portal_warp_forbid_init() {
    mpDraw2DTop->setBButtonString(0x3f9, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0);
    mpDraw2DTop->setCrossLRString(0);
}

void dMenu_Fmap_c::portal_warp_forbid_proc() {
    mpDraw2DTop->getScrnExplainPtr()->move();
    if (mpDraw2DTop->getScrnExplainPtr()->getStatus() == 0) {
        mpDraw2DTop->deleteExplain();
        setProcess(mPrevProcessAlt);
    }
    setFlash(mpDraw2DBack->getSpotCursor(), false);
}

void dMenu_Fmap_c::zoom_region_to_spot_init() {
    mZoomLevel = 0;
    field_0x1ec = 0.0f;
    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

void dMenu_Fmap_c::zoom_region_to_spot_proc() {
    mZoomLevel++;
    field_0x1ec = (f32)mZoomLevel / (YREG_S(1) + 10);
    u8 var_r30 = mpDraw2DBack->getRegionCursor();
    mpDraw2DBack->zoomMapCalc2(field_0x1ec);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);

    if (mZoomLevel >= YREG_S(1) + 10) {
        setProcess(PROC_SPOT_MAP_e);
    }

    if (mStageCursor >= 0) {
        setFlash(mStageCursor, true);
    } else {
        mpMenuFmapMap->setFlashOff();
    }
}

void dMenu_Fmap_c::zoom_spot_to_region_init() {
    mZoomLevel = YREG_S(1) + 10;
    field_0x1ec = 1.0f;
    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMOUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

void dMenu_Fmap_c::zoom_spot_to_region_proc() {
    mZoomLevel--;
    field_0x1ec = (f32)mZoomLevel / (YREG_S(1) + 10);
    u8 regionCursor = mpDraw2DBack->getRegionCursor();
    mpDraw2DBack->zoomMapCalc2(field_0x1ec);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);

    if (mZoomLevel <= 0) {
        if (mIsWarpMap == true) {
            setProcess(PROC_PORTAL_WARP_MAP_e);
        } else {
            setProcess(PROC_REGION_MAP_e);
        }
    }

    if (mStageCursor >= 0) {
        setFlash(mStageCursor, true);
    } else {
        mpMenuFmapMap->setFlashOff();
    }
}

void dMenu_Fmap_c::spot_map_init() {
    field_0x1ec = 1.0f;
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    mResetAreaName = true;

    if (!mAreaNameSet) {
        setAreaNameZero();
    } else {
        setAreaName(mAreaName[mpDraw2DBack->getSpotCursor()]);
    }

    mStageCursor = mpDraw2DBack->getSpotCursor();
    mRoomCursor = -1;

    mpDraw2DBack->resetDrug();
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    mpDraw2DTop->setBButtonString(0x522, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    if (PLATFORM_WII && dComIfGs_getOptPointer()) {
        mpDraw2DTop->setAButtonString(0x536, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    } else {
        mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    }
    mpDraw2DTop->setZButtonString(0x529, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0x528);
    mpDraw2DTop->setCrossLRString(0x3f9);
}

void dMenu_Fmap_c::spot_map_proc() {
#if PLATFORM_WII
    f32 scissor_x_min = mpDraw2DBack->getMapScissorAreaLX();
    f32 scissor_x_max = scissor_x_min + mpDraw2DBack->getMapScissorAreaSizeRealX();
    f32 scissor_y_min = mpDraw2DBack->getMapScissorAreaLY();
    f32 scissor_y_max = scissor_y_min + mpDraw2DBack->getMapScissorAreaSizeRealY();
    Vec2& dpd_pos = mReCPd::getDpd2DPos(0);
    if (dComIfGs_getOptPointer()) {
        if (dpd_pos.x < scissor_x_min || dpd_pos.x > scissor_x_max ||
            dpd_pos.y < scissor_y_min || dpd_pos.y > scissor_y_max) {
            mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        } else {
            mpDraw2DTop->setAButtonString(0x536, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
        }
    }
#endif

    if (dMw_B_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)
        && dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != 1)
    {
        setProcess(PROC_ZOOM_SPOT_TO_REGION_e);
        if (mErrorSound == true) {
            mErrorSound = false;
        }
    } else if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc) &&
#if PLATFORM_WII
            ((dComIfGs_getOptPointer() == true
                && (dpd_pos.x < scissor_x_min || dpd_pos.x > scissor_x_max ||
                    dpd_pos.y < scissor_y_min || dpd_pos.y > scissor_y_max))
            || !dComIfGs_getOptPointer()) &&
#endif
        dMeter2Info_getMeterClass()->getMeterDrawPtr()->getInsideObjCheck() != TRUE
    ) {
#if PLATFORM_WII
        if (dComIfGs_getOptPointer()){
            if (!mErrorSound) {
                Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
                mErrorSound = true;
            }
            field_0x310 = true;
        }
#endif

        mpDraw2DBack->stageMapMove(mpStick, 1, true);
    } else if (dMw_Z_TRIGGER() && mpDraw2DTop->isWarpAccept()) {
#if VERSION == VERSION_GCN_JPN
        //! JPN version added a check to make sure if Arbiter's Grounds is cleared that
        //! the Mirror Chamber Statue has been spun before allowing portal warping from the map screen.
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[265]) && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[361])) {
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
            mpDraw2DTop->getScrnExplainPtr()->openExplain(0x8B4, 0, 0, 0xff, true);

            mPrevProcessAlt = mProcess;
            setProcess(PROC_PORTAL_WARP_FORBID_e);
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else 
#endif
        if (mpDraw2DTop->checkPlayerWarpAccept()) {
            mIsWarpMap = true;
            setProcess(PROC_ZOOM_SPOT_TO_REGION_e);
            mpDraw2DTop->setZButtonString(0x52a, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
            Z2GetAudioMgr()->seStart(Z2SE_WARP_MAP_ON, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        } else {
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);

                /* dSv_event_flag_c::M_071 - Cutscene - [cutscene: 20] Zant appears (during Midna's desperate hour) */
            if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x68])
                    /* dSv_event_flag_c::F_0250 - Cutscene - [cutscene: 21] reunion with Zelda / Midna revived (Hyrule Castle barrier appears) */
                && !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0xFA]))
            {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x85d, 0, 0, 0xff, true);
            } else if (!mpDraw2DTop->checkWarpAcceptCannon()) {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7de, 0, 0, 0xff, true);
                /* dSv_event_flag_c::F_0787 - Kakariko Village - Stopped by Midna when trying to warp the sky cannon */
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x313]);
            } else if (!mpDraw2DTop->checkWarpAcceptRegion4()) {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x7dd, 0, 0, 0xff, true);
            } else {
                mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51d, 0, 0, 0xff, true);
            }

            mPrevProcessAlt = mProcess;
            setProcess(PROC_PORTAL_WARP_FORBID_e);
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    } else {
        if (g_fmapHIO.mDisplayReferenceArea) {
            mpDraw2DBack->zoomMapCalc(1.0f);
            mpDraw2DBack->zoomMapCalc2(field_0x1ec);
        }

        mpDraw2DBack->stageMapMove(mpStick, 1, true);

        int stage_no, room_no;
        f32 pos_x, pos_y;
#if PLATFORM_WII
        if (dComIfGs_getOptPointer()) {
            Vec2& dpd_pos = mReCPd::getDpd2DPos(0);
            f32 dpd_x = dpd_pos.x;
            pos_x = mpDraw2DBack->getMirrorPosX(dpd_x, 0.0f);
            pos_x = pos_x - mDoGph_gInf_c::getMinXF() - mDoGph_gInf_c::getWidthF() / 2.0f;
            pos_y = dpd_pos.y - mDoGph_gInf_c::getHeightF() / 2.0f;
        } else {
            pos_x = mpDraw2DBack->getMapAreaGlobalCenterPosX();
            pos_y = mpDraw2DBack->getMapAreaGlobalCenterPosY();
            pos_x = pos_x - mDoGph_gInf_c::getMinXF() - mDoGph_gInf_c::getWidthF() / 2.0f;
            pos_y = pos_y - mDoGph_gInf_c::getHeightF() / 2.0f;
        }
#else
        pos_x = mpDraw2DBack->getMapAreaGlobalCenterPosX() - mDoGph_gInf_c::getMinXF()
                                                                    - mDoGph_gInf_c::getWidthF() / 2.0f;
        pos_y = mpDraw2DBack->getMapAreaGlobalCenterPosY() - mDoGph_gInf_c::getHeightF() / 2.0f;
#endif
        mpMenuFmapMap->getPointStagePathInnerNo(getNowFmapRegionData(), pos_x, pos_y,
                                                mStayStageNo, &stage_no, &room_no);
        
        if (mStageCursor != stage_no || mResetAreaName) {
            mStageCursor = stage_no;
            mRoomCursor = room_no;
            u16 area_name = checkStRoomData();
            if (mStageCursor >= 0) {
                if (area_name != 0xffff) {
                    setAreaName(area_name);
                } else {
                    setAreaName(mAreaName[mStageCursor]);
                }
            } else {
                setAreaNameZero();
            }
        }

        if (mErrorSound == true) {
            mErrorSound = false;
        }
    }

    mpDraw2DBack->zoomMapCalcHIO();

    if (mStageCursor >= 0) {
        setFlash(mStageCursor, true);
    } else {
        mpMenuFmapMap->setFlashOff();
    }
}

void dMenu_Fmap_c::portal_demo1_init() {
    mpDraw2DBack->setRegionCursor(2);
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    setAreaName(mAreaName[mpDraw2DBack->getSpotCursor()]);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_RIGHT, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_LEFT, 0.0f);
    mpDraw2DTop->setBButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setZButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0);
    mpDraw2DTop->setCrossLRString(0);
    dMsgObject_setTalkHeap(mpTalkHeap);
    mMsgFlow.init(NULL, 3005, 0, NULL);
    mZoomLevel = YREG_S(1) + 10;
}

void dMenu_Fmap_c::portal_demo1_move() {
    talkButton();
    mMsgFlow.doFlow(NULL, NULL, 0);

    if (dMsgObject_getMessageID() >= 2008 || mZoomLevel < 10) {
        if (mZoomLevel == (s16)(YREG_S(1) + 10)) {
            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMOUT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
        mZoomLevel--;
        f32 var_f31 = (f32)mZoomLevel / (YREG_S(1) + 10);
        mpDraw2DBack->zoomMapCalc(var_f31);
        if (mZoomLevel <= 0) {
            if (mpDraw2DBack->getAllPathShowFlag()) {
                removeAreaData();
                readWorldData(0xff);
            }
            mIsWarpMap = true;
            setProcess(PROC_PORTAL_DEMO2_e);
        }
    }
}

void dMenu_Fmap_c::portal_demo2_init() {
    setTitleName(mAllTitleName);
    setAreaName(mTitleName[mpDraw2DBack->getRegionCursor()]);
}

void dMenu_Fmap_c::portal_demo2_move() {
    talkButton();
    mMsgFlow.doFlow(NULL, NULL, 0);

    if (dMsgObject_getMessageID() >= 2009) {
        mpDraw2DBack->setRegionCursor(1);
        setProcess(PROC_PORTAL_DEMO3_e);
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_AREA_SELECT, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }

    mpDraw2DBack->mapBlink();
}

void dMenu_Fmap_c::portal_demo3_init() {
    setTitleName(mAllTitleName);
    setAreaName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    mZoomLevel = 0;
}

void dMenu_Fmap_c::portal_demo3_move() {
    talkButton();
    mMsgFlow.doFlow(NULL, NULL, 0);

    if (dMsgObject_getMessageID() >= 2010 || mZoomLevel > 0) {
        if (mZoomLevel == 0) {
            readWorldData(mpDraw2DBack->getRegionCursor() + 1);
            Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
        mZoomLevel++;
        f32 var_f31 = (f32)mZoomLevel / (YREG_S(1) + 10);
        mpDraw2DBack->zoomMapCalc(var_f31);
        if (mZoomLevel >= (s16)(YREG_S(1) + 10)) {
            setProcess(PROC_PORTAL_DEMO4_e);
        }
    }

    if (mZoomLevel == 0) {
        mpDraw2DBack->mapBlink();
    }
}

void dMenu_Fmap_c::portal_demo4_init() {
    mPortalNo = 0xff;
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    if (mPortalNo == 0xff) {
        setAreaNameZero();
    }
}

void dMenu_Fmap_c::portal_demo4_move() {
    talkButton();
    if (mMsgFlow.doFlow(NULL, NULL, 0)) {
        setProcess(PROC_PORTAL_DEMO5_e);
    }
    setFlash(mpDraw2DBack->getSpotCursor(), false);
}

void dMenu_Fmap_c::portal_demo5_init() {
    mpDraw2DTop->set3DStickString(0x526);
    mpDraw2DBack->onArrowDrawFlag();
}

void dMenu_Fmap_c::portal_demo5_move() {
    mpStick->checkTrigger();

    if (dMw_B_TRIGGER() || dMw_Z_TRIGGER() || dMw_START_TRIGGER() || dMw_UP_TRIGGER()
        || dMw_DOWN_TRIGGER() || dMw_LEFT_TRIGGER() || dMw_RIGHT_TRIGGER()
        || dMeter2Info_isTouchKeyCheck(0xc))
    {
        dMsgObject_setTalkHeap(mpTalkHeap);
        fopMsgM_messageSet(2015, 1000);
        setProcess(PROC_PORTAL_DEMO6_e);
    } else if (dMw_A_TRIGGER() && !dMeter2Info_isTouchKeyCheck(0xc)) {
        if (mPortalNo != 0xff) {
            dMenu_Fmap_portal_data_c* portalDat = mpPortalDat;
            dMenu_Fmap_portal_data_c::data* portals = portalDat->mData;
            mpDraw2DTop->createExplain(mpTalkHeap, mpStick);
            dMsgObject_setPortalMessageID(portals[mPortalNo].mMessageID);
            mpDraw2DTop->getScrnExplainPtr()->openExplain(0x51e, 2, 0, 0xff, true);
            setProcess(PROC_PORTAL_WARP_SELECT_e);
        } else {
            Z2GetAudioMgr()->seStart(Z2SE_SYS_ERROR, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
    } else {
        portalWarpMapMove(mpStick);
    }

    setFlash(mpDraw2DBack->getSpotCursor(), false);
}

void dMenu_Fmap_c::portal_demo6_init() {
    /* empty function */
}

void dMenu_Fmap_c::portal_demo6_move() {
    if (dMsgObject_getMsgObjectClass()->getStatus() == 0xe) {
        dMsgObject_getMsgObjectClass()->setStatus(0x10);
        talkButton();
    } else if (dMsgObject_getMsgObjectClass()->getStatus() == 0x12) {
        dMsgObject_getMsgObjectClass()->setStatus(0x13);
        setProcess(PROC_PORTAL_DEMO5_e);
        talkButton();
    }

    setFlash(mpDraw2DBack->getSpotCursor(), false);
}

void dMenu_Fmap_c::yamiboss_demo1_init() {
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    setAreaName(mAreaName[mpDraw2DBack->getSpotCursor()]);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_RIGHT, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_LEFT, 0.0f);
    mpDraw2DTop->setBButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setZButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0);
    mpDraw2DTop->setCrossLRString(0);
    dMsgObject_setTalkHeap(mpTalkHeap);
    mMsgFlow.init(NULL, 3012, 0, NULL);
    mZoomLevel = YREG_S(1) + 10;
}

void dMenu_Fmap_c::yamiboss_demo1_move() {
    talkButton();
    mMsgFlow.doFlow(NULL, NULL, 0);
    if (dMsgObject_getMessageID() >= 4015) {
        setProcess(PROC_YAMIBOSS_DEMO2_e);
    }
}

void dMenu_Fmap_c::yamiboss_demo2_init() {
    mZoomLevel = 0;
    field_0x30b = false;
}

void dMenu_Fmap_c::yamiboss_demo2_move() {
    if (dMsgObject_getMsgObjectClass()->getStatus() == 0xe) {
        mZoomLevel++;
            /* dSv_event_flag_c::M_086 - Twilight Hyrule Field - Show Boss Bug's Tear of Light on the map */
        if (dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x77])) {
            if (mZoomLevel > YREG_S(8) + 90) {
                setProcess(PROC_YAMIBOSS_DEMO3_e);
            }
        } else {
            if (mZoomLevel > 30) {
                field_0x30b = true;
                /* dSv_event_flag_c::M_086 - Twilight Hyrule Field - Show Boss Bug's Tear of Light on the map */
                dComIfGs_onEventBit(dSv_event_flag_c::saveBitLabels[0x77]);
            }
        }
    }
}

void dMenu_Fmap_c::yamiboss_demo3_init() {
    /* empty function */
}

void dMenu_Fmap_c::yamiboss_demo3_move() {
    talkButton();
    mMsgFlow.doFlow(NULL, NULL, 0);
    if (dMsgObject_getMessageID() >= 4016) {
        setProcess(PROC_YAMIBOSS_DEMO4_e);
    }
}

void dMenu_Fmap_c::yamiboss_demo4_init() {
    mZoomLevel = 0;
    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
}

void dMenu_Fmap_c::yamiboss_demo4_move() {
    mZoomLevel++;
    field_0x1ec = (f32)mZoomLevel / (YREG_S(1) + 10);
    mpDraw2DBack->zoomMapCalc2(field_0x1ec);
    if (mZoomLevel >= (s16)(YREG_S(1) + 10)) {
        setProcess(PROC_YAMIBOSS_DEMO5_e);
    }
}

void dMenu_Fmap_c::yamiboss_demo5_init() {
    /* empty function */
}

void dMenu_Fmap_c::yamiboss_demo5_move() {
    if (field_0x30b && dMsgObject_getMessageID() >= 4018) {
        field_0x30b = false;
    }
    talkButton();
    if (mMsgFlow.doFlow(NULL, NULL, 0)) {
        setProcess(PROC_SPOT_MAP_e);
        mpDraw2DBack->onArrowDrawFlag();
    }
}

void dMenu_Fmap_c::light_demo1_init() {
    mpDraw2DBack->zoomMapCalc2(1.0f);
    mZoomLevel = -10;
    Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    setAreaName(mAreaName[mpDraw2DBack->getSpotCursor()]);
    mpDraw2DTop->setBButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setZButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0);
    mpDraw2DTop->setCrossLRString(0);
    dMsgObject_setTalkHeap(mpTalkHeap);
    field_0x1ec = 1.0f;
    setTitleName(mTitleName[mpDraw2DBack->getRegionCursor()]);
    setAreaName(mAreaName[mpDraw2DBack->getSpotCursor()]);
    mStageCursor = mpDraw2DBack->getSpotCursor();
    mpDraw2DBack->resetDrug();
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_UP, 0.0f);
    mpDraw2DTop->setArrowAlphaRatio(dMenu_Fmap2DTop_c::ARROW_DOWN, 0.0f);
    mpDraw2DTop->setBButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->setZButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DTop->set3DStickString(0);
    mpDraw2DTop->setCrossLRString(0);
    dMsgObject_setTalkHeap(mpTalkHeap);
    mMsgFlow.init(NULL, 125, 0, NULL);
}

void dMenu_Fmap_c::light_demo1_move() {
    mZoomLevel++;
    if (mZoomLevel > 0) {
        setProcess(PROC_LIGHT_DEMO2_e);
    }
}

void dMenu_Fmap_c::light_demo2_init() {
    mMsgFlow.init(NULL, 125, 0, NULL);
}

void dMenu_Fmap_c::light_demo2_move() {
    talkButton();
    if (mMsgFlow.doFlow(NULL, NULL, 0)) {
        setProcess(PROC_SPOT_MAP_e);
        mpDraw2DBack->onArrowDrawFlag();
    }
}

void dMenu_Fmap_c::table_demo1_init() {
    mZoomLevel = -10;
    JUT_ASSERT(3029, dMeter2Info_getTableMapRegionNo() != 0xFF);
    mpDraw2DBack->setRegionCursor(dMeter2Info_getTableMapRegionNo());
    readWorldData(mpDraw2DBack->getRegionCursor() + 1);
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    dMenuFmapIconDisp_c icon;

    for (int i = 0; i < 8; i++) {
        if (mpRegionData[i] != NULL && mpStageData[i] != NULL) {
            icon.init(mpRegionData[i], mpStageData[i], 5, mStayStageNo,
                      dComIfGp_roomControl_getStayNo());

            while (!icon.getValidData()) {
                if (icon.isDrawDisp()) {
                    f32 pos_x, pos_z;
                    int stage_no, room_no;
                    icon.getPosition(&stage_no, &room_no, &pos_x, &pos_z, NULL);
                    if (isRoomCheck(stage_no, room_no)) {
                        mpDraw2DBack->setArrowPosAxis(pos_x, pos_z);
                    }
                }
                bool isEndOfData = icon.nextData();
                if (isEndOfData) {
                    break;
                }
            }
        }
    }
}

void dMenu_Fmap_c::table_demo1_move() {
    mZoomLevel++;
    if (mZoomLevel == 1) {
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
    if (mZoomLevel > 0) {
        f32 var_f31 = (f32)mZoomLevel / (YREG_S(1) + 10);
        mpDraw2DBack->zoomMapCalc(var_f31);
        if (mZoomLevel >= (s16)(YREG_S(1) + 10)) {
            setProcess(PROC_TABLE_DEMO2_e);
        }
    }
}

void dMenu_Fmap_c::table_demo2_init() {
    mZoomLevel = -10;
    tableArrowPosInit(true);
    mpDraw2DBack->zoomMapCalc2(0.0f);
}

void dMenu_Fmap_c::table_demo2_move() {
    mZoomLevel++;
    if (mZoomLevel == 1) {
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
    if (mZoomLevel > 0) {
        field_0x1ec = (f32)mZoomLevel / (YREG_S(1) + 10);
        mpDraw2DBack->zoomMapCalc2(field_0x1ec);
        if (mZoomLevel >= (s16)(YREG_S(1) + 10)) {
            setProcess(PROC_TABLE_DEMO3_e);
        }
    }
}

void dMenu_Fmap_c::table_demo3_init() {
    dMsgObject_setTalkHeap(mpTalkHeap);
    mMsgFlow.init(NULL, 1089, 0, NULL);
}

void dMenu_Fmap_c::table_demo3_move() {
    talkButton();
    if (mMsgFlow.doFlow(NULL, NULL, 0)) {
        mpDraw2DBack->onArrowDrawFlag();
        setProcess(PROC_SPOT_MAP_e);
    }
}

void dMenu_Fmap_c::howl_demo1_init() {
    mZoomLevel = -10;
    mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    mpDraw2DBack->zoomMapCalc2(0.0f);
}

void dMenu_Fmap_c::howl_demo1_move() {
    mZoomLevel++;
    if (mZoomLevel == 1) {
        Z2GetAudioMgr()->seStart(Z2SE_SY_MAP_ZOOMIN, NULL, 0, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
    }
    if (mZoomLevel > 0) {
        field_0x1ec = (f32)mZoomLevel / (YREG_S(1) + 10);
        mpDraw2DBack->zoomMapCalc2(field_0x1ec);
        if (mZoomLevel >= (s16)(YREG_S(1) + 10)) {
            setProcess(PROC_HOWL_DEMO2_e);
        }
    }
}

void dMenu_Fmap_c::howl_demo2_init() {
    mZoomLevel = -10;
}

void dMenu_Fmap_c::howl_demo2_move() {
    mZoomLevel++;
    if (mZoomLevel > 0) {
        mpDraw2DBack->onArrowDrawFlag();
        setProcess(PROC_SPOT_MAP_e);
    }
}

void dMenu_Fmap_c::howl_demo3_init() {
    /* empty function */
}

void dMenu_Fmap_c::howl_demo3_move() {
    setProcess(PROC_REGION_MAP_e);
}

bool dMenu_Fmap_c::isOpen() {
    bool ret = false;
    bool init = false;

    if (!mpResArchive) {
        if (!mpMountArchive) {
            mpMountArchive = mDoDvdThd_mountArchive_c::create("/res/FieldMap/res-f.arc", 2, mpHeap);
        }

        if (mpMountArchive->sync()) {
            mpResArchive = mpMountArchive->getArchive();
            mpMountArchive->destroy();
            mpMountArchive = NULL;
            mpFmapMapRes = mpResArchive->getResource("dat/data.dat");
            _create();
        } else {
            return ret;
        }
    }

    s16 display_frame_num = (s16)g_fmapHIO.mDisplayFrameNum;
    s16 undisplay_frame_num = (s16)g_fmapHIO.mUndisplayFrameNum;
    if (mDisplayFrame == 0) {
        init = true;
    }
    mDisplayFrame++;
    f32 ratio = (f32)mDisplayFrame / (f32)display_frame_num;

    if (mPanDirection == 1) {
        mTransX = (1.0f - ratio) * -FB_WIDTH_BASE;
        mTransY = 0.0f;
    } else if (mPanDirection == 3) {
        mTransX = (1.0f - ratio) * FB_WIDTH_BASE;
        mTransY = 0.0f;
    } else if (mPanDirection == 2) {
        mTransX = 0.0f;
        mTransY = (1.0f - ratio) * -FB_HEIGHT_BASE;
    } else if (mPanDirection == 0) {
        mTransX = 0.0f;
        mTransY = (1.0f - ratio) * FB_HEIGHT_BASE;
    }

    mAlphaRatio = ratio;

    if (mDisplayFrame >= display_frame_num) {
        mDisplayFrame = (s16)undisplay_frame_num;
        mTransX = 0.0f;
        mTransY = 0.0f;
        mAlphaRatio = 1.0f;
        ret = true;
    }

    mpDraw2DBack->setAllTrans(mTransX, mTransY);
    mpDraw2DBack->setAllAlphaRate(mAlphaRatio, init);
    mpDraw2DTop->setAllTrans(mTransX, mTransY);
    mpDraw2DTop->setAllAlphaRate(mAlphaRatio, init);
    mpDraw2DBack->setSpotTextureFadeAlpha(mSpotTextureFadeAlpha);

    return ret;
}

bool dMenu_Fmap_c::isClose() {
    bool ret = true;
    bool bVar2 = false;
    
    s16 undisplay_frame_num = (s16)g_fmapHIO.mUndisplayFrameNum;
    if (mDisplayFrame == undisplay_frame_num) {
        bVar2 = true;
    }
    mDisplayFrame--;
    f32 ratio = (f32)mDisplayFrame / (f32)undisplay_frame_num;

    if (mDisplayFrame <= 0) {
        mDisplayFrame = 0;
    } else {
        ret = false;
    }

    if (mPanDirection == 1) {
        mTransX = (1.0f - ratio) * FB_WIDTH_BASE;
        mTransY = 0.0f;
    } else if (mPanDirection == 3) {
        mTransX = (1.0f - ratio) * -FB_WIDTH_BASE;
        mTransY = 0.0f;
    } else if (mPanDirection == 2) {
        mTransX = 0.0f;
        mTransY = (1.0f - ratio) * FB_HEIGHT_BASE;
    } else if (mPanDirection == 0) {
        mTransX = 0.0f;
        mTransY = (1.0f - ratio) * -FB_HEIGHT_BASE;
    }

    mAlphaRatio = ratio;

    mpDraw2DBack->setAllTrans(mTransX, mTransY);
    mpDraw2DBack->setAllAlphaRate(mAlphaRatio, bVar2);
    mpDraw2DTop->setAllTrans(mTransX, mTransY);
    mpDraw2DTop->setAllAlphaRate(mAlphaRatio, bVar2);

    return ret;
}

u8 dMenu_Fmap_c::getProcess() {
    if (g_fmapHIO.field_0x2f9) {
        return mProcess;
    }
    return PROC_REGION_MAP_e;
}

u8 dMenu_Fmap_c::getRegionCursor() {
    if (mpDraw2DBack != NULL && g_fmapHIO.field_0x2f9) {
        return mpDraw2DBack->getRegionCursor();
    }
    return 0;
}

u8 dMenu_Fmap_c::getStageCursor() {
    if (mpDraw2DBack != NULL && g_fmapHIO.field_0x2f9) {
        return mpDraw2DBack->getSpotCursor();
    }
    return 0;
}

f32 dMenu_Fmap_c::getStageTransX() {
    if (mpDraw2DBack != NULL && g_fmapHIO.field_0x2f9) {
        return mpDraw2DBack->getStageTransX();
    }
    return 0.0f;
}

f32 dMenu_Fmap_c::getStageTransZ() {
    if (mpDraw2DBack != NULL && g_fmapHIO.field_0x2f9) {
        return mpDraw2DBack->getStageTransZ();
    }
    return 0.0f;
}

bool dMenu_Fmap_c::isRoomCheck(int i_stageNo, int i_roomNo) {
    if (!field_0x305) {
        return false;
    }

    dMenu_Fmap_field_data_c* fieldDat = mpFieldDat;
    dMenuMapCommon_c::Stage_c* stage_data
        = (dMenuMapCommon_c::Stage_c*)((intptr_t)mpFieldDat + fieldDat->mStageDataOffset);
    dMenuMapCommon_c::Stage_c::data* stages = stage_data->mData;
    u8 stage_no = 0;

    JUT_ASSERT(3606, mDataNumMax <= 100);

    int i1 = 0;

    int sp30 = 0;

    bool ret = false;
    bool sp08 = false;

    bool checked_data[100];
    for (int j = 0; j < mDataNumMax; j++) {
        checked_data[j] = false;
    }

    bool local_e0[64];
    bool room_check[64];
    char stage_name[8];

    for (; i1 < mDataNumMax; i1++) {
        if (checked_data[i1] == false) {
            strcpy(stage_name, stages[i1].mName);

            for (int k = 0; k < 64; k++) {
                local_e0[k] = false;
                room_check[k] = false;
            }

            ret = false;
            for (int j = i1; j < mDataNumMax; j++) {
                if (strcmp(stages[j].mName, stage_name)) continue;

                checked_data[j] = true;

                if (stages[j].mRegionNo == mpDraw2DBack->getRegionCursor() + 1) {
                    if (stages[j].mRoomNo != 0xff) {
                        local_e0[stages[j].mRoomNo] = true;
                        room_check[stages[j].mRoomNo] = true;
                        if (!ret) {
                            ret = true;
                        }
                    } else {
                        for (int k = 0; k < 64; k++) {
                            if (!local_e0[k]) {
                                room_check[k] = true;
                            }
                        }
                        if (!ret) {
                            ret = true;
                        }
                    }
                } else {
                    if (stages[j].mRoomNo != 0xff) {
                        local_e0[stages[j].mRoomNo] = true;
                    }
                }
            }

            if (ret) {
                if (i_stageNo == stage_no && room_check[i_roomNo]) {
                    sp08 = true;
                    break;
                }

                stage_no++;
                if (stage_no > i_stageNo && !sp08) {
                    return false;
                }
            }
        }

        if (sp08) {
            break;
        }
    }

    int region = mpDraw2DBack->getRegionCursor();
    int i2 = 0;
    dMenuMapCommon_c::RoomData_c* room_data = mpRoomData[region];
    for (; i2 < i_stageNo; i2++) {
        room_data = room_data->getNextData();
        if (room_data == NULL) break;
    }

    if (room_data == NULL || i2 != i_stageNo) {
        return false;
    }

    dMenuMapCommon_c::RoomData_c::data* room_data_data = room_data->getRoomData();
    u8* rooms = room_data_data->mData;
    for (int j = 0; j < room_data_data->mSize; j++) {
        if (YREG_S(1) != 0) {
            OS_REPORT("(%d) ===> %d, %d\n", j, rooms[j], room_check[rooms[j]]);
        }
        if (i_roomNo == rooms[j] && room_check[rooms[j]]) {
            return true;
        }
    }

    return false;
}

// WII NONMATCHING - regalloc hell
u16 dMenu_Fmap_c::checkStRoomData() {
    dMenu_Fmap_field_data_c* fieldDat = mpFieldDat;
    dMenu_Fmap_field_room_data_c* room_data =
        (dMenu_Fmap_field_room_data_c*)((intptr_t)mpFieldDat + fieldDat->mRoomDataOffset);
    dMenu_Fmap_field_room_data_c::data* data0 = room_data->mData;
    u8 count = room_data->mCount;
    for (int i = 0; i < count; i++) {
        dMenu_Fmap_field_room_data_c::data* data = data0;
        int offset = data->mCount + sizeof(dMenu_Fmap_field_room_data_c::data) - 1;
        if (data->mCount % 2 == 0) {
            offset += 1;
        }

        if (!strcmp(mStageName[mStageCursor], data->mStageName)) {
            for (int j = 0; j < data->mCount; j++) {
                if (mRoomCursor == data->mRoomNos[j]) {
                    mFlashRoomCount = data->mCount;
                    mFlashRooms = data->mRoomNos;
                    return data->mAreaName;
                }
            }
        }

        data0 = (dMenu_Fmap_field_room_data_c::data*)((intptr_t)data0 + offset);
    }

    mFlashRoomCount = 0;
    mFlashRooms = NULL;
    return -1;
}

void dMenu_Fmap_c::talkButton() {
    u16 status = dMsgObject_c::getStatus();
    if (status == 5 || status == 0xf || status == 0x10) {
        mpDraw2DTop->setAButtonString(0x408, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    } else {
        mpDraw2DTop->setAButtonString(0, dMenu_Fmap2DTop_c::ALPHA_DEFAULT);
    }
}

void dMenu_Fmap_c::setProcess(u8 i_process) {
    mPrevProcess = mProcess;
    mProcess = i_process;
}

void dMenu_Fmap_c::setFlash(u8 i_stageNo, bool param_1) {
    mpDraw2DBack->mapBlink(&field_0x210);
    if (param_1) {
        mpMenuFmapMap->setFlashOn(mpDraw2DBack->getRegionCursor() + 1, i_stageNo,
                                  mFlashRooms, mFlashRoomCount);
    } else {
        mpMenuFmapMap->setFlashOn(mpDraw2DBack->getRegionCursor() + 1, i_stageNo, NULL, 0);
    }
}

bool dMenu_Fmap_c::readWorldData(u8 i_regionNo) {
    removeAreaData();
    bool ret = false;
    bool bVar1 = false;

    if (mpDraw2DBack->getAllPathShowFlag()) {
        for (int i = 0; i < 8; i++) {
            if (i == i_regionNo - 1) {
                if (readAreaData(i + 1, true)) {
                    ret = true;
                    bVar1 = true;
                }
            } else {
                if (readAreaData(i + 1, false)) {
                    bVar1 = true;
                }
            }
        }
    } else {
        if (readAreaData(i_regionNo, true)) {
            ret = true;
            bVar1 = true;
        }
    }

    dMenu_Fmap_region_data_c* region_data = NULL;
    int head = -1;
    for (int i = 0; i < 8; i++) {
        if (mpRegionData[i] != NULL) {
            if (region_data == NULL) {
                head = i;
                region_data = mpRegionData[i];
                region_data->setNextData(NULL);
            } else {
                region_data->setNextData(mpRegionData[i]);
                region_data = mpRegionData[i];
                region_data->setNextData(NULL);
            }
        }
    }

    if (head != -1 && mpWorldData == NULL) {
        mpWorldData = new dMenu_Fmap_world_data_c(mpRegionData[head]);
        JUT_ASSERT(3874, mpWorldData != 0);
        mpDraw2DBack->setWorldPosMinMax(mpWorldData->getWorldMinX(), mpWorldData->getWorldMinZ(),
                                        mpWorldData->getWorldMaxX(), mpWorldData->getWorldMaxZ());
    }

    if (bVar1) {
        ResTIMG* img = mpMenuFmapMap->getResTIMGPointer();
        if (img != NULL) {
            mpDraw2DBack->setSpotPane(img);
        }
        field_0x305 = true;
    }

    return ret;
}

bool dMenu_Fmap_c::readAreaData(u8 i_regionNo, bool i_isSelectedRegion) {
    if (field_0x305) {
        return false;
    }

    bool checked_data[100];
    bool local_e0[64];
    char stage_name[8];
    char tmp_stage_name[8];

    dMenu_Fmap_field_data_c* fieldDat = mpFieldDat;
    dMenuMapCommon_c::Stage_c* stage =
        (dMenuMapCommon_c::Stage_c*)((intptr_t)mpFieldDat + fieldDat->mStageDataOffset);
    dMenuMapCommon_c::Stage_c::data* stages = stage->mData;
    u8 stage_no = 0;
    dMenu_Fmap_stage_data_c* prev_stage_data = NULL;
    dMenuMapCommon_c::RoomData_c* prev_room_data = NULL;
    stage_name[7] = 0;

    if (i_isSelectedRegion) {
        mSpotNum = 0;
    }

#if DEBUG
    if (g_fmapHIO.mTerminalOutput) {
        OS_REPORT("Region Data :: %d\n", i_regionNo);
    }
#endif

    JUT_ASSERT(3931, mDataNumMax <= 100);

    int i = 0;
    int stage_index = 0;
    bool bVar2 = false;

    for (int j = 0; j < mDataNumMax; j++) {
        checked_data[j] = false;
    }

    if (i_isSelectedRegion) {
        mStartStageNo = 0xff;
        mStayStageNo = -1;
    }

    field_0x200 = 0;

    for (; i < mDataNumMax; i++) {
        if (checked_data[i]) continue;

        strcpy(tmp_stage_name, mTmpStageName);
        resetRoomDataBit();
        if (i_isSelectedRegion) {
            strcpy(mTmpStageName, stages[i].mName);
        } else {
            strcpy(mTmpStageName, tmp_stage_name);
        }
        strcpy(tmp_stage_name, stages[i].mName);

        for (int k = 0; k < 64; k++) {
            local_e0[k] = false;
        }

        bVar2 = false;

        for (int j = i; j < mDataNumMax; j++) {
            if (strcmp(stages[j].mName, tmp_stage_name)) continue;

            checked_data[j] = true;

            if (i_regionNo == stages[j].mRegionNo) {
                if (stages[j].mRoomNo != 0xff) {
                    onRoomDataBit(stages[j].mRoomNo);
                    if (!bVar2) {
                        stage_index = j;
                        bVar2 = true;
                    }
                } else {
                    for (int k = 0; k < 64; k++) {
                        if (!local_e0[k]) {
                            onRoomDataBit(k);
                        }
                    }
                    if (!bVar2) {
                        stage_index = j;
                        bVar2 = true;
                    }
                }
            } else {
                if (stages[j].mRoomNo != 0xff) {
                    local_e0[stages[j].mRoomNo] = true;
                }
            }
        }

        if (bVar2) {
            dMenu_Fmap_stage_data_c* p = new dMenu_Fmap_stage_data_c();
            JUT_ASSERT(4011, p != NULL);
            if (mpStageData[i_regionNo - 1] == NULL) {
                mpStageData[i_regionNo - 1] = p;
            } else {
                prev_stage_data->setNextData(p);
            }

            prev_stage_data = p;
            prev_stage_data->setNextData(NULL);
            prev_stage_data->setStageCntNo(stage_no);
            prev_stage_data->setName(stages[stage_index].mName);

            for (int j = 0; j < 8; j++) {
                stage_name[j] = (s8)stages[stage_index].mName[j];
            }

            if (i_regionNo == dComIfGp_getNowLevel()) {
                if (dComIfGs_isPlayerFieldLastStayFieldDataExistFlag()) {
                    if (!strcmp(dMenuFmap_getStartStageName(mpFieldDat), stage_name)) {
                        mpDraw2DBack->setSpotCursor(stage_no);
                        mStartStageNo = stage_no;
                        mStayStageNo = stage_no;
                    }
                } else {
                    if (!strcmp(dComIfGs_getPlayerFieldLastStayName(), stage_name)) {
                        mpDraw2DBack->setSpotCursor(stage_no);
                        mStayStageNo = stage_no;
                    }
                }
            }

            prev_stage_data->setOffsetX(stages[stage_index].mOffsetX);
            prev_stage_data->setOffsetZ(stages[stage_index].mOffsetZ);

            if (i_isSelectedRegion) {
                mpDraw2DBack->setStageOriginXZ(mSpotNum, stages[stage_index].mOffsetX,
                                               stages[stage_index].mOffsetZ);
                mAreaName[mSpotNum] = stages[stage_index].mAreaName;
                strcpy(mStageName[mSpotNum], stage_name);
                mSpotNum++;

                JUT_ASSERT(4057, mSpotNum < 20);
            }

#if DEBUG
            if (g_fmapHIO.mTerminalOutput) {
                OS_REPORT("     Stage Data :: %s : pos (%f, %f) : mesID = %d\n", stage_name,
                          stages[stage_index].mOffsetX, stages[stage_index].mOffsetZ,
                          stages[stage_index].mAreaName);
            }
#endif

            dMenuMapCommon_c::RoomData_c* rd = new dMenuMapCommon_c::RoomData_c();
            JUT_ASSERT(0xfe6, rd != NULL);
            if (mpRoomData[i_regionNo - 1] == NULL) {
                mpRoomData[i_regionNo - 1] = rd;
            } else {
                prev_room_data->setNextData(rd);
            }
            prev_room_data = rd;
            prev_room_data->setNextData(NULL);
            readRoomData(stage_name, prev_stage_data, prev_room_data, i_regionNo - 1,
                         stages[stage_index].mRoomNo);

            stage_no++;
        }
    }

#if DEBUG
    if (g_fmapHIO.mTerminalOutput) {
        // "Memory check: region usage (%d Bytes)  2D heap remaining (%d bytes)
        //  2D expansion heap remaining (%d bytes)  Available memory for 2D expansion (%d bytes)"
        OS_REPORT("メモリチェック リージョンの使用サイズ(%dBytes)  ２Ｄヒープ残り(%dBytes)　"
                  "２Ｄ展開用ヒープ残り(%dBytes) ２Ｄ展開用使用可能メモリ(%dBytes)\n",
                  field_0x200,
                  mpHeap->getTotalFreeSize(),
                  mDoExt_getJ2dHeap()->getTotalFreeSize(),
                  mDoExt_getJ2dHeap()->getTotalFreeSize() - 0x1d5c0);
    }
#endif

    if (mpStageData[i_regionNo - 1] == NULL) {
        // "Stage data not found. (Region = %d)"
        OS_REPORT("ステージデータがありませんでした。(リージョン = %d)\n", i_regionNo);
        return false;
    }

    if (mpRegionData[i_regionNo - 1] == NULL) {
        mpRegionData[i_regionNo - 1] = new dMenu_Fmap_region_data_c(i_regionNo,
                                                                    mpStageData[i_regionNo - 1],
                                                                    mRegionOffsetX[i_regionNo - 1],
                                                                    mRegionOffsetZ[i_regionNo - 1]);
    }

    if (i_regionNo - 1 == mpDraw2DBack->getRegionCursor()) {
        for (int j = 0; j < mSpotNum; j++) {
            mpDraw2DBack->setStageOriginPathXZ(j,
                                getNowFmapRegionData()->getStageCenterX_CoordWorld(j),
                                getNowFmapRegionData()->getStageCenterZ_CoordWorld(j));
        }
    }

    return true;
}

bool dMenu_Fmap_c::readRoomData(char const* i_stageName, dMenu_Fmap_stage_data_c* i_stageData,
                                void* o_roomData, int i_regionNo, u8 param_4) {
    UNUSED(i_regionNo);
    UNUSED(param_4);

    int sp40 = 0;
    dMenu_Fmap_room_data_c* prev_room_data = NULL;
    i_stageData->setFmapRoomDataTop(NULL);
    dMenu_Fmap_stage_arc_data_c* room_data = NULL;
    
    char stage_path[20];
    sprintf(stage_path, "%s/stage.dat", i_stageName);
    bool sp12 = readFieldMapData((void**)&room_data, stage_path, false, false);
    if (sp12) {
        ((dMenuMapCommon_c::RoomData_c*)o_roomData)->setRoomData(room_data);
    }

    dMenu_Fmap_stage_arc_data_c* stage_arc = room_data;
    u8* room_nos = stage_arc->mRoomNos;
    i_stageData->setStageArc(room_data);

#if DEBUG
    if (g_fmapHIO.mTerminalOutput) {
        OS_REPORT("        ===== SaveTableNum :: %d Arrival:: %d =====\n",
                  stage_arc->mSaveTableNo, stage_arc->mVisitedRoomSaveTableNo);
    }
#endif

    int sp2C = 0;

    for (int i = 0; i < stage_arc->mSize; i++) {
        if (isRoomDataBit(room_nos[i])) {
            void* dzs_data = NULL;

            char room_path[20];
            sprintf(room_path, "%s/room%d.dzs", i_stageName, room_nos[i]);

            bool sp11 = readRoomDzsData(&dzs_data, 0x1500, room_path);
            if (sp11) {
                dMenu_Fmap_data_c* p = new dMenu_Fmap_data_c();
                JUT_ASSERT(4171, p != 0);
                dMenu_Fmap_room_data_c* p_room
                    = new dMenu_Fmap_room_data_c(room_nos[i], i_stageData, p);
                JUT_ASSERT(4174, p_room != 0);
                if (prev_room_data == NULL) {
                    i_stageData->setFmapRoomDataTop(p_room);
                } else {
                    prev_room_data->setNextData(p_room);
                }
                prev_room_data = p_room;
                p->setDzsData(dzs_data);
                // this cast is nonsense but it ends up getting cast back anyway
                dStage_dt_c_fieldMapLoader(dzs_data, (dStage_dt_c*)p);

#if DEBUG
                if (g_fmapHIO.mTerminalOutput) {
                    OS_REPORT("          Room dzs get :: room%d.dzs\n", room_nos[i]);
                }
#endif
            }
        }
    }

    return true;
}

bool dMenu_Fmap_c::readFieldMapData(void** i_data, char const* i_path, bool param_2,
                                    bool param_3) {
    u32 i_size = 0;
    if (mpMapArchive != dComIfGp_getFieldMapArchive2()) {
        if (param_3) {
            void* res = mpResArchive->getResource(i_path);
            i_size = mpResArchive->getExpandedResSize(res);
            *i_data = res;
            return true;
        } else {
            void* res = mpMapArchive->getResource(i_path);
            i_size = mpMapArchive->getExpandedResSize(res);
            mpMapArchive->removeResource(res);
        }
    } else {
        if (param_3) {
            void* res = mpResArchive->getResource(i_path);
            i_size = mpResArchive->getExpandedResSize(res);
            *i_data = res;
            return true;
        } else {
            i_size = dLib_getExpandSizeFromAramArchive((JKRAramArchive*)mpMapArchive, i_path);
        }
    }
    JUT_ASSERT(4239, i_size > 0);

    if (param_2) {
        if (mpMapArchive != dComIfGp_getFieldMapArchive2()) {
            *i_data = mpHeap->alloc(i_size, 0x20);
        } else {
            *i_data = mpMapArchive->getResource(i_path);
            return true;
        }
    } else {
        *i_data = mpHeap->alloc(i_size, 0x20);
    }
    JUT_ASSERT(4256, *i_data != 0);

    u32 read_size = mpMapArchive->readResource(*i_data, i_size, i_path);

    if (param_2) {
        DCStoreRangeNoSync(*i_data, i_size);
    }
    
    if (read_size == 0) {
        return false;
    } else {
        return true;
    }
}

void dMenu_Fmap_c::decodeFieldMapData() {
    dMenu_Fmap_field_data_c* field_data = mpFieldDat;
    dMenu_Fmap_field_region_data_c* region_data
        = (dMenu_Fmap_field_region_data_c*)((intptr_t)mpFieldDat + field_data->mRegionDataOffset);
    dMenuMapCommon_c::Stage_c* stage_data
        = (dMenuMapCommon_c::Stage_c*)((intptr_t)mpFieldDat + field_data->mStageDataOffset);
    mDataNumMax = stage_data->mCount;
    mAllTitleName = *(u16*)((intptr_t)field_data + 0x16);
    setTitleName(mAllTitleName);
    dMenu_Fmap_field_region_data_c::data* regions = region_data->mData;
    char tex_path[20];

    for (int i = 0; i < region_data->mCount; i++) {
        mpDraw2DBack->setRegionTextureReadNum(i, regions[i].mTextureReadNum);
        
        for (int j = 0; j < 8; j++) {
            if (j + 1 == regions[i].mTextureReadNum) {
                bool local_3f = false;
                if (j == 7) {
                    local_3f = true;
                    sprintf(tex_path, "tex/region8.bti");
                } else {
                    sprintf(tex_path, "tex/region%d.bti", regions[i].mTextureReadNum);
                }

                bool sp10 = readFieldMapData((void**)&mRegionTexture[j], tex_path, true, local_3f);
                if (sp10) {
                    if (!g_fmapHIO.mRegionImageDebug) {
                        mpDraw2DBack->setRegionTexData(j, mRegionTexture[j],
                                        regions[i].mOriginX, regions[i].mOriginZ,
                                        regions[i].field_0xc, regions[i].field_0x10,
                                        regions[i].field_0x14, regions[i].field_0x18,
                                        regions[i].field_0x20, regions[i].field_0x1c,
                                        regions[i].field_0x24);
                    } else {
                        mpDraw2DBack->setRegionTexData(j, mRegionTexture[j],
                                        regions[i].mOriginX, regions[i].mOriginZ,
                                        g_fmapHIO.mRegionImagePosX[i] + regions[i].field_0xc,
                                        g_fmapHIO.mRegionImagePosZ[i] + regions[i].field_0x10,
                                        g_fmapHIO.mRegionImageScale[i] + regions[i].field_0x14,
                                        regions[i].field_0x18, regions[i].field_0x20,
                                        regions[i].field_0x1c, regions[i].field_0x24);
                    }

                    mTitleName[j] = regions[i].mTitleName;
                    mRegionOffsetX[j] = regions[i].mOriginX;
                    mRegionOffsetZ[j] = regions[i].mOriginZ;
                }
            }
        }
    }

    mpDraw2DBack->calcDrawPriority();
    mpDraw2DBack->calcAllMapPos();
    OS_REPORT("setStageData ======> 0x%x, %d\n", *(int*)((intptr_t)field_data + 4), mDataNumMax);
    mpDraw2DBack->setStageData(stage_data, mDataNumMax);
    setAreaName(mTitleName[mpDraw2DBack->getRegionCursor()]);
}

void dMenu_Fmap_c::decodeFieldMapData2() {
    dMenu_Fmap_field_data_c* field_data = mpFieldDat;
    dMenu_Fmap_field_region_data_c* region_data =
        (dMenu_Fmap_field_region_data_c*)((intptr_t)mpFieldDat + field_data->mRegionDataOffset);
    dMenuMapCommon_c::Stage_c* stage_data =
        (dMenuMapCommon_c::Stage_c*)((intptr_t)mpFieldDat + field_data->mStageDataOffset);
    dMenu_Fmap_field_region_data_c::data* regions = region_data->mData;
    for (int i = 0; i < region_data->mCount; i++) {
        for (int j = 0; j < 8; j++) {
            if (j + 1 == regions[i].mTextureReadNum) {
                mpDraw2DBack->setRegionTexData(
                    j, regions[i].mOriginX, regions[i].mOriginZ,
                    g_fmapHIO.mRegionImagePosX[i] + regions[i].field_0xc,
                    g_fmapHIO.mRegionImagePosZ[i] + regions[i].field_0x10,
                    g_fmapHIO.mRegionImageScale[i] + regions[i].field_0x14,
                    regions[i].field_0x18, regions[i].field_0x20,
                    regions[i].field_0x1c, regions[i].field_0x24
                );
            }
        }
    }
    mpDraw2DBack->calcAllMapPos();
}

void dMenu_Fmap_c::decodePortalData() {
    dMenu_Fmap_portal_data_c* portal_dat = mpPortalDat;
    dMenu_Fmap_portal_data_c::data* portal_data_arr = portal_dat->mData;
    if (g_fmapHIO.mPortalDataTerminalOutput) {
        // "Number of portals ===> %d"
        OS_REPORT("ポータル数===>%d\n", portal_dat->mCount);
        for (int i = 0; i < portal_dat->mCount; i++) {
            OS_REPORT("Portal Data::(%d), %d, %d, %s, %d, %d, %d, %d, %d, %f, %f, %f\n",
                      i, portal_data_arr[i].mSelectWarpPt, portal_data_arr[i].mRegionNo,
                      portal_data_arr[i].mStageName, portal_data_arr[i].mRoomNo,
                      portal_data_arr[i].mWarpPlayerNo, portal_data_arr[i].mMessageID,
                      portal_data_arr[i].mStageNo, portal_data_arr[i].mSwitchNo,
                      portal_data_arr[i].mPosition.x, portal_data_arr[i].mPosition.y,
                      portal_data_arr[i].mPosition.z);
        }
    }
}

bool dMenu_Fmap_c::readRoomDzsData(void** i_data, u32 i_size, char const* i_path) {
    if (mpMapArchive != dComIfGp_getFieldMapArchive2()) {
        void* res = mpMapArchive->getResource(i_path);
        i_size = mpMapArchive->getExpandedResSize(res);
        mpMapArchive->removeResource(res);
    } else {
        i_size = dLib_getExpandSizeFromAramArchive((JKRAramArchive*)mpMapArchive, i_path);
    }
    JUT_ASSERT(4463, i_size > 0);

    *i_data = mpHeap->alloc(i_size, 0x20);
    JUT_ASSERT(4468, *i_data != 0);

    u32 read_size = mpMapArchive->readResource(*i_data, i_size, i_path);
    if (read_size == 0) {
        return false;
    } else {
        field_0x200 += read_size;
        return true;
    }
}

bool dMenu_Fmap_c::removeAreaData() {
    if (!field_0x305) {
        return true;
    }

    if (mpWorldData != NULL) {
        delete mpWorldData;
        mpWorldData = NULL;
    }

    for (int i = 0; i < 8; i++) {
        if (mpRegionData[i] != NULL) {
            delete mpRegionData[i];
            mpRegionData[i] = NULL;
        }
    }

    for (int i = 0; i < 8; i++) {
        dMenu_Fmap_stage_data_c* stage_data = mpStageData[i];
        while (stage_data != NULL) {
            dMenu_Fmap_stage_data_c* next_data = stage_data->getNextData();
            removeRoomData(stage_data);
            delete stage_data;
            stage_data = next_data;
        }

        dMenuMapCommon_c::RoomData_c* room_data = mpRoomData[i];
        while (room_data != NULL) {
            dMenuMapCommon_c::RoomData_c* next_data = room_data->getNextData();
            dMenuMapCommon_c::RoomData_c::data* data = room_data->getRoomData();
            if (data != NULL) {
                mpHeap->free(data);
                data = NULL;
            }
            delete room_data;
            room_data = next_data;
        }
    }

    mpDraw2DBack->deleteSpotPane();

    mpWorldData = NULL;
    for (int i = 0; i < 8; i++) {
        mpRegionData[i] = NULL;
        mpStageData[i] = NULL;
        mpRoomData[i] = NULL;
    }

    for (int i = 0; i < 20; i++) {
        strcpy(mStageName[i], "");
    }

    field_0x305 = false;
    return true;
}

bool dMenu_Fmap_c::removeRoomData(dMenu_Fmap_stage_data_c* i_stageData) {
    dMenu_Fmap_room_data_c* room_data = i_stageData->getFmapRoomDataTop();
    while (room_data != NULL) {
        dMenu_Fmap_room_data_c* next_data = room_data->getNextData();
        dMenu_Fmap_data_c* p_fmapData = room_data->getFmapData();
        JUT_ASSERT(4570, p_fmapData != 0);
        void* dzs_data = p_fmapData->getDzsData();
        if (dzs_data != NULL) {
            mpHeap->free(dzs_data);
            dzs_data = NULL;
        }
        delete p_fmapData;
        delete room_data;
        room_data = next_data;
    }
    return true;
}

void dMenu_Fmap_c::setTitleName(u32 i_msgIndex) {
    if (i_msgIndex == 0) {
        JUT_WARN(4596, "message index zero!");
    }
    mpDraw2DTop->setTitleNameString(i_msgIndex);
}

void dMenu_Fmap_c::setAreaName(u32 i_msgIndex) {
#if PLATFORM_WII
    FORCE_DONT_INLINE;
#endif
    if (i_msgIndex == 0) {
        JUT_WARN(4612, "message index zero!");
    }
    mAreaNameSet = true;
    mpDraw2DTop->setAreaNameString(i_msgIndex);
}

void dMenu_Fmap_c::setAreaNameZero() {
    mAreaNameSet = false;
    mpDraw2DTop->setAreaNameString(0);
}

void dMenu_Fmap_c::portalWarpMapMove(STControl* i_stick) {
    mpDraw2DBack->regionMapMove(i_stick);
    dMenu_Fmap_portal_data_c* portal_dat = mpPortalDat;
    dMenu_Fmap_portal_data_c::data* portals = portal_dat->mData;
    f32 arrow_x = mpDraw2DBack->getArrowPos2DX();
    f32 arrow_y = mpDraw2DBack->getArrowPos2DY();
    u8 uVar6 = 0xff;

    for (int i = 0; i < portal_dat->mCount; i++) {
        if (portals[i].mRegionNo == mpDraw2DBack->getRegionCursor() + 1
            && checkDrawPortalIcon(portals[i].mStageNo, portals[i].mSwitchNo))
        {
            f32 pos_x, pos_y;
            mpDraw2DBack->calcAllMapPos2D(portals[i].mPosition.x, portals[i].mPosition.z,
                                          &pos_x, &pos_y);
            f32 var_f29 = (pos_x - arrow_x) * (pos_x - arrow_x) +
                          (pos_y - arrow_y) * (pos_y - arrow_y);
            if (var_f29 <= 500.0f) {
                uVar6 = i;
                setAreaName(portals[uVar6].mMessageID);
                u8 stage = searchPortalStageID(const_cast<char*>(portals[uVar6].mStageName));
                if (stage != 0xff) {
                    mpDraw2DBack->setSpotCursor(stage);
                }
            }
        }
    }

    if (uVar6 != 0xff) {
        if (uVar6 != mPortalNo) {
            u8 sp0C = 0;
            Z2GetAudioMgr()->seStart(Z2SE_WARP_MAP_CURSOR, NULL, sp0C, 0, 1.0f, 1.0f, -1.0f, -1.0f, 0);
        }
        mPortalNo = uVar6;
    }
}

void dMenu_Fmap_c::onRoomDataBit(int i_no) {
    JUT_ASSERT(4851, 0 <= i_no && i_no < 64);
    mRoomDataBits[i_no >> 5] |= 1 << (i_no & 0x1f);
}

BOOL dMenu_Fmap_c::isRoomDataBit(int i_no) {
    JUT_ASSERT(4879, 0 <= i_no && i_no < 64);
    return (mRoomDataBits[i_no >> 5] & 1 << (i_no & 0x1f)) ? TRUE : FALSE;
}

void dMenu_Fmap_c::resetRoomDataBit() {
    for (int i = 0; i < 2; i++) {
        mRoomDataBits[i] = 0;
    }

    for (int i = 0; i < 8; i++) {
        mTmpStageName[i] = '\0';
    }
}

void dMenu_Fmap_c::drawIcon(f32 param_0, bool param_1) {
    if (mpDraw2DBack->getRegionCursor() + 1 == dComIfGp_getNowLevel()) {
        drawPlayEnterIcon();
    }

    cXyz pos;
    s16 angle;
    char stage_name[8];
    if (dComIfGs_isPlayerFieldLastStayFieldDataExistFlag()) {
        fopAc_ac_c* player = daPy_getPlayerActorClass();
        pos.set(dMapInfo_n::getMapPlayerPos());
        angle = player->shape_angle.y;
        strcpy(stage_name, dMenuFmap_getStartStageName(mpFieldDat));
    } else {
        pos = dComIfGs_getPlayerFieldLastStayPos();
        angle = dComIfGs_getPlayerFieldLastStayAngleY();
        strcpy(stage_name, dComIfGs_getPlayerFieldLastStayName());
    }

    u8 is_portal_demo1 = 0;
    if (mProcess == PROC_PORTAL_DEMO1_e) {
        is_portal_demo1 = 1;
    }
    mpDraw2DBack->setIcon2DPos(0x11, stage_name, pos.x, pos.z, cM_sht2d(angle),
                               is_portal_demo1, param_1);
    
    if (!param_1) {
        if (mIsWarpMap == true && mpPortalDat != NULL) {
            dMenu_Fmap_portal_data_c* portal_dat = mpPortalDat;
            dMenu_Fmap_portal_data_c::data* portals = portal_dat->mData;
            for (int i = 0; i < portal_dat->mCount; i++) {
                if (checkDrawPortalIcon(portals[i].mStageNo, portals[i].mSwitchNo)) {
                    f32 var_f31 = mRegionOffsetX[portals[i].mRegionNo - 1] - mRegionOffsetX[mpDraw2DBack->getRegionCursor()];
                    f32 var_f30 = mRegionOffsetZ[portals[i].mRegionNo - 1] - mRegionOffsetZ[mpDraw2DBack->getRegionCursor()];
                    u8 cVar2 = portals[i].mRegionNo - 1;
#if PLATFORM_GCN
                    if ((mProcess != PROC_PORTAL_WARP_FORBID_e && mProcess >= PROC_REGION_MAP_e)
                        || (mProcess == PROC_PORTAL_WARP_FORBID_e && mPrevProcess != PROC_ALL_MAP_e))
#else
                    if (mProcess >= PROC_REGION_MAP_e)
#endif
                    {
                        if (cVar2 == mpDraw2DBack->getRegionCursor()) {
                            mpDraw2DBack->setIcon2DPos(1, portals[i].mPosition.x,
                                                       portals[i].mPosition.z, 0.0f, 0, false);
                            if (mPortalNo == i) {
                                mpDraw2DBack->setIcon2DPos(0, portals[i].mPosition.x,
                                                           portals[i].mPosition.z, 0.0f, 0, false);
                            }
                        }
                    } else {
                        mpDraw2DBack->setIcon2DPos(1, portals[i].mPosition.x,
                                                   portals[i].mPosition.z, 0.0f, 0, false);
                    }
                }
            }
        }

#if PLATFORM_GCN
        if ((mProcess != PROC_PORTAL_WARP_FORBID_e && mProcess >= PROC_REGION_MAP_e)
            || (mProcess == PROC_PORTAL_WARP_FORBID_e && mPrevProcess != PROC_ALL_MAP_e))
#else
        if (mProcess >= PROC_REGION_MAP_e)
#endif
        {
            drawLightDropIcon();
            drawBatsumarkIcon();
            drawEnterIcon();
            drawSnowmanIcon();
            drawGoldWolfIcon();
            drawCoachIcon();
        }
    }
}

void dMenu_Fmap_c::drawLightDropIcon() {
    if (isLightVesselGet()) {
        drawIcon(4, 5);
    }
}

void dMenu_Fmap_c::drawBatsumarkIcon() {
    drawIcon(5, 0x12);
}

void dMenu_Fmap_c::drawSnowmanIcon() {
    drawIcon(0xd, 9);
    drawIcon(0xe, 0xa);
}

void dMenu_Fmap_c::drawGoldWolfIcon() {
    drawIcon(6, 0xb);
}

void dMenu_Fmap_c::drawCoachIcon() {
    drawIcon(0xa, 0xd);
}

void dMenu_Fmap_c::drawPlayEnterIcon() {
    cXyz pos;
    s16 angle;
    char stage_name[8];

    if (isRoomCheck(mStayStageNo, dComIfGp_getStartStageRoomNo())) {
        if (dComIfGs_isPlayerFieldLastStayFieldDataExistFlag()) {
            pos = dMapInfo_n::getMapRestartPos();
            angle = dComIfGs_getRestartRoomAngleY();
            strcpy(stage_name, dMenuFmap_getStartStageName(mpFieldDat));
        } else {
            pos = dComIfGs_getPlayerFieldLastStayPos();
            angle = dComIfGs_getPlayerFieldLastStayAngleY();
            strcpy(stage_name, dComIfGs_getPlayerFieldLastStayName());
        }
        mpDraw2DBack->setIcon2DPos(0x15, stage_name, pos.x, pos.z, cM_sht2d(angle), 0, false);
    }
}

bool dMenu_Fmap_c::checkDrawPortalIcon(int i_stageNo, int i_switchNo) {
    if (g_fmapHIO.mAllRegionsUnlocked) {
        return true;
    }
    if (dComIfGs_isStageSwitch(i_stageNo, i_switchNo)) {
        return true;
    } else {
        return false;
    }
}

bool dMenu_Fmap_c::searchIcon(u8 i_typeGroupNo, int i_swBit, f32* o_posX, f32* o_posZ) {
    dMenuFmapIconDisp_c icon;
    bool ret = false;
    icon.init(getNowFmapRegionData(), getNowFmapStageData(), i_typeGroupNo,
               mStayStageNo, dComIfGp_roomControl_getStayNo());

    int stage_no, room_no;
    const dTres_c::data_s* tres_data;
    bool isEndOfData;
    while (!icon.getValidData()) {
        if (icon.isDrawDisp()) {
            icon.getPosition(&stage_no, &room_no, o_posX, o_posZ, &tres_data);
            if (isRoomCheck(stage_no, room_no) && tres_data->mSwBit == i_swBit) {
                ret = true;
                break;
            }
        }

        isEndOfData = icon.nextData();
        if (isEndOfData) {
            break;
        }
    }

    return ret;
}

void dMenu_Fmap_c::drawIcon(u8 i_typeGroupNo, int param_1) {
    dMenuFmapIconDisp_c icon;
    icon.init(getNowFmapRegionData(), getNowFmapStageData(), i_typeGroupNo,
              mStayStageNo, dComIfGp_roomControl_getStayNo());

    f32 pos_x, pos_z;
    int stage_no, room_no;
    bool isEndOfData;
    while (!icon.getValidData()) {
        if (icon.isDrawDisp()) {
            icon.getPosition(&stage_no, &room_no, &pos_x, &pos_z, NULL);
            if (isRoomCheck(stage_no, room_no)) {
                mpDraw2DBack->setIcon2DPos(param_1, pos_x, pos_z, 0.0f, 0, false);
            }
        }

        isEndOfData = icon.nextData();
        if (isEndOfData) {
            break;
        }
    }
}

void dMenu_Fmap_c::drawEnterIcon() {
    drawIcon(1, 0x14);
    drawIcon(8, 0x16);
}

void dMenu_Fmap_c::drawPortalIcon() {
    if (mIsWarpMap == true && mpPortalDat != NULL) {
        dMenu_Fmap_portal_data_c* portal_dat = mpPortalDat;
        dMenu_Fmap_portal_data_c::data* portals = portal_dat->mData;
        for (int i = 0; i < portal_dat->mCount; i++) {
            if (checkDrawPortalIcon(portals[i].mStageNo, portals[i].mSwitchNo)) {
                u8 prevRegionNo = portals[i].mRegionNo - 1;
                mpDraw2DBack->setIcon2DPos(1, portals[i].mPosition.x, portals[i].mPosition.z,
                                           0.0f, 0, false);
            }
        }
    }
}

u8 dMenu_Fmap_c::getRegionStageNum(int param_0) {
    if (mpFieldDat != NULL) {
        dMenu_Fmap_field_data_c* fieldDat = mpFieldDat;
        dMenu_Fmap_field_region_data_c* region_data
            = (dMenu_Fmap_field_region_data_c*)((intptr_t)mpFieldDat + fieldDat->mRegionDataOffset);
        dMenu_Fmap_field_region_data_c::data* regions = region_data->mData;
        for (int i = 0; i < region_data->mCount; i++) {
            if (param_0 == regions[i].mTextureReadNum) {
                return regions[i].field_0x1;
            }
        }
    }

    return 0;
}

dMenu_Fmap_region_data_c* dMenu_Fmap_c::getNowFmapRegionData() {
    JUT_ASSERT(5333, mProcess != PROC_ALL_MAP_e);
    return mpRegionData[mpDraw2DBack->getRegionCursor()];
}

dMenu_Fmap_stage_data_c* dMenu_Fmap_c::getNowFmapStageData() {
    JUT_ASSERT(5347, mProcess != PROC_ALL_MAP_e);
    return mpStageData[mpDraw2DBack->getRegionCursor()];
}

u8 dMenu_Fmap_c::searchPortalStageID(char* param_0) {
    for (int i = 0; i < 20; i++) {
        if (!strcmp(param_0, mStageName[i])) {
            return i;
        }
    }
    return 0xff;
}

void dMenu_Fmap_c::drawDebugStage() {
    if (mProcess != PROC_ALL_MAP_e) {
        mpDraw2DBack->setDebugData(mpMenuFmapMap, getNowFmapRegionData(), mStayStageNo);
    } else {
        mpDraw2DBack->setDebugData(NULL, NULL, 0);
    }
}

void dMenu_Fmap_c::arrowPosInit() {
    if (mProcess == PROC_TABLE_DEMO1_e) {
        tableArrowPosInit(false);
    } else if (mProcess == PROC_HOWL_DEMO1_e) {
        howlArrowPosInit();
    } else if (mpDraw2DBack->getRegionCursor() + 1 == dComIfGp_getNowLevel()) {
        cXyz pos;
        char stage_name[8];
        if (dComIfGs_isPlayerFieldLastStayFieldDataExistFlag()) {
            pos.set(dMapInfo_n::getMapPlayerPos());
            strcpy(stage_name, dMenuFmap_getStartStageName(mpFieldDat));
        } else {
            pos = dComIfGs_getPlayerFieldLastStayPos();
            strcpy(stage_name, dComIfGs_getPlayerFieldLastStayName());
        }
        
        f32 fVar1 = 0.0f;
        if (mProcess == PROC_LIGHT_DEMO1_e) {
            f32 pos1_x, pos2_x, pos1_z, pos2_z;
            mpDraw2DBack->calcAllMapPosWorld(0.0f, 0.0f, &pos2_x, &pos2_z);
            mpDraw2DBack->calcAllMapPosWorld(0.0f, -50.0f, &pos1_x, &pos1_z);
            fVar1 = pos1_z - pos2_z;
        }

        mpDraw2DBack->setArrowPos3D(mpDraw2DBack->getRegionCursor(), stage_name,
                                    pos.x, pos.z + fVar1);
    } else {
        mpDraw2DBack->setArrowPos3D(mpDraw2DBack->getRegionCursor(), NULL,
                                mpDraw2DBack->getRegionOriginX(mpDraw2DBack->getRegionCursor()),
                                mpDraw2DBack->getRegionOriginZ(mpDraw2DBack->getRegionCursor()));
    }
}

void dMenu_Fmap_c::tableArrowPosInit(bool param_0) {
    int i_no = -1;
    int swbit;
    switch (dMeter2Info_getTableMapRegionNo()) {
    case dMeter_fmapHIO_c::REGION_LANAYRU:
             /* dSv_event_flag_c::F_0361 - Arbiter's Grounds - Spun the spinning pillars */
        if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x169])
                /* dSv_event_flag_c::M_070 - Cutscene - [cutscene: 18] Lanayru spirit restored */
            || !dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x67]))
        {
            i_no = 0;
                 /* dSv_event_flag_c::F_0264 - Cutscene - Get master sword */
            if (!dComIfGs_isEventBit(dSv_event_flag_c::saveBitLabels[0x108])) {
                swbit = 0x4f;
            } else {
                swbit = 0x33;
            }
            OS_REPORT("ハイリア湖 F_SP115\n");
        } else {
            i_no = 1;
            swbit = 0x2a;
            OS_REPORT("ゾーラの里 F_SP113\n");
        }
        break;
    case dMeter_fmapHIO_c::REGION_ELDIN:
        i_no = 2;
        swbit = 0x55;
        OS_REPORT("カカリコ村 F_SP109\n");
        break;
    case dMeter_fmapHIO_c::REGION_FARON:
        i_no = 3;
        swbit = 0x5f;
        OS_REPORT("フィローネの森 F_SP108\n");
        break;
    }
    JUT_ASSERT(5505, i_no >= 0);

    static char* stage_name[4] = {"F_SP115", "F_SP113", "F_SP109", "F_SP108"};
    strcpy(mMarkedStageName, stage_name[i_no]);

    if (param_0) {
        f32 pos1_x, pos2_x, pos1_z, pos2_z;
        // debug stack is missing 4 bytes at 0x14
        f32 icon_x, icon_z;
        bool fg = searchIcon(5, swbit, &icon_x, &icon_z);
        JUT_ASSERT(5511, fg != false);
        mpDraw2DBack->calcAllMapPosWorld(0.0f, 0.0f, &pos2_x, &pos2_z);
        mpDraw2DBack->calcAllMapPosWorld(0.0f, -20.0f, &pos1_x, &pos1_z);
        f32 z_diff = pos1_z - pos2_z;
        mpDraw2DBack->setArrowPosAxis(icon_x, icon_z + z_diff);
    } else {
        mpDraw2DBack->setArrowPos3D(mpDraw2DBack->getRegionCursor(), mMarkedStageName,
                                mpDraw2DBack->getRegionOriginX(mpDraw2DBack->getRegionCursor()),
                                mpDraw2DBack->getRegionOriginZ(mpDraw2DBack->getRegionCursor()));
    }
}

void dMenu_Fmap_c::yamibossArrowPosInit() {
    f32 pos1_x, pos2_x, pos1_z, pos2_z;
    f32 icon_x, icon_z;
    bool fg = searchIcon(4, 0x75, &icon_x, &icon_z);
    if (!fg) {
        icon_x = -38552.47f;
        icon_z = 38647.59f;
    }
    mpDraw2DBack->calcAllMapPosWorld(0.0f, 0.0f, &pos2_x, &pos2_z);
    mpDraw2DBack->calcAllMapPosWorld(0.0f, -20.0f, &pos1_x, &pos1_z);
    f32 z_diff = pos1_z - pos2_z;
    mpDraw2DBack->setArrowPosAxis(icon_x, icon_z + z_diff);
}

void dMenu_Fmap_c::howlArrowPosInit() {
    u8 i_type = dMeter2Info_getGoldWolfMapType();
    JUT_ASSERT(5566, i_type >= 2 && i_type <= 7);
    static char* stage_name[6] = {"F_SP104", "F_SP122", "F_SP122", "F_SP124", "F_SP111", "F_SP116"};
    strcpy(mMarkedStageName, stage_name[i_type - 2]);
    static const int i_swBit[6] = {0x41, 0x29, 0x2a, 0x32, 0x79, 0x32};
    f32 icon_x, icon_z;
    bool fg = searchIcon(6, i_swBit[i_type - 2], &icon_x, &icon_z);
    JUT_ASSERT(5596, fg != false)
    if (fg) {
        mpDraw2DBack->setArrowPos3DOffset(mpDraw2DBack->getRegionCursor(), mMarkedStageName,
                                          icon_x, icon_z, 0.0f);
    }
}

u8 dMenu_Fmap_c::getHowlRegionID() {
    u8 i_type = dMeter2Info_getGoldWolfMapType();
    JUT_ASSERT(5614, i_type >= 2 && i_type <= 7);
    switch (i_type) {
    case 2:
        return 1;
    case 3:
        return 4;
    case 4:
        return 4;
    case 5:
        return 5;
    case 6:
        return 3;
    case 7:
        return 4;
    default:
        JUT_ASSERT(5631, FALSE);
        return 1;
    }
}

bool dMenu_Fmap_c::isLightVesselGet() {
    if (dComIfGp_isLightDropMapVisible()) {
        return true;
    } else {
        return false;
    }
}

cXyz* dMenu_Fmap_c::getPlayerPos2D() {
    cXyz pos;
    char stage_name[8];
    if (dComIfGs_isPlayerFieldLastStayFieldDataExistFlag()) {
        pos.set(dMapInfo_n::getMapPlayerPos());
        strcpy(stage_name, dMenuFmap_getStartStageName(mpFieldDat));
    } else {
        pos.set(dComIfGs_getPlayerFieldLastStayPos());
        strcpy(stage_name, dComIfGs_getPlayerFieldLastStayName());
    }
    mpDraw2DBack->calcAllMapPos2D(stage_name, pos.x - mpDraw2DBack->getStageTransX(),
                                  pos.z - mpDraw2DBack->getStageTransZ(),
                                  &mPlayerPos.x, &mPlayerPos.y);
    mPlayerPos.z = 0.0f;
    return &mPlayerPos;
}
