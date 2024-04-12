//
// J2DTevs
//

#include "JSystem/J2DGraph/J2DTevs.h"
#include "JSystem/J2DGraph/J2DMatBlock.h"
#include "math.h"
#include "dolphin/gx.h"

/* 802E9C90-802E9CC4 2E45D0 0034+00 0/0 1/1 0/0 .text            load__9J2DTexMtxFUl */
void J2DTexMtx::load(u32 mtxIdx) {
    GXLoadTexMtxImm(mTexMtx, mtxIdx * 3 + GX_TEXMTX0, mInfo.getTexMtxType());
}

/* 802E9CC4-802E9D2C 2E4604 0068+00 0/0 2/2 0/0 .text            calc__9J2DTexMtxFv */
void J2DTexMtx::calc() {
    if (mInfo.mTexMtxDCC == J2DTexMtxInfo::DCC_NONE) {
        getTextureMtx(mInfo.mTexSRTInfo, mInfo.mCenter, mTexMtx);
    } else if (mInfo.mTexMtxDCC == J2DTexMtxInfo::DCC_MAYA) {
        getTextureMtxMaya(mInfo.mTexSRTInfo, mTexMtx);
    }
}

/* 802E9D2C-802E9EBC 2E466C 0190+00 1/1 0/0 0/0 .text
 * getTextureMtx__9J2DTexMtxFRC17J2DTextureSRTInfo3VecPA4_f     */
void J2DTexMtx::getTextureMtx(J2DTextureSRTInfo const& param_0, Vec param_1, Mtx param_2) {
    float f31 = (param_0.field_0x8 * M_PI) / 180.0f;
    param_2[0][0] = param_0.field_0x0 * i_cosf(f31);
    param_2[0][1] = -param_0.field_0x0 * i_sinf(f31);
    param_2[0][2] = 0.0f;
    param_2[0][3] = -param_0.field_0x0 * i_cosf(f31) * param_1.x + param_1.y * (param_0.field_0x0 * i_sinf(f31)) +
                    param_1.x + param_0.field_0xc;
    param_2[1][0] = param_0.field_0x4 * i_sinf(f31);
    param_2[1][1] = param_0.field_0x4 * i_cosf(f31);
    param_2[1][2] = 0.0f;
    param_2[1][3] = -param_0.field_0x4 * i_sinf(f31) * param_1.x - param_1.y * (param_0.field_0x4 * i_cosf(f31)) +
                    param_1.y + param_0.field_0x10;
    param_2[2][0] = 0.0f;
    param_2[2][1] = 0.0f;
    param_2[2][2] = 1.0f;
    param_2[2][3] = 0.0f;
}

/* 802E9EBC-802EA044 2E47FC 0188+00 1/1 0/0 0/0 .text
 * getTextureMtxMaya__9J2DTexMtxFRC17J2DTextureSRTInfoPA4_f     */
void J2DTexMtx::getTextureMtxMaya(J2DTextureSRTInfo const& param_0, Mtx param_1) {
    float f31 = (param_0.field_0x8 * M_PI) / 180.0f;
    param_1[0][0] = param_0.field_0x0 * i_cosf(f31);
    param_1[0][1] = param_0.field_0x4 * i_sinf(f31);
    param_1[0][2] = 0.0f;
    param_1[0][3] = (param_0.field_0xc - 0.5f) * i_cosf(f31) -
                    (param_0.field_0x10 - 0.5f + param_0.field_0x4) * i_sinf(f31) + 0.5f;
    param_1[1][0] = -param_0.field_0x0 * i_sinf(f31);
    param_1[1][1] = param_0.field_0x4 * i_cosf(f31);
    param_1[1][2] = 0.0f;
    param_1[1][3] = -(param_0.field_0xc - 0.5f) * i_sinf(f31) -
                    (param_0.field_0x10 - 0.5f + param_0.field_0x4) * i_cosf(f31) + 0.5f;
    param_1[2][0] = 0.0f;
    param_1[2][1] = 0.0f;
    param_1[2][2] = 1.0f;
    param_1[2][3] = 0.0f;
}

