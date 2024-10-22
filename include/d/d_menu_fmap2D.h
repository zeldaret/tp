#ifndef D_MENU_D_MENU_FMAP2D_H
#define D_MENU_D_MENU_FMAP2D_H

#include "JSystem/JUtility/TColor.h"
#include "d/d_map_path_fmap.h"
#include "d/d_menu_fmap_map.h"
#include "d/d_menu_map_common.h"
#include "d/d_meter_haihai.h"
#include "d/d_pane_class.h"
#include "dolphin/types.h"

class dMsgScrnExplain_c;

class dMenu_Fmap2DBack_c : public dDlst_base_c, public dMenuMapCommon_c {
public:
    /* 801CF56C */ dMenu_Fmap2DBack_c();
    /* 801D0804 */ void setRegionTexData(u8, ResTIMG*, f32, f32, f32, f32, f32, f32, f32, f32, f32);
    /* 801D0AC8 */ void calcAllMapPos();
    /* 801D0BF8 */ f32 calcAllMapScaleRate();
    /* 801D0C6C */ void calcAllMapPos2DFirst(f32, f32, f32*, f32*);
    /* 801D0E00 */ void calcAllMapPos2D(f32, f32, f32*, f32*, f32, f32, f32);
    /* 801D0D18 */ void calcAllMapPos2D(f32, f32, f32*, f32*);
    /* 801D0D50 */ void calcAllMapPos2D(char const*, f32, f32, f32*, f32*);
    /* 801D0F7C */ void calcAllMapPosWorld(f32, f32, f32*, f32*);
    /* 801D1094 */ void setSpotPane(ResTIMG*);
    /* 801D10F4 */ void deleteSpotPane();
    /* 801D1148 */ void zoomMapCalc(f32);
    /* 801D1478 */ void zoomMapCalc2(f32);
    /* 801D1858 */ void zoomMapCalcHIO();
    /* 801D1AA4 */ void scrollCalc(f32);
    /* 801D1D50 */ void mapBlink(s16*);
    /* 801D1D74 */ void setSpotCursor(u8);
    /* 801D1DC4 */ void allmap_move2(STControl*);
    /* 801D2100 */ void setIcon2DPos(u8, f32, f32, f32, u8, bool);
    /* 801D241C */ void setIcon2DPos(u8, char const*, f32, f32, f32, u8, bool);
    /* 801D2454 */ void setIcon2DPos(u8, u8, char const*, f32, f32, f32, u8, bool);
    /* 801D2508 */ int isShowRegion(int);
    /* 801D2658 */ f32 getMapAreaGlobalPosX();
    /* 801D2668 */ f32 getMapAreaGlobalPosY();
    /* 801D2678 */ f32 getMapAreaGlobalCenterPosX();
    /* 801D26C8 */ f32 getMapAreaGlobalCenterPosY();
    /* 801D2718 */ f32 getMapAreaSizeX();
    /* 801D2728 */ f32 getMapAreaSizeY();
    /* 801D2738 */ f32 getMapScissorAreaLX();
    /* 801D2790 */ f32 getMapScissorAreaLY();
    /* 801D27E8 */ f32 getMapScissorAreaSizeX();
    /* 801D2860 */ f32 getMapScissorAreaSizeRealX();
    /* 801D2880 */ f32 getMapScissorAreaCenterPosX();
    /* 801D28D0 */ f32 getMapScissorAreaCenterPosY();
    /* 801D2920 */ f32 getMapScissorAreaSizeY();
    /* 801D2998 */ f32 getMapScissorAreaSizeRealY();
    /* 801D29B8 */ void calcRenderingPos();
    /* 801D2A34 */ void calcRenderingScale();
    /* 801D2AC8 */ f32 getPathScale(f32);
    /* 801D2B5C */ f32 getAllMapZoomRate();
    /* 801D2B64 */ f32 getRegionMapZoomRate(int);
    /* 801D2C4C */ f32 getSpotMapZoomRate();
    /* 801D2C88 */ void getStageOriginPath(u8, f32*, f32*);
    /* 801D2CC8 */ void calcOffset(u8, char const*, f32*, f32*);
    /* 801D2DA8 */ void regionTextureDraw();
    /* 801D3094 */ void stageTextureDraw();
    /* 801D31D0 */ void worldGridDraw();
    /* 801D34DC */ void regionGridDraw();
    /* 801D382C */ void worldOriginDraw();
    /* 801D38FC */ void scrollAreaDraw();
    /* 801D3AF8 */ void regionOriginDraw();
    /* 801D3BBC */ void stageOriginDraw();
    /* 801D3CB8 */ void calcBlink();
    /* 801D4928 */ void calcBackAlpha(bool);
    /* 801D49E0 */ void btkAnimeLoop(f32);
    /* 801D4AFC */ void setBaseBackAlpha(u8);
    /* 801D4B2C */ void regionMapMove(STControl*);
    /* 801D4E80 */ void stageMapMove(STControl*, u8, bool);
    /* 801D5334 */ void setAllAlphaRate(f32, bool);
    /* 801D5388 */ void drawDebugStageArea();
    /* 801D564C */ void drawDebugRegionArea();
    /* 801D58F8 */ void setArrowPos3D(u8, char const*, f32, f32);
    /* 801D59C0 */ void setArrowPos3DOffset(u8, char const*, f32, f32, f32);
    /* 801D5AC4 */ void calcDrawPriority();
    /* 801D5BB8 */ void setArrowPosAxis(f32, f32);

