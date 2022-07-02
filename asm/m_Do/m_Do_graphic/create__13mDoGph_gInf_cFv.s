lbl_80007E44:
/* 80007E44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80007E48  7C 08 02 A6 */	mflr r0
/* 80007E4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80007E50  38 60 00 00 */	li r3, 0
/* 80007E54  80 8D 8D F4 */	lwz r4, sCurrentHeap__7JKRHeap(r13)
/* 80007E58  38 A0 00 02 */	li r5, 2
/* 80007E5C  38 C0 00 01 */	li r6, 1
/* 80007E60  48 26 A3 7D */	bl createManager__10JFWDisplayFPC16_GXRenderModeObjP7JKRHeapQ26JUTXfb10EXfbNumberb
/* 80007E64  38 00 00 01 */	li r0, 1
/* 80007E68  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80007E6C  90 03 00 18 */	stw r0, 0x18(r3)
/* 80007E70  38 60 00 28 */	li r3, 0x28
/* 80007E74  48 2C 6D D9 */	bl __nw__FUl
/* 80007E78  7C 60 1B 79 */	or. r0, r3, r3
/* 80007E7C  41 82 00 44 */	beq lbl_80007EC0
/* 80007E80  38 00 00 00 */	li r0, 0
/* 80007E84  98 01 00 08 */	stb r0, 8(r1)
/* 80007E88  98 01 00 09 */	stb r0, 9(r1)
/* 80007E8C  98 01 00 0A */	stb r0, 0xa(r1)
/* 80007E90  98 01 00 0B */	stb r0, 0xb(r1)
/* 80007E94  80 01 00 08 */	lwz r0, 8(r1)
/* 80007E98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80007E9C  80 8D 8F B8 */	lwz r4, sManager__8JUTVideo(r13)
/* 80007EA0  80 E4 00 04 */	lwz r7, 4(r4)
/* 80007EA4  38 80 00 00 */	li r4, 0
/* 80007EA8  38 A0 00 00 */	li r5, 0
/* 80007EAC  A0 C7 00 04 */	lhz r6, 4(r7)
/* 80007EB0  A0 E7 00 06 */	lhz r7, 6(r7)
/* 80007EB4  39 01 00 0C */	addi r8, r1, 0xc
/* 80007EB8  48 2D D6 79 */	bl __ct__8JUTFaderFiiiiQ28JUtility6TColor
/* 80007EBC  7C 60 1B 78 */	mr r0, r3
lbl_80007EC0:
/* 80007EC0  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80007EC4  90 03 00 04 */	stw r0, 4(r3)
/* 80007EC8  90 0D 86 48 */	stw r0, mFader__13mDoGph_gInf_c(r13)
/* 80007ECC  80 6D 8C 40 */	lwz r3, sManager__10JFWDisplay(r13)
/* 80007ED0  90 03 00 04 */	stw r0, 4(r3)
/* 80007ED4  38 00 00 00 */	li r0, 0
/* 80007ED8  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 80007EDC  98 03 01 30 */	stb r0, 0x130(r3)
/* 80007EE0  80 6D 8F D8 */	lwz r3, sManager__10JUTProcBar(r13)
/* 80007EE4  98 03 01 0C */	stb r0, 0x10c(r3)
/* 80007EE8  80 6D 8F 48 */	lwz r3, sDebugPrint__10JUTDbPrint(r13)
/* 80007EEC  98 03 00 0C */	stb r0, 0xc(r3)
/* 80007EF0  38 60 01 30 */	li r3, 0x130
/* 80007EF4  38 80 00 E0 */	li r4, 0xe0
/* 80007EF8  38 A0 00 06 */	li r5, 6
/* 80007EFC  4B FF FE A1 */	bl createTimg__FUsUsUl
/* 80007F00  90 6D 86 4C */	stw r3, mFrameBufferTimg__13mDoGph_gInf_c(r13)
/* 80007F04  38 03 00 20 */	addi r0, r3, 0x20
/* 80007F08  90 0D 86 50 */	stw r0, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 80007F0C  38 60 01 30 */	li r3, 0x130
/* 80007F10  38 80 00 E0 */	li r4, 0xe0
/* 80007F14  38 A0 00 03 */	li r5, 3
/* 80007F18  4B FF FE 85 */	bl createTimg__FUsUsUl
/* 80007F1C  90 6D 86 54 */	stw r3, mZbufferTimg__13mDoGph_gInf_c(r13)
/* 80007F20  38 03 00 20 */	addi r0, r3, 0x20
/* 80007F24  90 0D 86 58 */	stw r0, mZbufferTex__13mDoGph_gInf_c(r13)
/* 80007F28  38 60 04 00 */	li r3, 0x400
/* 80007F2C  48 2E C7 2D */	bl setBuffer__8J2DPrintFUl
/* 80007F30  38 00 00 00 */	li r0, 0
/* 80007F34  98 0D 86 64 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x0(r13)
/* 80007F38  98 0D 86 66 */	stb r0, mBlureFlag__13mDoGph_gInf_c+0x2(r13)
/* 80007F3C  88 0D 80 80 */	lbz r0, g_clearColor(r13)
/* 80007F40  98 0D 80 10 */	stb r0, mBackColor__13mDoGph_gInf_c(r13)
/* 80007F44  38 8D 80 80 */	la r4, g_clearColor(r13) /* 80450600-_SDA_BASE_ */
/* 80007F48  88 A4 00 01 */	lbz r5, 1(r4)
/* 80007F4C  38 6D 80 10 */	la r3, mBackColor__13mDoGph_gInf_c(r13) /* 80450590-_SDA_BASE_ */
/* 80007F50  98 A3 00 01 */	stb r5, 1(r3)
/* 80007F54  88 C4 00 02 */	lbz r6, 2(r4)
/* 80007F58  98 C3 00 02 */	stb r6, 2(r3)
/* 80007F5C  88 84 00 03 */	lbz r4, 3(r4)
/* 80007F60  98 83 00 03 */	stb r4, 3(r3)
/* 80007F64  98 0D 80 14 */	stb r0, mFadeColor__13mDoGph_gInf_c(r13)
/* 80007F68  38 6D 80 14 */	la r3, mFadeColor__13mDoGph_gInf_c(r13) /* 80450594-_SDA_BASE_ */
/* 80007F6C  98 A3 00 01 */	stb r5, 1(r3)
/* 80007F70  98 C3 00 02 */	stb r6, 2(r3)
/* 80007F74  98 83 00 03 */	stb r4, 3(r3)
/* 80007F78  38 60 00 01 */	li r3, 1
/* 80007F7C  48 34 58 C5 */	bl VISetBlack
/* 80007F80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80007F84  7C 08 03 A6 */	mtlr r0
/* 80007F88  38 21 00 10 */	addi r1, r1, 0x10
/* 80007F8C  4E 80 00 20 */	blr 