/* 802EA044-802EA098 2E4984 0054+00 0/0 5/5 0/0 .text            load__14J2DIndTevStageFUc */
void J2DIndTevStage::load(u8 tevStage) {
    GXSetTevIndirect((GXTevStageID)tevStage, getIndStage(), getIndFormat(), getBiasSel(),
                     getMtxSel(), getWrapS(), getWrapT(), getPrev(), getLod(), getAlphaSel());
}

/* 802EA098-802EA0CC 2E49D8 0034+00 0/0 1/1 0/0 .text            load__12J2DIndTexMtxFUc */
void J2DIndTexMtx::load(u8 indTexMtx) {
    GXSetIndTexMtx((GXIndTexMtxID)(GX_ITM_0 + indTexMtx), (f32*)mIndTexMtxInfo.mMtx,
                   mIndTexMtxInfo.mScaleExp);
}

/* 802EA0CC-802EA0FC 2E4A0C 0030+00 0/0 1/1 0/0 .text            load__19J2DIndTexCoordScaleFUc */
void J2DIndTexCoordScale::load(u8 indTexStage) {
    GXSetIndTexCoordScale((GXIndTexStageID)indTexStage, mInfo.getScaleS(), mInfo.getScaleT());
}

/* 802EA0FC-802EA12C 2E4A3C 0030+00 0/0 1/1 0/0 .text            load__14J2DIndTexOrderFUc */
void J2DIndTexOrder::load(u8 indTexStage) {
    GXSetIndTexOrder((GXIndTexStageID)indTexStage, mInfo.getTexCoordID(), mInfo.getTexMapID());
}

/* 802EA12C-802EA134 2E4A6C 0008+00 0/0 1/0 0/0 .text getTevSwapModeTable__11J2DTevBlockFUl */
J2DTevSwapModeTable* J2DTevBlock::getTevSwapModeTable(u32 param_0) {
    return NULL;
}

/* 802EA134-802EA13C 2E4A74 0008+00 0/0 1/0 0/0 .text            getTevStage__11J2DTevBlockFUl */
J2DTevStage* J2DTevBlock::getTevStage(u32 param_0) {
    return NULL;
}

/* 802EA13C-802EA144 2E4A7C 0008+00 0/0 1/0 0/0 .text            getTevColor__11J2DTevBlockFUl */
J2DGXColorS10* J2DTevBlock::getTevColor(u32 param_0) {
    return NULL;
}

/* 802EA144-802EA14C 2E4A84 0008+00 0/0 1/0 0/0 .text            getTevOrder__11J2DTevBlockFUl */
J2DTevOrder* J2DTevBlock::getTevOrder(u32 param_0) {
    return NULL;
}

/* 802EA14C-802EA154 2E4A8C 0008+00 0/0 1/0 0/0 .text            getTevKAlphaSel__11J2DTevBlockFUl
 */
u8 J2DTevBlock::getTevKAlphaSel(u32 param_0) {
    return 0;
}

/* 802EA154-802EA15C 2E4A94 0008+00 0/0 1/0 0/0 .text            getTevKColorSel__11J2DTevBlockFUl
 */
u8 J2DTevBlock::getTevKColorSel(u32 param_0) {
    return 0;
}

/* 802EA15C-802EA164 2E4A9C 0008+00 0/0 1/0 0/0 .text            getTevKColor__11J2DTevBlockFUl */
JUtility::TColor* J2DTevBlock::getTevKColor(u32 param_0) {
    return NULL;
}

/* 802EA164-802EA170 2E4AA4 000C+00 0/0 1/0 0/0 .text            getFontNo__11J2DTevBlockCFv */
u16 J2DTevBlock::getFontNo() const {
    return 0xFFFF;
}

/* 802EA170-802EA17C 2E4AB0 000C+00 0/0 1/0 0/0 .text            getTexNo__11J2DTevBlockCFUl */
u32 J2DTevBlock::getTexNo(u32 param_0) const {
    return 0xFFFF;
}

