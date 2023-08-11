#ifndef J3DMATBLOCK_H
#define J3DMATBLOCK_H

#include "JSystem/J3DGraphBase/J3DStruct.h"
#include "JSystem/J3DGraphBase/J3DTevs.h"
#include "JSystem/J3DGraphBase/J3DTexture.h"
#include "dolphin/gx/GXStruct.h"
#include "dolphin/mtx/mtx.h"
#include "dolphin/types.h"
#include "m_Do/m_Do_lib.h"

struct J3DGXColorS10 : public GXColorS10 {
    /* 8000E460 */ J3DGXColorS10() {}
};

struct J3DGXColor : public GXColor {
    /* 8000E538 */ J3DGXColor() {}
};

struct J3DNBTScaleInfo {
    /* 8032587C */ void operator=(J3DNBTScaleInfo const&);

    /* 0x0 */ u8 mbHasScale;
    /* 0x4 */ Vec mScale;
};  // Size: 0x10

struct J3DNBTScale : public J3DNBTScaleInfo {
    J3DNBTScale() {}
    J3DNBTScale(J3DNBTScaleInfo const& info) {
        mbHasScale = info.mbHasScale;
        mScale = info.mScale;
    }
    Vec* getScale() { return &mScale; }
};

extern const J3DNBTScaleInfo j3dDefaultNBTScaleInfo;

class J3DTexGenBlock {
public:
    /* 80317354 */ virtual void reset(J3DTexGenBlock*);
    virtual void calc(f32 const (*)[4]) = 0;
    virtual void calcWithoutViewMtx(f32 const (*)[4]) = 0;
    virtual void calcPostTexMtx(f32 const (*)[4]) = 0;
    virtual void calcPostTexMtxWithoutViewMtx(f32 const (*)[4]) = 0;
    virtual void load() = 0;
    virtual void patch() = 0;
    virtual void diff(u32) = 0;
    virtual void diffTexMtx() = 0;
    virtual void diffTexGen() = 0;
    /* 803172FC */ virtual s32 countDLSize();
    virtual u32 getType() = 0;
    /* 8031741C */ virtual void setTexGenNum(u32 const*);
    /* 8000E0D0 */ virtual void setTexGenNum(u32);
    /* 8000DFE8 */ virtual u32 getTexGenNum() const;
    /* 8000E0CC */ virtual void setTexCoord(u32, J3DTexCoord const*);
    /* 8000DFE0 */ virtual J3DTexCoord* getTexCoord(u32);
    /* 8003AB2C */ virtual void setTexMtx(u32, J3DTexMtx*);
    /* 8000DFD8 */ virtual J3DTexMtx* getTexMtx(u32);
    /* 80317424 */ virtual void setNBTScale(J3DNBTScale const*);
    /* 80317420 */ virtual void setNBTScale(J3DNBTScale);
    /* 80317334 */ virtual J3DNBTScale* getNBTScale();
    /* 80317428 */ virtual bool getTexMtxOffset() const;
    /* 80317430 */ virtual void setTexMtxOffset(u32);
    /* 803171DC */ virtual ~J3DTexGenBlock();
};

class J3DTexGenBlockPatched : public J3DTexGenBlock {
public:
    J3DTexGenBlockPatched() {
        initialize();
    }
    /* 80317644 */ void initialize();

    /* 80320084 */ virtual void reset(J3DTexGenBlock*);
    /* 803213C0 */ virtual void calc(f32 const (*)[4]);
    /* 80321584 */ virtual void calcWithoutViewMtx(f32 const (*)[4]);
    /* 803216D8 */ virtual void calcPostTexMtx(f32 const (*)[4]);
    /* 8032181C */ virtual void calcPostTexMtxWithoutViewMtx(f32 const (*)[4]);
    /* 80322E70 */ virtual void load();
    /* 8031AA88 */ virtual void patch();
    /* 8031AC68 */ virtual void diff(u32);
    /* 8031ACD0 */ virtual void diffTexMtx();
    /* 8031AD30 */ virtual void diffTexGen();
    /* 80317B9C */ virtual s32 countDLSize();
    /* 80322E74 */ virtual u32 getType();
    /* 80322D3C */ virtual void setTexGenNum(u32 const*);
    /* 80322D34 */ virtual void setTexGenNum(u32);
    /* 80322D48 */ virtual u32 getTexGenNum() const;
    /* 80322D50 */ virtual void setTexCoord(u32, J3DTexCoord const*);
    /* 80322D64 */ virtual J3DTexCoord* getTexCoord(u32);
    /* 80322D78 */ virtual void setTexMtx(u32, J3DTexMtx*);
    /* 80322D88 */ virtual J3DTexMtx* getTexMtx(u32);
    /* 80322D98 */ virtual bool getTexMtxOffset() const;
    /* 80322DA0 */ virtual void setTexMtxOffset(u32);
    /* 80317180 */ virtual ~J3DTexGenBlockPatched();

private:
    /* 0x04 */ u32 mTexGenNum;
    /* 0x08 */ J3DTexCoord mTexCoord[8];
    /* 0x38 */ J3DTexMtx* mTexMtx[8];
    /* 0x58 */ u32 mTexMtxOffset;
};  // Size: 0x5C

class J3DTexGenBlockBasic : public J3DTexGenBlockPatched {
public:
    J3DTexGenBlockBasic() : mNBTScale(j3dDefaultNBTScaleInfo) {
        initialize();
    }
    /* 803176A4 */ void initialize();

    /* 803202DC */ virtual void reset(J3DTexGenBlock*);
    /* 8031A9E8 */ virtual void load();
    /* 8031ABC0 */ virtual void patch();
    /* 80317BAC */ virtual s32 countDLSize();
    /* 80322C6C */ virtual u32 getType();
    /* 80322C9C */ virtual void setNBTScale(J3DNBTScale const*);
    /* 80322C78 */ virtual void setNBTScale(J3DNBTScale);
    /* 80322CC0 */ virtual J3DNBTScale* getNBTScale();
    /* 80322CC8 */ virtual ~J3DTexGenBlockBasic();

private:
    /* 0x5C */ J3DNBTScale mNBTScale;
};  // Size: 0x6C

class J3DTexGenBlock4 : public J3DTexGenBlockPatched {
public:
    J3DTexGenBlock4() : mNBTScale(j3dDefaultNBTScaleInfo) {
        initialize();
    }
    /* 80317674 */ void initialize();

    /* 803201A0 */ virtual void reset(J3DTexGenBlock*);
    /* 8031A948 */ virtual void load();
    /* 8031AB18 */ virtual void patch();
    /* 80317BA4 */ virtual s32 countDLSize();
    /* 80322DA8 */ virtual u32 getType();
    /* 80322DD8 */ virtual void setNBTScale(J3DNBTScale const*);
    /* 80322DB4 */ virtual void setNBTScale(J3DNBTScale);
    /* 80322DFC */ virtual J3DNBTScale* getNBTScale();
    /* 80322E04 */ virtual ~J3DTexGenBlock4();

private:
    /* 0x5C */ J3DNBTScale mNBTScale;
};  // Size: 0x6C

