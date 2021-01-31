#include "JSystem/JUtility/JUTResFont.h"

extern "C" {
void __nwa__FUlP7JKRHeapi(void);
void JUTReportConsole(const char*);
void convertSjis__10JUTResFontCFiPUs();  // remove when JUTResFont::getFontCode decompiled
void getFontCode__10JUTResFontCFi();     // remove when JUTResFont::getWidthEntry decompiled
void loadFont__10JUTResFontFi11_GXTexMapIDPQ27JUTFont6TWidth();  // remove when JUTResFont::drawChar_scale decompiled
void countBlock__10JUTResFontFv();  // remove when JUTResFont::protected_initiate decompiled
void initialize_state__7JUTFontFv();  // remove when JUTResFont::protected_initiate decompiled
void initialize_state__10JUTResFontFv();  // remove when JUTResFont::protected_initiate decompiled
void deleteMemBlocks_ResFont__10JUTResFontFv();  // remove when JUTResFont::protected_initiate decompiled
}

extern float lbl_80455FF0;
extern const char* lbl_8039D39C;
extern double lbl_80455FF8;
extern double lbl_80456000;

extern const bool (*const lbl_8039D390[])(u32);

extern const char* lbl_8039D45C;

extern void* lbl_803CC5A0;
extern void* lbl_803A31F0;

JUTResFont::JUTResFont() {
    initialize_state();
    ((JUTFont*)this)->initialize_state();
}

JUTResFont::JUTResFont(const ResFONT* font, JKRHeap* heap) {
    initialize_state();
    ((JUTFont*)this)->initialize_state();
    initiate(font, heap);
}

JUTResFont::~JUTResFont() {
    if (unk4) {
        delete_and_initialize();
        ((JUTFont*)this)->initialize_state();
    }
}

void JUTResFont::deleteMemBlocks_ResFont() {
    delete[](void*) pMemBlocks;
}

void JUTResFont::initialize_state() {
    pFontFile = NULL;
    pMemBlocks = NULL;
    unk54 = 0;
    unk58 = NULL;
    unk5C = 0;
    unk1C = 0;
    unk20 = 0;
    unk44 = 0xFFFFFFFF;
}

bool JUTResFont::initiate(const ResFONT* font, JKRHeap* heap) {
    if (!protected_initiate(font, heap)) {
        delete_and_initialize();
        ((JUTFont*)this)->initialize_state();
        unk4 = false;
        return false;
    }

    return true;
}

asm bool JUTResFont::protected_initiate(const ResFONT* font, JKRHeap* heap) {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__protected_initiate.s"
}

asm u32 JUTResFont::countBlock() {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__countBlock.s"
}

asm void JUTResFont::setBlock() {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__setBlock.s"
}

void JUTResFont::setGX() {
    GXSetNumChans(0x1);
    GXSetNumTevStages(0x1);
    GXSetNumTexGens(0x1);
    GXSetTevOrder(0x0, 0x0, 0x0, 0x4);
    GXSetChanCtrl(0x4, 0x0, 0x0, 0x1, 0x0, 0x0, 0x2);
    GXSetTevOp(0x0, 0x0);
    GXSetBlendMode(0x1, 0x4, 0x5, 0xf);
    GXSetVtxAttrFmt(0x0, 0x9, 0x1, 0x3, 0x0);
    GXSetVtxAttrFmt(0x0, 0xb, 0x1, 0x5, 0x0);
    GXSetVtxAttrFmt(0x0, 0xd, 0x1, 0x2, 0xf);
    GXClearVtxDesc();
    GXSetVtxDesc(0x9, 0x1);
    GXSetVtxDesc(0xb, 0x1);
    GXSetVtxDesc(0xd, 0x1);
}

