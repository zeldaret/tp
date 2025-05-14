#ifndef D_MENU_D_MENU_DMAP_MAP_H
#define D_MENU_D_MENU_DMAP_MAP_H

#include "d/d_menu_dmap.h"
#include <cmath.h>

class dMenu_DmapMap_c {
public:
    /* 801C04AC */ virtual ~dMenu_DmapMap_c();
    /* 801C0CD8 */ void _create(u16, u16, u16, u16, void*);
    /* 801C0D04 */ void _delete();
    /* 801C0D70 */ void setTexture(u16, u16, u16, u16);
    /* 801C0E4C */ void setPos(int, int, f32, f32, f32, bool, f32);

    const renderingDmap_c* getRendPointer(int i_no) const { return &mRend[i_no]; }

    /* 0x04 */ renderingDmap_c mRend[2];
    /* 0x74 */ ResTIMG* mResTIMG[2];
    /* 0x7C */ u8* mMapImage_p[2];
    /* 0x84 */ int field_0x84;
};

class dMenu_StageMapCtrl_c : public dMenu_DmapMap_c {
public:
    virtual ~dMenu_StageMapCtrl_c() {}
    virtual bool isEnableZoomMove() const;
    virtual void calcZoomCenter(f32*, f32*);
    virtual void getInitWholeMapScale(f32*, f32, f32, f32, f32);
    virtual void getInitDispCenter(f32*, f32*);
    virtual void getZoomMinMaxCheck(f32*, f32*, f32*, f32*, bool*, bool*);
    virtual f32 getZoomCmPerPixel();
    virtual void draw();

    /* 801C0EE0 */ f32 getMapBlendPer() const;
    /* 801C0F24 */ f32 getPixelStageSizeX() const;
    /* 801C0F3C */ f32 getPixelStageSizeZ() const;
    /* 801C0F54 */ f32 getPixelCenterX() const;
    /* 801C0F74 */ f32 getPixelCenterZ() const;
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
    /* 801C22F8 */ s8 getPlayerStayFloorNo() const;
    /* 801C231C */ void _create(u16, u16, u16, u16, void*);
    /* 801C235C */ void _create(u16, u16, u16, u16, s8, void*);
    /* 801C2518 */ void _delete();
    /* 801C2538 */ bool isEnableZoomIn();
    /* 801C2578 */ bool isEnableZoomOut();
    /* 801C2588 */ void setPlusZoomCenterX(f32);
    /* 801C2590 */ void setPlusZoomCenterZ(f32);

    u8 getDisableZoomMoveFlgX() const { return field_0xf8; }
    u8 getDisableZoomMoveFlgZ() const { return field_0xf9; }

    f32 makeStayFloorBlendPer(int param_0, f32 param_1) {
        return param_0 + param_1;
    }

    int getFloorNo(f32 param_0) const {
        return std::ceil(param_0);
    }

    f32 getBlendPer(f32 param_0) const {
        return std::fmod(param_0, 1.0f);
    }

    static f32 m_zoomCenterMinX;
    static f32 m_zoomCenterMaxX;
    static f32 m_zoomCenterMinZ;
    static f32 m_zoomCenterMaxZ;

    /* 0x88 */ u8 field_0x88[0x8C - 0x88];
    /* 0x8C */ dTres_c::typeGroupData_c* field_0x8c;
    /* 0x90 */ f32 field_0x90;
    /* 0x94 */ f32 field_0x94;
    /* 0x98 */ f32 field_0x98;
    /* 0x9C */ f32 field_0x9c;
    /* 0xA0 */ f32 field_0xa0;
    /* 0xA4 */ f32 field_0xa4;
    /* 0xA8 */ f32 field_0xa8;
    /* 0xAC */ f32 field_0xac;
    /* 0xB0 */ f32 field_0xb0;
    /* 0xB4 */ f32 field_0xb4;
    /* 0xB8 */ f32 field_0xb8;
    /* 0xBC */ f32 field_0xbc;
    /* 0xC0 */ f32 field_0xc0;
    /* 0xC4 */ f32 field_0xc4;
    /* 0xC8 */ f32 field_0xc8;
    /* 0xCC */ f32 field_0xcc;
    /* 0xD0 */ f32 field_0xd0;
    /* 0xD4 */ f32 field_0xd4;
    /* 0xD8 */ f32 field_0xd8;
    /* 0xDC */ f32 field_0xdc;
    /* 0xE0 */ f32 field_0xe0;
    /* 0xE4 */ u16 field_0xe4;
    /* 0xE6 */ s8 field_0xe6;
    /* 0xE7 */ s8 field_0xe7;
    /* 0xE8 */ s8 field_0xe8;
    /* 0xE9 */ u8 field_0xe9;
    /* 0xEA */ s8 field_0xea;
    /* 0xEB */ s8 field_0xeb;
    /* 0xEC */ s8 field_0xec;
    /* 0xED */ s8 field_0xed;
    /* 0xEE */ s8 field_0xee;
    /* 0xEF */ u8 field_0xef;
    /* 0xF0 */ u8 field_0xf0;
    /* 0xF1 */ u8 field_0xf1;
    /* 0xF2 */ u8 field_0xf2;
    /* 0xF3 */ u8 field_0xf3;
    /* 0xF4 */ s8 field_0xf4;
    /* 0xF5 */ u8 field_0xf5;
    /* 0xF6 */ u8 field_0xf6;
    /* 0xF7 */ s8 field_0xf7;
    /* 0xF8 */ bool field_0xf8;
    /* 0xF9 */ bool field_0xf9;
};

class dMenu_DmapMapCtrl_c : public dMenu_StageMapCtrl_c {
public:
    /* 801BD144 */ virtual ~dMenu_DmapMapCtrl_c() {}
    /* 801C2028 */ virtual bool isEnableZoomMove() const;
    /* 801C1B14 */ virtual void calcZoomCenter(f32*, f32*);
    /* 801C2598 */ virtual void getInitWholeMapScale(f32*, f32, f32, f32, f32);
    /* 801C25C0 */ virtual void getInitDispCenter(f32*, f32*);
    /* 801C18C0 */ virtual void getZoomMinMaxCheck(f32*, f32*, f32*, f32*, bool*, bool*);
    /* 801C1BA4 */ virtual f32 getZoomCmPerPixel();
    /* 801C22A8 */ virtual void draw();
};

#endif /* D_MENU_D_MENU_DMAP_MAP_H */