class J3DTevBlock {
public:
    /* 80317350 */ virtual void reset(J3DTevBlock*);
    /* 80317330 */ virtual void load();
    /* 8031CD44 */ virtual void diff(u32);
    /* 80321948 */ virtual void diffTexNo();
    /* 80321938 */ virtual void diffTevReg();
    /* 80321944 */ virtual void diffTexCoordScale();
    /* 80321940 */ virtual void diffTevStage();
    /* 8032193C */ virtual void diffTevStageIndirect();
    /* 8000DBD4 */ virtual void patch();
    /* 8032353C */ virtual void patchTexNo();
    /* 80323540 */ virtual void patchTevReg();
    /* 8000DBC8 */ virtual void patchTexNoAndTexCoordScale();
    virtual void ptrToIndex() = 0;
    virtual void indexToPtr() = 0;
    virtual u32 getType() = 0;
    /* 8031730C */ virtual s32 countDLSize();
    /* 80323544 */ virtual void setTexNo(u32, u16 const*);
    /* 8000E0AC */ virtual void setTexNo(u32, u16);
    /* 8000DF94 */ virtual u16 getTexNo(u32) const;
    /* 80323548 */ virtual void setTevOrder(u32, J3DTevOrder const*);
    /* 8000E0BC */ virtual void setTevOrder(u32, J3DTevOrder);
    /* 8000DFB8 */ virtual J3DTevOrder* getTevOrder(u32);
    /* 80110E80 */ virtual void setTevColor(u32, J3DGXColorS10 const*);
    /* 8000E0C4 */ virtual void setTevColor(u32, J3DGXColorS10);
    /* 8000DFC8 */ virtual _GXColorS10* getTevColor(u32);
    /* 800732AC */ virtual void setTevKColor(u32, J3DGXColor const*);
    /* 8000E0C0 */ virtual void setTevKColor(u32, J3DGXColor);
    /* 8000DFC0 */ virtual _GXColor* getTevKColor(u32);
    /* 80322950 */ virtual void setTevKColorSel(u32, u8 const*);
    /* 8000E0B8 */ virtual void setTevKColorSel(u32, u8);
    /* 8000DFB0 */ virtual bool getTevKColorSel(u32);
    /* 80322954 */ virtual void setTevKAlphaSel(u32, u8 const*);
    /* 8000E0B4 */ virtual void setTevKAlphaSel(u32, u8);
    /* 8000DFA8 */ virtual bool getTevKAlphaSel(u32);
    /* 8032354C */ virtual void setTevStageNum(u8 const*);
    /* 8000E0C8 */ virtual void setTevStageNum(u8);
    /* 8000DFD0 */ virtual u8 getTevStageNum() const;
    /* 80323550 */ virtual void setTevStage(u32, J3DTevStage const*);
    /* 8000E0A8 */ virtual void setTevStage(u32, J3DTevStage);
    /* 8000DF8C */ virtual bool getTevStage(u32);
    /* 8032295C */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo const*);
    /* 80322958 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
    /* 80322960 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable const*);
    /* 8000E0B0 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
    /* 8000DFA0 */ virtual bool getTevSwapModeTable(u32);
    /* 80323554 */ virtual void setIndTevStage(u32, J3DIndTevStage const*);
    /* 8000E0A4 */ virtual void setIndTevStage(u32, J3DIndTevStage);
    /* 8000DF84 */ virtual bool getIndTevStage(u32);
    /* 80323558 */ virtual bool getTexNoOffset() const;
    /* 80322964 */ virtual bool getTevRegOffset() const;
    /* 80321FE0 */ virtual void setTexNoOffset(u32);
    /* 8032296C */ virtual void setTevRegOffset(u32);
    /* 80317224 */ virtual ~J3DTevBlock();

private:
    /* 8031E098 */ void indexToPtr_private(u32);

    /* 0x4 */ u32 mTexNoOffset;
};

class J3DTevBlockPatched : public J3DTevBlock {
public:
    J3DTevBlockPatched() {
        initialize();
    }
    /* 803176E0 */ void initialize();

    /* 80320418 */ virtual void reset(J3DTevBlock*);
    /* 80322970 */ virtual void load();
    /* 8031CE00 */ virtual void diffTexNo();
    /* 8031D028 */ virtual void diffTevReg();
    /* 8031D0C4 */ virtual void diffTexCoordScale();
    /* 8031CE64 */ virtual void diffTevStage();
    /* 8031CF78 */ virtual void diffTevStageIndirect();
    /* 8031C228 */ virtual void patch();
    /* 8031BF4C */ virtual void patchTexNo();
    /* 8031BFE0 */ virtual void patchTevReg();
    /* 8031C0AC */ virtual void patchTexNoAndTexCoordScale();
    /* 8031DFB4 */ virtual void ptrToIndex();
    /* 80322974 */ virtual void indexToPtr();
    /* 80322998 */ virtual u32 getType();
    /* 80317BB4 */ virtual s32 countDLSize();
    /* 803229D0 */ virtual void setTexNo(u32, u16 const*);
    /* 803229C0 */ virtual void setTexNo(u32, u16);
    /* 803229E4 */ virtual u16 getTexNo(u32) const;
    /* 80322A08 */ virtual void setTevOrder(u32, J3DTevOrder const*);
    /* 803229F4 */ virtual void setTevOrder(u32, J3DTevOrder);
    /* 80322A1C */ virtual J3DTevOrder* getTevOrder(u32);
    /* 80322B24 */ virtual void setTevColor(u32, J3DGXColorS10 const*);
    /* 80322AF8 */ virtual void setTevColor(u32, J3DGXColorS10);
    /* 80322B50 */ virtual GXColorS10* getTevColor(u32);
    /* 80322B90 */ virtual void setTevKColor(u32, J3DGXColor const*);
    /* 80322B64 */ virtual void setTevKColor(u32, J3DGXColor);
    /* 80322BBC */ virtual GXColor* getTevKColor(u32);
    /* 80322BDC */ virtual void setTevKColorSel(u32, u8 const*);
    /* 80322BD0 */ virtual void setTevKColorSel(u32, u8);
    /* 80322BEC */ virtual bool getTevKColorSel(u32);
    /* 803229AC */ virtual void setTevStageNum(u8 const*);
    /* 803229A4 */ virtual void setTevStageNum(u8);
    /* 803229B8 */ virtual u8 getTevStageNum() const;
    /* 80322A6C */ virtual void setTevStage(u32, J3DTevStage const*);
    /* 80322A30 */ virtual void setTevStage(u32, J3DTevStage);
    /* 80322AA8 */ virtual bool getTevStage(u32);
    /* 80322AD0 */ virtual void setIndTevStage(u32, J3DIndTevStage const*);
    /* 80322ABC */ virtual void setIndTevStage(u32, J3DIndTevStage);
    /* 80322AE4 */ virtual bool getIndTevStage(u32);
    /* 80322BF8 */ virtual bool getTexNoOffset() const;
    /* 80322C00 */ virtual bool getTevRegOffset() const;
    /* 80322C08 */ virtual void setTevRegOffset(u32);
    /* 80322C10 */ virtual ~J3DTevBlockPatched();

private:
    /* 0x08 */ u16 mTexNo[8];
    /* 0x18 */ J3DTevOrder mTevOrder[8];
    /* 0x38 */ J3DTevStage mTevStage[8];
    /* 0x78 */ J3DIndTevStage mIndTevStage[8];
    /* 0x98 */ J3DGXColorS10 mTevColor[4];
    /* 0xB8 */ J3DGXColor mTevKColor[4];
    /* 0xC8 */ u8 mTevKColorSel[8];
    /* 0xD0 */ u8 mTevStageNum;
    /* 0xD4 */ u32 mTevRegOffset;
};  // Size: 0xD8