    /* 801CFF34 */ virtual void draw();
    /* 801CFCDC */ virtual ~dMenu_Fmap2DBack_c();

    void setDebugData(dMenu_FmapMap_c* fmap_map, dMenu_Fmap_region_data_c* region_data,
                      int param_2) {
        mpFmapMap = fmap_map;
        mpRegionData = region_data;
        field_0x1244 = param_2;
    }

    void setAllTrans(f32 i_transX, f32 i_transZ) {
        mTransX = i_transX;
        mTransZ = i_transZ;
    }

    void setStageTransForceXZ(f32 param_0, f32 param_1) {
        mStageTransX = param_0;
        mStageTransZ = param_1;
    }

    void setStageInfo(u8 i_spotNum, dMenu_FmapMap_c* i_fmapMap) {
        mSpotNum = i_spotNum;
        mpMenuFmapMap = i_fmapMap;
    }

    void setWorldPosMinMax(f32 i_minX, f32 i_minZ, f32 i_maxX, f32 i_maxZ) {
        mWorldMinX = i_minX;
        mWorldMinZ = i_minZ;
        mWorldMaxX = i_maxX;
        mWorldMaxZ = i_maxZ;
    }

    void setStageOriginXZ(int i_stageNo, f32 i_originX, f32 i_originZ) {
        mStageOriginX[i_stageNo] = i_originX;
        mStageOriginZ[i_stageNo] = i_originZ;
    }

    void setStageOriginPathXZ(int i_stageNo, f32 i_originX, f32 i_originZ) {
        mStageOriginPathX[i_stageNo] = i_originX;
        mStageOriginPathZ[i_stageNo] = i_originZ;
    }

    void setStageData(Stage_c* i_stageData, u8 i_dataNum) {
        mpStages = i_stageData;
        mStageDataNum = i_dataNum;
    }

    void setRegionTextureReadNum(int i_region, u8 i_num) {
        mRegionTextureReadNum[i_region] = i_num;
    }

