#include "JSystem/JUtility/JUTResFont.h"

extern "C" {
extern void convertSjis__10JUTResFontFlPUs(); // remove when JUTResFont::getFontCode decompiled
extern void getFontCode__10JUTResFontFl(); // remove when JUTResFont::getWidthEntry decompiled
extern void loadFont__10JUTResFontFlUlPQ27JUTFont6TWidth(); // remove when JUTResFont::drawChar_scale decompiled
extern void countBlock__10JUTResFontFv(); // remove when JUTResFont::protected_initiate decompiled
extern void initialize_state__7JUTFontFv(); // remove when JUTResFont::protected_initiate decompiled
extern void initialize_state__10JUTResFontFv(); // remove when JUTResFont::protected_initiate decompiled
extern void deleteMemBlocks_ResFont__10JUTResFontFv(); // remove when JUTResFont::protected_initiate decompiled
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
/* 802DF000 002DBF40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 802DF004 002DBF44  7C 08 02 A6 */	mflr r0
/* 802DF008 002DBF48  90 01 00 14 */	stw r0, 0x14(r1)
/* 802DF00C 002DBF4C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 802DF010 002DBF50  93 C1 00 08 */	stw r30, 8(r1)
/* 802DF014 002DBF54  7C 7E 1B 79 */	or. r30, r3, r3
/* 802DF018 002DBF58  7C 9F 23 78 */	mr r31, r4
/* 802DF01C 002DBF5C  41 82 00 54 */	beq lbl_802DF070
/* 802DF020 002DBF60  3C 80 80 3D */	lis r4, lbl_803CC5A0@ha
/* 802DF024 002DBF64  38 04 C5 A0 */	addi r0, r4, lbl_803CC5A0@l
/* 802DF028 002DBF68  90 1E 00 00 */	stw r0, 0(r30)
/* 802DF02C 002DBF6C  88 1E 00 04 */	lbz r0, 4(r30)
/* 802DF030 002DBF70  28 00 00 00 */	cmplwi r0, 0
/* 802DF034 002DBF74  41 82 00 18 */	beq lbl_802DF04C
/* 802DF038 002DBF78  48 00 00 55 */	bl deleteMemBlocks_ResFont__10JUTResFontFv
/* 802DF03C 002DBF7C  7F C3 F3 78 */	mr r3, r30
/* 802DF040 002DBF80  48 00 00 71 */	bl initialize_state__10JUTResFontFv
/* 802DF044 002DBF84  7F C3 F3 78 */	mr r3, r30
/* 802DF048 002DBF88  4B FF FC DD */	bl initialize_state__7JUTFontFv
lbl_802DF04C:
/* 802DF04C 002DBF8C  28 1E 00 00 */	cmplwi r30, 0
/* 802DF050 002DBF90  41 82 00 10 */	beq lbl_802DF060
/* 802DF054 002DBF94  3C 60 80 3A */	lis r3, lbl_803A31F0@ha
/* 802DF058 002DBF98  38 03 31 F0 */	addi r0, r3, lbl_803A31F0@l
/* 802DF05C 002DBF9C  90 1E 00 00 */	stw r0, 0(r30)
lbl_802DF060:
/* 802DF060 002DBFA0  7F E0 07 35 */	extsh. r0, r31
/* 802DF064 002DBFA4  40 81 00 0C */	ble lbl_802DF070
/* 802DF068 002DBFA8  7F C3 F3 78 */	mr r3, r30
/* 802DF06C 002DBFAC  4B FE FC D1 */	bl __dl__FPv
lbl_802DF070:
/* 802DF070 002DBFB0  7F C3 F3 78 */	mr r3, r30
/* 802DF074 002DBFB4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 802DF078 002DBFB8  83 C1 00 08 */	lwz r30, 8(r1)
/* 802DF07C 002DBFBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 802DF080 002DBFC0  7C 08 03 A6 */	mtlr r0
/* 802DF084 002DBFC4  38 21 00 10 */	addi r1, r1, 0x10
/* 802DF088 002DBFC8  4E 80 00 20 */	blr 
}
#endif

void JUTResFont::deleteMemBlocks_ResFont() {
    delete[] (void*)unk50;
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

asm void JUTResFont::getWidthEntry(s32 i_no, TWidth* width) {
    nofralloc
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