class J3DTevBlockNull : public J3DTevBlock {
    /* 803176D4 */ void initialize();
};

class J3DTevBlock4 : public J3DTevBlock {
public:
    J3DTevBlock4() {
        initialize();
    }
    /* 803178EC */ void initialize();

    /* 8032098C */ virtual void reset(J3DTevBlock*);
    /* 8031B4C0 */ virtual void load();
    /* 8031D758 */ virtual void diffTexNo();
    /* 8031D7BC */ virtual void diffTevReg();
    /* 8031DA1C */ virtual void diffTexCoordScale();
    /* 8031D858 */ virtual void diffTevStage();
    /* 8031D96C */ virtual void diffTevStageIndirect();
    /* 8031C9D0 */ virtual void patch();
    /* 8031C6F4 */ virtual void patchTexNo();
    /* 8031C788 */ virtual void patchTevReg();
    /* 8031C854 */ virtual void patchTexNoAndTexCoordScale();
    /* 80321FE8 */ virtual void ptrToIndex();
    /* 80321FEC */ virtual void indexToPtr();
    /* 80322010 */ virtual u32 getType();
    /* 80317BCC */ virtual s32 countDLSize();
    /* 8032202C */ virtual void setTexNo(u32, u16 const*);
    /* 8032201C */ virtual void setTexNo(u32, u16);
    /* 80322040 */ virtual u16 getTexNo(u32) const;
    /* 80322064 */ virtual void setTevOrder(u32, J3DTevOrder const*);
    /* 80322050 */ virtual void setTevOrder(u32, J3DTevOrder);
    /* 80322078 */ virtual J3DTevOrder* getTevOrder(u32);
    /* 803220B8 */ virtual void setTevColor(u32, J3DGXColorS10 const*);
    /* 8032208C */ virtual void setTevColor(u32, J3DGXColorS10);
    /* 803220E4 */ virtual GXColorS10* getTevColor(u32);
    /* 80322124 */ virtual void setTevKColor(u32, J3DGXColor const*);
    /* 803220F8 */ virtual void setTevKColor(u32, J3DGXColor);
    /* 80322150 */ virtual GXColor* getTevKColor(u32);
    /* 80322170 */ virtual void setTevKColorSel(u32, u8 const*);
    /* 80322164 */ virtual void setTevKColorSel(u32, u8);
    /* 80322180 */ virtual bool getTevKColorSel(u32);
    /* 80322198 */ virtual void setTevKAlphaSel(u32, u8 const*);
    /* 8032218C */ virtual void setTevKAlphaSel(u32, u8);
    /* 803221A8 */ virtual bool getTevKAlphaSel(u32);
    /* 803221BC */ virtual void setTevStageNum(u8 const*);
    /* 803221B4 */ virtual void setTevStageNum(u8);
    /* 803221C8 */ virtual u8 getTevStageNum() const;
    /* 8032220C */ virtual void setTevStage(u32, J3DTevStage const*);
    /* 803221D0 */ virtual void setTevStage(u32, J3DTevStage);
    /* 80322248 */ virtual bool getTevStage(u32);
    /* 80322294 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo const*);
    /* 8032225C */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
    /* 803222DC */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable const*);
    /* 803222CC */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
    /* 803222EC */ virtual bool getTevSwapModeTable(u32);
    /* 80322310 */ virtual void setIndTevStage(u32, J3DIndTevStage const*);
    /* 803222FC */ virtual void setIndTevStage(u32, J3DIndTevStage);
    /* 80322324 */ virtual bool getIndTevStage(u32);
    /* 80322338 */ virtual bool getTexNoOffset() const;
    /* 80322340 */ virtual bool getTevRegOffset() const;
    /* 80322348 */ virtual void setTevRegOffset(u32);
    /* 80322350 */ virtual ~J3DTevBlock4();

private:
    /* 0x08 */ u16 mTexNo[4];
    /* 0x10 */ J3DTevOrder mTevOrder[4];
    /* 0x20 */ u8 mTevStageNum;
    /* 0x21 */ J3DTevStage mTevStage[4];
    /* 0x42 */ J3DGXColorS10 mTevColor[4];
    /* 0x62 */ J3DGXColor mTevKColor[4];
    /* 0x72 */ u8 mTevKColorSel[4];
    /* 0x76 */ u8 mTevKAlphaSel[4];
    /* 0x7A */ J3DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x80 */ J3DIndTevStage mIndTevStage[4];
    /* 0x90 */ u32 mTevRegOffset;
};  // Size: 0x94

class J3DTevBlock2 : public J3DTevBlock {
public:
    J3DTevBlock2() {
        initialize();
    }
    /* 80317810 */ void initialize();

