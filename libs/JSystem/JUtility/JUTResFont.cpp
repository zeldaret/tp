#include "JSystem/JUtility/JUTResFont.h"

extern "C" {
extern void convertSjis__10JUTResFontFlPUs();  // remove when JUTResFont::getFontCode decompiled
extern void getFontCode__10JUTResFontFl();     // remove when JUTResFont::getWidthEntry decompiled
extern void
loadFont__10JUTResFontFlUlPQ27JUTFont6TWidth();  // remove when JUTResFont::drawChar_scale
                                                 // decompiled
extern void countBlock__10JUTResFontFv();  // remove when JUTResFont::protected_initiate decompiled
extern void
initialize_state__7JUTFontFv();  // remove when JUTResFont::protected_initiate decompiled
extern void
initialize_state__10JUTResFontFv();  // remove when JUTResFont::protected_initiate decompiled
extern void
deleteMemBlocks_ResFont__10JUTResFontFv();  // remove when JUTResFont::protected_initiate decompiled
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

JUTResFont::JUTResFont(ResFONT font, JKRHeap* heap) {
    initialize_state();
    ((JUTFont*)this)->initialize_state();
    initiate(font, heap);
}

#ifdef NONMATCHING
JUTResFont::~JUTResFont() {
    if (unk4) {
        deleteMemBlocks_ResFont();
        initialize_state();
        ((JUTFont*)this)->initialize_state();
    }
}
#else
asm JUTResFont::~JUTResFont() {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__dtor.s"
}
#endif

void JUTResFont::deleteMemBlocks_ResFont() {
    delete[](void*) unk50;
}

void JUTResFont::initialize_state() {
    unk48 = 0;
    unk50 = NULL;
    unk54 = 0;
    unk58 = NULL;
    unk5C = 0;
    unk1C = 0;
    unk20 = 0;
    unk44 = 0xFFFFFFFF;
}

bool JUTResFont::initiate(ResFONT font, JKRHeap* heap) {
    if (!protected_initiate(font, heap)) {
        deleteMemBlocks_ResFont();
        initialize_state();
        ((JUTFont*)this)->initialize_state();
        unk4 = false;
        return false;
    }

    return true;
}

asm bool JUTResFont::protected_initiate(ResFONT font, JKRHeap* heap) {
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

void JUTResFont::setGX(TColor col1, TColor col2) {
    if ((col1.Raw() == CLR_BLACK) && (col2.Raw() == CLR_WHITE)) {
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

asm void JUTResFont::drawChar_scale(float a1, float a2, float a3, float a4, int a5, bool a6) {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__drawChar_scale.s"
}

void JUTResFont::loadFont(s32 a1, u32 a2, TWidth* a3) {
    if (a3 != NULL)
        getWidthEntry(a1, a3);

    u32 code = getFontCode(a1);
    loadImage(code, a2);
}

asm void JUTResFont::getWidthEntry(s32 i_no, TWidth* width){nofralloc
#include "JSystem/JUtility/asm/JUTResFont__getWidthEntry.s"
}

u32 JUTResFont::getCellWidth() {
    if (unk58 != NULL && unk58->unk0 != NULL)
        return unk58->unk0->unkC;

    return getWidth();
}

u32 JUTResFont::getCellHeight() {
    if (unk58 != NULL && unk58->unk0 != NULL)
        return unk58->unk0->unkE;

    return getHeight();
}

bool JUTResFont::isLeadByte(s32 a1) {
    return (*unk6C)(a1);
}

asm u32 JUTResFont::getFontCode(s32 a1) {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__getFontCode.s"
}

asm void JUTResFont::loadImage(s32 a1, u32 a2) {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__loadImage.s"
}

asm s32 JUTResFont::convertSjis(s32 a1, u16* a2) {
    nofralloc
#include "JSystem/JUtility/asm/JUTResFont__convertSjis.s"
}
