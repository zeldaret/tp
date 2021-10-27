#ifndef J2DMATBLOCK_H
#define J2DMATBLOCK_H

#include "JSystem/J2DGraph/J2DTevs.h"
#include "JSystem/JUtility/JUTResFont.h"
#include "JSystem/JUtility/JUTTexture.h"
#include "JSystem/JUtility/TColor.h"
#include "dolphin/types.h"

struct J2DGXColorS10 : public GXColorS10 {
    /* 802F1B90 */ J2DGXColorS10();
};

struct J2DTevSwapModeInfo;

class J2DTevBlock {
public:
    /* 802F2A40 */ virtual void initialize();
    /* 802EB1D0 */ virtual void setGX();
    /* 802F2A44 */ virtual void loadTexture(_GXTexMapID, u32);
    virtual void getType() = 0;
    virtual s32 getMaxStage() = 0;
    /* 802EB1DC */ virtual void setTexNo(u32, u16);
    /* 802EA170 */ virtual void getTexNo(u32) const;
    /* 802F2A48 */ virtual void setFontNo(u16);
    /* 802EA164 */ virtual void getFontNo() const;
    /* 802F2A4C */ virtual void setTevOrder(u32, J2DTevOrder);
    /* 802EA144 */ virtual bool getTevOrder(u32);
    /* 802EB1D8 */ virtual void setTevColor(u32, J2DGXColorS10);
    /* 802EA13C */ virtual bool getTevColor(u32);
    /* 802EB1D4 */ virtual void setTevKColor(u32, JUtility::TColor);
    /* 802EA15C */ virtual bool getTevKColor(u32);
    /* 802F2A50 */ virtual void setTevKColorSel(u32, u8);
    /* 802EA154 */ virtual bool getTevKColorSel(u32);
    /* 802F2A54 */ virtual void setTevKAlphaSel(u32, u8);
    /* 802EA14C */ virtual bool getTevKAlphaSel(u32);
    /* 802F2A58 */ virtual void setTevStageNum(u8);
    /* 802EA17C */ virtual bool getTevStageNum() const;
    /* 802F2A5C */ virtual void setTevStage(u32, J2DTevStage);
    /* 802EA134 */ virtual bool getTevStage(u32);
    /* 802F2A60 */ virtual void setTevSwapModeInfo(u32, J2DTevSwapModeInfo);
    /* 802F2A64 */ virtual void setTevSwapModeTable(u32, J2DTevSwapModeTable);
    /* 802EA12C */ virtual bool getTevSwapModeTable(u32);
    /* 802F2A68 */ virtual void setIndTevStage(u32, J2DIndTevStage);
    /* 802EA184 */ virtual bool getIndTevStage(u32);
    /* 802F2A7C */ virtual bool insertTexture(u32, ResTIMG const*);
    /* 802F2A74 */ virtual bool insertTexture(u32, ResTIMG const*, JUTPalette*);
    /* 802F2A6C */ virtual bool insertTexture(u32, JUTTexture*);
    /* 802F2A8C */ virtual bool setTexture(u32, ResTIMG const*);
    /* 802F2A84 */ virtual bool setTexture(u32, JUTTexture*);
    /* 802F2A94 */ virtual bool removeTexture(u32);
    /* 802F2AA4 */ virtual bool setFont(ResFONT*);
    /* 802F2A9C */ virtual bool setFont(JUTFont*);
    /* 802F2AAC */ virtual bool setPalette(u32, ResTLUT const*);
    /* 802F2AB4 */ virtual bool prepareTexture(u8);
    /* 802EB87C */ virtual bool getTexture(u32);
    /* 802EB884 */ virtual bool getPalette(u32);
    /* 802F2ABC */ virtual bool getFont();
    /* 802F2AC4 */ virtual void shiftDeleteFlag(u8, bool);
    /* 802F2AC8 */ virtual void setUndeleteFlag(u8);
    /* 802F2ACC */ virtual void setFontUndeleteFlag();
    /* 802EB184 */ virtual ~J2DTevBlock();
};

class J2DTevBlock1 : public J2DTevBlock {
public:
    /* 802EB88C */ J2DTevBlock1();

