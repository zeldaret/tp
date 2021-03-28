lbl_8033ED14:
/* 8033ED14  7C 08 02 A6 */	mflr r0
/* 8033ED18  90 01 00 04 */	stw r0, 4(r1)
/* 8033ED1C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8033ED20  BF 41 00 18 */	stmw r26, 0x18(r1)
/* 8033ED24  3B 43 00 00 */	addi r26, r3, 0
/* 8033ED28  28 1A 00 04 */	cmplwi r26, 4
/* 8033ED2C  40 80 00 98 */	bge lbl_8033EDC4
/* 8033ED30  7C 64 2A 14 */	add r3, r4, r5
/* 8033ED34  38 03 03 FF */	addi r0, r3, 0x3ff
/* 8033ED38  54 9B 00 2A */	rlwinm r27, r4, 0, 0, 0x15
/* 8033ED3C  54 1D 00 2A */	rlwinm r29, r0, 0, 0, 0x15
/* 8033ED40  38 7B 00 00 */	addi r3, r27, 0
/* 8033ED44  54 DF 07 BE */	clrlwi r31, r6, 0x1e
/* 8033ED48  7C 9B E8 50 */	subf r4, r27, r29
/* 8033ED4C  4B FF C8 61 */	bl DCFlushRange
/* 8033ED50  4B FF E9 A5 */	bl OSDisableInterrupts
/* 8033ED54  3C 00 80 00 */	lis r0, 0x8000
/* 8033ED58  7C 1E D4 30 */	srw r30, r0, r26
/* 8033ED5C  3B 83 00 00 */	addi r28, r3, 0
/* 8033ED60  38 7E 00 00 */	addi r3, r30, 0
/* 8033ED64  4B FF ED 59 */	bl __OSMaskInterrupts
/* 8033ED68  3C 60 CC 00 */	lis r3, 0xCC00 /* 0xCC004000@ha */
/* 8033ED6C  38 A3 40 00 */	addi r5, r3, 0x4000 /* 0xCC004000@l */
/* 8033ED70  57 43 10 3A */	slwi r3, r26, 2
/* 8033ED74  57 60 B4 3E */	rlwinm r0, r27, 0x16, 0x10, 0x1f
/* 8033ED78  7C 05 1B 2E */	sthx r0, r5, r3
/* 8033ED7C  57 A4 B4 3E */	rlwinm r4, r29, 0x16, 0x10, 0x1f
/* 8033ED80  7C 65 1A 14 */	add r3, r5, r3
/* 8033ED84  B0 83 00 02 */	sth r4, 2(r3)
/* 8033ED88  38 85 00 10 */	addi r4, r5, 0x10
/* 8033ED8C  57 46 08 3C */	slwi r6, r26, 1
/* 8033ED90  38 00 00 03 */	li r0, 3
/* 8033ED94  A0 A5 00 10 */	lhz r5, 0x10(r5)
/* 8033ED98  7C 03 30 30 */	slw r3, r0, r6
/* 8033ED9C  7F E0 30 30 */	slw r0, r31, r6
/* 8033EDA0  7C A5 18 78 */	andc r5, r5, r3
/* 8033EDA4  7C A5 03 78 */	or r5, r5, r0
/* 8033EDA8  28 1F 00 03 */	cmplwi r31, 3
/* 8033EDAC  B0 A4 00 00 */	sth r5, 0(r4)
/* 8033EDB0  41 82 00 0C */	beq lbl_8033EDBC
/* 8033EDB4  7F C3 F3 78 */	mr r3, r30
/* 8033EDB8  4B FF ED 8D */	bl __OSUnmaskInterrupts
lbl_8033EDBC:
/* 8033EDBC  7F 83 E3 78 */	mr r3, r28
/* 8033EDC0  4B FF E9 5D */	bl OSRestoreInterrupts
lbl_8033EDC4:
/* 8033EDC4  BB 41 00 18 */	lmw r26, 0x18(r1)
/* 8033EDC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8033EDCC  38 21 00 30 */	addi r1, r1, 0x30
/* 8033EDD0  7C 08 03 A6 */	mtlr r0
/* 8033EDD4  4E 80 00 20 */	blr 