    f32 getArrowPos2DX() { return mArrowPos2DX; }
    f32 getArrowPos2DY() { return mArrowPos2DY; }
    f32 getRenderingPosX() { return mRenderingPosX; }
    f32 getRenderingPosZ() { return mRenderingPosZ; }
    f32 getStageTransX() { return mStageTransX; }
    f32 getStageTransZ() { return mStageTransZ; }
    f32 getRenderingScale() { return mRenderingScale; }
    f32 getMapZoomRate() { return mMapZoomRate; }
    u8 getRegionCursor() { return mRegionCursor; }
    u8 getSpotCursor() { return mSpotCursor; }
    u8 getSelectRegion() { return mSelectRegion; }
    bool getAllPathShowFlag() { return mAllPathShowFlag; }
    f32 getRegionOriginX(u8 i_region) { return mRegionOriginX[i_region]; }
    f32 getRegionOriginZ(u8 i_region) { return mRegionOriginZ[i_region]; }

    void setArrowAlpha(f32 i_alpha) { mArrowAlpha = i_alpha; }
    void setSpotTextureFadeAlpha(f32 i_alpha) { mSpotTextureFadeAlpha = i_alpha; }
    void setRegionCursor(u8 i_value) { mRegionCursor = i_value; }
    void setMapDrawFlag(bool i_flag) { mMapDrawFlag = i_flag; }
    void resetDrug() { field_0x1238 = 0; }

    void offArrowDrawFlag() { mArrowDrawFlag = false; }
    void onArrowDrawFlag() { mArrowDrawFlag = true; }
    bool isArrowDrawFlag() { return mArrowDrawFlag; }
    
    void onShowRegionFlag(int region_bit) { mRegionFlag |= ((1 << region_bit) & 0xFF); }
    bool isShowRegionFlag(int region_bit) { return mRegionFlag & ((1 << region_bit) & 0xFF); }

    void mapBlink() {}

    // Unknown name
    struct RegionTexData {
        /* 0x00 */ float mMinX;
        /* 0x04 */ float mMinZ;
        /* 0x08 */ float mMaxX;
        /* 0x0C */ float mMaxZ;
        /* 0x10 */ float mScale;
    };