    /* 803206AC */ virtual void reset(J3DTevBlock*);
    /* 8031AFA4 */ virtual void load();
    /* 8031D3D0 */ virtual void diffTexNo();
    /* 8031D434 */ virtual void diffTevReg();
    /* 8031D694 */ virtual void diffTexCoordScale();
    /* 8031D4D0 */ virtual void diffTevStage();
    /* 8031D5E4 */ virtual void diffTevStageIndirect();
    /* 8031C6A8 */ virtual void patch();
    /* 8031C3F8 */ virtual void patchTexNo();
    /* 8031C48C */ virtual void patchTevReg();
    /* 8031C558 */ virtual void patchTexNoAndTexCoordScale();
    /* 803223AC */ virtual void ptrToIndex();
    /* 803223B0 */ virtual void indexToPtr();
    /* 803223D4 */ virtual u32 getType();
    /* 80317BC4 */ virtual s32 countDLSize();
    /* 803223F0 */ virtual void setTexNo(u32, u16 const*);
    /* 803223E0 */ virtual void setTexNo(u32, u16);
    /* 80322404 */ virtual u16 getTexNo(u32) const;
    /* 80322428 */ virtual void setTevOrder(u32, J3DTevOrder const*);
    /* 80322414 */ virtual void setTevOrder(u32, J3DTevOrder);
    /* 8032243C */ virtual J3DTevOrder* getTevOrder(u32);
    /* 8032247C */ virtual void setTevColor(u32, J3DGXColorS10 const*);
    /* 80322450 */ virtual void setTevColor(u32, J3DGXColorS10);
    /* 803224A8 */ virtual GXColorS10* getTevColor(u32);
    /* 803224E8 */ virtual void setTevKColor(u32, J3DGXColor const*);
    /* 803224BC */ virtual void setTevKColor(u32, J3DGXColor);
    /* 80322514 */ virtual GXColor* getTevKColor(u32);
    /* 80322534 */ virtual void setTevKColorSel(u32, u8 const*);
    /* 80322528 */ virtual void setTevKColorSel(u32, u8);
    /* 80322544 */ virtual bool getTevKColorSel(u32);
    /* 8032255C */ virtual void setTevKAlphaSel(u32, u8 const*);
    /* 80322550 */ virtual void setTevKAlphaSel(u32, u8);
    /* 8032256C */ virtual bool getTevKAlphaSel(u32);
    /* 80322580 */ virtual void setTevStageNum(u8 const*);
    /* 80322578 */ virtual void setTevStageNum(u8);
    /* 8032258C */ virtual u8 getTevStageNum() const;
    /* 803225D0 */ virtual void setTevStage(u32, J3DTevStage const*);
    /* 80322594 */ virtual void setTevStage(u32, J3DTevStage);
    /* 8032260C */ virtual bool getTevStage(u32);
    /* 80322658 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo const*);
    /* 80322620 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
    /* 803226A0 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable const*);
    /* 80322690 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
    /* 803226B0 */ virtual bool getTevSwapModeTable(u32);
    /* 803226D4 */ virtual void setIndTevStage(u32, J3DIndTevStage const*);
    /* 803226C0 */ virtual void setIndTevStage(u32, J3DIndTevStage);
    /* 803226E8 */ virtual bool getIndTevStage(u32);
    /* 803226FC */ virtual bool getTexNoOffset() const;
    /* 80322704 */ virtual bool getTevRegOffset() const;
    /* 8032270C */ virtual void setTevRegOffset(u32);
    /* 80322714 */ virtual ~J3DTevBlock2();

private:
    /* 0x08 */ u16 mTexNo[2];
    /* 0x0C */ J3DTevOrder mTevOrder[2];
    /* 0x14 */ J3DGXColorS10 mTevColor[4];
    /* 0x34 */ u8 mTevStageNum;
    /* 0x35 */ J3DTevStage mTevStage[2];
    /* 0x45 */ J3DGXColor mTevKColor[4];
    /* 0x55 */ u8 mTevKColorSel[2];
    /* 0x57 */ u8 mTevKAlphaSel[2];
    /* 0x59 */ J3DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x60 */ J3DIndTevStage mIndTevStage[2];
    /* 0x68 */ u32 mTevRegOffset;
};  // Size: 0x6C

class J3DTevBlock16 : public J3DTevBlock {
public:
    J3DTevBlock16() {
        initialize();
    }
    /* 80317A00 */ void initialize();

    /* 80320E24 */ virtual void reset(J3DTevBlock*);
    /* 8031BA04 */ virtual void load();
    /* 8031DB14 */ virtual void diffTexNo();
    /* 8031DB78 */ virtual void diffTevReg();
    /* 8031DDD8 */ virtual void diffTexCoordScale();
    /* 8031DC14 */ virtual void diffTevStage();
    /* 8031DD28 */ virtual void diffTevStageIndirect();
    /* 8031CCF8 */ virtual void patch();
    /* 8031CA1C */ virtual void patchTexNo();
    /* 8031CAB0 */ virtual void patchTevReg();
    /* 8031CB7C */ virtual void patchTexNoAndTexCoordScale();
    /* 8031DED0 */ virtual void ptrToIndex();
    /* 80321C20 */ virtual void indexToPtr();
    /* 80321C44 */ virtual u32 getType();
    /* 80317BD4 */ virtual s32 countDLSize();
    /* 80321C60 */ virtual void setTexNo(u32, u16 const*);
    /* 80321C50 */ virtual void setTexNo(u32, u16);
    /* 80321C74 */ virtual u16 getTexNo(u32) const;
    /* 80321C98 */ virtual void setTevOrder(u32, J3DTevOrder const*);
    /* 80321C84 */ virtual void setTevOrder(u32, J3DTevOrder);
    /* 80321CAC */ virtual J3DTevOrder* getTevOrder(u32);
    /* 80321CEC */ virtual void setTevColor(u32, J3DGXColorS10 const*);
    /* 80321CC0 */ virtual void setTevColor(u32, J3DGXColorS10);
    /* 80321D18 */ virtual GXColorS10* getTevColor(u32);
    /* 80321D58 */ virtual void setTevKColor(u32, J3DGXColor const*);
    /* 80321D2C */ virtual void setTevKColor(u32, J3DGXColor);
    /* 80321D84 */ virtual GXColor* getTevKColor(u32);
    /* 80321DA4 */ virtual void setTevKColorSel(u32, u8 const*);
    /* 80321D98 */ virtual void setTevKColorSel(u32, u8);
    /* 80321DB4 */ virtual bool getTevKColorSel(u32);
    /* 80321DCC */ virtual void setTevKAlphaSel(u32, u8 const*);
    /* 80321DC0 */ virtual void setTevKAlphaSel(u32, u8);
    /* 80321DDC */ virtual bool getTevKAlphaSel(u32);
    /* 80321DE8 */ virtual void setTevStageNum(u8);
    /* 80321DF0 */ virtual void setTevStageNum(u8 const*);
    /* 80321DFC */ virtual u8 getTevStageNum() const;
    /* 80321E40 */ virtual void setTevStage(u32, J3DTevStage const*);
    /* 80321E04 */ virtual void setTevStage(u32, J3DTevStage);
    /* 80321E7C */ virtual bool getTevStage(u32);
    /* 80321EC8 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo const*);
    /* 80321E90 */ virtual void setTevSwapModeInfo(u32, J3DTevSwapModeInfo);
    /* 80321F10 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable const*);
    /* 80321F00 */ virtual void setTevSwapModeTable(u32, J3DTevSwapModeTable);
    /* 80321F20 */ virtual bool getTevSwapModeTable(u32);
    /* 80321F44 */ virtual void setIndTevStage(u32, J3DIndTevStage const*);
    /* 80321F30 */ virtual void setIndTevStage(u32, J3DIndTevStage);
    /* 80321F58 */ virtual bool getIndTevStage(u32);
    /* 80321F6C */ virtual bool getTexNoOffset() const;
    /* 80321F74 */ virtual bool getTevRegOffset() const;
    /* 80321F7C */ virtual void setTevRegOffset(u32);
    /* 80321F84 */ virtual ~J3DTevBlock16();

private:
    /* 0x008 */ u16 mTexNo[8];
    /* 0x018 */ J3DTevOrder mTevOrder[16];
    /* 0x058 */ u8 mTevStageNum;
    /* 0x059 */ J3DTevStage mTevStage[16];
    /* 0x0DA */ J3DGXColorS10 mTevColor[4];
    /* 0x0FA */ J3DGXColor mTevKColor[4];
    /* 0x10A */ u8 mTevKColorSel[16];
    /* 0x11A */ u8 mTevKAlphaSel[16];
    /* 0x12A */ J3DTevSwapModeTable mTevSwapModeTable[4];
    /* 0x130 */ J3DIndTevStage mIndTevStage[16];
    /* 0x170 */ u32 mTevRegOffset;
};  // Size: 0x174