    /* 802EBA50 */ virtual void initialize();
    /* 802EC328 */ virtual void setGX();
    /* 802EC570 */ virtual void loadTexture(_GXTexMapID, u32);
    /* 802F27A0 */ virtual void getType();
    /* 802F27AC */ virtual s32 getMaxStage();
    /* 802F27B4 */ virtual void setTexNo(u32, u16);
    /* 802F27C4 */ virtual void getTexNo(u32) const;
    /* 802F27D4 */ virtual void setFontNo(u16);
    /* 802F27DC */ virtual void getFontNo() const;
    /* 802F27E4 */ virtual void setTevOrder(u32, J2DTevOrder);
    /* 802F2808 */ virtual void getTevOrder(u32);
    /* 802F281C */ virtual void setTevColor(u32, J2DGXColorS10);
    /* 802F2848 */ virtual void getTevColor(u32);
    /* 802F285C */ virtual void setTevKColor(u32, JUtility::TColor);
    /* 802F2888 */ virtual void getTevKColor(u32);
    /* 802F289C */ virtual void setTevKColorSel(u32, u8);
    /* 802F28A8 */ virtual void getTevKColorSel(u32);
    /* 802F28B4 */ virtual void setTevKAlphaSel(u32, u8);
    /* 802F28C0 */ virtual void getTevKAlphaSel(u32);
    /* 802F28CC */ virtual void setTevStageNum(u8);
    /* 802F28D0 */ virtual bool getTevStageNum() const;
    /* 802F28D8 */ virtual void setTevStage(u32, J2DTevStage);
    /* 802F2914 */ virtual void getTevStage(u32);
    /* 802F2928 */ virtual void setTevSwapModeInfo(u32, J2DTevSwapModeInfo);
    /* 802F2960 */ virtual void setTevSwapModeTable(u32, J2DTevSwapModeTable);
    /* 802F2970 */ virtual void getTevSwapModeTable(u32);
    /* 802F2980 */ virtual void setIndTevStage(u32, J2DIndTevStage);
    /* 802F2994 */ virtual void getIndTevStage(u32);
    /* 802F29A8 */ virtual void insertTexture(u32, ResTIMG const*);
    /* 802EBCC0 */ virtual void insertTexture(u32, ResTIMG const*, JUTPalette*);
    /* 802EBDE4 */ virtual void insertTexture(u32, JUTTexture*);
    /* 802EBE8C */ virtual void setTexture(u32, ResTIMG const*);
    /* 802EC01C */ virtual void setTexture(u32, JUTTexture*);
    /* 802EC0A8 */ virtual void removeTexture(u32);
    /* 802EC124 */ virtual void setFont(ResFONT*);
    /* 802EC1D8 */ virtual void setFont(JUTFont*);
    /* 802EC258 */ virtual void setPalette(u32, ResTLUT const*);
    /* 802EBC0C */ virtual void prepareTexture(u8);
    /* 802F29D8 */ virtual void getTexture(u32);
    /* 802F29F8 */ virtual void getPalette(u32);
    /* 802F2A18 */ virtual void getFont();
    /* 802EC318 */ virtual void shiftDeleteFlag(u8, bool);
    /* 802F2A20 */ virtual void setUndeleteFlag(u8);
    /* 802F2A30 */ virtual void setFontUndeleteFlag();
    /* 802EB998 */ virtual ~J2DTevBlock1();

private:
    /* 0x004 */ u16 mTexNo[1];
    /* 0x006 */ u16 mFontNo;
    /* 0x008 */ J2DTevOrder mTevOrder[1];
    /* 0x00C */ J2DGXColorS10 mTevColor[4];
    /* 0x02C */ J2DTevStage mTevStage[1];
    /* 0x034 */ JUtility::TColor mTevKColor[4];
    /* 0x044 */ u8 mTevKColorSel[1];
    /* 0x045 */ u8 mTevKAlphaSel[1];
    /* 0x046 */ J2DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x04C */ J2DIndTevStage mIndTevStage[1];
    /* 0x050 */ JUTTexture* mTexture[1];
    /* 0x054 */ JUTPalette* mPalette[1];
    /* 0x058 */ JUTResFont* mFont;
    /* 0x05C */ u8 mUndeleteFlag;
};  // Size: 0x60

class J2DTevBlock2 : public J2DTevBlock {
public:
    /* 802EC5B8 */ J2DTevBlock2();

