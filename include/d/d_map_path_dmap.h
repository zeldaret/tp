#ifndef D_MAP_D_MAP_PATH_DMAP_H
#define D_MAP_D_MAP_PATH_DMAP_H

#include "d/d_tresure.h"
#include "d/d_map_path.h"

class dStage_FileList2_dt_c;
struct stage_tgsc_data_class;

class dMpath_c {
public:
    /* 8003F758 */ static bool isExistMapPathData();
    /* 8003F760 */ static int getTopBottomFloorNo(s8*, s8*);
    /* 8003F7E8 */ static void createWork();
    /* 8003FA40 */ static void setPointer(s8, void*, int);
    /* 8003F810 */ static int setPointer(dDrawPath_c::room_class*, s8*, s8*);
    /* 8003FB70 */ static void create();
    /* 8003FBD0 */ static void reset();
    /* 8003FC70 */ static void remove();

    static dDrawPath_c::room_class* getRoomPointer(int layerNo, int roomNo) {
        return mLayerList->mRooms[layerNo][roomNo];
    }

    static f32 getMinX() { return mMinX; }
    static f32 getMinZ() { return mMinZ; }
    static f32 getMaxX() { return mMaxX; }
    static f32 getMaxZ() { return mMaxZ; }

    static f32 getSizeX() { return mAllSizeX; }
    static f32 getSizeZ() { return mAllSizeZ; }

    static f32 getCenterX() { return mAllCenterX; }
    static f32 getCenterZ() { return mAllCenterZ; }

    static dDrawPath_c::layer_data* mLayerList;  // this doesn't seem right, but can't figure it out atm
    static f32 mMinX;
    static f32 mMaxX;
    static f32 mMinZ;
    static f32 mMaxZ;
    static f32 mAllCenterX;
    static f32 mAllCenterZ;
    static f32 mAllSizeX;
    static f32 mAllSizeZ;
    static s8 mBottomFloorNo;
    static s8 mTopFloorNo;
};

struct dMapInfo_n {
    /* 8003ECA0 */ static bool chkGetCompass();
    /* 8003ECD8 */ static bool chkGetMap();
    /* 8003ED10 */ static bool isVisitedRoom(int);
    /* 8003ED60 */ static void correctionOriginPos(s8, Vec*);
    /* 8003EDC0 */ static void offsetPlus(dStage_FileList2_dt_c const*, Vec*);
    /* 8003EDEC */ static void rotAngle(dStage_FileList2_dt_c const*, Vec*);
    /* 8003EE5C */ static Vec getMapPlayerPos();
    /* 8003EF20 */ static s16 getMapPlayerAngleY();
    /* 8003EF70 */ static const dTres_c::typeGroupData_c* getConstRestartIconPointer();
    /* 8003F02C */ static Vec getMapRestartPos();
    /* 8003F0F8 */ static s16 getMapRestartAngleY();
    /* 8003F19C */ static void getRoomCenter(int, f32*, f32*);
    /* 8003F1F4 */ static void getRoomMinMaxXZ(int, f32*, f32*, f32*, f32*);
    /* 8003F24C */ static void getFloorParameter(f32, s8*, f32*, f32*, f32*, f32*);
};

class dMapInfo_c {
public:
    /* 8003F40C */ static s8 calcFloorNo(f32, bool, int);
    /* 8003F570 */ static s8 calcNowStayFloorNo(f32, bool);
    /* 8003F6C8 */ static void move(int, f32);
    /* 8003F6FC */ static void init();
    /* 8003F714 */ static void reset();
    /* 8003F734 */ static void create();
    /* 8003F754 */ static void remove();

    static s8 getNowStayFloorNo() {
        JUT_ASSERT(0, mNowStayFloorNoDecisionFlg);

        s8 floor_no = 0;
        if (mNowStayFloorNoDecisionFlg) {
            floor_no = mNowStayFloorNo;
        }
        return floor_no;
    }

    static u8 getNowStayFloorNoDecisionFlg() {
        return mNowStayFloorNoDecisionFlg;
    }

    static void setNextRoomNoForMapPat0(int i_roomNo) { mNextRoomNo = i_roomNo; }
    static int getNextRoomNoForMapPat0() { return mNextRoomNo; }

