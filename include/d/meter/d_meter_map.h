#ifndef D_METER_D_METER_MAP_H
#define D_METER_D_METER_MAP_H

#include "d/map/d_map_path_dmap.h"

class J2DPicture;
class dMap_c;
class dMeterMap_c : public dDlst_base_c {
public:
    /* 8020D49C */ static bool isEnableDispMap();
    /* 8020D528 */ static int getMapDispSizeTypeNo();
    /* 8020D650 */ static bool isEnableDispMapAndMapDispSizeTypeNo();
    /* 8020D690 */ f32 getMapDispEdgeBottomY_Layout();
    /* 8020D698 */ bool isEventRunCheck();
    /* 8020D72C */ f32 getMapDispEdgeLeftX_Layout();
    /* 8020D75C */ f32 getMapDispEdgeTop();
    /* 8020D7E4 */ s16 getDispPosInside_OffsetX();
    /* 8020D7EC */ s16 getDispPosOutSide_OffsetX();
    /* 8020D874 */ void setDispPosInsideFlg_SE_On();
    /* 8020D8BC */ void setDispPosOutsideFlg_SE_On();
    /* 8020D8F8 */ void setMapAlpha(u8);
    /* 8020D900 */ static bool isMapOpenCheck();
    /* 8020D948 */ dMeterMap_c(J2DScreen*);
    /* 8020D9EC */ void _create(J2DScreen*);
    /* 8020DC50 */ void _delete();
    /* 8020DCE4 */ void _move(u32);
    /* 8020DF1C */ void _draw();
    /* 8020E070 */ void ctrlShowMap();
    /* 8020E45C */ u8 checkMoveStatus();
    /* 8020E4C8 */ static bool isShow(u32);
    /* 8020E620 */ static bool isFmapScreen();
    /* 8020E70C */ static bool isDmapScreen();
    /* 8020E754 */ static void meter_map_move(u32);
    /* 8020E9CC */ void keyCheck();

    /* 8020DF68 */ virtual void draw();
    /* 8020D990 */ virtual ~dMeterMap_c();

    bool isDispPosInsideFlg() { return field_0x2d != 0; }

    enum { MAP_SIZE_TYPE_BIG = 2, MAP_SIZE_TYPE_SMALL = 3, MAP_SIZE_TYPE_STAGE = 7 };

private:
    /* 0x04 */ J2DPicture* mMapJ2DPicture;
    /* 0x08 */ dMap_c* mMap;
    /* 0x0C */ s32 mIsCompass;
    /* 0x10 */ s32 mIsMap;
    /* 0x14 */ u32 field_0x14;
    /* 0x18 */ f32 field_0x18;
    /* 0x1C */ f32 field_0x1c;
    /* 0x20 */ f32 mSizeW;
    /* 0x24 */ f32 mSizeH;
    /* 0x28 */ s16 field_0x28;
    /* 0x2A */ u8 field_0x2a;
    /* 0x2B */ u8 field_0x2b;
    /* 0x2C */ u8 mMapAlpha;
    /* 0x2D */ u8 field_0x2d;
    /* 0x2E */ u8 field_0x2e;
    /* 0x30 */ int field_0x30;
};

#endif /* D_METER_D_METER_MAP_H */