    /* 802EC7A0 */ virtual void initialize();
    /* 802ED584 */ virtual void setGX();
    /* 802ED874 */ virtual void loadTexture(_GXTexMapID, u32);
    /* 802F24FC */ virtual void getType();
    /* 802F2508 */ virtual s32 getMaxStage();
    /* 802F2510 */ virtual void setTexNo(u32, u16);
    /* 802F2520 */ virtual void getTexNo(u32) const;
    /* 802F2530 */ virtual void setFontNo(u16);
    /* 802F2538 */ virtual void getFontNo() const;
    /* 802F2540 */ virtual void setTevOrder(u32, J2DTevOrder);
    /* 802F2564 */ virtual void getTevOrder(u32);
    /* 802F2578 */ virtual void setTevColor(u32, J2DGXColorS10);
    /* 802F25A4 */ virtual void getTevColor(u32);
    /* 802F25B8 */ virtual void setTevKColor(u32, JUtility::TColor);
    /* 802F25E4 */ virtual void getTevKColor(u32);
    /* 802F25F8 */ virtual void setTevKColorSel(u32, u8);
    /* 802F2604 */ virtual void getTevKColorSel(u32);
    /* 802F2610 */ virtual void setTevKAlphaSel(u32, u8);
    /* 802F261C */ virtual void getTevKAlphaSel(u32);
    /* 802F2628 */ virtual void setTevStageNum(u8);
    /* 802F2630 */ virtual void getTevStageNum() const;
    /* 802F2638 */ virtual void setTevStage(u32, J2DTevStage);
    /* 802F2674 */ virtual void getTevStage(u32);
    /* 802F2688 */ virtual void setTevSwapModeInfo(u32, J2DTevSwapModeInfo);
    /* 802F26C0 */ virtual void setTevSwapModeTable(u32, J2DTevSwapModeTable);
    /* 802F26D0 */ virtual void getTevSwapModeTable(u32);
    /* 802F26E0 */ virtual void setIndTevStage(u32, J2DIndTevStage);
    /* 802F26F4 */ virtual void getIndTevStage(u32);
    /* 802F2708 */ virtual void insertTexture(u32, ResTIMG const*);
    /* 802ECAE8 */ virtual void insertTexture(u32, ResTIMG const*, JUTPalette*);
    /* 802ECDE8 */ virtual void insertTexture(u32, JUTTexture*);
    /* 802ECF48 */ virtual void setTexture(u32, ResTIMG const*);
    /* 802ED16C */ virtual void setTexture(u32, JUTTexture*);
    /* 802ED21C */ virtual void removeTexture(u32);
    /* 802ED2F0 */ virtual void setFont(ResFONT*);
    /* 802ED3A4 */ virtual void setFont(JUTFont*);
    /* 802ED424 */ virtual void setPalette(u32, ResTLUT const*);
    /* 802ECA18 */ virtual void prepareTexture(u8);
    /* 802F2738 */ virtual void getTexture(u32);
    /* 802F2758 */ virtual void getPalette(u32);
    /* 802F2778 */ virtual void getFont();
    /* 802ED4FC */ virtual void shiftDeleteFlag(u8, bool);
    /* 802F2780 */ virtual void setUndeleteFlag(u8);
    /* 802F2790 */ virtual void setFontUndeleteFlag();
    /* 802EC6C8 */ virtual ~J2DTevBlock2();

private:
    /* 0x004 */ u16 mTexNo[2];
    /* 0x008 */ u16 mFontNo;
    /* 0x00A */ J2DTevOrder mTevOrder[2];
    /* 0x012 */ J2DGXColorS10 mTevColor[4];
    /* 0x032 */ u8 mTevStageNum;
    /* 0x033 */ J2DTevStage mTevStage[2];
    /* 0x044 */ JUtility::TColor mTevKColor[4];
    /* 0x054 */ u8 mTevKColorSel[2];
    /* 0x056 */ u8 mTevKAlphaSel[2];
    /* 0x058 */ J2DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x05C */ J2DIndTevStage mIndTevStage[2];
    /* 0x064 */ JUTTexture* mTexture[2];
    /* 0x06C */ JUTPalette* mPalette[2];
    /* 0x064 */ JUTFont* mFont;
    /* 0x078 */ u8 mUndeleteFlag;
};  // Size: 0x7C

class J2DTevBlock4 : public J2DTevBlock {
public:
    /* 802ED8BC */ J2DTevBlock4();