/* 802EA17C-802EA184 2E4ABC 0008+00 0/0 1/0 0/0 .text            getTevStageNum__11J2DTevBlockCFv */
u8 J2DTevBlock::getTevStageNum() const {
    return 1;
}

/* 802EA184-802EA18C 2E4AC4 0008+00 0/0 1/0 0/0 .text            getIndTevStage__11J2DTevBlockFUl */
J2DIndTevStage* J2DTevBlock::getIndTevStage(u32 param_0) {
    return NULL;
}

/* 802EA18C-802EA194 2E4ACC 0008+00 0/0 2/0 0/0 .text getIndTexCoordScale__11J2DIndBlockFUl */
J2DIndTexCoordScale* J2DIndBlock::getIndTexCoordScale(u32 param_0) {
    return NULL;
}

/* 802EA194-802EA19C 2E4AD4 0008+00 0/0 2/0 0/0 .text            getIndTexMtx__11J2DIndBlockFUl */
J2DIndTexMtx* J2DIndBlock::getIndTexMtx(u32 param_0) {
    return NULL;
}

/* 802EA19C-802EA1A4 2E4ADC 0008+00 0/0 2/0 0/0 .text            getIndTexOrder__11J2DIndBlockFUl */
J2DIndTexOrder* J2DIndBlock::getIndTexOrder(u32 param_0) {
    return NULL;
}

/* 802EA1A4-802EA1AC 2E4AE4 0008+00 0/0 2/0 0/0 .text            getIndTexStageNum__11J2DIndBlockCFv
 */
u8 J2DIndBlock::getIndTexStageNum() const {
    return 0;
}

/* ############################################################################################## */
/* 803A1B80-803A1BA0 02E1E0 0020+00 0/0 3/3 0/0 .rodata          j2dDefaultTexCoordInfo */
J2DTexCoordInfo const j2dDefaultTexCoordInfo[8] = {
    {GX_TG_MTX2x4, GX_TG_TEX0, GX_IDENTITY, 0}, {GX_TG_MTX2x4, GX_TG_TEX1, GX_IDENTITY, 0},
    {GX_TG_MTX2x4, GX_TG_TEX2, GX_IDENTITY, 0}, {GX_TG_MTX2x4, GX_TG_TEX3, GX_IDENTITY, 0},
    {GX_TG_MTX2x4, GX_TG_TEX4, GX_IDENTITY, 0}, {GX_TG_MTX2x4, GX_TG_TEX5, GX_IDENTITY, 0},
    {GX_TG_MTX2x4, GX_TG_TEX6, GX_IDENTITY, 0}, {GX_TG_MTX2x4, GX_TG_TEX7, GX_IDENTITY, 0},
};

/* 803A1BA0-803A1BC4 02E200 0024+00 0/0 3/3 0/0 .rodata          j2dDefaultTexMtxInfo */
J2DTexMtxInfo const j2dDefaultTexMtxInfo = {1,    1,    255,  255,  0.5f, 0.5f,
                                            0.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f};

/* 803A1BC4-803A1BE0 02E224 001C+00 0/0 3/3 0/0 .rodata          j2dDefaultIndTexMtxInfo */
J2DIndTexMtxInfo const j2dDefaultIndTexMtxInfo = {{0.5f, 0.0f, 0.0f, 0.0f, 0.5f, 0.0f}, 1};

/* 803A1BE0-803A1BF4 02E240 0014+00 0/0 1/1 0/0 .rodata          j2dDefaultTevStageInfo */
extern J2DTevStageInfo const j2dDefaultTevStageInfo = {
    4,          GX_CC_RASC,    GX_CC_ZERO, GX_CC_ZERO, GX_CC_CPREV,   GX_TEV_ADD,
    GX_TB_ZERO, GX_CS_SCALE_1, 1,          GX_TEVPREV, GX_CA_RASA,    GX_CA_ZERO,
    GX_CA_ZERO, GX_CA_APREV,   GX_TEV_ADD, GX_TB_ZERO, GX_CS_SCALE_1, 1,
    GX_TEVPREV};

