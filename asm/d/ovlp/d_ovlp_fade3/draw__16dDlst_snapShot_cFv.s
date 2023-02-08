lbl_80252ED4:
/* 80252ED4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80252ED8  7C 08 02 A6 */	mflr r0
/* 80252EDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80252EE0  38 60 00 00 */	li r3, 0
/* 80252EE4  38 80 00 00 */	li r4, 0
/* 80252EE8  38 A0 02 60 */	li r5, 0x260
/* 80252EEC  38 C0 01 C0 */	li r6, 0x1c0
/* 80252EF0  48 10 9B 91 */	bl GXSetTexCopySrc
/* 80252EF4  38 60 01 30 */	li r3, 0x130
/* 80252EF8  38 80 00 E0 */	li r4, 0xe0
/* 80252EFC  38 A0 00 06 */	li r5, 6
/* 80252F00  38 C0 00 01 */	li r6, 1
/* 80252F04  48 10 9C 2D */	bl GXSetTexCopyDst
/* 80252F08  80 6D 86 50 */	lwz r3, mFrameBufferTex__13mDoGph_gInf_c(r13)
/* 80252F0C  38 80 00 00 */	li r4, 0
/* 80252F10  48 10 A5 5D */	bl GXCopyTex
/* 80252F14  48 10 94 61 */	bl GXPixModeSync
/* 80252F18  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80252F1C  7C 08 03 A6 */	mtlr r0
/* 80252F20  38 21 00 10 */	addi r1, r1, 0x10
/* 80252F24  4E 80 00 20 */	blr 