    /* 802EDAC4 */ virtual void initialize();
    /* 802EEA2C */ virtual void setGX();
    /* 802EED1C */ virtual void loadTexture(_GXTexMapID, u32);
    /* 802F2258 */ virtual void getType();
    /* 802F2264 */ virtual s32 getMaxStage();
    /* 802F226C */ virtual void setTexNo(u32, u16);
    /* 802F227C */ virtual void getTexNo(u32) const;
    /* 802F228C */ virtual void setFontNo(u16);
    /* 802F2294 */ virtual void getFontNo() const;
    /* 802F229C */ virtual void setTevOrder(u32, J2DTevOrder);
    /* 802F22C0 */ virtual void getTevOrder(u32);
    /* 802F22D4 */ virtual void setTevColor(u32, J2DGXColorS10);
    /* 802F2300 */ virtual void getTevColor(u32);
    /* 802F2314 */ virtual void setTevKColor(u32, JUtility::TColor);
    /* 802F2340 */ virtual void getTevKColor(u32);
    /* 802F2354 */ virtual void setTevKColorSel(u32, u8);
    /* 802F2360 */ virtual void getTevKColorSel(u32);
    /* 802F236C */ virtual void setTevKAlphaSel(u32, u8);
    /* 802F2378 */ virtual void getTevKAlphaSel(u32);
    /* 802F2384 */ virtual void setTevStageNum(u8);
    /* 802F238C */ virtual void getTevStageNum() const;
    /* 802F2394 */ virtual void setTevStage(u32, J2DTevStage);
    /* 802F23D0 */ virtual void getTevStage(u32);
    /* 802F23E4 */ virtual void setTevSwapModeInfo(u32, J2DTevSwapModeInfo);
    /* 802F241C */ virtual void setTevSwapModeTable(u32, J2DTevSwapModeTable);
    /* 802F242C */ virtual void getTevSwapModeTable(u32);
    /* 802F243C */ virtual void setIndTevStage(u32, J2DIndTevStage);
    /* 802F2450 */ virtual void getIndTevStage(u32);
    /* 802F2464 */ virtual void insertTexture(u32, ResTIMG const*);
    /* 802EDE04 */ virtual void insertTexture(u32, ResTIMG const*, JUTPalette*);
    /* 802EE1D4 */ virtual void insertTexture(u32, JUTTexture*);
    /* 802EE364 */ virtual void setTexture(u32, ResTIMG const*);
    /* 802EE5F0 */ virtual void setTexture(u32, JUTTexture*);
    /* 802EE6A0 */ virtual void removeTexture(u32);
    /* 802EE798 */ virtual void setFont(ResFONT*);
    /* 802EE84C */ virtual void setFont(JUTFont*);
    /* 802EE8CC */ virtual void setPalette(u32, ResTLUT const*);
    /* 802EDD34 */ virtual void prepareTexture(u8);
    /* 802F2494 */ virtual void getTexture(u32);
    /* 802F24B4 */ virtual void getPalette(u32);
    /* 802F24D4 */ virtual void getFont();
    /* 802EE9A4 */ virtual void shiftDeleteFlag(u8, bool);
    /* 802F24DC */ virtual void setUndeleteFlag(u8);
    /* 802F24EC */ virtual void setFontUndeleteFlag();
    /* 802ED9E4 */ virtual ~J2DTevBlock4();

private:
    /* 0x004 */ u16 mTexNo[4];
    /* 0x00C */ u16 mFontNo;
    /* 0x00E */ J2DTevOrder mTevOrder[4];
    /* 0x01E */ J2DGXColorS10 mTevColor[4];
    /* 0x03E */ u8 mTevStageNum;
    /* 0x03F */ J2DTevStage mTevStage[4];
    /* 0x060 */ JUtility::TColor mTevKColor[4];
    /* 0x070 */ u8 mTevKColorSel[4];
    /* 0x074 */ u8 mTevKAlphaSel[4];
    /* 0x078 */ J2DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x07C */ J2DIndTevStage mIndTevStage[4];
    /* 0x08C */ JUTTexture* mTexture[4];
    /* 0x09C */ JUTPalette* mPalette[4];
    /* 0x0AC */ JUTFont* mFont;
    /* 0x0B0 */ u8 mUndeleteFlag;
};  // Size: 0xB4

class J2DTevBlock8 : public J2DTevBlock {
public:
    /* 802EED64 */ J2DTevBlock8();

