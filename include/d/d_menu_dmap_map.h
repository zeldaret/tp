#ifndef D_MENU_D_MENU_DMAP_MAP_H
#define D_MENU_D_MENU_DMAP_MAP_H

#include "dolphin/types.h"

struct dMenu_StageMapCtrl_c {
    /* 801C042C */ virtual ~dMenu_StageMapCtrl_c() {}
    /* 801C0EE0 */ f32 getMapBlendPer() const;
    /* 801C0F24 */ void getPixelStageSizeX() const;
    /* 801C0F3C */ void getPixelStageSizeZ() const;
    /* 801C0F54 */ void getPixelCenterX() const;
    /* 801C0F74 */ void getPixelCenterZ() const;
    /* 801C0F94 */ void initGetTreasureList(u8, s8);
    /* 801C0FF8 */ bool getTreasureList(f32*, f32*, s8*, u8*, s8*);
    /* 801C1128 */ void cnvPosTo2Dpos(f32, f32, f32*, f32*) const;
    /* 801C1194 */ void getPlayerDrawInfo(f32*, f32*, s16*) const;
    /* 801C1218 */ s8 getRestartDrawInfo(f32*, f32*, s16*) const;
    /* 801C12A8 */ void setPlusNowStayFloorNo(s8, u8);
    /* 801C12B4 */ void moveFloor();
    /* 801C1878 */ void wait_init_proc();
    /* 801C188C */ void wait_proc();
    /* 801C18AC */ void zoomIn_init_proc();
    /* 801C1C40 */ void initZoomIn(u8);
    /* 801C1CEC */ void initZoomIn(u8, f32, f32);
    /* 801C1E00 */ void initZoomInCenterHold(u8);
    /* 801C1E74 */ void zoomCalcSet(f32);
    /* 801C1EC0 */ void zoomIn_proc();
    /* 801C1F2C */ void initZoomOut(u8);
    /* 801C1F70 */ void initZoomWait(f32, f32);
    /* 801C2004 */ void zoomWait_init_proc();
    /* 801C205C */ void zoomWait_proc();
    /* 801C2198 */ void zoomOut_init_proc();
    /* 801C21AC */ void zoomOut_proc();
    /* 801C2234 */ void move();
    /* 801C22F8 */ void getPlayerStayFloorNo() const;
    /* 801C231C */ void _create(u16, u16, u16, u16, void*);
    /* 801C235C */ void _create(u16, u16, u16, u16, s8, void*);
    /* 801C2518 */ void _delete();
    /* 801C2538 */ void isEnableZoomIn();
    /* 801C2578 */ void isEnableZoomOut();
    /* 801C2588 */ void setPlusZoomCenterX(f32);
    /* 801C2590 */ void setPlusZoomCenterZ(f32);

    static f32 m_zoomCenterMinX;
    static f32 m_zoomCenterMaxX;
    static f32 m_zoomCenterMinZ;
    static f32 m_zoomCenterMaxZ[1 + 1 /* padding */];
};

struct dMenu_DmapMapCtrl_c : public dMenu_StageMapCtrl_c {
    /* 801BD144 */ virtual ~dMenu_DmapMapCtrl_c() {}
    /* 801C18C0 */ void getZoomMinMaxCheck(f32*, f32*, f32*, f32*, bool*, bool*);
    /* 801C1B14 */ void calcZoomCenter(f32*, f32*);
    /* 801C1BA4 */ void getZoomCmPerPixel();
    /* 801C2028 */ void isEnableZoomMove() const;
    /* 801C22A8 */ void draw();
    /* 801C2598 */ void getInitWholeMapScale(f32*, f32, f32, f32, f32);
    /* 801C25C0 */ void getInitDispCenter(f32*, f32*);
};

struct dMenu_DmapMap_c {
    /* 801C04AC */ ~dMenu_DmapMap_c();
    /* 801C0CD8 */ void _create(u16, u16, u16, u16, void*);
    /* 801C0D04 */ void _delete();
    /* 801C0D70 */ void setTexture(u16, u16, u16, u16);
    /* 801C0E4C */ void setPos(int, int, f32, f32, f32, bool, f32);
};



#endif /* D_MENU_D_MENU_DMAP_MAP_H */