/* 803A1BF4-803A1C00 02E254 000C+00 0/0 7/7 0/0 .rodata          j2dDefaultIndTevStageInfo */
extern const J2DIndTevStageInfo j2dDefaultIndTevStageInfo = {
    GX_INDTEXSTAGE0, GX_ITB_NONE, GX_ITB_NONE, GX_ITM_OFF,  GX_ITW_OFF,
    GX_ITW_OFF,      0,           0,           GX_ITBA_OFF,
};

/* 8045617C-80456180 00477C 0004+00 0/0 1/1 0/0 .sdata2          j2dDefaultColInfo */
extern const GXColor j2dDefaultColInfo = {255, 255, 255, 255};

/* 80456180-80456184 004780 0004+00 0/0 7/7 0/0 .sdata2          j2dDefaultTevOrderInfoNull */
extern const J2DTevOrderInfo j2dDefaultTevOrderInfoNull = {
    GX_TEXCOORD_NULL, GX_TEXMAP_NULL, GX_COLOR_NULL, 0};

/* 80456184-80456188 004784 0002+02 0/0 3/3 0/0 .sdata2          j2dDefaultIndTexOrderNull */
extern const J2DIndTexOrderInfo j2dDefaultIndTexOrderNull = {
    GX_TEXCOORD_NULL,
    GX_TEXMAP_NULL,
};

/* 80456188-80456190 004788 0008+00 0/0 5/5 0/0 .sdata2          j2dDefaultTevColor */
extern const GXColorS10 j2dDefaultTevColor = {255, 255, 255, 255};

/* 80456190-80456194 004790 0002+02 0/0 3/3 0/0 .sdata2          j2dDefaultIndTexCoordScaleInfo */
extern const J2DIndTexCoordScaleInfo j2dDefaultIndTexCoordScaleInfo = {
    GX_ITS_1,
    GX_ITS_1,
};

/* 80456194-80456198 004794 0004+00 0/0 5/5 0/0 .sdata2          j2dDefaultTevKColor */
extern const GXColor j2dDefaultTevKColor = {255, 255, 255, 255};

/* 80456198-8045619C 004798 0004+00 0/0 2/2 0/0 .sdata2          j2dDefaultTevSwapMode */
extern const J2DTevSwapModeInfo j2dDefaultTevSwapMode = {GX_TEV_SWAP0, GX_TEV_SWAP0, 0, 0};

/* 8045619C-804561A0 00479C 0004+00 0/0 6/6 0/0 .sdata2          j2dDefaultTevSwapModeTable */
extern const J2DTevSwapModeTableInfo j2dDefaultTevSwapModeTable = {
    GX_CH_RED, GX_CH_GREEN, GX_CH_BLUE, GX_CH_ALPHA};

/* 804561A0-804561A4 0047A0 0004+00 0/0 3/3 0/0 .sdata2          j2dDefaultBlendInfo */
extern const J2DBlendInfo j2dDefaultBlendInfo = {GX_BM_BLEND, GX_BL_SRC_ALPHA, GX_BL_INV_SRC_ALPHA,
                                                 GX_LO_NOOP};

/* 804561A4-804561A8 0047A4 0004+00 0/0 1/1 0/0 .sdata2          None */
extern const u8 j2dDefaultPEBlockDither = 0;

/* 804561A8-804561AC 0047A8 0004+00 0/0 3/3 0/0 .sdata2          j2dDefaultColorChanInfo */
extern const J2DColorChanInfo j2dDefaultColorChanInfo = {0, 3, 0, 0};

/* 804561AC-804561AE 0047AC 0002+00 0/0 1/1 0/0 .sdata2          None */
extern const u8 data_804561AC = 0x1B;

/* 804561AE-804561B0 0047AE 0002+00 0/0 3/3 0/0 .sdata2          j2dDefaultAlphaCmp */
extern const u16 j2dDefaultAlphaCmp = 0x00E7;