    /* 802EEF6C */ virtual void initialize();
    /* 802EFEAC */ virtual void setGX();
    /* 802F019C */ virtual void loadTexture(_GXTexMapID, u32);
    /* 802F1FB8 */ virtual void getType();
    /* 802F1FC4 */ virtual s32 getMaxStage();
    /* 802F1FCC */ virtual void setTexNo(u32, u16);
    /* 802F1FDC */ virtual void getTexNo(u32) const;
    /* 802F1FEC */ virtual void setFontNo(u16);
    /* 802F1FF4 */ virtual void getFontNo() const;
    /* 802F1FFC */ virtual void setTevOrder(u32, J2DTevOrder);
    /* 802F2020 */ virtual void getTevOrder(u32);
    /* 802F2034 */ virtual void setTevColor(u32, J2DGXColorS10);
    /* 802F2060 */ virtual void getTevColor(u32);
    /* 802F2074 */ virtual void setTevKColor(u32, JUtility::TColor);
    /* 802F20A0 */ virtual void getTevKColor(u32);
    /* 802F20B4 */ virtual void setTevKColorSel(u32, u8);
    /* 802F20C0 */ virtual void getTevKColorSel(u32);
    /* 802F20CC */ virtual void setTevKAlphaSel(u32, u8);
    /* 802F20D8 */ virtual void getTevKAlphaSel(u32);
    /* 802F20E4 */ virtual void setTevStageNum(u8);
    /* 802F20EC */ virtual void getTevStageNum() const;
    /* 802F20F4 */ virtual void setTevStage(u32, J2DTevStage);
    /* 802F2130 */ virtual void getTevStage(u32);
    /* 802F2144 */ virtual void setTevSwapModeInfo(u32, J2DTevSwapModeInfo);
    /* 802F217C */ virtual void setTevSwapModeTable(u32, J2DTevSwapModeTable);
    /* 802F218C */ virtual void getTevSwapModeTable(u32);
    /* 802F219C */ virtual void setIndTevStage(u32, J2DIndTevStage);
    /* 802F21B0 */ virtual void getIndTevStage(u32);
    /* 802F21C4 */ virtual void insertTexture(u32, ResTIMG const*);
    /* 802EF2B0 */ virtual void insertTexture(u32, ResTIMG const*, JUTPalette*);
    /* 802EF67C */ virtual void insertTexture(u32, JUTTexture*);
    /* 802EF80C */ virtual void setTexture(u32, ResTIMG const*);
    /* 802EFA98 */ virtual void setTexture(u32, JUTTexture*);
    /* 802EFB48 */ virtual void removeTexture(u32);
    /* 802EFC40 */ virtual void setFont(ResFONT*);
    /* 802EFCEC */ virtual void setFont(JUTFont*);
    /* 802EFD68 */ virtual void setPalette(u32, ResTLUT const*);
    /* 802EF1E0 */ virtual void prepareTexture(u8);
    /* 802F21F4 */ virtual void getTexture(u32);
    /* 802F2214 */ virtual void getPalette(u32);
    /* 802F2234 */ virtual void getFont();
    /* 802EFE40 */ virtual void shiftDeleteFlag(u8, bool);
    /* 802F223C */ virtual void setUndeleteFlag(u8);
    /* 802F224C */ virtual void setFontUndeleteFlag();
    /* 802EEE8C */ virtual ~J2DTevBlock8();

private:
    /* 0x004 */ u16 mTexNo[8];
    /* 0x014 */ u16 mFontNo;
    /* 0x016 */ J2DTevOrder mTevOrder[8];
    /* 0x036 */ J2DGXColorS10 mTevColor[4];
    /* 0x056 */ u8 mTevStageNum;
    /* 0x057 */ J2DTevStage mTevStage[8];
    /* 0x098 */ JUtility::TColor mTevKColor[4];
    /* 0x0A8 */ u8 mTevKColorSel[8];
    /* 0x0B0 */ u8 mTevKAlphaSel[8];
    /* 0x0B8 */ J2DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x0BC */ J2DIndTevStage mIndTevStage[8];
    /* 0x0DC */ JUTTexture* mTexture[8];
    /* 0x0FC */ JUTPalette* mPalette[8];
    /* 0x11C */ JUTFont* mFont;
    /* 0x120 */ u8 mUndeleteFlag;
    /* 0x121 */ bool mFontUndeleteFlag;
};

class J2DTevBlock16 : public J2DTevBlock {
public:
    /* 802F01E4 */ J2DTevBlock16();

