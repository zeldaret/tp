#ifndef D_MENU_D_MENU_FMAP_MAP_H
#define D_MENU_D_MENU_FMAP_MAP_H

#include "SSystem/SComponent/c_counter.h"
#include "dolphin/types.h"
#include "d/d_menu_fmap.h"
#include "d/d_map.h"
#include "d/d_map_path.h"
#include "d/d_map_path_fmap.h"

struct dMfm_prm_res_s {
    /* 0x000 */ dMpath_RGB5A3_palDt_s palette_data[27];
    /* 0x0D8 */ GXColor field_0xd8;
    /* 0x0DC */ GXColor field_0xdc;
    /* 0x0E0 */ GXColor field_0xe0;
    /* 0x0E4 */ GXColor field_0xe4;
    /* 0x0E8 */ GXColor field_0xe8[8];
    /* 0x108 */ GXColor field_0x108[8];
    /* 0x128 */ GXColor field_0x128[8];
    /* 0x148 */ GXColor field_0x148[8];
    /* 0x168 */ s16 field_0x168;
    /* 0x16A */ s16 field_0x16a;
    /* 0x16C */ u8 field_0x16c;
    /* 0x16D */ u8 field_0x16d;
};

struct dMfm_HIO_prm_res_src_s {
    /* 0x0 */ u8 mFlashDuration;

    static const dMfm_HIO_prm_res_src_s m_other;
};

class renderingFmap_c : public dRenderingFDAmap_c {
public:
    enum palette_e {
        /* 0x11 */ PALETTE_11 = 0x11,
        /* 0x12 */ PALETTE_12,
        /* 0x13 */ PALETTE_13,
        /* 0x14 */ PALETTE_14,
        /* 0x15 */ PALETTE_15,
        /* 0x16 */ PALETTE_16,
        /* 0x17 */ PALETTE_17,
        /* 0x18 */ PALETTE_18,
        /* 0x19 */ PALETTE_19,
        /* 0x1A */ PALETTE_1A,
    };

    renderingFmap_c() {
        mpWorldData = NULL;
        mpRegionData = NULL;
        mpStageData = NULL;
        mpRoomData = NULL;
        mpFmapData = NULL;
        mpStageArc = NULL;
        mStartStageNo = 0;
        mRegionIndex = 0;
        mStageNo = 0;
        mRoomNo = 0;
        mRegionNo = 0;
        mRoomIndex = 0;
        mStageOffsetX = 0.0f;
        mStageOffsetZ = 0.0f;
        mRegionOffsetX = 0.0f;
        mRegionOffsetZ = 0.0f;
        field_0xb8 = 0;
        mSaveTableNo = 0;
        mVisitedRoomSaveTableNo = 0;
        mDrawEnable = false;
    }

    /* 801CE15C */ void init(u8*, u16, u16, u16, u16);
    /* 801CE188 */ void entry(dMenu_Fmap_world_data_c*, int, f32, f32, f32);
    /* 801CE224 */ bool isSwitchSpecialOff(int);
    /* 801CE288 */ bool isSwitch(group_class const*);
    /* 801CE3C0 */ int getPointStagePathInnerNo(dMenu_Fmap_region_data_c*, f32, f32, int, int*,
                                                int*);
    /* 801CE410 */ void preDrawPath();
    /* 801CE4D4 */ bool isDrawPath();
    /* 801CE4DC */ bool isDrawRoom();
    /* 801CE560 */ void postDrawPath();
    /* 801CE5B8 */ void postRenderingMap();
    /* 801CE5EC */ void roomSetteing();
    /* 801CE6A8 */ room_class* getFirstRoomPointer();
    /* 801CE75C */ void getFirstRegion();
    /* 801CE7A8 */ void getFirstStage();
    /* 801CE80C */ void getFirstRoom();
    /* 801CE84C */ bool getNextRoom();
    /* 801CE8B8 */ bool getNextStage();
    /* 801CE93C */ bool getNextRegion();
    /* 801CE9A4 */ room_class* getNextRoomPointer();

    /* 801CF4D0 */ ~renderingFmap_c() {}
    /* 801CF55C */ bool isRenderingFloor(int) { return true; }
    /* 801CF564 */ void beforeDrawPath() {}
    /* 801CF568 */ void afterDrawPath() {}
    int getNowDrawRegionNo() { return mRegionNo; }
    bool isDrawEnable() { return mDrawEnable; }

