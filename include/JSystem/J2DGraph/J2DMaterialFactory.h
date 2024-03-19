#ifndef J2DMATERIALFACTORY_H
#define J2DMATERIALFACTORY_H

#include "JSystem/J2DGraph/J2DManage.h"
#include "JSystem/J2DGraph/J2DMatBlock.h"
#include "dolphin/types.h"

struct J2DMaterialBlock {
    u32 field_0x0;
    u32 field_0x4;
    u16 field_0x8;
    u16 field_0xa;
    u32 field_0xc;
    u32 field_0x10;
    u32 field_0x14;
    u32 field_0x18;
    u32 field_0x1c;
    u32 field_0x20;
    u32 field_0x24;
    u32 field_0x28;
    u32 field_0x2c;
    u32 field_0x30;
    u32 field_0x34;
    u32 field_0x38;
    u32 field_0x3c;
    u32 field_0x40;
    u32 field_0x44;
    u32 field_0x48;
    u32 field_0x4c;
    u32 field_0x50;
    u32 field_0x54;
    u32 field_0x58;
    u32 field_0x5c;
    u32 field_0x60;
    u32 field_0x64;
};

typedef struct _GXColor GXColor;
typedef struct _GXColorS10 GXColorS10;
struct J2DAlphaCompInfo;
struct J2DBlendInfo;
struct J2DColorChanInfo;
class J2DMaterial;

struct J2DIndInitData {
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2[2];
    J2DIndTexOrderInfo field_0x4[4];
    J2DIndTexMtxInfo field_0xc[3];
    J2DIndTexCoordScaleInfo field_0x60[4];
    J2DIndTevStageInfo field_0x68[4];
    u8 field_0xac[0x90];
};

struct J2DMaterialInitData {
    u8 field_0x0;
    u8 field_0x1;
    u8 field_0x2;
    u8 field_0x3;
    u8 field_0x4;
    u8 field_0x5;
    u8 field_0x6;
    u8 field_0x7;
    u16 field_0x8[2];
    u16 field_0xc[4];
    u16 field_0x14[8];
    u16 field_0x24[0xa];
    u16 field_0x38[8];
    u16 field_0x48;
    u16 field_0x4a[4];
    u8 field_0x52[0x10];
    u8 field_0x62[0x10];
    u16 field_0x72[0x10];
    u16 field_0x92[0x4];
    u16 field_0x9a[0x10];
    u16 field_0xba[0x10];
    u16 field_0xda[0x4];
    u16 field_0xe2;
    u16 field_0xe4;
    u16 field_0xe6;
};
struct J2DTevStageInfo;
struct J2DTevSwapModeTableInfo;
struct J2DTevSwapModeInfo;
struct J2DTevOrderInfo;
struct J2DTexCoordInfo;
struct J2DTexMtxInfo;
class JKRArchive;

class J2DMaterialFactory {
public:
    /* 802F2AD0 */ J2DMaterialFactory(J2DMaterialBlock const&);
    /* 802F2C94 */ u32 countStages(int) const;
    /* 802F2D1C */ J2DMaterial* create(J2DMaterial*, int, u32, J2DResReference*, J2DResReference*,
                               JKRArchive*) const;
    /* 802F362C */ JUtility::TColor newMatColor(int, int) const;
    /* 802F36CC */ u8 newColorChanNum(int) const;
    /* 802F3704 */ J2DColorChan newColorChan(int, int) const;
    /* 802F3758 */ u32 newTexGenNum(int) const;
    /* 802F3790 */ J2DTexCoord newTexCoord(int, int) const;
    /* 802F3804 */ J2DTexMtx* newTexMtx(int, int) const;
    /* 802F38E0 */ u8 newCullMode(int) const;
    /* 802F3920 */ u16 newTexNo(int, int) const;
    /* 802F3968 */ u16 newFontNo(int) const;
    /* 802F39A8 */ J2DTevOrder newTevOrder(int, int) const;
    /* 802F3A1C */ J2DGXColorS10 newTevColor(int, int) const;
    /* 802F3AB4 */ JUtility::TColor newTevKColor(int, int) const;
    /* 802F3B54 */ u8 newTevStageNum(int) const;
    /* 802F3B8C */ J2DTevStage newTevStage(int, int) const;
    /* 802F3BEC */ J2DTevSwapModeTable newTevSwapModeTable(int, int) const;
    /* 802F3C88 */ u8 newIndTexStageNum(int) const;
    /* 802F3CB8 */ J2DIndTexOrder newIndTexOrder(int, int) const;
    /* 802F3D20 */ J2DIndTexMtx newIndTexMtx(int, int) const;
    /* 802F3E24 */ J2DIndTevStage newIndTevStage(int, int) const;
    /* 802F3F78 */ J2DIndTexCoordScale newIndTexCoordScale(int, int) const;
    /* 802F3FE0 */ J2DAlphaComp newAlphaComp(int) const;
    /* 802F405C */ J2DBlend newBlend(int) const;
    /* 802F40D8 */ u8 newDither(int) const;

    u32 getMaterialMode(int idx) const {
        return field_0x4[field_0x8[idx]].field_0x0;
    }

    u8 getMaterialAlphaCalc(int idx) const {
        return field_0x4[field_0x8[idx]].field_0x6;
    }

private:
    /* 0x00 */ u16 field_0x0;
    /* 0x02 */ u16 field_0x2;
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
    /* 0x38 */ _GXColorS10* field_0x38;
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