    /* 802F03EC */ virtual void initialize();
    /* 802F132C */ virtual void setGX();
    /* 802F161C */ virtual void loadTexture(_GXTexMapID, u32);
    /* 802F1D18 */ virtual void getType();
    /* 802F1D24 */ virtual s32 getMaxStage();
    /* 802F1D2C */ virtual void setTexNo(u32, u16);
    /* 802F1D3C */ virtual void getTexNo(u32) const;
    /* 802F1D4C */ virtual void setFontNo(u16);
    /* 802F1D54 */ virtual void getFontNo() const;
    /* 802F1D5C */ virtual void setTevOrder(u32, J2DTevOrder);
    /* 802F1D80 */ virtual void getTevOrder(u32);
    /* 802F1D94 */ virtual void setTevColor(u32, J2DGXColorS10);
    /* 802F1DC0 */ virtual void getTevColor(u32);
    /* 802F1DD4 */ virtual void setTevKColor(u32, JUtility::TColor);
    /* 802F1E00 */ virtual void getTevKColor(u32);
    /* 802F1E14 */ virtual void setTevKColorSel(u32, u8);
    /* 802F1E20 */ virtual void getTevKColorSel(u32);
    /* 802F1E2C */ virtual void setTevKAlphaSel(u32, u8);
    /* 802F1E38 */ virtual void getTevKAlphaSel(u32);
    /* 802F1E44 */ virtual void setTevStageNum(u8);
    /* 802F1E4C */ virtual void getTevStageNum() const;
    /* 802F1E54 */ virtual void setTevStage(u32, J2DTevStage);
    /* 802F1E90 */ virtual void getTevStage(u32);
    /* 802F1EA4 */ virtual void setTevSwapModeInfo(u32, J2DTevSwapModeInfo);
    /* 802F1EDC */ virtual void setTevSwapModeTable(u32, J2DTevSwapModeTable);
    /* 802F1EEC */ virtual void getTevSwapModeTable(u32);
    /* 802F1EFC */ virtual void setIndTevStage(u32, J2DIndTevStage);
    /* 802F1F10 */ virtual void getIndTevStage(u32);
    /* 802F1F24 */ virtual void insertTexture(u32, ResTIMG const*);
    /* 802F0730 */ virtual void insertTexture(u32, ResTIMG const*, JUTPalette*);
    /* 802F0AFC */ virtual void insertTexture(u32, JUTTexture*);
    /* 802F0C8C */ virtual void setTexture(u32, ResTIMG const*);
    /* 802F0F18 */ virtual void setTexture(u32, JUTTexture*);
    /* 802F0FC8 */ virtual void removeTexture(u32);
    /* 802F10C0 */ virtual void setFont(ResFONT*);
    /* 802F116C */ virtual void setFont(JUTFont*);
    /* 802F11E8 */ virtual void setPalette(u32, ResTLUT const*);
    /* 802F0660 */ virtual void prepareTexture(u8);
    /* 802F1F54 */ virtual void getTexture(u32);
    /* 802F1F74 */ virtual void getPalette(u32);
    /* 802F1F94 */ virtual void getFont();
    /* 802F12C0 */ virtual void shiftDeleteFlag(u8, bool);
    /* 802F1F9C */ virtual void setUndeleteFlag(u8);
    /* 802F1FAC */ virtual void setFontUndeleteFlag();
    /* 802F030C */ virtual ~J2DTevBlock16();

private:
    /* 0x004 */ u16 mTexNo[8];
    /* 0x014 */ u16 mFontNo;
    /* 0x016 */ J2DTevOrder mTevOrder[16];
    /* 0x056 */ J2DGXColorS10 mTevColor[4];
    /* 0x076 */ u8 mTevStageNum;
    /* 0x077 */ J2DTevStage mTevStage[16];
    /* 0x0F8 */ JUtility::TColor mTevKColor[4];
    /* 0x108 */ u8 mTevKColorSel[16];
    /* 0x118 */ u8 mTevKAlphaSel[16];
    /* 0x128 */ J2DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x12C */ J2DIndTevStage mIndTevStage[16];
    /* 0x16C */ JUTTexture* mTexture[16];
    /* 0x18C */ JUTPalette* mPalette[16];
    /* 0x1AC */ JUTFont* mFont;
    /* 0x1B0 */ u8 mUndeleteFlag;
    /* 0x1B1 */ bool mFontUndeleteFlag;
};  // Size: 0x1B4

struct J2DAlphaComp {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 mRef0;
    /* 0x3 */ u8 mRef1;
};

