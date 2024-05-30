#ifndef D_MENU_D_MENU_FMAP2D_H
#define D_MENU_D_MENU_FMAP2D_H

#include "JSystem/JUtility/TColor.h"
#include "d/map/d_map_path_fmap.h"
#include "d/menu/d_menu_fmap_map.h"
#include "d/menu/d_menu_map_common.h"
#include "d/meter/d_meter_haihai.h"
#include "d/pane/d_pane_class.h"
#include "dolphin/types.h"

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
    /* 801D2508 */ bool isShowRegion(int);
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

    u8 isArrowDrawFlag() { return mArrowDrawFlag; }
    
    void onShowRegionFlag(int region_bit) { mRegionFlag |= ((1 << region_bit) & 0xFF); }
    bool isShowRegionFlag(int region_bit) { return mRegionFlag & ((1 << region_bit) & 0xFF); }

    struct unkData {
        /* 0x00 */ float field_0x0;
        /* 0x04 */ float field_0x4;
        /* 0x08 */ float field_0x8;
        /* 0x0C */ float field_0xc;
        /* 0x10 */ float field_0x10;
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
    /* 0x0CDC */ u32 field_0xcdc;
    /* 0x0CE0 */ dMeterHaihai_c* mpMeterHaihai;
    /* 0x0CE4 */ J2DAnmBase* mpBaseAnm;
    /* 0x0CE8 */ unkData field_0xce8[8];
    /* 0x0D88 */ Stage_c* mpStages;
    /* 0x0D8C */ float field_0xd8c[8];
    /* 0x0D0C */ float field_0xdac[8];
    /* 0x0D0C */ float field_0xdcc[8];
    /* 0x0D0C */ float field_0xdec[8];
    /* 0x0E0C */ float field_0xe0c[8];
    /* 0x0E2C */ float field_0xe2c[8];
    /* 0x0E4C */ float field_0xe4c[8];
    /* 0x0E6C */ float field_0xe6c[8];
    /* 0x0E8C */ float field_0xe8c[8];
    /* 0x0EAC */ float field_0xeac[8];
    /* 0x0ECC */ float field_0xecc[8];
    /* 0x0EEC */ float field_0xeec[8];
    /* 0x0F0C */ float field_0xf0c[8];
    /* 0x0F2C */ float field_0xf2c[8];
    /* 0x0F4C */ float field_0xf4c[8];
    /* 0x0F6C */ float field_0xf6c[8];
    /* 0x0F8C */ float field_0xf8c;
    /* 0x0F90 */ float field_0xf90;
    /* 0x0F94 */ float field_0xf94;
    /* 0x0F98 */ float field_0xf98;
    /* 0x0F9C */ float field_0xf9c; // Likely called mZoom
    /* 0x0FA0 */ float field_0xfa0;
    /* 0x0FA4 */ float field_0xfa4;
    /* 0x0FA8 */ float field_0xfa8;
    /* 0x0FAC */ float field_0xfac;
    /* 0x0FB0 */ float field_0xfb0;
    /* 0x0FB4 */ float field_0xfb4;
    /* 0x0FB8 */ float field_0xfb8;
    /* 0x0FBC */ float field_0xfbc;
    /* 0x0FC0 */ float field_0xfc0;
    /* 0x0FC4 */ float field_0xfc4;
    /* 0x0FC8 */ float field_0xfc8;
    /* 0x0FCC */ float field_0xfcc;
    /* 0x0FD0 */ float field_0xfd0;
    /* 0x0FD4 */ float field_0xfd4;
    /* 0x0FD8 */ float field_0xfd8;
    /* 0x0FDC */ float field_0xfdc;
    /* 0x0FE0 */ float field_0xfe0;
    /* 0x0FE4 */ float field_0xfe4;
    /* 0x0FE8 */ float field_0xfe8;
    /* 0x0FEC */ float field_0xfec;
    /* 0x0FF0 */ float mAllMapScaleRate;
    /* 0x0FF4 */ float field_0xff4;
    /* 0x0FF8 */ float field_0xff8;
    /* 0x0FFC */ float field_0xffc;
    /* 0x1000 */ float field_0x1000;
    /* 0x1004 */ float field_0x1004[8];
    /* 0x1024 */ float field_0x1024[8];
    /* 0x1044 */ float field_0x1044[20];
    /* 0x1094 */ float field_0x1094[20];
    /* 0x10E4 */ float field_0x10e4[20];
    /* 0x1134 */ float field_0x1134[20];
    /* 0x1184 */ float field_0x1184;
    /* 0x1188 */ float field_0x1188;
    /* 0x118C */ float field_0x118c;
    /* 0x1190 */ float field_0x1190;
    /* 0x1194 */ float field_0x1194;
    /* 0x1198 */ float field_0x1198;
    /* 0x119C */ float control_ypos;
    /* 0x11A0 */ float control_xpos;
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
    /* 0x11D4 */ float field_0x11d4;
    /* 0x11D8 */ float field_0x11d8;
    /* 0x11DC */ float field_0x11dc;
    /* 0x11E0 */ float field_0x11e0;
    /* 0x11E4 */ float field_0x11e4;
    /* 0x11E8 */ float field_0x11e8;
    /* 0x11EC */ float field_0x11ec;
    /* 0x11F0 */ JUtility::TColor field_0x11f0;
    /* 0x11F4 */ JUtility::TColor field_0x11f4;
    /* 0x11F8 */ JUtility::TColor field_0x11f8;
    /* 0x11FC */ JUtility::TColor field_0x11fc;
    /* 0x1200 */ JUtility::TColor field_0x1200;
    /* 0x1204 */ JUtility::TColor field_0x1204;
    /* 0x1208 */ JUtility::TColor field_0x1208;
    /* 0x120C */ JUtility::TColor field_0x120c;
    /* 0x1210 */ float field_0x1210;
    /* 0x1214 */ float field_0x1214;
    /* 0x1218 */ u16 field_0x1218;
    /* 0x121A */ u16 field_0x121a;
    /* 0x121C */ u8 field_0x121c[8];
    /* 0x1224 */ u8 field_0x1224;
    /* 0x1225 */ u8 field_0x1225;
    /* 0x1226 */ u8 field_0x1226;
    /* 0x1227 */ u8 field_0x1227;
    /* 0x1228 */ u8 field_0x1228;
    /* 0x1229 */ u8 field_0x1229;
    /* 0x122A */ u8 field_0x122a;
    /* 0x122B */ u8 field_0x122b;
    /* 0x122C */ u8 mRegionFlag;
    /* 0x122D */ u8 field_0x122d;
    /* 0x122E */ u8 field_0x122e;
    /* 0x122F */ u8 field_0x122f;
    /* 0x1230 */ u8 field_0x1230[8];
    /* 0x1238 */ u8 field_0x1238;
    /* 0x1239 */ u8 field_0x1239;
    /* 0x123A */ u8 mArrowDrawFlag;
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
    /* 801D7994 */ void checkPlayerWarpAccept();
    /* 801D7A08 */ void checkWarpAcceptRegion(int);
    /* 801D7AB4 */ void checkWarpAcceptRegion4();
    /* 801D7B58 */ void checkWarpAcceptCannon();
    /* 801D7BCC */ void setHIO(bool);
    /* 801D8088 */ void isWarpAccept();

    /* 801D6C98 */ virtual void draw();
    /* 801D6700 */ virtual ~dMenu_Fmap2DTop_c();
};

#endif /* D_MENU_D_MENU_FMAP2D_H */