    /* 0x0C98 */ J2DScreen* mpBackScreen;
    /* 0x0C9C */ J2DScreen* mpBaseScreen;
    /* 0x0CA0 */ CPaneMgrAlphaMorf* mpBaseRoot;
    /* 0x0CA4 */ CPaneMgr* mpMapArea;
    /* 0x0CA8 */ CPaneMgr* mpMapBlack;
    /* 0x0CAC */ CPaneMgr* mpPointParent;
    /* 0x0CB0 */ J2DPicture* mpBackTex;
    /* 0x0CB4 */ J2DPicture* mpAreaTex[8];
    /* 0x0CD4 */ J2DPicture* mpSpotTexture;
    /* 0x0CD8 */ J2DScreen* mpPointScreen;
    /* 0x0CDC */ dMenu_FmapMap_c* mpMenuFmapMap;
    /* 0x0CE0 */ dMeterHaihai_c* mpMeterHaihai;
    /* 0x0CE4 */ J2DAnmTextureSRTKey* mpBaseAnm;
    /* 0x0CE8 */ RegionTexData mRegionTexData[8];
    /* 0x0D88 */ Stage_c* mpStages;
    /* 0x0D8C */ float mRegionScrollMinX[8];
    /* 0x0D0C */ float mRegionScrollMinZ[8];
    /* 0x0D0C */ float mRegionScrollMaxX[8];
    /* 0x0D0C */ float mRegionScrollMaxZ[8];
    /* 0x0E0C */ float mRegionScrollMapMinX[8];
    /* 0x0E2C */ float mRegionScrollMapMinY[8];
    /* 0x0E4C */ float mRegionScrollMapMaxX[8];
    /* 0x0E6C */ float mRegionScrollMapMaxY[8];
    /* 0x0E8C */ float mRegionMinMapX[8];
    /* 0x0EAC */ float mRegionMinMapY[8];
    /* 0x0ECC */ float mRegionMapSizeX[8];
    /* 0x0EEC */ float mRegionMapSizeY[8];
    /* 0x0F0C */ float field_0xf0c[8];
    /* 0x0F2C */ float field_0xf2c[8];
    /* 0x0F4C */ float field_0xf4c[8];
    /* 0x0F6C */ float field_0xf6c[8];
    /* 0x0F8C */ float mRenderingPosX;
    /* 0x0F90 */ float mRenderingPosZ;
    /* 0x0F94 */ float mRenderingScale;
    /* 0x0F98 */ float field_0xf98;
    /* 0x0F9C */ float mZoom;
    /* 0x0FA0 */ float mMapZoomRate;
    /* 0x0FA4 */ float field_0xfa4;
    /* 0x0FA8 */ float field_0xfa8;
    /* 0x0FAC */ float mAnmFrame;
    /* 0x0FB0 */ float field_0xfb0;
    /* 0x0FB4 */ float field_0xfb4;
    /* 0x0FB8 */ float field_0xfb8;
    /* 0x0FBC */ float mTransX;
    /* 0x0FC0 */ float mTransZ;
    /* 0x0FC4 */ float mAlphaRate;
    /* 0x0FC8 */ float mStageTransX;
    /* 0x0FCC */ float mStageTransZ;
    /* 0x0FD0 */ float field_0xfd0;
    /* 0x0FD4 */ float field_0xfd4;
    /* 0x0FD8 */ float field_0xfd8;
    /* 0x0FDC */ float field_0xfdc;
    /* 0x0FE0 */ float mTexMinX;
    /* 0x0FE4 */ float mTexMinZ;
    /* 0x0FE8 */ float mTexMaxX;
    /* 0x0FEC */ float mTexMaxZ;
    /* 0x0FF0 */ float mAllMapScaleRate;
    /* 0x0FF4 */ float mWorldMinX;
    /* 0x0FF8 */ float mWorldMinZ;
    /* 0x0FFC */ float mWorldMaxX;
    /* 0x1000 */ float mWorldMaxZ;
    /* 0x1004 */ float mRegionOriginX[8];
    /* 0x1024 */ float mRegionOriginZ[8];
    /* 0x1044 */ float mStageOriginX[20];
    /* 0x1094 */ float mStageOriginZ[20];
    /* 0x10E4 */ float mStageOriginPathX[20];
    /* 0x1134 */ float mStageOriginPathZ[20];
    /* 0x1184 */ float field_0x1184;
    /* 0x1188 */ float field_0x1188;
    /* 0x118C */ float mArrowPos3DX;
    /* 0x1190 */ float mArrowPos3DZ;
    /* 0x1194 */ float mArrowPos2DX;
    /* 0x1198 */ float mArrowPos2DY;
    /* 0x119C */ float control_xpos;
    /* 0x11A0 */ float control_ypos;
    /* 0x11A4 */ float field_0x11a4;
    /* 0x11A8 */ float field_0x11a8;
    /* 0x11AC */ float field_0x11ac;
    /* 0x11B0 */ float field_0x11b0;
    /* 0x11B4 */ float field_0x11b4;
    /* 0x11B8 */ float field_0x11b8;
    /* 0x11BC */ float field_0x11bc;
    /* 0x11C0 */ float field_0x11c0;
    /* 0x11C4 */ float field_0x11c4;
    /* 0x11C8 */ float field_0x11c8;
    /* 0x11CC */ float field_0x11cc;
    /* 0x11D0 */ float field_0x11d0;
    /* 0x11D4 */ float mArrowAlpha;
    /* 0x11D8 */ float mSpotTextureFadeAlpha;
    /* 0x11DC */ float field_0x11dc;
    /* 0x11E0 */ float field_0x11e0;
    /* 0x11E4 */ float mBackAlpha;
    /* 0x11E8 */ float field_0x11e8;
    /* 0x11EC */ float field_0x11ec;
    /* 0x11F0 */ JUtility::TColor mSelectedRegionBlack;
    /* 0x11F4 */ JUtility::TColor mSelectedRegionWhite;
    /* 0x11F8 */ JUtility::TColor mUnselectedRegionBlack;
    /* 0x11FC */ JUtility::TColor mUnselectedRegionWhite;
    /* 0x1200 */ JUtility::TColor mUnreachedRegionBlack;
    /* 0x1204 */ JUtility::TColor mUnreachedRegionWhite;
    /* 0x1208 */ JUtility::TColor field_0x1208;
    /* 0x120C */ JUtility::TColor field_0x120c;
    /* 0x1210 */ float field_0x1210;
    /* 0x1214 */ float field_0x1214;
    /* 0x1218 */ s16 field_0x1218;
    /* 0x121A */ s16 field_0x121a;
    /* 0x121C */ u8 mRegionTextureReadNum[8];
    /* 0x1224 */ u8 mSpotNum;
    /* 0x1225 */ u8 mStageDataNum;
    /* 0x1226 */ u8 mSelectRegion;
    /* 0x1227 */ u8 mRegionCursor;
    /* 0x1228 */ u8 field_0x1228;
    /* 0x1229 */ u8 mSpotCursor;
    /* 0x122A */ u8 field_0x122a;
    /* 0x122B */ u8 field_0x122b;
    /* 0x122C */ u8 mRegionFlag;
    /* 0x122D */ u8 field_0x122d;
    /* 0x122E */ bool field_0x122e;
    /* 0x122F */ bool mAllPathShowFlag;
    /* 0x1230 */ u8 field_0x1230[8];
    /* 0x1238 */ u8 field_0x1238;
    /* 0x1239 */ bool mMapDrawFlag;
    /* 0x123A */ bool mArrowDrawFlag;
    /* 0x123B */ u8 field_0x123b;
    /* 0x123C */ dMenu_FmapMap_c* mpFmapMap;
    /* 0x1240 */ dMenu_Fmap_region_data_c* mpRegionData;
    /* 0x1244 */ s32 field_0x1244;
};