    /* 0x24 */ Mtx mViewMtx;
    /* 0x54 */ cXyz mEye;
    /* 0x60 */ cXyz mCenter;
    /* 0x6C */ cXyz mUp;
    /* 0x78 */ dMenu_Fmap_world_data_c* mpWorldData;
    /* 0x7C */ dMenu_Fmap_region_data_c* mpRegionData;
    /* 0x80 */ dMenu_Fmap_stage_data_c* mpStageData;
    /* 0x84 */ dMenu_Fmap_room_data_c* mpRoomData;
    /* 0x88 */ dMenu_Fmap_data_c* mpFmapData;
    /* 0x8C */ dMenu_Fmap_stage_arc_data_c* mpStageArc;
    /* 0x90 */ int mStartStageNo;
    /* 0x94 */ int mRegionIndex;
    /* 0x98 */ int mStageNo;
    /* 0x9C */ int mRoomNo;
    /* 0xA0 */ int mRegionNo;
    /* 0xA4 */ int mRoomIndex;
    /* 0xA8 */ f32 mStageOffsetX;
    /* 0xAC */ f32 mStageOffsetZ;
    /* 0xB0 */ f32 mRegionOffsetX;
    /* 0xB4 */ f32 mRegionOffsetZ;
    /* 0xB8 */ u8 field_0xb8;
    /* 0xB9 */ u8 mSaveTableNo;
    /* 0xBA */ u8 mVisitedRoomSaveTableNo;
    /* 0xBB */ bool mDrawEnable;
 };

class dMenu_FmapMap_c : public renderingFmap_c {
public:
    /* 801CEAAC */ void setFmapPaletteColor(palette_e, GXColor const&);
    /* 801CEA38 */ void setFmapPaletteColor(palette_e, u8, u8, u8, u8);
    /* 801CEAE0 */ bool isFlashRoomNoCheck(int) const;
    /* 801CEB1C */ void setPointColor(f32);
    /* 801CEC24 */ dMenu_FmapMap_c();
    /* 801CED38 */ ~dMenu_FmapMap_c();
    /* 801CEDE8 */ void _create(u16, u16, u16, u16, void*);
    /* 801CEE3C */ void _delete();
    /* 801CEE94 */ void draw();
    /* 801CF0B4 */ void rendering(line_class const*);
    /* 801CF12C */ int getLineWidth(int);
    /* 801CF1D4 */ bool isDrawType(int);
    /* 801CF1E0 */ void setFlashOn(int, int, u8*, int);
    /* 801CF208 */ const GXColor* getLineColor(int, int);
    /* 801CF298 */ const GXColor* getBackColor() const;
    /* 801CF2A0 */ const GXColor* getColor(int);
    /* 801CF394 */ void setTexture(u16, u16, u16, u16);
    /* 801CF450 */ void setRendering(dMenu_Fmap_world_data_c*, int, f32, f32, f32, f32);

    f32 getRateWithFrameCount(int param_0) {
        return (f32)(g_Counter.mCounter0 % param_0) / (f32)param_0;
    }

    bool isDrawEnable() {
        // probably a fakematch
        bool ret = true;
        ret &= renderingFmap_c::isDrawEnable();
        return ret;
    }

    void setFlashOff() {
        mLastFlash = mFlash;
        mFlash = false;
    }

    int getPointStagePathInnerNo(dMenu_Fmap_region_data_c* i_regionData, f32 i_offsetX,
                                 f32 i_offsetY, int i_stageNo, int* o_stageNo, int* o_roomNo) {
        return renderingFmap_c::getPointStagePathInnerNo(i_regionData, i_offsetX, i_offsetY,
                                                         i_stageNo, o_stageNo, o_roomNo);
    }

    ResTIMG* getResTIMGPointer() { return mResTIMG; }

    /* 0xBC */ ResTIMG* mResTIMG;
    /* 0xC0 */ u8* mMapImage_p;
    /* 0xC4 */ dMfm_prm_res_s* m_res;
    /* 0xC8 */ dMpath_RGB5A3_palDt_s* m_palette;
    /* 0xCC */ int field_0xcc;
    /* 0xD0 */ f32 mZoomRate;
    /* 0xD4 */ int mLineNo;
    /* 0xD8 */ bool mFlash;
    /* 0xD9 */ bool mLastFlash;
    /* 0xDC */ int mStageCursor;
    /* 0xE0 */ int mLastStageCursor;
    /* 0xE4 */ u8 mRegionCursor;
    /* 0xE5 */ u8 mFlashTimer;
    /* 0xE8 */ u8* mFlashRooms;
    /* 0xEC */ int mFlashRoomCount;
};


#endif /* D_MENU_D_MENU_FMAP_MAP_H */
