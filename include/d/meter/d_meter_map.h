#ifndef D_METER_D_METER_MAP_H
#define D_METER_D_METER_MAP_H

#include "JSystem/J2DGraph/J2DScreen.h"
#include "dolphin/types.h"

class dMeterMap_c {
public:
    /* 8020D49C */ void isEnableDispMap();
    /* 8020D528 */ void getMapDispSizeTypeNo();
    /* 8020D650 */ void isEnableDispMapAndMapDispSizeTypeNo();
    /* 8020D690 */ void getMapDispEdgeBottomY_Layout();
    /* 8020D698 */ void isEventRunCheck();
    /* 8020D72C */ void getMapDispEdgeLeftX_Layout();
    /* 8020D75C */ void getMapDispEdgeTop();
    /* 8020D7E4 */ bool getDispPosInside_OffsetX();
    /* 8020D7EC */ void getDispPosOutSide_OffsetX();
    /* 8020D874 */ void setDispPosInsideFlg_SE_On();
    /* 8020D8BC */ void setDispPosOutsideFlg_SE_On();
    /* 8020D8F8 */ void setMapAlpha(u8);
    /* 8020D900 */ static bool isMapOpenCheck();
    /* 8020D948 */ dMeterMap_c(J2DScreen*);
    /* 8020D990 */ ~dMeterMap_c();
    /* 8020D9EC */ void _create(J2DScreen*);
    /* 8020DC50 */ void _delete();
    /* 8020DCE4 */ void _move(u32);
    /* 8020DF1C */ void _draw();
    /* 8020DF68 */ void draw();
    /* 8020E070 */ void ctrlShowMap();
    /* 8020E45C */ void checkMoveStatus();
    /* 8020E4C8 */ void isShow(u32);
    /* 8020E620 */ void isFmapScreen();
    /* 8020E70C */ void isDmapScreen();
    /* 8020E754 */ void meter_map_move(u32);
    /* 8020E9CC */ void keyCheck();
};

#endif /* D_METER_D_METER_MAP_H */
