#ifndef D_MAP_D_MAP_PATH_DMAP_H
#define D_MAP_D_MAP_PATH_DMAP_H

#include "d/map/d_map_path.h"
#include "d/d_stage.h"
#include "dolphin/types.h"

struct dTres_c {
    struct data_s {};

    struct typeGroupData_c {};

    struct list_class {};

    /* 8009BCB4 */ void addData(dTres_c::list_class*, s8);
    /* 8009C360 */ void getFirstData(u8);
    /* 8009C3B4 */ void getNextData(dTres_c::typeGroupData_c const*);
    /* 8009C39C */ void getNextData(dTres_c::typeGroupData_c*);
    /* 8009C4B0 */ void getTypeToTypeGroupNo(u8);

    static u8 mTypeGroupListAll[204 + 4 /* padding */];
};

class dMpath_c {
public:
    /* 8003F758 */ static u8 isExistMapPathData();
    /* 8003F760 */ void getTopBottomFloorNo(s8*, s8*);
    /* 8003F7E8 */ void createWork();
    /* 8003FA40 */ void setPointer(s8, void*, int);
    /* 8003F810 */ void setPointer(dDrawPath_c::room_class*, s8*, s8*);
    /* 8003FB70 */ void create();
    /* 8003FBD0 */ void reset();
    /* 8003FC70 */ void remove();

    static u8 mLayerList[4];
    static f32 mMinX;
    static f32 mMaxX;
    static f32 mMinZ;
    static f32 mMaxZ;
    static f32 mAllCenterX;
    static f32 mAllCenterZ;
    static f32 mAllSizeX;
    static f32 mAllSizeZ;
};

struct dMapInfo_n {
    /* 8003ECA0 */ void chkGetCompass();
    /* 8003ECD8 */ void chkGetMap();
    /* 8003ED10 */ void isVisitedRoom(int);
    /* 8003ED60 */ void correctionOriginPos(s8, Vec*);
    /* 8003EDC0 */ void offsetPlus(dStage_FileList2_dt_c const*, Vec*);
    /* 8003EDEC */ void rotAngle(dStage_FileList2_dt_c const*, Vec*);
    /* 8003EE5C */ static Vec getMapPlayerPos();
    /* 8003EF20 */ void getMapPlayerAngleY();
    /* 8003EF70 */ void getConstRestartIconPointer();
    /* 8003F02C */ void getMapRestartPos();
    /* 8003F0F8 */ void getMapRestartAngleY();
    /* 8003F19C */ void getRoomCenter(int, f32*, f32*);
    /* 8003F1F4 */ void getRoomMinMaxXZ(int, f32*, f32*, f32*, f32*);
    /* 8003F24C */ void getFloorParameter(f32, s8*, f32*, f32*, f32*, f32*);
};

class renderingDAmap_c : public dRenderingFDAmap_c {
public:
    /* 8003FCA4 */ void calcFloorNoForObjectByMapPathRend(f32, int) const;
    /* 8003FCC8 */ void init(u8*, u16, u16, u16, u16);
    /* 8003FD08 */ void entry(f32, f32, f32, int, s8);
    /* 8003FE6C */ void setSingleRoomSetting();
    /* 8003FFF4 */ void getFirstDrawRoomNo();
    /* 80040094 */ void getNextDrawRoomNo(int);
    
    /* 8003FE18 */ virtual void draw();
    /* 8002B150 */ virtual ~renderingDAmap_c();
    /* 8003FD9C */ virtual void isSwitch(dDrawPath_c::group_class const*);
    /* 8003FE54 */ virtual void isRenderingFloor(int);
    /* 80040134 */ virtual void getFirstRoomPointer();
    /* 800401E8 */ virtual void getNextRoomPointer();
    /* 8003FF14 */ virtual void preDrawPath();
    /* 8003FFC4 */ virtual void postDrawPath();
    /* 800402C0 */ virtual void isDrawPath();
    /* 8003FE4C */ virtual void getBackColor() const;
    /* 800402E0 */ virtual bool getFirstDrawLayerNo();
    /* 800402E8 */ virtual void getNextDrawLayerNo(int);
    /* 800409E0 */ virtual void isDrawIconSingle(dTres_c::data_s const*, int, int, bool, bool,
                                         Vec const*) const;
    /* 80040AE4 */ virtual void getIconGroupNumber(u8) const;
    virtual void hasMap() const = 0;
    virtual void isRendAllRoom() const = 0;
    virtual void isRendDoor() const = 0;
    virtual bool isCheckFloor() const = 0;
    virtual void isDrawIconSingle2(dTres_c::data_s const*, bool, bool, int) const = 0;
    /* 8003FFEC */ virtual void getRoomNoSingle();
    /* 8003FE70 */ virtual void isDrawRoom(int, int) const;
    /* 800409B4 */ virtual void isDrawRoomIcon(int, int) const;

    bool isDraw() const {
        return mDraw;
    }

private:
    /* 0x24 */ int field_0x24;
    /* 0x28 */ int field_0x28;
    /* 0x2C */ int mRoomNoSingle;
    /* 0x30 */ u8 field_0x30;
    /* 0x31 */ bool mDraw;
};  // Size: 0x34

class stage_tgsc_data_class;

class renderingPlusDoor_c : public renderingDAmap_c {
public: 
    /* 80040574 */ void drawDoor1();
    /* 800405B8 */ void drawDoor2();
    /* 800405FC */ void drawDoorCommon(stage_tgsc_data_class const*, int, bool);
    /* 80040710 */ void checkDispDoorS(int, int, f32);
    /* 80040838 */ void drawNormalDoorS(stage_tgsc_data_class const*, int, int, bool);
    
    /* 8002B0B4 */ virtual ~renderingPlusDoor_c();
    /* 8004145C */ virtual void beforeDrawPath();
    /* 80040518 */ virtual void afterDrawPath();
    virtual bool isRendRestart() const = 0;
    virtual bool isRendCursor() const = 0;
    virtual bool isRendIcon() const = 0;
};

class renderingPlusDoorAndCursor_c : public renderingPlusDoor_c {
public:
    /* 80040B00 */ void drawTreasure();
    /* 80040E84 */ void drawTreasureAfterPlayer();
    /* 80041208 */ void drawIconSingle(Vec const&, f32, f32);
    /* 800412C0 */ void drawCursor(Vec const&, s16, int, f32);

    /* 8002B008 */ virtual ~renderingPlusDoorAndCursor_c();
    /* 800402FC */ virtual void afterDrawPath();
    /* 80040ADC */ virtual void getIconPosition(dTres_c::typeGroupData_c*) const;
    /* 80040A94 */ virtual void getFirstData(u8);
    /* 80040AB8 */ virtual void getNextData(dTres_c::typeGroupData_c*);
    virtual void getPlayerCursorSize() = 0;
    virtual void getRestartCursorSize() = 0;
};

#endif /* D_MAP_D_MAP_PATH_DMAP_H */