class dMenu_Fmap2DTop_c : public dDlst_base_c {
public:
    /* 801D5BD0 */ dMenu_Fmap2DTop_c(JKRExpHeap*, STControl*);
    /* 801D6A44 */ void _execute();
    /* 801D6C44 */ void setAllAlphaRate(f32, bool);
    /* 801D6DF8 */ void btkAnimeLoop(J2DAnmTextureSRTKey*, f32);
    /* 801D6EDC */ void setMoyaAlpha(u8);
    /* 801D6F38 */ void setTitleNameString(u32);
    /* 801D7010 */ void setAreaNameString(u32);
    /* 801D70E8 */ void setZButtonString(u32, u8);
    /* 801D7210 */ void setBButtonString(u32, u8);
    /* 801D72D4 */ void setAButtonString(u32, u8);
    /* 801D7398 */ void setCrossLRString(u32);
    /* 801D74EC */ void set3DStickString(u32);
    /* 801D7640 */ void createExplain(JKRExpHeap*, STControl*);
    /* 801D76C0 */ void deleteExplain();
    /* 801D7714 */ void setArrowAlphaRatio(u8, f32);
    /* 801D77C4 */ void setAlphaAnimeMin(CPaneMgrAlpha*);
    /* 801D7858 */ void setAlphaAnimeMid(CPaneMgrAlpha*);
    /* 801D78FC */ void setAlphaAnimeMax(CPaneMgrAlpha*);
    /* 801D7994 */ bool checkPlayerWarpAccept();
    /* 801D7A08 */ bool checkWarpAcceptRegion(int);
    /* 801D7AB4 */ bool checkWarpAcceptRegion4();
    /* 801D7B58 */ bool checkWarpAcceptCannon();
    /* 801D7BCC */ void setHIO(bool);
    /* 801D8088 */ bool isWarpAccept();

    /* 801D6C98 */ virtual void draw();
    /* 801D6700 */ virtual ~dMenu_Fmap2DTop_c();

    void setAllTrans(f32 i_transX, f32 i_transY) {
        mTransX = i_transX;
        mTransY = i_transY;
    }

    dMsgScrnExplain_c* getScrnExplainPtr() { return mpScrnExplain; }