class J3DTevBlock1 : public J3DTevBlock {
public:
    J3DTevBlock1() {
        initialize();
    }
    /* 803177E8 */ void initialize();

    /* 803205D4 */ virtual void reset(J3DTevBlock*);
    /* 8031AD64 */ virtual void load();
    /* 8031D1BC */ virtual void diffTexNo();
    /* 8031D1F4 */ virtual void diffTevReg();
    /* 8031D368 */ virtual void diffTexCoordScale();
    /* 8031D1F8 */ virtual void diffTevStage();
    /* 8031D2E8 */ virtual void diffTevStageIndirect();
    /* 8031C3CC */ virtual void patch();
    /* 8031C274 */ virtual void patchTexNo();
    /* 8031C2E4 */ virtual void patchTevReg();
    /* 8031C2E8 */ virtual void patchTexNoAndTexCoordScale();
    /* 80322770 */ virtual void ptrToIndex();
    /* 80322774 */ virtual void indexToPtr();
    /* 80322798 */ virtual u32 getType();
    /* 80317BBC */ virtual s32 countDLSize();
    /* 803227B4 */ virtual void setTexNo(u32, u16 const*);
    /* 803227A4 */ virtual void setTexNo(u32, u16);
    /* 803227C8 */ virtual u16 getTexNo(u32) const;
    /* 803227EC */ virtual void setTevOrder(u32, J3DTevOrder const*);
    /* 803227D8 */ virtual void setTevOrder(u32, J3DTevOrder);
    /* 80322800 */ virtual J3DTevOrder* getTevOrder(u32);
    /* 80322818 */ virtual void setTevStageNum(u8 const*);
    /* 80322814 */ virtual void setTevStageNum(u8);
    /* 8032281C */ virtual u8 getTevStageNum() const;
    /* 80322860 */ virtual void setTevStage(u32, J3DTevStage const*);
    /* 80322824 */ virtual void setTevStage(u32, J3DTevStage);
    /* 8032289C */ virtual bool getTevStage(u32);
    /* 803228C4 */ virtual void setIndTevStage(u32, J3DIndTevStage const*);
    /* 803228B0 */ virtual void setIndTevStage(u32, J3DIndTevStage);
    /* 803228D8 */ virtual bool getIndTevStage(u32);
    /* 803228EC */ virtual bool getTexNoOffset() const;
    /* 803228F4 */ virtual ~J3DTevBlock1();

private:
    /* 0x08 */ u16 mTexNo[1];
    /* 0x0A */ J3DTevOrder mTevOrder[1];
    /* 0x0E */ J3DTevStage mTevStage[1];
    /* 0x18 */ J3DIndTevStage mIndTevStage[1];
};  // Size: 0x1C

extern const u16 j3dDefaultZModeID;

inline u16 calcZModeID(u8 param_0, u8 param_1, u8 param_2) {
    return ((param_1 * 2) & 0x1FE) + (param_0 * 0x10) + param_2;
}

struct J3DZModeInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
};

struct J3DZMode {
    J3DZMode() {
        mZModeID = j3dDefaultZModeID;
    }

    void setZModeInfo(const J3DZModeInfo& info) {
        mZModeID = calcZModeID(info.field_0x0, info.field_0x1, info.field_0x2);
    }

    /* 0x0 */ u16 mZModeID;
};

struct J3DBlendInfo {
    void operator=(J3DBlendInfo const& other) {
        *(int*)&mType = *(int*)&other.mType;
    }
    /* 0x0 */ u8 mType;
    /* 0x1 */ u8 mSrcFactor;
    /* 0x2 */ u8 mDstFactor;
    /* 0x3 */ u8 mOp;
};

extern const J3DBlendInfo j3dDefaultBlendInfo;

struct J3DBlend : public J3DBlendInfo {
    J3DBlend() {
        *(J3DBlendInfo*)this = j3dDefaultBlendInfo;
    }
};

struct J3DFogInfo {
    /* 80325800 */ void operator=(J3DFogInfo const&);

    /* 0x00 */ u8 field_0x0;
    /* 0x01 */ u8 field_0x1;
    /* 0x02 */ u16 field_0x2;
    /* 0x04 */ f32 field_0x4;
    /* 0x08 */ f32 field_0x8;
    /* 0x0C */ f32 field_0xc;
    /* 0x10 */ f32 field_0x10;
    /* 0x14 */ u8 field_0x14;
    /* 0x15 */ u8 field_0x15;
    /* 0x16 */ u8 field_0x16;
    /* 0x17 */ u8 field_0x17;
    /* 0x18 */ u16 field_0x18[10];
};  // Size: 0x2C

extern const J3DFogInfo j3dDefaultFogInfo;

struct J3DFog : public J3DFogInfo {
    J3DFog() {
        *getFogInfo() = j3dDefaultFogInfo;
    }
    J3DFogInfo* getFogInfo() { return (J3DFogInfo*)this; }
};

struct J3DAlphaCompInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 mRef0;
    /* 0x3 */ u8 mRef1;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
    /* 0x6 */ u8 field_0x6;
    /* 0x7 */ u8 field_0x7;
};

extern const u16 j3dDefaultAlphaCmpID;

struct J3DAlphaComp {
    J3DAlphaComp() {
        field_0x0 = j3dDefaultAlphaCmpID;
        mRef0 = 0;
        mRef1 = 0;
    }

    void setAlphaCompInfo(const J3DAlphaCompInfo& param_1) {
        mRef0 = param_1.field_0x1;
        mRef1 = param_1.field_0x4;
        u32 p1_mref1 = param_1.mRef1;
        field_0x0 = calcAlphaCmpID(param_1.field_0x0, param_1.mRef0, p1_mref1);

        // this matches for `dKy_bg_MAxx_proc` but causes `addWarpMaterial` to fail,
        // while the above matches for `addWarpMaterial` but causes `dKy_bg_MAxx_proc` to fail?
        // field_0x0 = calcAlphaCmpID(param_1.field_0x0, param_1.mRef0, param_1.mRef1);
    }

    /* 0x00 */ u16 field_0x0;
    /* 0x02 */ u8 mRef0;
    /* 0x03 */ u8 mRef1;
};  // Size: 0x4