void JUTResFont::setGX(JUtility::TColor col1, JUtility::TColor col2) {
    if ((u32(col1) == 0) && (u32(col2) == 0xFFFFFFFF)) {
        setGX();
        return;
    }

    GXSetNumChans(0x1);
    GXSetNumTevStages(0x2);
    GXSetNumTexGens(0x1);
    GXSetTevOrder(0x0, 0x0, 0x0, 0xff);
    GXSetChanCtrl(0x4, 0x0, 0x0, 0x1, 0x0, 0x0, 0x2);
    GXSetTevColor(0x1, col1);
    GXSetTevColor(0x2, col2);
    GXSetTevColorIn(0x0, 0x2, 0x4, 0x8, 0xf);
    GXSetTevAlphaIn(0x0, 0x1, 0x2, 0x4, 0x7);
    GXSetTevColorOp(0x0, 0x0, 0x0, 0x0, 0x1, 0x0);
    GXSetTevAlphaOp(0x0, 0x0, 0x0, 0x0, 0x1, 0x0);
    GXSetTevOrder(0x1, 0xff, 0xff, 0x4);
    GXSetTevColorIn(0x1, 0xf, 0x0, 0xa, 0xf);
    GXSetTevAlphaIn(0x1, 0x7, 0x0, 0x5, 0x7);
    GXSetTevColorOp(0x1, 0x0, 0x0, 0x0, 0x1, 0x0);
    GXSetTevAlphaOp(0x1, 0x0, 0x0, 0x0, 0x1, 0x0);
    GXSetBlendMode(0x1, 0x4, 0x5, 0xf);
    GXSetVtxAttrFmt(0x0, 0x9, 0x1, 0x3, 0x0);
    GXSetVtxAttrFmt(0x0, 0xb, 0x1, 0x5, 0x0);
    GXSetVtxAttrFmt(0x0, 0xd, 0x1, 0x2, 0xf);
    GXClearVtxDesc();
    GXSetVtxDesc(0x9, 0x1);
    GXSetVtxDesc(0xb, 0x1);
    GXSetVtxDesc(0xd, 0x1);
}

asm float JUTResFont::drawChar_scale(f32 a1, f32 a2, f32 a3, f32 a4, int a5, bool a6) {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__drawChar_scale.s"
}

void JUTResFont::loadFont(int a1, GXTexMapID a2, TWidth* a3) {
    if (a3 != NULL)  // for variable width?
        getWidthEntry(a1, a3);

    loadImage(getFontCode(a1), a2);
}

asm void JUTResFont::getWidthEntry(int i_no, TWidth* width) const {nofralloc
#include "JSystem/JUtility/asm/JUTResFont__getWidthEntry.s"
}

u32 JUTResFont::getCellWidth() const {
    if (unk58 != NULL && unk58->cell != NULL)
        return unk58->cell->width;

    return getWidth();
}

u32 JUTResFont::getCellHeight() const {
    if (unk58 != NULL && unk58->cell != NULL)
        return unk58->cell->height;

    return getHeight();
}

bool JUTResFont::isLeadByte(int a1) const {
    return (*unk6C)(a1);  // saoAboutEncoding_
}

asm int JUTResFont::getFontCode(int a1) const {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__getFontCode.s"
}

asm void JUTResFont::loadImage(int a1, _GXTexMapID a2){nofralloc
#include "JSystem/JUtility/asm/JUTResFont__loadImage.s"
}

u32 JUTResFont::convertSjis(int a1, u16* a2) const {
    u8 hi = JSUHiByte(a1);
    u8 lo = JSULoByte(a1);

    // SJIS lo byte is always 0x80-0xFF
    s32 temp = lo - 0x40;
    if (temp >= 0x40)
        temp--;

    u16 off = 0x31C;
    if (a2 != NULL)
        off = *a2;

    return (temp + (hi - 0x88) * 0xBC) - 0x5E + off;
}

bool JUTFont::isLeadByte_1Byte(int b) {
    return false;
}

bool JUTFont::isLeadByte_2Byte(int b) {
    return true;
}

bool JUTFont::isLeadByte_ShiftJIS(int b) {
    bool result = false;

    // 00 - 0x7F = ASCII, 0xA1 - 0xDF = JIS, everything else = SJIS
    if (((0x81 <= b) && (b <= 0x9f)) || ((0xe0 <= b && (b <= 0xfc))))
        result = true;

    return result;
}
