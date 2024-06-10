#ifndef D_MENU_D_MENU_FMAP_MAP_H
#define D_MENU_D_MENU_FMAP_MAP_H

#include "dolphin/types.h"
#include "d/menu/d_menu_fmap.h"
#include "d/map/d_map_path.h"

class renderingFmap_c {
public:
    enum palette_e {};

    /* 801CE15C */ void init(u8*, u16, u16, u16, u16);
    /* 801CE188 */ void entry(dMenu_Fmap_world_data_c*, int, f32, f32, f32);
    /* 801CE224 */ void isSwitchSpecialOff(int);
    /* 801CE288 */ void isSwitch(dDrawPath_c::group_class const*);
    /* 801CE3C0 */ void getPointStagePathInnerNo(dMenu_Fmap_region_data_c*, f32, f32, int, int*,
                                                 int*);
    /* 801CE410 */ void preDrawPath();
    /* 801CE4D4 */ bool isDrawPath();
    /* 801CE4DC */ void isDrawRoom();
    /* 801CE560 */ void postDrawPath();
    /* 801CE5B8 */ void postRenderingMap();
    /* 801CE5EC */ void roomSetteing();
    /* 801CE6A8 */ void getFirstRoomPointer();
    /* 801CE75C */ void getFirstRegion();
    /* 801CE7A8 */ void getFirstStage();
    /* 801CE80C */ void getFirstRoom();
    /* 801CE84C */ void getNextRoom();
    /* 801CE8B8 */ void getNextStage();
    /* 801CE93C */ void getNextRegion();
    /* 801CE9A4 */ void getNextRoomPointer();
    /* 801CF4D0 */ ~renderingFmap_c();
    /* 801CF55C */ bool isRenderingFloor(int);
    /* 801CF564 */ void beforeDrawPath();
    /* 801CF568 */ void afterDrawPath();
};

class dMenu_FmapMap_c {
public:
    /* 801CEAAC */ void setFmapPaletteColor(renderingFmap_c::palette_e, _GXColor const&);
    /* 801CEA38 */ void setFmapPaletteColor(renderingFmap_c::palette_e, u8, u8, u8, u8);
    /* 801CEAE0 */ void isFlashRoomNoCheck(int) const;
    /* 801CEB1C */ void setPointColor(f32);
    /* 801CEC24 */ dMenu_FmapMap_c();
    /* 801CED38 */ ~dMenu_FmapMap_c();
    /* 801CEDE8 */ void _create(u16, u16, u16, u16, void*);
    /* 801CEE3C */ void _delete();
    /* 801CEE94 */ void draw();
    /* 801CF0B4 */ void rendering(dDrawPath_c::line_class const*);
    /* 801CF12C */ void getLineWidth(int);
    /* 801CF1D4 */ void isDrawType(int);
    /* 801CF1E0 */ void setFlashOn(int, int, u8*, int);
    /* 801CF208 */ void getLineColor(int, int);
    /* 801CF298 */ void getBackColor() const;
    /* 801CF2A0 */ void getColor(int);
    /* 801CF394 */ void setTexture(u16, u16, u16, u16);
    /* 801CF450 */ void setRendering(dMenu_Fmap_world_data_c*, int, f32, f32, f32, f32);
};


#endif /* D_MENU_D_MENU_FMAP_MAP_H */