class J3DPEBlock {
public:
    /* 80317348 */ virtual void reset(J3DPEBlock*);
    virtual void load() = 0;
    /* 8000DBCC */ virtual void patch();
    /* 80317344 */ virtual void diff(u32);
    /* 8031735C */ virtual void diffFog();
    /* 80317360 */ virtual void diffBlend();
    virtual s32 countDLSize();
    virtual u32 getType() = 0;
    /* 80317368 */ virtual void setFog(J3DFog);
    /* 80317364 */ virtual void setFog(J3DFog*);
    /* 8000DF5C */ virtual J3DFog* getFog();
    /* 8031736C */ virtual void setAlphaComp(J3DAlphaComp const*);
    /* 8000E01C */ virtual void setAlphaComp(J3DAlphaComp const&);
    /* 8000DF54 */ virtual J3DAlphaComp* getAlphaComp();
    /* 80317370 */ virtual void setBlend(J3DBlend const*);
    /* 8000E018 */ virtual void setBlend(J3DBlend const&);
    /* 8000DF4C */ virtual bool getBlend();
    /* 80317374 */ virtual void setZMode(J3DZMode const*);
    /* 8000E014 */ virtual void setZMode(J3DZMode);
    /* 8000DF44 */ virtual J3DZMode* getZMode();
    /* 80317378 */ virtual void setZCompLoc(u8 const*);
    /* 8000E010 */ virtual void setZCompLoc(u8);
    /* 8000DF3C */ virtual bool getZCompLoc() const;
    /* 80317380 */ virtual void setDither(u8 const*);
    /* 8031737C */ virtual void setDither(u8);
    /* 80317384 */ virtual bool getDither() const;
    /* 8031738C */ virtual bool getFogOffset() const;
    /* 80317394 */ virtual void setFogOffset(u32);
    virtual ~J3DPEBlock();
};

class J3DPEBlockXlu : public J3DPEBlock {
public:
    /* 8031E98C */ virtual void load();
    /* 80317BF4 */ virtual s32 countDLSize();
    /* 80323258 */ virtual u32 getType();
    /* 80323264 */ virtual ~J3DPEBlockXlu();
};

class J3DPEBlockTexEdge : public J3DPEBlock {
public:
    /* 8031E6C8 */ virtual void load();
    /* 80317BEC */ virtual s32 countDLSize();
    /* 803232C0 */ virtual u32 getType();
    /* 803232CC */ virtual ~J3DPEBlockTexEdge();
};

class J3DPEBlockOpa : public J3DPEBlock {
public:
    /* 8031E408 */ virtual void load();
    /* 80317BE4 */ virtual s32 countDLSize();
    /* 80323328 */ virtual u32 getType();
    /* 80323334 */ virtual ~J3DPEBlockOpa();
};

class J3DPEBlockFull : public J3DPEBlock {
public:
    J3DPEBlockFull() {
        initialize();
    }
    /* 80317B58 */ void initialize();

    /* 8032129C */ virtual void reset(J3DPEBlock*);
    /* 8031F3C0 */ virtual void load();
    /* 8031F890 */ virtual void patch();
    /* 8031FCA0 */ virtual void diff(u32);
    /* 8031F940 */ virtual void diffFog();
    /* 8031F9B8 */ virtual void diffBlend();
    /* 80317C04 */ virtual s32 countDLSize();
    /* 8032194C */ virtual u32 getType();
    /* 8032197C */ virtual void setFog(J3DFog);
    /* 80321958 */ virtual void setFog(J3DFog*);
    /* 803219A0 */ virtual J3DFog* getFog();
    /* 803219C4 */ virtual void setAlphaComp(J3DAlphaComp const*);
    /* 803219A8 */ virtual void setAlphaComp(J3DAlphaComp const&);
    /* 803219E0 */ virtual J3DAlphaComp* getAlphaComp();
    /* 803219F4 */ virtual void setBlend(J3DBlend const*);
    /* 803219E8 */ virtual void setBlend(J3DBlend const&);
    /* 80321A00 */ virtual bool getBlend();
    /* 80321A14 */ virtual void setZMode(J3DZMode const*);
    /* 80321A08 */ virtual void setZMode(J3DZMode);
    /* 80321A20 */ virtual J3DZMode* getZMode();
    /* 80321A30 */ virtual void setZCompLoc(u8 const*);
    /* 80321A28 */ virtual void setZCompLoc(u8);
    /* 80321A3C */ virtual bool getZCompLoc() const;
    /* 80321A4C */ virtual void setDither(u8 const*);
    /* 80321A44 */ virtual void setDither(u8);
    /* 80321A58 */ virtual bool getDither() const;
    /* 80321A60 */ virtual bool getFogOffset() const;
    /* 80321A68 */ virtual void setFogOffset(u32);
    /* 80321A70 */ virtual ~J3DPEBlockFull();

private:
    /* 0x04 */ J3DFog mFog;
    /* 0x30 */ J3DAlphaComp mAlphaComp;
    /* 0x34 */ J3DBlend mBlend;
    /* 0x38 */ J3DZMode mZMode;
    /* 0x3A */ u8 mZCompLoc;
    /* 0x3B */ u8 mDither;
    /* 0x3C */ u32 mFogOffset;
};  // Size: 0x40

class J3DPEBlockFogOff : public J3DPEBlock {
public:
    J3DPEBlockFogOff() {
        initialize();
    }
    /* 80317B34 */ void initialize();

    /* 803211B4 */ virtual void reset(J3DPEBlock*);
    /* 8031EC50 */ virtual void load();
    /* 80321ACC */ virtual void diff(u32);
    /* 8031F0D8 */ virtual void diffBlend();
    /* 80317BFC */ virtual s32 countDLSize();
    /* 80321B00 */ virtual u32 getType();
    /* 80321B28 */ virtual void setAlphaComp(J3DAlphaComp const*);
    /* 80321B0C */ virtual void setAlphaComp(J3DAlphaComp const&);
    /* 80321B44 */ virtual J3DAlphaComp* getAlphaComp();
    /* 80321B58 */ virtual void setBlend(J3DBlend const*);
    /* 80321B4C */ virtual void setBlend(J3DBlend const&);
    /* 80321B64 */ virtual bool getBlend();
    /* 80321B78 */ virtual void setZMode(J3DZMode const*);
    /* 80321B6C */ virtual void setZMode(J3DZMode);
    /* 80321B84 */ virtual J3DZMode* getZMode();
    /* 80321B94 */ virtual void setZCompLoc(u8 const*);
    /* 80321B8C */ virtual void setZCompLoc(u8);
    /* 80321BA0 */ virtual bool getZCompLoc() const;
    /* 80321BB0 */ virtual void setDither(u8 const*);
    /* 80321BA8 */ virtual void setDither(u8);
    /* 80321BBC */ virtual bool getDither() const;
    /* 80321BC4 */ virtual ~J3DPEBlockFogOff();

private:
    /* 0x04 */ J3DAlphaComp mAlphaComp;
    /* 0x08 */ J3DBlend mBlend;
    /* 0x0C */ J3DZMode mZMode;
    /* 0x0E */ u8 mZCompLoc;
    /* 0x0F */ u8 mDither;
};  // Size: 0x10

