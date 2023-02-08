#ifndef J2DMATERIALFACTORY_H
#define J2DMATERIALFACTORY_H

#include "JSystem/J2DGraph/J2DManage.h"
#include "JSystem/J2DGraph/J2DMaterial.h"
#include "JSystem/JKernel/JKRArchive.h"
#include "dolphin/types.h"

struct J2DMaterialBlock {};

struct J2DMaterialInitData;
struct J2DIndInitData;
struct J2DTevSwapModeTableInfo;
struct J2DAlphaCompInfo;

class J2DMaterialFactory {
public:
    /* 802F2AD0 */ J2DMaterialFactory(J2DMaterialBlock const&);
    /* 802F2C94 */ void countStages(int) const;
    /* 802F2D1C */ void create(J2DMaterial*, int, u32, J2DResReference*, J2DResReference*,
                               JKRArchive*) const;
    /* 802F362C */ void newMatColor(int, int) const;
    /* 802F36CC */ void newColorChanNum(int) const;
    /* 802F3704 */ void newColorChan(int, int) const;
    /* 802F3758 */ void newTexGenNum(int) const;
    /* 802F3790 */ void newTexCoord(int, int) const;
    /* 802F3804 */ void newTexMtx(int, int) const;
    /* 802F38E0 */ void newCullMode(int) const;
    /* 802F3920 */ void newTexNo(int, int) const;
    /* 802F3968 */ void newFontNo(int) const;
    /* 802F39A8 */ void newTevOrder(int, int) const;
    /* 802F3A1C */ void newTevColor(int, int) const;
    /* 802F3AB4 */ void newTevKColor(int, int) const;
    /* 802F3B54 */ void newTevStageNum(int) const;
    /* 802F3B8C */ void newTevStage(int, int) const;
    /* 802F3BEC */ void newTevSwapModeTable(int, int) const;
    /* 802F3C88 */ void newIndTexStageNum(int) const;
    /* 802F3CB8 */ void newIndTexOrder(int, int) const;
    /* 802F3D20 */ void newIndTexMtx(int, int) const;
    /* 802F3E24 */ void newIndTevStage(int, int) const;
    /* 802F3F78 */ void newIndTexCoordScale(int, int) const;
    /* 802F3FE0 */ void newAlphaComp(int) const;
    /* 802F405C */ void newBlend(int) const;
    /* 802F40D8 */ void newDither(int) const;

private:
    /* 0x00 */ int field_0x0;
    /* 0x04 */ J2DMaterialInitData* field_0x4;
    /* 0x08 */ u16* field_0x8;
    /* 0x0C */ J2DIndInitData* field_0xc;
    /* 0x10 */ GXColor* field_0x10;
    /* 0x14 */ u8* field_0x14;
    /* 0x18 */ J2DColorChanInfo* field_0x18;
    /* 0x1C */ u8* field_0x1c;
    /* 0x20 */ J2DTexCoordInfo* field_0x20;
    /* 0x24 */ J2DTexMtxInfo* field_0x24;
    /* 0x28 */ u16* field_0x28;
    /* 0x2C */ u16* field_0x2c;
    /* 0x30 */ _GXCullMode* field_0x30;
    /* 0x34 */ J2DTevOrderInfo* field_0x34;
    /* 0x38 */ GXColorS10* field_0x38;
    /* 0x3C */ GXColor* field_0x3c;
    /* 0x40 */ u8* field_0x40;
    /* 0x44 */ J2DTevStageInfo* field_0x44;
    /* 0x48 */ J2DTevSwapModeInfo* field_0x48;
    /* 0x4C */ J2DTevSwapModeTableInfo* field_0x4c;
    /* 0x50 */ J2DAlphaCompInfo* field_0x50;
    /* 0x54 */ J2DBlendInfo* field_0x54;
    /* 0x58 */ u8* field_0x58;
};

#endif /* J2DMATERIALFACTORY_H */
