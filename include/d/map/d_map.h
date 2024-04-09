#ifndef D_MAP_D_MAP_H
#define D_MAP_D_MAP_H

#include "d/map/d_map_path_dmap.h"

class renderingAmap_c : public renderingPlusDoorAndCursor_c {
public:
    /* 800288C4 */ int getDispType() const;
    /* 80028BB4 */ bool isDrawOutSideTrim();
    /* 80028C4C */ int getOutSideBlackLineNumber();
    /* 80028C60 */ bool isOutSideBlackLine();
    /* 80028C90 */ int getLineWidthSub(int);
    /* 80029160 */ int getStayType() const;
    /* 8002AE6C */ renderingAmap_c() {}

    /* 800284D0 */ virtual void draw();
    /* 8002ADB0 */ virtual ~renderingAmap_c() {}
    /* 80028EE4 */ virtual GXColor* getLineColor(int, int);
    /* 80028DD4 */ virtual int getLineWidth(int);
    /* 80028A10 */ virtual void drawPath();
    /* 80028A30 */ virtual void rendering(dDrawPath_c::line_class const*);
    /* 80028B3C */ virtual void rendering(dDrawPath_c::poly_class const*);
    /* 800289F0 */ virtual void rendering(dDrawPath_c::room_class const*);
    /* 80028960 */ virtual void beforeDrawPath();
    /* 800289D0 */ virtual void afterDrawPath();
    /* 80028FB4 */ virtual const GXColor* getDecoLineColor(int, int);
    /* 80028CF4 */ virtual s32 getDecorationLineWidth(int);
    /* 80029058 */ virtual int getIconGroupNumber(u8) const;
    /* 80029078 */ virtual bool hasMap() const;
    /* 8002911C */ virtual bool isRendAllRoom() const;
    /* 800290C0 */ virtual bool isRendDoor() const;
    /* 80029104 */ virtual bool isCheckFloor() const;
    /* 80029190 */ virtual bool isDrawIconSingle2(dTres_c::data_s const*, bool, bool, int) const;
    /* 8002910C */ virtual bool isRendRestart() const;
    /* 80029114 */ virtual bool isRendCursor() const;
    /* 8002B000 */ virtual bool isRendIcon() const { return true; }
    /* 800284BC */ virtual f32 getIconSize(u8) const;
    /* 80028B04 */ virtual f32 getPlayerCursorSize();
    /* 80028B10 */ virtual f32 getRestartCursorSize();
    virtual void setAmapPaletteColor(int, u8, u8, u8, u8) = 0;
    virtual bool isSpecialOutline() = 0;

    static const int PALETTE_NUMBER = 50;

private:
    /* 0x34 */ s32 m_outSideBlackLineCnt;
    /* 0x38 */ s32 field_0x38;
    /* 0x3C */ s32 field_0x3c;
};  // Size: 0x40

struct dMap_prm_res_s;

class dMap_c : public renderingAmap_c {
public:
    /* 8002974C */ void copyPalette();
    /* 8002A064 */ void copyPalette(int, int, f32);
    /* 80029F84 */ void setMapPaletteColorAlphaPer(int, f32);
    /* 800297A8 */ void setMapPaletteColorAlphaPer(int, int, f32);
    /* 80029818 */ void resCopy();
    /* 80029874 */ dMap_c(int, int, int, int);
    /* 80029A1C */ void _remove();
    /* 80029A8C */ void getMapMinMaxXZ(int, f32*, f32*, f32*, f32*);
    /* 80029C10 */ void getPack(int, f32*, f32*);
    /* 80029D78 */ void calcMapCenterXZ(int, f32*, f32*);
    /* 80029E1C */ void calcMapCmPerTexel(int, f32*);
    /* 8002A1BC */ int getDispType() const;
    /* 8002A32C */ void _move(f32, f32, int, f32);
    /* 8002AB54 */ void _draw();

    /* 8002AF20 */ virtual ~dMap_c() { _remove(); }
    /* 800296EC */ virtual bool isDrawType(int);
    /* 80028DF4 */ virtual const GXColor* getColor(int);
    /* 800296F8 */ virtual bool isRendAllRoom() const;
    /* 8002A254 */ virtual int getRoomNoSingle();
    /* 8002A1DC */ virtual bool isDrawRoom(int, int) const;
    /* 8002A294 */ virtual bool isDrawRoomIcon(int, int) const;
    /* 80029038 */ virtual const Vec* getIconPosition(dTres_c::typeGroupData_c*) const;
    /* 8002ABAC */ virtual dTres_c::typeGroupData_c* getFirstData(u8);
    /* 8002ABCC */ virtual dTres_c::typeGroupData_c* getNextData(dTres_c::typeGroupData_c*);
    /* 8002A148 */ virtual void setAmapPaletteColor(int, u8, u8, u8, u8);
    /* 80029744 */ virtual bool isSpecialOutline();

    bool isDraw() const { return renderingDAmap_c::isDraw(); }

    ResTIMG* getResTIMGPointer() { return mResTIMG; }
    f32 getTopEdgePlus() { return mTopEdgePlus; }
    f32 getPackPlusZ() { return mPackPlusZ; }
    f32 getPackZ() { return mPackZ; }
    f32 getTexelPerCm() { return 1.0f / field_0x58; }
    u16 getTexSizeY() { return mTexSizeY; }
    f32 getRightEdgePlus() { return mRightEdgePlus; }
    f32 getPackX() { return mPackX; }

private:
    /* 0x40 */ dMap_prm_res_s* m_res_src;
    /* 0x44 */ dMap_prm_res_s* m_res;
    /* 0x48 */ ResTIMG* mResTIMG;
    /* 0x4C */ u8* mImage_p;
    /* 0x50 */ f32 mCenterX;
    /* 0x54 */ f32 mCenterZ;
    /* 0x58 */ f32 field_0x58;
    /* 0x5C */ f32 mPackX;
    /* 0x60 */ f32 mPackZ;
    /* 0x64 */ f32 field_0x64;
    /* 0x68 */ f32 mPackPlusZ;
    /* 0x6C */ f32 mRightEdgePlus;
    /* 0x70 */ f32 mTopEdgePlus;
    /* 0x74 */ int field_0x74;
    /* 0x78 */ u16 mTexSizeX;
    /* 0x7A */ u16 mTexSizeY;
    /* 0x7C */ int mStayRoomNo;
    /* 0x80 */ int field_0x80;
    /* 0x84 */ int field_0x84;
    /* 0x88 */ int field_0x88;
    /* 0x8C */ u8 field_0x8c;
    /* 0x8D */ u8 field_0x8d;
    /* 0x8E */ u8 field_0x8e;
    /* 0x8F */ u8 field_0x8f;
    /* 0x90 */ u8 field_0x90;
};  // Size: 0x94

#endif /* D_MAP_D_MAP_H */