struct J3DIndTexCoordScale {
    /* 8000E024 */ ~J3DIndTexCoordScale();
    /* 8000E0E4 */ J3DIndTexCoordScale();

    /* 0x0 */ u8 mScaleS;
    /* 0x1 */ u8 mScaleT;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
};

struct J3DIndTexMtx {
    /* 8000E064 */ ~J3DIndTexMtx();
    /* 8000E0F0 */ J3DIndTexMtx();

    /* 0x00 */ Mtx23 mOffsetMtx;
    /* 0x18 */ u8 mScaleExp;
};  // Size: 0x1C

struct J3DIndTexOrder {
    /* 8000E128 */ J3DIndTexOrder();

    /* 0x0 */ u8 mMap;
    /* 0x1 */ u8 mCoord;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
};

class J3DIndBlock {
public:
    /* 8031734C */ virtual void reset(J3DIndBlock*);
    virtual void diff(u32) = 0;
    virtual void load() = 0;
    /* 80317314 */ virtual s32 countDLSize();
    virtual u32 getType() = 0;
    /* 8000E0A0 */ virtual void setIndTexStageNum(u8);
    /* 8000DF7C */ virtual u8 getIndTexStageNum() const;
    /* 80317410 */ virtual void setIndTexOrder(u32, J3DIndTexOrder);
    /* 8031740C */ virtual void setIndTexOrder(u32, J3DIndTexOrder const*);
    /* 8000DF74 */ virtual bool getIndTexOrder(u32);
    /* 80317414 */ virtual void setIndTexMtx(u32, J3DIndTexMtx const*);
    /* 8000E060 */ virtual void setIndTexMtx(u32, J3DIndTexMtx);
    /* 8000DF6C */ virtual bool getIndTexMtx(u32);
    /* 8000E020 */ virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale);
    /* 80317418 */ virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale const*);
    /* 8000DF64 */ virtual bool getIndTexCoordScale(u32);
    /* 8031726C */ virtual ~J3DIndBlock();
};

class J3DIndBlockFull : public J3DIndBlock {
public:
    J3DIndBlockFull() {
        initialize();
    }
    /* 80317B28 */ void initialize();

    /* 803210B0 */ virtual void reset(J3DIndBlock*);
    /* 8031E328 */ virtual void diff(u32);
    /* 8031E12C */ virtual void load();
    /* 80317BDC */ virtual s32 countDLSize();
    /* 80323390 */ virtual u32 getType();
    /* 8032339C */ virtual void setIndTexStageNum(u8);
    /* 803233A4 */ virtual u8 getIndTexStageNum() const;
    /* 803233AC */ virtual void setIndTexOrder(u32, J3DIndTexOrder);
    /* 803233C0 */ virtual void setIndTexOrder(u32, J3DIndTexOrder const*);
    /* 803233D4 */ virtual bool getIndTexOrder(u32);
    /* 8032341C */ virtual void setIndTexMtx(u32, J3DIndTexMtx const*);
    /* 803233E8 */ virtual void setIndTexMtx(u32, J3DIndTexMtx);
    /* 80323450 */ virtual bool getIndTexMtx(u32);
    /* 80323478 */ virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale const*);
    /* 80323464 */ virtual void setIndTexCoordScale(u32, J3DIndTexCoordScale);
    /* 8032348C */ virtual bool getIndTexCoordScale(u32);
    /* 803234A0 */ virtual ~J3DIndBlockFull();

private:
    /* 0x04 */ u8 mIndTexStageNum;
    /* 0x05 */ J3DIndTexOrder mIndTexOrder[4];
    /* 0x18 */ J3DIndTexMtx mIndTexMtx[3];
    /* 0x6C */ J3DIndTexCoordScale mIndTexCoordScale[4];
};  // Size: 0x7C

class J3DIndBlockNull : public J3DIndBlock {
public:
    /* 803173A0 */ virtual void reset(J3DIndBlock*);
    /* 80317398 */ virtual void diff(u32);
    /* 8031739C */ virtual void load();
    /* 803173A4 */ virtual u32 getType();
    /* 803173B0 */ virtual ~J3DIndBlockNull();
};

struct J3DColorChanInfo {
    /* 0x0 */ u8 field_0x0;
    /* 0x1 */ u8 field_0x1;
    /* 0x2 */ u8 field_0x2;
    /* 0x3 */ u8 field_0x3;
    /* 0x4 */ u8 field_0x4;
    /* 0x5 */ u8 field_0x5;
};

struct J3DColorChan {
    /* 8000E47C */ J3DColorChan();
    u8 getLightMask() { return (((mColorChanID & 0x7800) >> 7) | (mColorChanID & 0x3c) >> 2); }
    void setLightMask(u8 param_1) {
        mColorChanID = (mColorChanID & ~0x3c) | ((param_1 & 0xf) << 2);
        mColorChanID = (mColorChanID & ~0x7800) | ((param_1 & 0xf0) << 7);
    }

    /* 0x0 */ u16 mColorChanID;
};

class J3DColorBlock {
public:
    /* 80317324 */ virtual void load();
    /* 80317358 */ virtual void reset(J3DColorBlock*);
    /* 8031733C */ virtual void patch();
    /* 80317434 */ virtual void patchMatColor();
    /* 8000DBD0 */ virtual void patchLight();
    /* 80317340 */ virtual void diff(u32);
    /* 80317438 */ virtual void diffAmbColor();
    /* 8031743C */ virtual void diffMatColor();
    /* 80317440 */ virtual void diffColorChan();
    /* 80317444 */ virtual void diffLightObj(u32);
    /* 80317304 */ virtual s32 countDLSize();
    virtual u32 getType() = 0;
    /* 80317448 */ virtual void setMatColor(u32, J3DGXColor const*);
    /* 8000E0DC */ virtual void setMatColor(u32, J3DGXColor);
    /* 8000E000 */ virtual _GXColor* getMatColor(u32);
    /* 801A4C0C */ virtual void setAmbColor(u32, J3DGXColor const*);
    /* 8000E0D4 */ virtual void setAmbColor(u32, J3DGXColor);
    /* 8000DFF0 */ virtual bool getAmbColor(u32);
    /* 8000E0E0 */ virtual void setColorChanNum(u8);
    /* 8031744C */ virtual void setColorChanNum(u8 const*);
    /* 8000E008 */ virtual u8 getColorChanNum() const;
    /* 8000E0D8 */ virtual void setColorChan(u32, J3DColorChan const&);
    /* 80317450 */ virtual void setColorChan(u32, J3DColorChan const*);
    /* 8000DFF8 */ virtual J3DColorChan* getColorChan(u32);
    /* 801A4C08 */ virtual void setLight(u32, J3DLightObj*);
    /* 80317454 */ virtual bool getLight(u32);
    /* 80317460 */ virtual void setCullMode(u8 const*);
    /* 8031745C */ virtual void setCullMode(u8);
    /* 80317328 */ virtual s32 getCullMode() const;
    /* 80317464 */ virtual bool getMatColorOffset() const;
    /* 8031746C */ virtual bool getColorChanOffset() const;
    /* 80317474 */ virtual void setMatColorOffset(u32);
    /* 80317478 */ virtual void setColorChanOffset(u32);
    /* 80317138 */ virtual ~J3DColorBlock();
};