    void setPortalBin(void* i_bin) { mpPortalBin = i_bin; }
    void btkAnimeLoop(f32 i_delta) { btkAnimeLoop(mpAnm, i_delta); }

    enum Arrow {
        ARROW_UP = 1,
        ARROW_DOWN = 2,
        ARROW_UPDOWN = ARROW_UP | ARROW_DOWN,
        ARROW_LEFT = 4,
        ARROW_RIGHT = 8,
        ARROW_LEFTRIGHT = ARROW_LEFT | ARROW_RIGHT,
    };

    enum Alpha {
        ALPHA_MIN = 0,
        ALPHA_MID = 1,
        ALPHA_MAX = 2,
        ALPHA_DEFAULT = 0xFF,
    };

    /* 0x04 */ JKRExpHeap* mpHeap;
    /* 0x08 */ J2DScreen* mpTitleScreen;
    /* 0x0C */ CPaneMgrAlphaMorf* mpTitleRoot;
    /* 0x10 */ J2DAnmTextureSRTKey* mpAnm;
    /* 0x14 */ u8 field_0x14[4];
    /* 0x18 */ CPaneMgr* mpButtonA;
    /* 0x1C */ CPaneMgr* mpButtonB;
    /* 0x20 */ CPaneMgr* mpButtonZ;
    /* 0x24 */ CPaneMgr* mpButtonTextA;
    /* 0x28 */ CPaneMgr* mpButtonTextB;
    /* 0x2C */ CPaneMgr* mpButtonTextZ;
    /* 0x30 */ CPaneMgrAlpha* mpAnalogStickAlpha;
    /* 0x34 */ CPaneMgrAlpha* mpDpadAlpha;
    /* 0x38 */ CPaneMgrAlpha* mpArrowLAlpha[2];
    /* 0x40 */ CPaneMgrAlpha* mpArrowRAlpha[2];
    /* 0x48 */ u8 field_0x48[8];
    /* 0x50 */ CPaneMgr* mpNamePane;
    /* 0x54 */ CPaneMgr* mpSubPane;
    /* 0x58 */ CPaneMgr* mpAnalogStick;
    /* 0x5C */ CPaneMgr* mpDpad;
    /* 0x60 */ CPaneMgr* mpContPane;
    /* 0x64 */ u8 field_0x64[8];
    /* 0x6C */ dMsgScrnExplain_c* mpScrnExplain;
    /* 0x70 */ void* mpPortalBin;
    /* 0x74 */ f32 mAnmFrame;
    /* 0x78 */ f32 mTransX;
    /* 0x7C */ f32 mTransY;
    /* 0x80 */ f32 mAlphaRate;
    /* 0x84 */ f32 mTitlePosX;
    /* 0x88 */ f32 mTitlePosY;
    /* 0x8C */ f32 mTitleScale;
    /* 0x90 */ f32 mSubTitlePosX;
    /* 0x94 */ f32 mSubTitlePosY;
    /* 0x98 */ f32 mSubTitleScale;
    /* 0x9C */ f32 mAreaMovementPosX;
    /* 0xA0 */ f32 mAreaMovementPosY;
    /* 0xA4 */ f32 mAreaMovementScale;
    /* 0xA8 */ f32 mClosingPosX;
    /* 0xAC */ f32 mClosingPosY;
    /* 0xB0 */ f32 mClosingScale;
    /* 0xB4 */ f32 mDoIconPosX;
    /* 0xB8 */ f32 mDoIconPosY;
    /* 0xBC */ f32 mDoIconScale;
    /* 0xC0 */ u8 mAlphaButtonA;
    /* 0xC1 */ u8 mAlphaButtonB;
    /* 0xC2 */ u8 mAlphaButtonZ;
    /* 0xC3 */ u8 mAlphaAnalogStick;
    /* 0xC4 */ u8 mAlphaDpad;
 };

#endif /* D_MENU_D_MENU_FMAP2D_H */