    static int mNextRoomNo;
    static int mNowStayRoomNo;
    static s8 mNowStayFloorNo;
    static u8 mNowStayFloorNoDecisionFlg;
};

class renderingDAmap_c : public dRenderingFDAmap_c {
public:
    renderingDAmap_c() {
        mRoomNo = 0;
        field_0x28 = 0;
        mRoomNoSingle = 0;
        mRenderedFloor = 0;
        mIsDraw = false;
    }

    /* 8003FCA4 */ s8 calcFloorNoForObjectByMapPathRend(f32, int) const;
    /* 8003FCC8 */ void init(u8*, u16, u16, u16, u16);
    /* 8003FD08 */ void entry(f32, f32, f32, int, s8);
    /* 8003FE6C */ void setSingleRoomSetting();
    /* 8003FFF4 */ int getFirstDrawRoomNo();
    /* 80040094 */ int getNextDrawRoomNo(int);

    /* 8003FE18 */ virtual void draw();
    /* 8002B150 */ virtual ~renderingDAmap_c() {}
    /* 8003FD9C */ virtual bool isSwitch(dDrawPath_c::group_class const*);
    /* 8003FE54 */ virtual bool isRenderingFloor(int);
    /* 80040134 */ virtual dDrawPath_c::room_class* getFirstRoomPointer();
    /* 800401E8 */ virtual dDrawPath_c::room_class* getNextRoomPointer();
    /* 8003FF14 */ virtual void preDrawPath();
    /* 8003FFC4 */ virtual void postDrawPath();
    /* 800402C0 */ virtual bool isDrawPath();
    /* 8003FE4C */ virtual const GXColor* getBackColor() const;
    /* 800402E0 */ virtual int getFirstDrawLayerNo();
    /* 800402E8 */ virtual int getNextDrawLayerNo(int);

    /* 800409E0 */ virtual bool isDrawIconSingle(dTres_c::data_s const*, int, int, bool, bool,
                                                 Vec const*) const;
    /* 80040AE4 */ virtual int getIconGroupNumber(u8) const;
    virtual bool hasMap() const = 0;
    virtual bool isRendAllRoom() const = 0;
    virtual bool isRendDoor() const = 0;
    virtual bool isCheckFloor() const = 0;
    virtual bool isDrawIconSingle2(dTres_c::data_s const*, bool, bool, int) const = 0;
    /* 8003FFEC */ virtual int getRoomNoSingle();
    /* 8003FE70 */ virtual bool isDrawRoom(int, int) const;
    /* 800409B4 */ virtual bool isDrawRoomIcon(int, int) const;

    bool isDraw() const { return mIsDraw; }

    /* 0x24 */ int mRoomNo;
    /* 0x28 */ int field_0x28;
    /* 0x2C */ int mRoomNoSingle;
    /* 0x30 */ s8 mRenderedFloor;
    /* 0x31 */ bool mIsDraw;
};  // Size: 0x34

class stage_tgsc_data_class;

class renderingPlusDoor_c : public renderingDAmap_c {
public:
    renderingPlusDoor_c() {}
    /* 80040574 */ void drawDoor1();
    /* 800405B8 */ void drawDoor2();
    /* 800405FC */ void drawDoorCommon(stage_tgsc_data_class const*, int, bool);
    /* 80040710 */ bool checkDispDoorS(int, int, f32);
    /* 80040838 */ void drawNormalDoorS(stage_tgsc_data_class const*, int, int, bool);

    /* 8002B0B4 */ virtual ~renderingPlusDoor_c() {}
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
    renderingPlusDoorAndCursor_c() {}

    /* 8002B008 */ virtual ~renderingPlusDoorAndCursor_c() {}
    /* 800402FC */ virtual void afterDrawPath();
    virtual f32 getIconSize(u8) const = 0;
    /* 80040ADC */ virtual const Vec* getIconPosition(dTres_c::typeGroupData_c*) const;
    /* 80040A94 */ virtual dTres_c::typeGroupData_c* getFirstData(u8);
    /* 80040AB8 */ virtual dTres_c::typeGroupData_c* getNextData(dTres_c::typeGroupData_c*);
    virtual f32 getPlayerCursorSize() = 0;
    virtual f32 getRestartCursorSize() = 0;
};

#endif /* D_MAP_D_MAP_PATH_DMAP_H */