struct J2DBlendInfo {
    /* 0x0 */ u8 mType;
    /* 0x1 */ u8 mSrcFactor;
    /* 0x2 */ u8 mDstFactor;
    /* 0x3 */ u8 mOp;
};

struct J2DBlend {
    /* 0x0 */ J2DBlendInfo mBlendInfo;
};

class J2DPEBlock {
public:
    /* 802F17FC */ void initialize();
    /* 802F1840 */ void setGX();

private:
    /* 0x0 */ J2DAlphaComp mAlphaComp;
    /* 0x4 */ J2DBlend mBlend;
    /* 0x8 */ u8 mDither;
};

class J2DIndBlock {
public:
    /* 802EB24C */ virtual void initialize();
    /* 802EB1CC */ virtual void setGX();
    virtual void getType() = 0;
    /* 802EB250 */ virtual void setIndTexStageNum(u8);
    /* 802EA1A4 */ virtual bool getIndTexStageNum() const;
    /* 802EB254 */ virtual void setIndTexOrder(u32, J2DIndTexOrder);
    /* 802EA19C */ virtual bool getIndTexOrder(u32);
    /* 802EB258 */ virtual void setIndTexMtx(u32, J2DIndTexMtx);
    /* 802EA194 */ virtual bool getIndTexMtx(u32);
    /* 802EB25C */ virtual void setIndTexCoordScale(u32, J2DIndTexCoordScale);
    /* 802EA18C */ virtual bool getIndTexCoordScale(u32);
    /* 802EB13C */ virtual ~J2DIndBlock();
};

class J2DIndBlockFull : public J2DIndBlock {
public:
    /* 802F1664 */ virtual void initialize();
    /* 802F1730 */ virtual void setGX();
    /* 802F1B94 */ virtual void getType();
    /* 802F1BA0 */ virtual void setIndTexStageNum(u8);
    /* 802F1BA8 */ virtual void getIndTexStageNum() const;
    /* 802F1BB0 */ virtual void setIndTexOrder(u32, J2DIndTexOrder);
    /* 802F1BCC */ virtual void getIndTexOrder(u32);
    /* 802F1BE0 */ virtual void setIndTexMtx(u32, J2DIndTexMtx);
    /* 802F1C38 */ virtual void getIndTexMtx(u32);
    /* 802F1C4C */ virtual void setIndTexCoordScale(u32, J2DIndTexCoordScale);
    /* 802F1C68 */ virtual void getIndTexCoordScale(u32);
    /* 802F1C7C */ virtual ~J2DIndBlockFull();

private:
    /* 0x04 */ u8 mIndTexStageNum;
    /* 0x05 */ J2DIndTexOrder mIndTexOrder[4];
    /* 0x10 */ J2DIndTexMtx mIndTexMtx[3];
    /* 0x64 */ J2DIndTexCoordScale mTexCoordScale[4];
};

class J2DIndBlockNull : public J2DIndBlock {
    /* 802EB1E0 */ virtual void setGX();
    /* 802EB1E4 */ virtual void getType();
    /* 802EB1F0 */ virtual ~J2DIndBlockNull();
};

class J2DTexGenBlock {
private:
    /* 0x00 */ u32 mTexGenNum;
    /* 0x04 */ J2DTexCoord mTexGenCoord[8];
    /* 0x24 */ J2DTexMtx* mTexMtx[8];

public:
    /* 802EB510 */ void initialize();
    /* 802EB570 */ void setGX();
    /* 802EB6A4 */ void setTexMtx(u32, J2DTexMtx&);
    /* 802EB7E0 */ void getTexMtx(u32, J2DTexMtx&);

    /* 802EB620 */ virtual ~J2DTexGenBlock();
};  // Size: 0x48

struct J2DColorChanInfo {
    /* 0x0 */ u16 field_0x0;
};

class J2DColorChan {
public:
    /* 802EB280 */ J2DColorChan();

private:
    /* 0x0 */ J2DColorChanInfo mColorChanInfo;
};

class J2DColorBlock {
private:
    /* 0x00 */ JUtility::TColor mMatColor[2];
    /* 0x08 */ u8 mColorChanNum;
    /* 0x0A */ J2DColorChan mColorChan[4];
    /* 0x12 */ u8 mCullMode;

public:
    /* 802EB394 */ void initialize();
    /* 802EB424 */ void setGX();

    /* 802EB0F4 */ virtual ~J2DColorBlock();
};

#endif /* J2DMATBLOCK_H */