class J3DColorBlockLightOn : public J3DColorBlock {
public:
    J3DColorBlockLightOn() {
        initialize();
    }
    /* 80317580 */ void initialize();

    /* 803187F4 */ virtual void load();
    /* 8031FF34 */ virtual void reset(J3DColorBlock*);
    /* 803194E8 */ virtual void patch();
    /* 80319534 */ virtual void patchMatColor();
    /* 803196E0 */ virtual void patchLight();
    /* 8031A13C */ virtual void diff(u32);
    /* 8031A1DC */ virtual void diffAmbColor();
    /* 8031A358 */ virtual void diffMatColor();
    /* 8031A4D4 */ virtual void diffColorChan();
    /* 8031A8E0 */ virtual void diffLightObj(u32);
    /* 80317B94 */ virtual s32 countDLSize();
    /* 80322E80 */ virtual u32 getType();
    /* 80322EB8 */ virtual void setMatColor(u32, J3DGXColor const*);
    /* 80322E8C */ virtual void setMatColor(u32, J3DGXColor);
    /* 80322EE4 */ virtual GXColor* getMatColor(u32);
    /* 80322F24 */ virtual void setAmbColor(u32, J3DGXColor const*);
    /* 80322EF8 */ virtual void setAmbColor(u32, J3DGXColor);
    /* 80322F50 */ virtual bool getAmbColor(u32);
    /* 80322F70 */ virtual void setColorChanNum(u8);
    /* 80322F64 */ virtual void setColorChanNum(u8 const*);
    /* 80322F78 */ virtual u8 getColorChanNum() const;
    /* 80322F94 */ virtual void setColorChan(u32, J3DColorChan const&);
    /* 80322F80 */ virtual void setColorChan(u32, J3DColorChan const*);
    /* 80322FA8 */ virtual J3DColorChan* getColorChan(u32);
    /* 80322FBC */ virtual void setLight(u32, J3DLightObj*);
    /* 80322FCC */ virtual bool getLight(u32);
    /* 80322FE4 */ virtual void setCullMode(u8 const*);
    /* 80322FDC */ virtual void setCullMode(u8);
    /* 80322FF0 */ virtual s32 getCullMode() const;
    /* 80322FF8 */ virtual bool getMatColorOffset() const;
    /* 80323000 */ virtual bool getColorChanOffset() const;
    /* 80323008 */ virtual void setMatColorOffset(u32);
    /* 80323010 */ virtual void setColorChanOffset(u32);
    /* 80323018 */ virtual ~J3DColorBlockLightOn();

private:
    /* 0x04 */ J3DGXColor mMatColor[2];
    /* 0x0C */ J3DGXColor mAmbColor[2];
    /* 0x14 */ u8 mColorChanNum;
    /* 0x16 */ J3DColorChan mColorChan[4];
    /* 0x20 */ J3DLightObj* mLight[8];
    /* 0x40 */ u8 mCullMode;
    /* 0x44 */ u32 mMatColorOffset;
    /* 0x48 */ u32 mColorChanOffset;
};  // Size: 0x4C

class J3DColorBlockLightOff : public J3DColorBlock {
public:
    J3DColorBlockLightOff() {
        initialize();
    }
    /* 8031747C */ void initialize();

    /* 80317C0C */ virtual void load();
    /* 8031FD08 */ virtual void reset(J3DColorBlock*);
    /* 80318EB4 */ virtual void patch();
    /* 80318F00 */ virtual void patchMatColor();
    /* 803190AC */ virtual void patchLight();
    /* 80319B4C */ virtual void diff(u32);
    /* 80319BB4 */ virtual void diffMatColor();
    /* 80319D30 */ virtual void diffColorChan();
    /* 80317B84 */ virtual s32 countDLSize();
    /* 80323560 */ virtual u32 getType();
    /* 80323184 */ virtual void setMatColor(u32, J3DGXColor const*);
    /* 80323158 */ virtual void setMatColor(u32, J3DGXColor);
    /* 803231B0 */ virtual GXColor* getMatColor(u32);
    /* 803231D0 */ virtual void setColorChanNum(u8);
    /* 803231C4 */ virtual void setColorChanNum(u8 const*);
    /* 803231D8 */ virtual u8 getColorChanNum() const;
    /* 803231F4 */ virtual void setColorChan(u32, J3DColorChan const&);
    /* 803231E0 */ virtual void setColorChan(u32, J3DColorChan const*);
    /* 80323208 */ virtual J3DColorChan* getColorChan(u32);
    /* 80323224 */ virtual void setCullMode(u8 const*);
    /* 8032321C */ virtual void setCullMode(u8);
    /* 80323230 */ virtual s32 getCullMode() const;
    /* 80323238 */ virtual bool getMatColorOffset() const;
    /* 80323240 */ virtual bool getColorChanOffset() const;
    /* 80323248 */ virtual void setMatColorOffset(u32);
    /* 80323250 */ virtual void setColorChanOffset(u32);
    /* 803170DC */ virtual ~J3DColorBlockLightOff();

private:
    /* 0x04 */ J3DGXColor mMatColor[2];
    /* 0x0C */ u8 mColorChanNum;
    /* 0x0E */ J3DColorChan mColorChan[4];
    /* 0x16 */ u8 mCullMode;
    /* 0x18 */ u32 mMatColorOffset;
    /* 0x1C */ u32 mColorChanOffset;
};  // Size: 0x20

class J3DColorBlockAmbientOn : public J3DColorBlockLightOff {
public:
    J3DColorBlockAmbientOn() {
        initialize();
    }
    /* 803174DC */ void initialize();

    /* 8031816C */ virtual void load();
    /* 8031FDE4 */ virtual void reset(J3DColorBlock*);
    /* 80317B8C */ virtual s32 countDLSize();
    /* 80323074 */ virtual u32 getType();
    /* 803230AC */ virtual void setAmbColor(u32, J3DGXColor const*);
    /* 80323080 */ virtual void setAmbColor(u32, J3DGXColor);
    /* 803230D8 */ virtual bool getAmbColor(u32);
    /* 803230EC */ virtual ~J3DColorBlockAmbientOn();

private:
    /* 0x20 */ J3DGXColor mAmbColor[2];
};  // Size: 0x28

#endif /* J3DMATBLOCK_H */
