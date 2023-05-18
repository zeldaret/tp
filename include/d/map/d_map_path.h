#ifndef D_MAP_D_MAP_PATH_H
#define D_MAP_D_MAP_PATH_H

#include "d/d_drawlist.h"
#include "dolphin/types.h"
#include "global.h"

class dDrawPath_c : public dDlst_base_c {
public:
    struct line_class {
        /* 0x00 */ u8 unk0;
        /* 0x01 */ u8 unk1;
        /* 0x02 */ u8 unk2;
        /* 0x03 */ u8 unk3;
        /* 0x04 */ u16* unk4;
    };  // Size: 0x8

    struct poly_class {
        /* 0x00 */ u8 field_0x0;
        /* 0x01 */ u8 field_0x1;
        /* 0x04 */ u16* field_0x4;
    };  // Size: 0x8

    struct group_class {
        /* 0x00 */ u8 field_0x0;
        /* 0x01 */ u8 field_0x1;
        /* 0x02 */ u8 field_0x2;
        /* 0x03 */ u8 field_0x3;
        /* 0x04 */ u8 field_0x4;
        /* 0x08 */ dDrawPath_c::line_class* mpLine;
        /* 0x0C */ u8 field_0xc[4];
        /* 0x10 */ dDrawPath_c::poly_class* mpPoly;
    };  // Size: 0x14

    struct floor_class {
        /* 0x0 */ s8 field_0x0;
        /* 0x1 */ u8 field_0x1;
        /* 0x4 */ dDrawPath_c::group_class* mpGroup;
    };  // Size: 0x8

    struct room_class {
        /* 0x0 */ u8 field_0x0;
        /* 0x4 */ dDrawPath_c::floor_class* mpFloor;
        /* 0x8 */ void* field_0x8;
    };

    /* 8003CB00 */ void rendering(dDrawPath_c::group_class const*);
    /* 8003CBBC */ void rendering(dDrawPath_c::floor_class const*);

    /* 8002AD3C */ virtual ~dDrawPath_c();
    /* 8002ABF0 */ virtual bool isDrawType(int);
    virtual GXColor* getColor(int) = 0;
    /* 8002AD84 */ virtual GXColor* getLineColor(int, int);
    virtual int getLineWidth(int) = 0;
    virtual bool isSwitch(dDrawPath_c::group_class const*) = 0;
    virtual bool isRenderingFloor(int) = 0;
    virtual room_class* getFirstRoomPointer() = 0;
    virtual room_class* getNextRoomPointer() = 0;
    /* 8003CCC4 */ virtual void drawPath();
    /* 8003C94C */ virtual void rendering(dDrawPath_c::line_class const*);
    /* 8003CA40 */ virtual void rendering(dDrawPath_c::poly_class const*);
    /* 8003CC24 */ virtual void rendering(dDrawPath_c::room_class const*);
};

class dDrawPathWithNormalPattern_c : public dDrawPath_c {
public:
    /* 8002ACE0 */ virtual ~dDrawPathWithNormalPattern_c();
};

class dRenderingMap_c : public dDrawPathWithNormalPattern_c {
public:
    /* 8003CD38 */ void makeResTIMG(ResTIMG*, u16, u16, u8*, u8*, u16) const;
    /* 8003CDAC */ void renderingMap();

    /* 8002AC74 */ virtual ~dRenderingMap_c();
    virtual void beforeDrawPath() = 0;
    virtual void afterDrawPath() = 0;
    virtual void preDrawPath() = 0;
    virtual void postDrawPath() = 0;
    virtual bool isDrawPath() = 0;
    virtual void preRenderingMap() = 0;
    virtual void postRenderingMap() = 0;
    virtual GXColor* getBackColor() const = 0;
};

class dRenderingFDAmap_c : public dRenderingMap_c {
public:
    dRenderingFDAmap_c() {
        field_0x4 = NULL;
        field_0x8 = 0.0f;
        field_0xc = 0.0f;
        field_0x10 = 0.0f;
        field_0x14 = 0.0f;
        mCmPerTexel = 0.0f;
        field_0x1c = 0;
        field_0x1e = 0;
        field_0x20 = 0;
        field_0x22 = 0;
    }

    /* 8003CE78 */ void setTevSettingNonTextureDirectColor() const;
    /* 8003CF40 */ void setTevSettingIntensityTextureToCI() const;
    /* 8003D0AC */ void drawBack() const;
    /* 8003D3C0 */ void renderingDecoration(dDrawPath_c::line_class const*);

    /* 8002ABF8 */ virtual ~dRenderingFDAmap_c();
    /* 8003D188 */ virtual void preRenderingMap();
    /* 8003D320 */ virtual void postRenderingMap();
    /* 8003D68C */ virtual GXColor* getDecoLineColor(int, int);
    /* 8003D6B8 */ virtual s32 getDecorationLineWidth(int);

    bool isDrawAreaCheck(const Vec& param_0) {
        return (param_0.x >= field_0x10 - field_0x8 * 2.0f &&
                param_0.x <= field_0x10 + field_0x8 * 2.0f) &&
               (param_0.z >= field_0x14 - field_0xc * 2.0f &&
                param_0.z <= field_0x14 + field_0xc * 2.0f);
    }

    /* 0x04 */ u8* field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ f32 field_0x14;
    /* 0x18 */ f32 mCmPerTexel;
    /* 0x1C */ u16 field_0x1c;
    /* 0x1E */ u16 field_0x1e;
    /* 0x20 */ u16 field_0x20;
    /* 0x22 */ u16 field_0x22;
};  // Size: 0x24

struct dMpath_n {
    class dTexObjAggregate_c {
    public:
        /* 8003C85C */ void create();
        /* 8003C8F4 */ void remove();
        /* 8003D740 */ ~dTexObjAggregate_c() { remove(); };

        GXTexObj* getTexObjPointer(int i_no) { return mp_texObj[i_no]; }

        dTexObjAggregate_c() {
            for (int i = 0; i < 7; i++) {
                mp_texObj[i] = NULL;
            }
        }

        /* 0x0 */ GXTexObj* mp_texObj[7];
    };

    static dTexObjAggregate_c m_texObjAgg;
};

STATIC_ASSERT(sizeof(dMpath_n::dTexObjAggregate_c) == 28);

#endif /* D_MAP_D_MAP_PATH_H */
